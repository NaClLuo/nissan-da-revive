package com.autonavi.cvc.app.da.quick;

import android.app.Activity;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Simple built-in app picker: lists every launcher app and lets the user pin
 * up to 6 of them to the DA home screen.
 */
public class AppPickerActivity extends Activity {

    private final List<Item> allItems = new ArrayList<Item>();
    private final List<Item> items = new ArrayList<Item>();
    private String query = "";
    private final Set<String> selected = new LinkedHashSet<String>();
    private final Map<String, Drawable> iconCache = new HashMap<String, Drawable>();
    private ItemAdapter adapter;
    private TextView counter;

    private static final class Item {
        String pkg;
        String label;
        Drawable icon;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setBackgroundColor(0xFF0E1318);

        LinearLayout header = new LinearLayout(this);
        header.setOrientation(LinearLayout.HORIZONTAL);
        header.setGravity(Gravity.CENTER_VERTICAL);
        header.setPadding(QuickDesk.dp(this, 24), QuickDesk.dp(this, 16),
                QuickDesk.dp(this, 24), QuickDesk.dp(this, 12));

        TextView title = new TextView(this);
        title.setText("选择桌面应用");
        title.setTextColor(Color.WHITE);
        title.setTextSize(22.0f);
        title.setLayoutParams(new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f));
        header.addView(title);

        counter = new TextView(this);
        counter.setTextColor(0xFF7FB6E0);
        counter.setTextSize(18.0f);
        header.addView(counter);

        root.addView(header);

        TextView tip = new TextView(this);
        tip.setText("最多 12 个，分两页显示，长按桌面图标可重新选择");
        tip.setTextColor(0xFF8899A6);
        tip.setTextSize(14.0f);
        tip.setPadding(QuickDesk.dp(this, 24), 0, QuickDesk.dp(this, 24), QuickDesk.dp(this, 8));
        root.addView(tip);

        final EditText search = new EditText(this);
        search.setHint("搜索应用名");
        search.setHintTextColor(0xFF6C7A86);
        search.setTextColor(Color.WHITE);
        search.setTextSize(16.0f);
        search.setSingleLine(true);
        search.setBackgroundColor(0xFF1A242E);
        search.setPadding(QuickDesk.dp(this, 14), QuickDesk.dp(this, 8),
                QuickDesk.dp(this, 14), QuickDesk.dp(this, 8));
        LinearLayout.LayoutParams slp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        slp.leftMargin = QuickDesk.dp(this, 24);
        slp.rightMargin = QuickDesk.dp(this, 24);
        slp.bottomMargin = QuickDesk.dp(this, 8);
        root.addView(search, slp);

        search.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
            }

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {
                applyFilter(s == null ? "" : s.toString());
            }

            @Override
            public void afterTextChanged(Editable s) {
            }
        });

        ListView list = new ListView(this);
        list.setDividerHeight(1);
        list.setDivider(getResources().getDrawable(android.R.drawable.divider_horizontal_dark));
        list.setCacheColorHint(0);
        adapter = new ItemAdapter();
        list.setAdapter(adapter);
        list.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(android.widget.AdapterView<?> parent, View view, int position, long idId) {
                Item it = items.get(position);
                if (selected.contains(it.pkg)) {
                    selected.remove(it.pkg);
                } else {
                    if (selected.size() >= QuickDesk.SLOTS) {
                        Toast.makeText(AppPickerActivity.this, "最多只能选 12 个", Toast.LENGTH_SHORT).show();
                        return;
                    }
                    selected.add(it.pkg);
                }
                adapter.notifyDataSetChanged();
                updateCounter();
            }
        });
        root.addView(list, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1.0f));

        LinearLayout footer = new LinearLayout(this);
        footer.setOrientation(LinearLayout.HORIZONTAL);
        footer.setGravity(Gravity.CENTER_VERTICAL);
        footer.setPadding(QuickDesk.dp(this, 24), QuickDesk.dp(this, 12),
                QuickDesk.dp(this, 24), QuickDesk.dp(this, 16));

        Button clear = new Button(this);
        clear.setText("清空");
        clear.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                selected.clear();
                adapter.notifyDataSetChanged();
                updateCounter();
            }
        });
        footer.addView(clear);

        View spacer = new View(this);
        spacer.setLayoutParams(new LinearLayout.LayoutParams(0, 1, 1.0f));
        footer.addView(spacer);

        Button cancel = new Button(this);
        cancel.setText("取消");
        cancel.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();
            }
        });
        footer.addView(cancel);

        Button ok = new Button(this);
        ok.setText("保存");
        ok.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ArrayList<String> out = new ArrayList<String>(selected);
                QuickDesk.save(AppPickerActivity.this, out);
                Toast.makeText(AppPickerActivity.this, "已保存", Toast.LENGTH_SHORT).show();
                finish();
            }
        });
        footer.addView(ok);

        root.addView(footer);
        setContentView(root);

        selected.addAll(QuickDesk.load(this));
        loadApps();
        updateCounter();
    }

    private void updateCounter() {
        counter.setText(selected.size() + " / " + QuickDesk.SLOTS);
    }

    private void loadApps() {
        new Thread(new Runnable() {
            @Override
            public void run() {
                final List<Item> loaded = new ArrayList<Item>();
                try {
                    PackageManager pm = getPackageManager();
                    android.content.Intent main = new android.content.Intent(android.content.Intent.ACTION_MAIN);
                    main.addCategory(android.content.Intent.CATEGORY_LAUNCHER);
                    List<ResolveInfo> ris = pm.queryIntentActivities(main, 0);
                    Map<String, ResolveInfo> uniq = new LinkedHashMap<String, ResolveInfo>();
                    for (ResolveInfo ri : ris) {
                        if (ri.activityInfo == null) {
                            continue;
                        }
                        String p = ri.activityInfo.packageName;
                        if (p == null || p.equals(getPackageName()) || uniq.containsKey(p)) {
                            continue;
                        }
                        uniq.put(p, ri);
                    }
                    for (ResolveInfo ri : uniq.values()) {
                        Item it = new Item();
                        it.pkg = ri.activityInfo.packageName;
                        CharSequence label = ri.loadLabel(pm);
                        it.label = label == null ? it.pkg : label.toString();
                        try {
                            it.icon = ri.loadIcon(pm);
                        } catch (Throwable ignored) {
                        }
                        loaded.add(it);
                    }
                    Collections.sort(loaded, new Comparator<Item>() {
                        @Override
                        public int compare(Item a, Item b) {
                            return a.label.compareTo(b.label);
                        }
                    });
                } catch (Throwable ignored) {
                }
                runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        allItems.clear();
                        allItems.addAll(loaded);
                        applyFilter(query);
                    }
                });
            }
        }).start();
    }

    private void applyFilter(String q) {
        query = q == null ? "" : q;
        String needle = query.trim().toLowerCase();
        items.clear();
        if (needle.length() == 0) {
            items.addAll(allItems);
        } else {
            for (Item it : allItems) {
                String label = it.label == null ? "" : it.label.toLowerCase();
                String pkg = it.pkg == null ? "" : it.pkg.toLowerCase();
                if (label.contains(needle) || pkg.contains(needle)) {
                    items.add(it);
                }
            }
        }
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        }
    }

    private final class ItemAdapter extends BaseAdapter {
        @Override
        public int getCount() {
            return items.size();
        }

        @Override
        public Object getItem(int position) {
            return items.get(position);
        }

        @Override
        public long getItemId(int position) {
            return position;
        }

        @Override
        public View getView(int position, View convertView, ViewGroup parent) {
            LinearLayout row;
            if (convertView == null) {
                row = new LinearLayout(AppPickerActivity.this);
                row.setOrientation(LinearLayout.HORIZONTAL);
                row.setGravity(Gravity.CENTER_VERTICAL);
                row.setPadding(QuickDesk.dp(AppPickerActivity.this, 24), QuickDesk.dp(AppPickerActivity.this, 10),
                        QuickDesk.dp(AppPickerActivity.this, 24), QuickDesk.dp(AppPickerActivity.this, 10));
                ImageView iv = new ImageView(AppPickerActivity.this);
                iv.setLayoutParams(new LinearLayout.LayoutParams(QuickDesk.dp(AppPickerActivity.this, 40),
                        QuickDesk.dp(AppPickerActivity.this, 40)));
                iv.setTag("icon");
                row.addView(iv);
                TextView tv = new TextView(AppPickerActivity.this);
                tv.setTextColor(Color.WHITE);
                tv.setTextSize(16.0f);
                tv.setSingleLine(true);
                tv.setEllipsize(TextUtils.TruncateAt.END);
                LinearLayout.LayoutParams tlp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f);
                tlp.leftMargin = QuickDesk.dp(AppPickerActivity.this, 16);
                tv.setLayoutParams(tlp);
                tv.setTag("label");
                row.addView(tv);
                CheckBox cb = new CheckBox(AppPickerActivity.this);
                cb.setClickable(false);
                cb.setFocusable(false);
                cb.setTag("check");
                row.addView(cb);
            } else {
                row = (LinearLayout) convertView;
            }
            Item it = items.get(position);
            ImageView iv = (ImageView) row.findViewWithTag("icon");
            TextView tv = (TextView) row.findViewWithTag("label");
            CheckBox cb = (CheckBox) row.findViewWithTag("check");
            if (it.icon != null) {
                iv.setImageDrawable(it.icon);
            } else {
                iv.setImageResource(android.R.drawable.sym_def_app_icon);
            }
            tv.setText(it.label);
            cb.setChecked(selected.contains(it.pkg));
            row.setBackgroundColor(selected.contains(it.pkg) ? 0xFF1B2A36 : 0x00000000);
            return row;
        }
    }
}
