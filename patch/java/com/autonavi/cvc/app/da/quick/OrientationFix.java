package com.autonavi.cvc.app.da.quick;

import android.app.Activity;
import android.app.Application;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.database.ContentObserver;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.view.Display;
import android.view.Surface;
import android.view.WindowManager;

/**
 * Manifest declares sensorLandscape so the window can follow the phone in both
 * landscape directions. That mode ignores the system rotation lock, which is
 * not what a user expects: with the lock on, the screen should stay put.
 *
 * This class watches the lock switch (Settings.System.ACCELEROMETER_ROTATION)
 * and swaps the requested orientation at runtime:
 *
 *   lock off -> SENSOR_LANDSCAPE, follows the sensor in both directions
 *   lock on  -> a fixed landscape direction, taken from the current display
 *               rotation when that is already landscape, otherwise the
 *               default landscape (portrait is never used: the layout is
 *               absolutely positioned for 16:9 and breaks in portrait)
 */
public final class OrientationFix {

    private static boolean sInstalled;
    private static volatile Activity sCurrent;

    private OrientationFix() {
    }

    public static void install(Context context) {
        if (sInstalled || context == null) {
            return;
        }
        sInstalled = true;

        Context app = context.getApplicationContext();
        if (!(app instanceof Application)) {
            return;
        }

        try {
            ((Application) app).registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() {
                @Override
                public void onActivityCreated(Activity activity, Bundle saved) {
                    sCurrent = activity;
                    apply(activity);
                }

                @Override
                public void onActivityStarted(Activity activity) {
                    sCurrent = activity;
                }

                @Override
                public void onActivityResumed(Activity activity) {
                    sCurrent = activity;
                    apply(activity);
                }

                @Override
                public void onActivityPaused(Activity activity) {
                }

                @Override
                public void onActivityStopped(Activity activity) {
                }

                @Override
                public void onActivitySaveInstanceState(Activity activity, Bundle out) {
                }

                @Override
                public void onActivityDestroyed(Activity activity) {
                    if (sCurrent == activity) {
                        sCurrent = null;
                    }
                }
            });
        } catch (Throwable ignored) {
        }

        try {
            ContentResolver cr = app.getContentResolver();
            cr.registerContentObserver(
                    Settings.System.getUriFor(Settings.System.ACCELEROMETER_ROTATION),
                    false,
                    new ContentObserver(new Handler(Looper.getMainLooper())) {
                        @Override
                        public void onChange(boolean selfChange) {
                            Activity activity = sCurrent;
                            if (activity != null) {
                                apply(activity);
                            }
                        }
                    });
        } catch (Throwable ignored) {
        }
    }

    private static void apply(Activity activity) {
        if (activity == null || activity.isFinishing()) {
            return;
        }
        try {
            int want;
            if (isLocked(activity)) {
                want = lockedOrientation(activity);
            } else {
                want = ActivityInfo.SCREEN_ORIENTATION_SENSOR_LANDSCAPE;
            }
            if (activity.getRequestedOrientation() != want) {
                activity.setRequestedOrientation(want);
            }
        } catch (Throwable ignored) {
        }
    }

    private static boolean isLocked(Context context) {
        try {
            return Settings.System.getInt(context.getContentResolver(),
                    Settings.System.ACCELEROMETER_ROTATION, 1) == 0;
        } catch (Throwable t) {
            return false;
        }
    }

    /** Fixed direction to use while the lock is on. */
    private static int lockedOrientation(Activity activity) {
        try {
            WindowManager wm = (WindowManager) activity.getSystemService(Context.WINDOW_SERVICE);
            Display display = wm.getDefaultDisplay();
            if (display.getRotation() == Surface.ROTATION_270) {
                return ActivityInfo.SCREEN_ORIENTATION_REVERSE_LANDSCAPE;
            }
        } catch (Throwable ignored) {
        }
        return ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE;
    }
}
