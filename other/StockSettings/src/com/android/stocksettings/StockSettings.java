/*
 * Copyright (C) 2010 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.android.stocksettings;
import android.app.ActionBar;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.AssetManager;
import android.hardware.usb.UsbManager;
import android.net.ConnectivityManager;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceScreen;
import android.provider.Settings;
import android.view.MenuItem;
import android.webkit.WebView;

import java.io.InputStream;
import java.util.Locale;

public class StockSettings extends PreferenceActivity{
    private static final String LOG_TAG = "StockSettings";

    private static final String HTC_GESTURES_DB_KEY = "htc_gestures_enabled";
    private static final String HTC_FASTBOOT_DB_KEY = "enable_fastboot";
    private static final String HTC_INTERNETPT_DB_KEY = "pt_enable";

    private static final String HTC_GESTURES_CB_KEY = "htc_gestures";
    private static final String HTC_FASTBOOT_CB_KEY = "htc_fastboot";
    private static final String HTC_INTERNETPT_CB_KEY = "htc_internet_pt";

    private CheckBoxPreference mHtcGestures;
    private CheckBoxPreference mHtcFastboot;
    private CheckBoxPreference mHtcInternetPassThrough;

    UsbStateReceiver mUsbStateReceiver;

    private boolean mUsbConnected;
    private boolean mMassStorageActive;

    public void onCreate(Bundle savedInstanceState) {
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
              actionBar.setHomeButtonEnabled(true);
        }
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.stock_settings);
        mHtcGestures = (CheckBoxPreference) findPreference(HTC_GESTURES_CB_KEY);
        mHtcFastboot = (CheckBoxPreference) findPreference(HTC_FASTBOOT_CB_KEY);
        mHtcInternetPassThrough = (CheckBoxPreference) findPreference(HTC_INTERNETPT_CB_KEY);
        updateState();
    }

    public void onStart() {
        super.onStart();

        mUsbStateReceiver = new UsbStateReceiver();

        IntentFilter filter = new IntentFilter();
        filter.addAction(UsbManager.ACTION_USB_STATE);
        registerReceiver(mUsbStateReceiver, filter);

        filter = new IntentFilter();
        filter.addAction(Intent.ACTION_MEDIA_SHARED);
        filter.addAction(Intent.ACTION_MEDIA_UNSHARED);
        filter.addDataScheme("file");
        registerReceiver(mUsbStateReceiver, filter);
    }

    @Override
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        if (preference == mHtcGestures) {
            if (mHtcGestures.isChecked()) {
                Settings.System.putInt(getContentResolver(), HTC_GESTURES_DB_KEY, 1);
            } else {
                Settings.System.putInt(getContentResolver(), HTC_GESTURES_DB_KEY, 0);
            }
        }
        else if (preference == mHtcFastboot) {
            if (mHtcFastboot.isChecked()) {
                Settings.System.putInt(getContentResolver(), HTC_FASTBOOT_DB_KEY, 1);
            } else {
                Settings.System.putInt(getContentResolver(), HTC_FASTBOOT_DB_KEY, 0);
            }
        }
        if (preference == mHtcInternetPassThrough) {
            int selectResult = mHtcInternetPassThrough.isChecked()?1:0;

            Settings.System.putInt(getContentResolver(), HTC_INTERNETPT_DB_KEY, selectResult);

            if (mHtcInternetPassThrough.isChecked()) {

                mHtcInternetPassThrough.getContext().sendBroadcast(new Intent("com.htc.android.start_IPT"));

                showNotice();
            }
            else {
                mHtcInternetPassThrough.getContext().sendBroadcast(new Intent("com.htc.android.stop_IPT"));
            }
        }
        else {
            //do nothing
        }
        return super.onPreferenceTreeClick(preferenceScreen, preference);
    }

    private String createNoticeInfoUrl() {
        String HELP_URL = "file:///android_asset/html/%y%z/notice_info.html";
        String HELP_PATH = "html/%y%z/notice_info.html";

        Locale locale = Locale.getDefault();
        final AssetManager am = getAssets();

        String path = HELP_PATH.replace("%y", locale.getLanguage().toLowerCase());
        path = path.replace("%z", '_'+locale.getCountry().toLowerCase());
        boolean useCountry = true;
        InputStream is = null;
        try {
            is = am.open(path);
        } catch (Exception ignored) {
            useCountry = false;
        } finally {
            if (is != null) {
                try {
                    is.close();
                } catch (Exception ignored) {}
            }
        }


        String url = HELP_URL.replace("%y", locale.getLanguage().toLowerCase());
        url = url.replace("%z", useCountry ? '_'+locale.getCountry().toLowerCase() : "");

        return url;
    }

    private void showNotice() {
        String url = createNoticeInfoUrl();

        WebView contentView = new WebView(this);
        contentView.loadUrl(url);

        Dialog dialog = new AlertDialog.Builder(this, AlertDialog.THEME_HOLO_LIGHT)
                .setIconAttribute(android.R.attr.alertDialogIcon)
                .setTitle(R.string.PSTitle)
                .setView(contentView)
                .setPositiveButton(R.string.PSButton, null)
                .show();
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
        case android.R.id.home:
            finish();
            return true;

        default:
            return super.onOptionsItemSelected(item);
        }
    }

    private void updateState() {
        mHtcGestures.setChecked(Settings.System.getInt(getContentResolver(), HTC_GESTURES_DB_KEY, 0) != 0);
        mHtcFastboot.setChecked(Settings.System.getInt(getContentResolver(), HTC_FASTBOOT_DB_KEY, 1) != 0);
    }

    void updateInternetPTState() {
        ConnectivityManager cm =
                (ConnectivityManager) getSystemService(Context.CONNECTIVITY_SERVICE);

        boolean usbAvailable = mUsbConnected && !mMassStorageActive;

        if (usbAvailable) {
            mHtcInternetPassThrough.setEnabled(true);
            mHtcInternetPassThrough.setChecked(Settings.System.getInt(getContentResolver(),
                    HTC_INTERNETPT_DB_KEY, 0) != 0);
        } else {
            mHtcInternetPassThrough.setEnabled(false);
            mHtcInternetPassThrough.setChecked(false);
            Settings.System.putInt(getContentResolver(), HTC_INTERNETPT_DB_KEY, 0);
        }
    }

    public class UsbStateReceiver extends BroadcastReceiver {

        @Override
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (action.equals(UsbManager.ACTION_USB_STATE)) {
                mUsbConnected = intent.getBooleanExtra(UsbManager.USB_CONNECTED, false);
            } else if (action.equals(Intent.ACTION_MEDIA_SHARED)) {
                mMassStorageActive = true;
            } else if (action.equals(Intent.ACTION_MEDIA_UNSHARED)) {
                mMassStorageActive = false;
            }
            updateInternetPTState();
        }
    }
}


