package com.autonavi.cvc.app.da.quick;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.List;

/**
 * Replaces the hard-coded 6 app shortcuts on the DA home screen with a
 * user-configurable set, and binds the cast shortcut in the top-right corner.
 */
public final class QuickDesk {

    public static final String PREF = "da_quick_apps";
    public static final String KEY = "pkgs";
    public static final int PAGE_SIZE = 6;
    public static final int PAGES = 2;
    public static final int SLOTS = PAGE_SIZE * PAGES;

    /** Keeps the visible page across onResume() rebuilds. */
    private static int sPage = 0;

    private QuickDesk() {
    }

    public static void overlay(final Activity act) {
        // Independent of the shortcut bar: always try to place the cast button.
        addCastButton(act);
        try {
            View pager = act.findViewById(id(act, "desk_app_link"));
            if (pager == null) {
                return;
            }
            ViewGroup parent = (ViewGroup) pager.getParent();
            if (parent == null) {
                return;
            }
            View old = parent.findViewWithTag("da_quick_bar");
            if (old != null) {
                parent.removeView(old);
            }

            View oldPager = parent.findViewWithTag("da_quick_pager");
            if (oldPager != null) {
                parent.removeView(oldPager);
            }

            final List<String> pkgs = load(act);
            final List<View> pages = new ArrayList<View>();
            for (int page = 0; page < PAGES; page++) {
                LinearLayout row = new LinearLayout(act);
                row.setOrientation(LinearLayout.HORIZONTAL);
                row.setGravity(Gravity.CENTER_VERTICAL);
                for (int i = 0; i < PAGE_SIZE; i++) {
                    int index = page * PAGE_SIZE + i;
                    String pkg = index < pkgs.size() ? pkgs.get(index) : null;
                    row.addView(cell(act, pkg), cellLp());
                }
                pages.add(row);
            }

            ViewPager vp = new ViewPager(act);
            vp.setTag("da_quick_pager");
            vp.setMinimumHeight(dp(act, 84));
            vp.setAdapter(new PagerAdapter() {
                @Override
                public int getCount() {
                    return pages.size();
                }

                @Override
                public boolean isViewFromObject(View view, Object object) {
                    return view == object;
                }

                @Override
                public Object instantiateItem(ViewGroup container, int position) {
                    View v = pages.get(position);
                    container.addView(v);
                    return v;
                }

                @Override
                public void destroyItem(ViewGroup container, int position, Object object) {
                    container.removeView((View) object);
                }
            });
            vp.setOnPageChangeListener(new ViewPager.OnPageChangeListener() {
                @Override
                public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
                }

                @Override
                public void onPageSelected(int position) {
                    sPage = position;
                    bindDots(act, position);
                }

                @Override
                public void onPageScrollStateChanged(int state) {
                }
            });

            // The original ViewPager uses wrap_content width, so build fresh
            // params instead of reusing its LayoutParams.
            RelativeLayout.LayoutParams rp = new RelativeLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            rp.addRule(RelativeLayout.ALIGN_PARENT_TOP);
            int bottomId = id(act, "buttom_layout");
            if (bottomId != 0) {
                rp.addRule(RelativeLayout.ABOVE, bottomId);
            }
            pager.setVisibility(View.GONE);
            parent.addView(vp, rp);
            if (sPage > 0) {
                vp.setCurrentItem(sPage, false);
            }
            bindDots(act, sPage);
        } catch (Throwable ignored) {
        }
    }

    private static void bindDots(Activity act, int page) {
        try {
            ViewGroup box = (ViewGroup) act.findViewById(id(act, "centerWidget"));
            if (box == null) {
                return;
            }
            int on = act.getResources().getIdentifier("page01_select", "drawable", act.getPackageName());
            int off = act.getResources().getIdentifier("page01", "drawable", act.getPackageName());
            if (on == 0 || off == 0) {
                return;
            }
            int visible = 0;
            for (int i = 0; i < box.getChildCount(); i++) {
                View v = box.getChildAt(i);
                if (v.getVisibility() != View.VISIBLE) {
                    continue;
                }
                v.setBackgroundResource(visible == page ? on : off);
                visible++;
            }
        } catch (Throwable ignored) {
        }
    }

    private static LinearLayout.LayoutParams cellLp() {
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f);
        lp.gravity = Gravity.CENTER_VERTICAL;
        return lp;
    }

    private static View cell(final Activity act, final String pkg) {
        LinearLayout box = new LinearLayout(act);
        box.setOrientation(LinearLayout.VERTICAL);
        box.setGravity(Gravity.CENTER);
        box.setPadding(0, dp(act, 4), 0, dp(act, 4));

        ImageView icon = new ImageView(act);
        icon.setLayoutParams(new LinearLayout.LayoutParams(dp(act, 50), dp(act, 50)));
        icon.setScaleType(ImageView.ScaleType.FIT_CENTER);
        icon.setImageResource(android.R.drawable.sym_def_app_icon);

        TextView name = new TextView(act);
        name.setTextColor(Color.WHITE);
        name.setTextSize(13.0f);
        name.setGravity(Gravity.CENTER);
        name.setSingleLine(true);
        name.setEllipsize(TextUtils.TruncateAt.END);
        name.setMaxWidth(dp(act, 96));
        name.setPadding(0, dp(act, 4), 0, 0);

        box.addView(icon);
        box.addView(name);

        if (pkg == null || pkg.length() == 0) {
            name.setText("添加");
            icon.setImageResource(android.R.drawable.ic_input_add);
            box.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    openPicker(act);
                }
            });
            return box;
        }

        final PackageManager pm = act.getPackageManager();
        try {
            Drawable d = pm.getApplicationIcon(pkg);
            if (d != null) {
                icon.setImageDrawable(d);
            }
            name.setText(pm.getApplicationLabel(pm.getApplicationInfo(pkg, 0)));
        } catch (Throwable t) {
            name.setText("未安装");
        }

        box.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent it = pm.getLaunchIntentForPackage(pkg);
                if (it == null) {
                    Toast.makeText(act, "应用未安装", Toast.LENGTH_SHORT).show();
                    return;
                }
                it.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                try {
                    act.startActivity(it);
                } catch (Throwable ignored) {
                }
            }
        });
        box.setOnLongClickListener(new View.OnLongClickListener() {
            @Override
            public boolean onLongClick(View v) {
                openPicker(act);
                return true;
            }
        });
        return box;
    }

    /**
     * The button is added straight into android.R.id.content instead of the
     * legacy layout, because activity_main.xml is included into a custom
     * RelativeLayout that does not lay out late-added siblings reliably.
     */
    private static void addCastButton(final Activity act) {
        try {
            ViewGroup content = (ViewGroup) act.findViewById(android.R.id.content);
            if (content == null) {
                return;
            }
            View old = content.findViewWithTag("da_cast_btn");
            if (old != null) {
                content.removeView(old);
            }

            TextView btn = new TextView(act);
            btn.setTag("da_cast_btn");
            btn.setText("投屏");
            btn.setTextColor(Color.WHITE);
            btn.setTextSize(16.0f);
            btn.setGravity(Gravity.CENTER);
            btn.setPadding(dp(act, 18), dp(act, 9), dp(act, 18), dp(act, 9));

            GradientDrawable bg = new GradientDrawable();
            bg.setShape(GradientDrawable.RECTANGLE);
            bg.setColor(0x26FFFFFF);
            bg.setCornerRadius(dp(act, 12));
            bg.setStroke(dp(act, 1), 0x4DFFFFFF);
            btn.setBackgroundDrawable(bg);

            btn.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    try {
                        Class<?> c = Class.forName("nmsed.shortcatmiracast.ShortcutMiracast");
                        c.getMethod("startMiracastDeviceList", Context.class).invoke(null, act);
                    } catch (Throwable t) {
                        try {
                            Intent i = new Intent("android.settings.CAST_SETTINGS");
                            i.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                            act.startActivity(i);
                        } catch (Throwable ignored) {
                        }
                    }
                }
            });

            FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(
                    ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            lp.gravity = Gravity.TOP | Gravity.RIGHT;
            lp.topMargin = dp(act, 12);
            lp.rightMargin = dp(act, 12);
            content.addView(btn, lp);
        } catch (Throwable ignored) {
        }
    }

    private static void openPicker(Activity act) {
        try {
            act.startActivity(new Intent(act, AppPickerActivity.class));
        } catch (Throwable ignored) {
        }
    }

    public static List<String> load(Context c) {
        ArrayList<String> out = new ArrayList<String>();
        try {
            String s = c.getSharedPreferences(PREF, 0).getString(KEY, "");
            if (s != null && s.length() > 0) {
                String[] parts = s.split(",");
                for (String p : parts) {
                    if (p != null && p.length() > 0) {
                        out.add(p);
                    }
                }
            }
        } catch (Throwable ignored) {
        }
        return out;
    }

    public static void save(Context c, List<String> pkgs) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < pkgs.size() && i < SLOTS; i++) {
            if (i > 0) {
                sb.append(',');
            }
            sb.append(pkgs.get(i));
        }
        c.getSharedPreferences(PREF, 0).edit().putString(KEY, sb.toString()).commit();
    }

    static int id(Context c, String name) {
        return c.getResources().getIdentifier(name, "id", c.getPackageName());
    }

    static int dp(Context c, int v) {
        return (int) (v * c.getResources().getDisplayMetrics().density + 0.5f);
    }
}
