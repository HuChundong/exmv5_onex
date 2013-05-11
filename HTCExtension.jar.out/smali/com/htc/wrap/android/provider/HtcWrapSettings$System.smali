.class public Lcom/htc/wrap/android/provider/HtcWrapSettings$System;
.super Lcom/htc/wrap/android/provider/Settings$System;
.source "HtcWrapSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "System"
.end annotation


# static fields
.field public static final AGPS_ENABLED:Ljava/lang/String; = "agps_enabled"

.field public static final APPEND_FOR_HEADSET:Ljava/lang/String; = "_headset"

.field public static final AUTO_APPLY_UPDATE:Ljava/lang/String; = "auto_apply_set_time_city_locale"

.field public static final AUTO_UPDATE_BY_LOC:Ljava/lang/String; = "auto_set_time_city_locale"

.field public static final BE_POLITE:Ljava/lang/String; = "be_polite"

.field public static final BLUETOOTH_DISCOVERABILITY_END_TIMESTAMP:Ljava/lang/String; = "bluetooth_discoverability_end_timestamp"

.field public static final BLUETOOTH_FTP_SETTINGS:Ljava/lang/String; = "bt_ftp_enable"

.field public static final BLUETOOTH_MAP_SETTINGS:Ljava/lang/String; = "bt_map_enable"

.field public static final BLUETOOTH_NAME:Ljava/lang/String; = "bluetooth_name"

.field public static final CALENDAR_NOTIFICATION_SOUND:Ljava/lang/String; = "cal_notification"

.field public static final CALENDAR_SHOW_LUNAR:Ljava/lang/String; = "calendar_show_lunar"

.field public static final CALENDAR_START_WEEKDAY:Ljava/lang/String; = "calendar_start_weekday"

.field public static final CHARM_INDICATOR_SUPPORTED:Ljava/lang/String; = "charm_indicator_supported"

.field public static final CHARM_MESSAGE_NOTIFICATION:Ljava/lang/String; = "charm_message_notification"

.field public static final CHARM_MESSAGE_RECEIVED_NOTIFICATION:Ljava/lang/String; = "charm_message_received_notification"

.field public static final CHARM_PHONE_NOTIFICATION:Ljava/lang/String; = "charm_phone_notification"

.field public static final CHARM_VOICE_MAIL_NOTIFICATION:Ljava/lang/String; = "charm_voice_mail_notification"

.field public static final COMPASS_WARNING:Ljava/lang/String; = "compass_warning"

.field public static final CUSTOM_ORIENTATION:Ljava/lang/String; = "custom_orientation"

.field public static final CUSTOM_ORIENTATION_ROTATION_0:I = 0x0

.field public static final CUSTOM_ORIENTATION_ROTATION_180:I = 0x2

.field public static final CUSTOM_ORIENTATION_ROTATION_270:I = 0x3

.field public static final CUSTOM_ORIENTATION_ROTATION_90:I = 0x1

.field public static final CUSTOM_ORIENTATION_ROTATION_DEFAULT:I = -0x1

.field public static final DATA_ROAMING_ALLOWED:Ljava/lang/String; = "data_roaming_allowed"

.field public static final DATA_ROAMING_BLOCKED:Ljava/lang/String; = "data_roaming_blocked"

.field public static final DATA_ROAMING_GUARD_ALLOWED:Ljava/lang/String; = "data_roaming_guard_allowed"

.field public static final DATA_ROAMING_GUARD_BLOCKED:Ljava/lang/String; = "data_roaming_guard_blocked"

.field public static final DATE_FORMAT_SHORT:Ljava/lang/String; = "date_format_short"

.field public static final DEFAULT_CALENDAR_NOTIFICATION_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_MSG_NOTIFICATION_URI:Landroid/net/Uri; = null

.field public static final DENY_USER_CONTROL:Ljava/lang/String; = "deny_user_control"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEVICE_NAME:Ljava/lang/String; = "bluetooth_name"

.field public static final DEVICE_OUT_ANLG_DOCK_HEADSET_NAME:Ljava/lang/String; = "_analog_dock"

.field public static final DEVICE_OUT_AUX_DIGITAL_NAME:Ljava/lang/String; = "_aux_digital"

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES_NAME:Ljava/lang/String; = "_bt_a2dp_hp"

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_NAME:Ljava/lang/String; = "_bt_a2dp"

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER_NAME:Ljava/lang/String; = "_bt_a2dp_spk"

.field public static final DEVICE_OUT_BLUETOOTH_SCO_CARKIT_NAME:Ljava/lang/String; = "_bt_sco_carkit"

.field public static final DEVICE_OUT_BLUETOOTH_SCO_HEADSET_NAME:Ljava/lang/String; = "_bt_sco_hs"

.field public static final DEVICE_OUT_BLUETOOTH_SCO_NAME:Ljava/lang/String; = "_bt_sco"

.field public static final DEVICE_OUT_DGTL_DOCK_HEADSET_NAME:Ljava/lang/String; = "_digital_dock"

.field public static final DEVICE_OUT_SPEAKER_NAME:Ljava/lang/String; = "_speaker"

.field public static final DEVICE_OUT_USB_ACCESSORY_NAME:Ljava/lang/String; = "_usb_accessory"

.field public static final DEVICE_OUT_USB_DEVICE_NAME:Ljava/lang/String; = "_usb_device"

.field public static final DEVICE_OUT_WIRED_HEADPHONE_NAME:Ljava/lang/String; = "_headphone"

.field public static final DEVICE_OUT_WIRED_HEADSET_NAME:Ljava/lang/String; = "_headset"

.field public static final DM_SUPL_IAPID:Ljava/lang/String; = "dm_supl_iapid"

.field public static final DM_SUPL_OPTIONAL_APN:Ljava/lang/String; = "dm_supl_optional_apn"

.field public static final DM_SUPL_PREFERRED_APN:Ljava/lang/String; = "dm_supl_preferred_apn"

.field public static final DM_SUPL_SERVER_IP:Ljava/lang/String; = "dm_supoer_server_ip"

.field public static final DM_SUPL_SERVER_NAME:Ljava/lang/String; = "dm_supl_server_name"

.field public static final DM_SUPL_SERVER_PORT:Ljava/lang/String; = "dm_supoer_server_port"

.field public static final DOCK_HOTSPOT_ON:Ljava/lang/String; = "dock_hotspot_on"

.field public static final DOCK_WIFI_ON:Ljava/lang/String; = "dock_wifi_on"

.field public static final DSA_PROXY_URL:Ljava/lang/String; = "dsa_proxy_url"

.field public static final DSA_PROXY_URL_DEFAULT:Ljava/lang/String; = "144.226.247.31:80"

.field public static final DSA_SERVER_URL:Ljava/lang/String; = "dsa_server_url"

.field public static final DSA_SERVER_URL_DEFAULT:Ljava/lang/String; = "https://dsa.spcsdns.net:443/dsa/"

.field public static final ENABLE_POWER_EFFICIENCY:Ljava/lang/String; = "enable_power_efficiency"

.field public static final FACEBOOK_EVENT_FLASH_BUTTON:Ljava/lang/String; = "facebook_event_flash_button"

.field public static final FLIP_TO_SPEAKER:Ljava/lang/String; = "flip_to_speaker"

.field public static final FOTA_DOWNLOAD_OPTION:Ljava/lang/String; = "FOTA_download_options"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FOTA_PERIODIC_CHECKIN:Ljava/lang/String; = "FOTA_periodic_checkin"

.field public static final GOOGLE_SYNC_CALENDAR:Ljava/lang/String; = "google_sync_calendar"

.field public static final GOOGLE_SYNC_CONTACTS:Ljava/lang/String; = "google_sync_contact"

.field public static final GOOGLE_SYNC_GMAIL:Ljava/lang/String; = "google_sync_gmai"

.field public static final HOME_COUNTRY_ENABLED:Ljava/lang/String; = "home_country_enabled"

.field public static final HOME_DIALING_COUNTRY_CODE:Ljava/lang/String; = "home_dialing_country_code"

.field public static final HOME_DIALING_POPUP_DIALOG:Ljava/lang/String; = "home_dialing_popup_dialog"

.field public static final HOME_DIALING_PREF:Ljava/lang/String; = "home_dialing_pref"

.field public static final HOME_DIALING_ROAMING_STATE:Ljava/lang/String; = "home_dialing_roaming_state"

.field public static final HOME_DIALING_TRUNK_CODE:Ljava/lang/String; = "home_dialing_trunk_code"

.field public static final HOTSPOT_BLACK_LIST:Ljava/lang/String; = "hotspot_black_list"

.field public static final HOTSPOT_BLOCK_LIST:Ljava/lang/String; = "hotspot_block_list"

.field public static final HOTSPOT_CHANNEL:Ljava/lang/String; = "hotspot_channel"

.field public static final HOTSPOT_CONNECTION_ARRAY:Ljava/lang/String; = "hotspot_connection_array"

.field public static final HOTSPOT_DHCP_MAX_CONNECTION:Ljava/lang/String; = "hotspot_dhcp_max_connection"

.field public static final HOTSPOT_DHCP_ON:Ljava/lang/String; = "hotspot_dhcp_on"

.field public static final HOTSPOT_DHCP_STARTING_IP:Ljava/lang/String; = "hotspot_dhcp_start_ip"

.field public static final HOTSPOT_HIDDEN:Ljava/lang/String; = "hotspot_hidden"

.field public static final HOTSPOT_IP_ADDRESS:Ljava/lang/String; = "hotspot_id_address"

.field public static final HOTSPOT_MACFILTER_ON:Ljava/lang/String; = "hotspot_macfilter_on"

.field public static final HOTSPOT_MAX_CONNECTION:Ljava/lang/String; = "hotspot_max_connection"

.field public static final HOTSPOT_ON:Ljava/lang/String; = "hotspot_on"

.field public static final HOTSPOT_PASSWORD:Ljava/lang/String; = "hotspot_password"

.field public static final HOTSPOT_POWERMODE:Ljava/lang/String; = "hotspot_powermode"

.field public static final HOTSPOT_POWER_MODE_REMIND_DIALOG:Ljava/lang/String; = "hotspot_power_mode_remind"

.field public static final HOTSPOT_REMIND_DIALOG:Ljava/lang/String; = "hotspot_remind_dialog"

.field public static final HOTSPOT_SECURITY_TYPE:Ljava/lang/String; = "hotspot_security_type"

.field public static final HOTSPOT_SLEEP_POLICY:Ljava/lang/String; = "hotspot_sleep_policy"

.field public static final HOTSPOT_SSID:Ljava/lang/String; = "hotspot_ssid"

.field public static final HOTSPOT_SUBNET_MASK:Ljava/lang/String; = "hotspot_subnet_mask"

.field public static final HOTSPOT_WHITE_LIST:Ljava/lang/String; = "hotspot_white_list"

.field public static final HTCSPEAK_DEFALUT_LANG:Ljava/lang/String; = "htcspeak_default_lang"

.field public static final HTC_3D_HOME_SCREEN:Ljava/lang/String; = "htc_3d_home_screen"

.field public static final HTC_ANIMATION_ENABLED:Ljava/lang/String; = "htc_animation_enabled"

.field public static final HTC_APPLICATION_AUTOMATIC_STARTUP:Ljava/lang/String; = "htc_application_automatic_startup"

.field public static final HTC_APPLICATION_NOTIFICATION:Ljava/lang/String; = "htc_application_notification"

.field public static final HTC_APP_STORAGE_LOCATION_BACKUP:Ljava/lang/String; = "htc_app_storage_loc_backup"

.field public static final HTC_APP_STORAGE_LOCATION_PHONE_STORAGE:I = 0x1

.field public static final HTC_APP_STORAGE_LOCATION_SD_CARD_STORAGE:I = 0x2

.field public static final HTC_APP_STORAGE_LOCATION_UNKNOWN_STORAGE:I = 0x0

.field public static final HTC_BEATS_AUDIO:Ljava/lang/String; = "htc_beats_audio"

.field public static final HTC_FONT_SIZE:Ljava/lang/String; = "htc_font_size"

.field public static final HTC_GESTURES_ENABLED:Ljava/lang/String; = "htc_gestures_enabled"

.field public static final HTC_PREFIX_APP_STORAGE_LOCATION:Ljava/lang/String; = "htc_app_storage_loc_"

.field public static final HTC_TRANSITION_ANIMATION_SCALE:Ljava/lang/String; = "htc_transition_animation_scale"

.field public static final HTC_WINDOW_ANIMATION_SCALE:Ljava/lang/String; = "htc_window_animation_scale"

.field public static final HTC_WIRELESS_SLEEP_END_TIME:Ljava/lang/String; = "htc_wireless_sleep_end_time"

.field public static final HTC_WIRELESS_SLEEP_MODE_ENABLED:Ljava/lang/String; = "htc_wireless_sleep_mode_enabled"

.field public static final HTC_WIRELESS_SLEEP_START_TIME:Ljava/lang/String; = "htc_wireless_sleep_start_time"

.field public static final INACTIVITY_TIME:Ljava/lang/String; = "inactivity_time"

.field public static final MODE_CDMA:Ljava/lang/String; = "mode_cdma"

.field public static final MODE_GSM:Ljava/lang/String; = "mode_gsm"

.field public static final MODE_WCDMA:Ljava/lang/String; = "mode_wcdma"

.field private static MONITOR_KEYS:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MOVED_TO_SECURE:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MSG_NOTIFICATION_SOUND:Ljava/lang/String; = "msg_notification"

.field public static final MVNO_OPERATOR:Ljava/lang/String; = "mvno_operator"

.field public static final NATIVE_DIGITS:Ljava/lang/String; = "native_digits"

.field public static final NETWORK_SELECTION:Ljava/lang/String; = "network_selection"

.field public static final NOTIFICATION_BUBBLE:Ljava/lang/String; = "notification_bubble"

.field public static final POCKET_MODE:Ljava/lang/String; = "pocket_mode"

.field public static final POWERSAVER_ENABLE:Ljava/lang/String; = "powersaver_enable"

.field public static final POWER_SAVE_3G:Ljava/lang/String; = "3g_power_save"

.field public static final PREF_AUTOBACKLIGHT:Ljava/lang/String; = "settings.display.autobacklight"

.field public static final PREF_BRIGHTNESS:Ljava/lang/String; = "settings.display.brightness"

.field public static final PSAVER_ENABLE:Ljava/lang/String; = "psaver_enable"

.field public static final PSAVER_SCHEDULE:Ljava/lang/String; = "psaver_schedule"

.field public static final RADIO_USBNET:Ljava/lang/String; = "usbnet"

.field public static final RADIO_WIMAX:Ljava/lang/String; = "wimax"

.field public static final SCREEN_AUTO:Ljava/lang/String; = "screen_auto"

.field public static final SETTINGS_TO_BACKUP:[Ljava/lang/String; = null

.field public static final SETTING_ROAMING_RINGTONE:Ljava/lang/String; = "roaming_ringtone_on"

.field public static final SETTING_SD_CARD_NOTIFICATIONS:Ljava/lang/String; = "sd_card_notifications"

.field public static final SET_POWER_MODE:Ljava/lang/String; = "set_powermode"

.field public static final SHOW_ALL_QUICK_TIPS:Ljava/lang/String; = "show_all_quick_tips"

.field public static final SILENT_MODE:Ljava/lang/String; = "silent_mode"

.field public static final SMART_WIFI_ENABLED:Ljava/lang/String; = "smart_wifi_enabled"

.field public static final SMS_ROAMING_GUARD_ALLOWED:Ljava/lang/String; = "sms_roaming_guard_allowed"

.field public static final VOICE_ROAMING_ALLOWED:Ljava/lang/String; = "voice_roaming_allowed"

.field public static final VOICE_ROAMING_BLOCKED:Ljava/lang/String; = "voice_roaming_blocked"

.field public static final VOICE_ROAMING_GUARD_ALLOWED:Ljava/lang/String; = "voice_roaming_guard_allowed"

.field public static final VOICE_ROAMING_GUARD_BLOCKED:Ljava/lang/String; = "voice_roaming_guard_blocked"

.field public static final VOLUME_DTMF:Ljava/lang/String; = "volume_dtmf"

.field public static final VOLUME_SETTINGS:[Ljava/lang/String; = null

.field public static final VZW_GLOBAL_ROAMING_OPTIONS:Ljava/lang/String; = "vzw_global_roaming_options"

.field public static final WEATHER_WALLPAPER_ANIMATION_ALLOWED:Ljava/lang/String; = "weather_wallpaper_animation_allowed"

.field public static final WIFI_NUM_ALLOWED_CHANNELS:Ljava/lang/String; = "wifi_num_allowed_channels"

.field public static final WIFI_SECURE_NETWORKS_AVAILABLE_NOTIFICATION_ON:Ljava/lang/String; = "wifi_secure_networks_available_notification_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_SLEEP_POLICY_DEFAULT:I

.field private static sGlobalQuickTipFlag:Z

.field private static sQuickTipMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x18

    const/4 v6, 0x5

    const/4 v1, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 145
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MONITOR_KEYS:Ljava/util/HashSet;

    .line 156
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v6}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MONITOR_KEYS:Ljava/util/HashSet;

    .line 158
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MONITOR_KEYS:Ljava/util/HashSet;

    const-string v3, "screen_brightness"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MONITOR_KEYS:Ljava/util/HashSet;

    const-string v3, "screen_brightness_mode"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MONITOR_KEYS:Ljava/util/HashSet;

    const-string v3, "screen_off_timeout"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    const/16 v3, 0x1e

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    .line 164
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "wifi_http_proxy_on"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "http_proxy_server"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 166
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "http_proxy_port"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "data_roaming_allowed"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "data_roaming_blocked"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "voice_roaming_allowed"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "voice_roaming_blocked"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "data_roaming_guard_allowed"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 175
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "data_roaming_guard_blocked"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 176
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "voice_roaming_guard_allowed"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "voice_roaming_guard_blocked"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 178
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "sms_roaming_guard_allowed"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "gpsone_allowed"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 182
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "wifi_pwr_active_mode"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 183
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "wifi_dhcp_roaming"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 184
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "wifi_offload_enabled"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 186
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "wifi_secure_networks_available_notification_on"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 191
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "mobile_data"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 192
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "roaming_sound_on"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "mobile_feature_control"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "cfu_query_when_campon"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "wimax_on"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 201
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "wimax_networks_available_notification_on"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 204
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "data_roaming_guard"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "deny_user_control"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "national_roaming_on"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "usbnet_on"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "vzw_global_roaming_options"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 360
    sput-boolean v5, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->sGlobalQuickTipFlag:Z

    .line 522
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v7, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x39

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x3a

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x58

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x20

    if-ne v0, v3, :cond_2

    :cond_1
    move v0, v2

    :goto_0
    sput v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->WIFI_SLEEP_POLICY_DEFAULT:I

    .line 618
    sget-object v0, Lcom/htc/wrap/android/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "volume_system"

    aput-object v4, v3, v2

    const-string v4, "volume_dtmf"

    aput-object v4, v3, v5

    #calls: Lcom/htc/wrap/android/provider/HtcWrapSettings;->combineStringArrays([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings;->access$200([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    .line 647
    const-string v0, "cal_notification"

    invoke-static {v0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->DEFAULT_CALENDAR_NOTIFICATION_URI:Landroid/net/Uri;

    .line 665
    const-string v0, "msg_notification"

    invoke-static {v0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->DEFAULT_MSG_NOTIFICATION_URI:Landroid/net/Uri;

    .line 1430
    sget-object v0, Lcom/htc/wrap/android/provider/Settings$System;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    const/16 v3, 0xd3

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "weather_wallpaper_animation_allowed"

    aput-object v4, v3, v2

    const-string v2, "wifi_sleep_policy"

    aput-object v2, v3, v5

    const-string v2, "bt_ftp_enable"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string v2, "bt_map_enable"

    aput-object v2, v3, v1

    const/4 v1, 0x4

    const-string v2, "inactivity_time"

    aput-object v2, v3, v1

    const-string v1, "notifications_use_ring_volume"

    aput-object v1, v3, v6

    const/4 v1, 0x6

    const-string v2, "volume_dtmf"

    aput-object v2, v3, v1

    const/4 v1, 0x7

    const-string v2, "volume_voice_speaker"

    aput-object v2, v3, v1

    const/16 v1, 0x8

    const-string v2, "volume_system_speaker"

    aput-object v2, v3, v1

    const/16 v1, 0x9

    const-string v2, "volume_ring_speaker"

    aput-object v2, v3, v1

    const/16 v1, 0xa

    const-string v2, "volume_music_speaker"

    aput-object v2, v3, v1

    const/16 v1, 0xb

    const-string v2, "volume_alarm_speaker"

    aput-object v2, v3, v1

    const/16 v1, 0xc

    const-string v2, "volume_notification_speaker"

    aput-object v2, v3, v1

    const/16 v1, 0xd

    const-string v2, "volume_voice_last_audible_speaker"

    aput-object v2, v3, v1

    const/16 v1, 0xe

    const-string v2, "volume_system_last_audible_speaker"

    aput-object v2, v3, v1

    const/16 v1, 0xf

    const-string v2, "volume_ring_last_audible_speaker"

    aput-object v2, v3, v1

    const/16 v1, 0x10

    const-string v2, "volume_music_last_audible_speaker"

    aput-object v2, v3, v1

    const/16 v1, 0x11

    const-string v2, "volume_alarm_last_audible_speaker"

    aput-object v2, v3, v1

    const/16 v1, 0x12

    const-string v2, "volume_notification_last_audible_speaker"

    aput-object v2, v3, v1

    const/16 v1, 0x13

    const-string v2, "volume_voice_headset"

    aput-object v2, v3, v1

    const/16 v1, 0x14

    const-string v2, "volume_system_headset"

    aput-object v2, v3, v1

    const/16 v1, 0x15

    const-string v2, "volume_ring_headset"

    aput-object v2, v3, v1

    const/16 v1, 0x16

    const-string v2, "volume_music_headset"

    aput-object v2, v3, v1

    const/16 v1, 0x17

    const-string v2, "volume_alarm_headset"

    aput-object v2, v3, v1

    const-string v1, "volume_notification_headset"

    aput-object v1, v3, v7

    const/16 v1, 0x19

    const-string v2, "volume_voice_last_audible_headset"

    aput-object v2, v3, v1

    const/16 v1, 0x1a

    const-string v2, "volume_system_last_audible_headset"

    aput-object v2, v3, v1

    const/16 v1, 0x1b

    const-string v2, "volume_ring_last_audible_headset"

    aput-object v2, v3, v1

    const/16 v1, 0x1c

    const-string v2, "volume_music_last_audible_headset"

    aput-object v2, v3, v1

    const/16 v1, 0x1d

    const-string v2, "volume_alarm_last_audible_headset"

    aput-object v2, v3, v1

    const/16 v1, 0x1e

    const-string v2, "volume_notification_last_audible_headset"

    aput-object v2, v3, v1

    const/16 v1, 0x1f

    const-string v2, "volume_voice_headphone"

    aput-object v2, v3, v1

    const/16 v1, 0x20

    const-string v2, "volume_system_headphone"

    aput-object v2, v3, v1

    const/16 v1, 0x21

    const-string v2, "volume_ring_headphone"

    aput-object v2, v3, v1

    const/16 v1, 0x22

    const-string v2, "volume_music_headphone"

    aput-object v2, v3, v1

    const/16 v1, 0x23

    const-string v2, "volume_alarm_headphone"

    aput-object v2, v3, v1

    const/16 v1, 0x24

    const-string v2, "volume_notification_headphone"

    aput-object v2, v3, v1

    const/16 v1, 0x25

    const-string v2, "volume_voice_last_audible_headphone"

    aput-object v2, v3, v1

    const/16 v1, 0x26

    const-string v2, "volume_system_last_audible_headphone"

    aput-object v2, v3, v1

    const/16 v1, 0x27

    const-string v2, "volume_ring_last_audible_headphone"

    aput-object v2, v3, v1

    const/16 v1, 0x28

    const-string v2, "volume_music_last_audible_headphone"

    aput-object v2, v3, v1

    const/16 v1, 0x29

    const-string v2, "volume_alarm_last_audible_headphone"

    aput-object v2, v3, v1

    const/16 v1, 0x2a

    const-string v2, "volume_notification_last_audible_headphone"

    aput-object v2, v3, v1

    const/16 v1, 0x2b

    const-string v2, "volume_voice_bt_sco"

    aput-object v2, v3, v1

    const/16 v1, 0x2c

    const-string v2, "volume_system_bt_sco"

    aput-object v2, v3, v1

    const/16 v1, 0x2d

    const-string v2, "volume_ring_bt_sco"

    aput-object v2, v3, v1

    const/16 v1, 0x2e

    const-string v2, "volume_music_bt_sco"

    aput-object v2, v3, v1

    const/16 v1, 0x2f

    const-string v2, "volume_alarm_bt_sco"

    aput-object v2, v3, v1

    const/16 v1, 0x30

    const-string v2, "volume_notification_bt_sco"

    aput-object v2, v3, v1

    const/16 v1, 0x31

    const-string v2, "volume_voice_last_audible_bt_sco"

    aput-object v2, v3, v1

    const/16 v1, 0x32

    const-string v2, "volume_system_last_audible_bt_sco"

    aput-object v2, v3, v1

    const/16 v1, 0x33

    const-string v2, "volume_ring_last_audible_bt_sco"

    aput-object v2, v3, v1

    const/16 v1, 0x34

    const-string v2, "volume_music_last_audible_bt_sco"

    aput-object v2, v3, v1

    const/16 v1, 0x35

    const-string v2, "volume_alarm_last_audible_bt_sco"

    aput-object v2, v3, v1

    const/16 v1, 0x36

    const-string v2, "volume_notification_last_audible_bt_sco"

    aput-object v2, v3, v1

    const/16 v1, 0x37

    const-string v2, "volume_voice_bt_sco_hs"

    aput-object v2, v3, v1

    const/16 v1, 0x38

    const-string v2, "volume_system_bt_sco_hs"

    aput-object v2, v3, v1

    const/16 v1, 0x39

    const-string v2, "volume_ring_bt_sco_hs"

    aput-object v2, v3, v1

    const/16 v1, 0x3a

    const-string v2, "volume_music_bt_sco_hs"

    aput-object v2, v3, v1

    const/16 v1, 0x3b

    const-string v2, "volume_alarm_bt_sco_hs"

    aput-object v2, v3, v1

    const/16 v1, 0x3c

    const-string v2, "volume_notification_bt_sco_hs"

    aput-object v2, v3, v1

    const/16 v1, 0x3d

    const-string v2, "volume_voice_last_audible_bt_sco_hs"

    aput-object v2, v3, v1

    const/16 v1, 0x3e

    const-string v2, "volume_system_last_audible_bt_sco_hs"

    aput-object v2, v3, v1

    const/16 v1, 0x3f

    const-string v2, "volume_ring_last_audible_bt_sco_hs"

    aput-object v2, v3, v1

    const/16 v1, 0x40

    const-string v2, "volume_music_last_audible_bt_sco_hs"

    aput-object v2, v3, v1

    const/16 v1, 0x41

    const-string v2, "volume_alarm_last_audible_bt_sco_hs"

    aput-object v2, v3, v1

    const/16 v1, 0x42

    const-string v2, "volume_notification_last_audible_bt_sco_hs"

    aput-object v2, v3, v1

    const/16 v1, 0x43

    const-string v2, "volume_voice_bt_sco_carkit"

    aput-object v2, v3, v1

    const/16 v1, 0x44

    const-string v2, "volume_system_bt_sco_carkit"

    aput-object v2, v3, v1

    const/16 v1, 0x45

    const-string v2, "volume_ring_bt_sco_carkit"

    aput-object v2, v3, v1

    const/16 v1, 0x46

    const-string v2, "volume_music_bt_sco_carkit"

    aput-object v2, v3, v1

    const/16 v1, 0x47

    const-string v2, "volume_alarm_bt_sco_carkit"

    aput-object v2, v3, v1

    const/16 v1, 0x48

    const-string v2, "volume_notification_bt_sco_carkit"

    aput-object v2, v3, v1

    const/16 v1, 0x49

    const-string v2, "volume_voice_last_audible_bt_sco_carkit"

    aput-object v2, v3, v1

    const/16 v1, 0x4a

    const-string v2, "volume_system_last_audible_bt_sco_carkit"

    aput-object v2, v3, v1

    const/16 v1, 0x4b

    const-string v2, "volume_ring_last_audible_bt_sco_carkit"

    aput-object v2, v3, v1

    const/16 v1, 0x4c

    const-string v2, "volume_music_last_audible_bt_sco_carkit"

    aput-object v2, v3, v1

    const/16 v1, 0x4d

    const-string v2, "volume_alarm_last_audible_bt_sco_carkit"

    aput-object v2, v3, v1

    const/16 v1, 0x4e

    const-string v2, "volume_notification_last_audible_bt_sco_carkit"

    aput-object v2, v3, v1

    const/16 v1, 0x4f

    const-string v2, "volume_voice_bt_a2dp"

    aput-object v2, v3, v1

    const/16 v1, 0x50

    const-string v2, "volume_system_bt_a2dp"

    aput-object v2, v3, v1

    const/16 v1, 0x51

    const-string v2, "volume_ring_bt_a2dp"

    aput-object v2, v3, v1

    const/16 v1, 0x52

    const-string v2, "volume_music_bt_a2dp"

    aput-object v2, v3, v1

    const/16 v1, 0x53

    const-string v2, "volume_alarm_bt_a2dp"

    aput-object v2, v3, v1

    const/16 v1, 0x54

    const-string v2, "volume_notification_bt_a2dp"

    aput-object v2, v3, v1

    const/16 v1, 0x55

    const-string v2, "volume_voice_last_audible_bt_a2dp"

    aput-object v2, v3, v1

    const/16 v1, 0x56

    const-string v2, "volume_system_last_audible_bt_a2dp"

    aput-object v2, v3, v1

    const/16 v1, 0x57

    const-string v2, "volume_ring_last_audible_bt_a2dp"

    aput-object v2, v3, v1

    const/16 v1, 0x58

    const-string v2, "volume_music_last_audible_bt_a2dp"

    aput-object v2, v3, v1

    const/16 v1, 0x59

    const-string v2, "volume_alarm_last_audible_bt_a2dp"

    aput-object v2, v3, v1

    const/16 v1, 0x5a

    const-string v2, "volume_notification_last_audible_bt_a2dp"

    aput-object v2, v3, v1

    const/16 v1, 0x5b

    const-string v2, "volume_voice_bt_a2dp_hp"

    aput-object v2, v3, v1

    const/16 v1, 0x5c

    const-string v2, "volume_system_bt_a2dp_hp"

    aput-object v2, v3, v1

    const/16 v1, 0x5d

    const-string v2, "volume_ring_bt_a2dp_hp"

    aput-object v2, v3, v1

    const/16 v1, 0x5e

    const-string v2, "volume_music_bt_a2dp_hp"

    aput-object v2, v3, v1

    const/16 v1, 0x5f

    const-string v2, "volume_alarm_bt_a2dp_hp"

    aput-object v2, v3, v1

    const/16 v1, 0x60

    const-string v2, "volume_notification_bt_a2dp_hp"

    aput-object v2, v3, v1

    const/16 v1, 0x61

    const-string v2, "volume_voice_last_audible_bt_a2dp_hp"

    aput-object v2, v3, v1

    const/16 v1, 0x62

    const-string v2, "volume_system_last_audible_bt_a2dp_hp"

    aput-object v2, v3, v1

    const/16 v1, 0x63

    const-string v2, "volume_ring_last_audible_bt_a2dp_hp"

    aput-object v2, v3, v1

    const/16 v1, 0x64

    const-string v2, "volume_music_last_audible_bt_a2dp_hp"

    aput-object v2, v3, v1

    const/16 v1, 0x65

    const-string v2, "volume_alarm_last_audible_bt_a2dp_hp"

    aput-object v2, v3, v1

    const/16 v1, 0x66

    const-string v2, "volume_notification_last_audible_bt_a2dp_hp"

    aput-object v2, v3, v1

    const/16 v1, 0x67

    const-string v2, "volume_voice_bt_a2dp_spk"

    aput-object v2, v3, v1

    const/16 v1, 0x68

    const-string v2, "volume_system_bt_a2dp_spk"

    aput-object v2, v3, v1

    const/16 v1, 0x69

    const-string v2, "volume_ring_bt_a2dp_spk"

    aput-object v2, v3, v1

    const/16 v1, 0x6a

    const-string v2, "volume_music_bt_a2dp_spk"

    aput-object v2, v3, v1

    const/16 v1, 0x6b

    const-string v2, "volume_alarm_bt_a2dp_spk"

    aput-object v2, v3, v1

    const/16 v1, 0x6c

    const-string v2, "volume_notification_bt_a2dp_spk"

    aput-object v2, v3, v1

    const/16 v1, 0x6d

    const-string v2, "volume_voice_last_audible_bt_a2dp_spk"

    aput-object v2, v3, v1

    const/16 v1, 0x6e

    const-string v2, "volume_system_last_audible_bt_a2dp_spk"

    aput-object v2, v3, v1

    const/16 v1, 0x6f

    const-string v2, "volume_ring_last_audible_bt_a2dp_spk"

    aput-object v2, v3, v1

    const/16 v1, 0x70

    const-string v2, "volume_music_last_audible_bt_a2dp_spk"

    aput-object v2, v3, v1

    const/16 v1, 0x71

    const-string v2, "volume_alarm_last_audible_bt_a2dp_spk"

    aput-object v2, v3, v1

    const/16 v1, 0x72

    const-string v2, "volume_notification_last_audible_bt_a2dp_spk"

    aput-object v2, v3, v1

    const/16 v1, 0x73

    const-string v2, "volume_voice_aux_digital"

    aput-object v2, v3, v1

    const/16 v1, 0x74

    const-string v2, "volume_system_aux_digital"

    aput-object v2, v3, v1

    const/16 v1, 0x75

    const-string v2, "volume_ring_aux_digital"

    aput-object v2, v3, v1

    const/16 v1, 0x76

    const-string v2, "volume_music_aux_digital"

    aput-object v2, v3, v1

    const/16 v1, 0x77

    const-string v2, "volume_alarm_aux_digital"

    aput-object v2, v3, v1

    const/16 v1, 0x78

    const-string v2, "volume_notification_aux_digital"

    aput-object v2, v3, v1

    const/16 v1, 0x79

    const-string v2, "volume_voice_last_audible_aux_digital"

    aput-object v2, v3, v1

    const/16 v1, 0x7a

    const-string v2, "volume_system_last_audible_aux_digital"

    aput-object v2, v3, v1

    const/16 v1, 0x7b

    const-string v2, "volume_ring_last_audible_aux_digital"

    aput-object v2, v3, v1

    const/16 v1, 0x7c

    const-string v2, "volume_music_last_audible_aux_digital"

    aput-object v2, v3, v1

    const/16 v1, 0x7d

    const-string v2, "volume_alarm_last_audible_aux_digital"

    aput-object v2, v3, v1

    const/16 v1, 0x7e

    const-string v2, "volume_notification_last_audible_aux_digital"

    aput-object v2, v3, v1

    const/16 v1, 0x7f

    const-string v2, "volume_voice_analog_dock"

    aput-object v2, v3, v1

    const/16 v1, 0x80

    const-string v2, "volume_system_analog_dock"

    aput-object v2, v3, v1

    const/16 v1, 0x81

    const-string v2, "volume_ring_analog_dock"

    aput-object v2, v3, v1

    const/16 v1, 0x82

    const-string v2, "volume_music_analog_dock"

    aput-object v2, v3, v1

    const/16 v1, 0x83

    const-string v2, "volume_alarm_analog_dock"

    aput-object v2, v3, v1

    const/16 v1, 0x84

    const-string v2, "volume_notification_analog_dock"

    aput-object v2, v3, v1

    const/16 v1, 0x85

    const-string v2, "volume_voice_last_audible_analog_dock"

    aput-object v2, v3, v1

    const/16 v1, 0x86

    const-string v2, "volume_system_last_audible_analog_dock"

    aput-object v2, v3, v1

    const/16 v1, 0x87

    const-string v2, "volume_ring_last_audible_analog_dock"

    aput-object v2, v3, v1

    const/16 v1, 0x88

    const-string v2, "volume_music_last_audible_analog_dock"

    aput-object v2, v3, v1

    const/16 v1, 0x89

    const-string v2, "volume_alarm_last_audible_analog_dock"

    aput-object v2, v3, v1

    const/16 v1, 0x8a

    const-string v2, "volume_notification_last_audible_analog_dock"

    aput-object v2, v3, v1

    const/16 v1, 0x8b

    const-string v2, "volume_voice_digital_dock"

    aput-object v2, v3, v1

    const/16 v1, 0x8c

    const-string v2, "volume_system_digital_dock"

    aput-object v2, v3, v1

    const/16 v1, 0x8d

    const-string v2, "volume_ring_digital_dock"

    aput-object v2, v3, v1

    const/16 v1, 0x8e

    const-string v2, "volume_music_digital_dock"

    aput-object v2, v3, v1

    const/16 v1, 0x8f

    const-string v2, "volume_alarm_digital_dock"

    aput-object v2, v3, v1

    const/16 v1, 0x90

    const-string v2, "volume_notification_digital_dock"

    aput-object v2, v3, v1

    const/16 v1, 0x91

    const-string v2, "volume_voice_last_audible_digital_dock"

    aput-object v2, v3, v1

    const/16 v1, 0x92

    const-string v2, "volume_system_last_audible_digital_dock"

    aput-object v2, v3, v1

    const/16 v1, 0x93

    const-string v2, "volume_ring_last_audible_digital_dock"

    aput-object v2, v3, v1

    const/16 v1, 0x94

    const-string v2, "volume_music_last_audible_digital_dock"

    aput-object v2, v3, v1

    const/16 v1, 0x95

    const-string v2, "volume_alarm_last_audible_digital_dock"

    aput-object v2, v3, v1

    const/16 v1, 0x96

    const-string v2, "volume_notification_last_audible_digital_dock"

    aput-object v2, v3, v1

    const/16 v1, 0x97

    const-string v2, "volume_voice_usb_accessory"

    aput-object v2, v3, v1

    const/16 v1, 0x98

    const-string v2, "volume_system_usb_accessory"

    aput-object v2, v3, v1

    const/16 v1, 0x99

    const-string v2, "volume_ring_usb_accessory"

    aput-object v2, v3, v1

    const/16 v1, 0x9a

    const-string v2, "volume_music_usb_accessory"

    aput-object v2, v3, v1

    const/16 v1, 0x9b

    const-string v2, "volume_alarm_usb_accessory"

    aput-object v2, v3, v1

    const/16 v1, 0x9c

    const-string v2, "volume_notification_usb_accessory"

    aput-object v2, v3, v1

    const/16 v1, 0x9d

    const-string v2, "volume_voice_last_audible_usb_accessory"

    aput-object v2, v3, v1

    const/16 v1, 0x9e

    const-string v2, "volume_system_last_audible_usb_accessory"

    aput-object v2, v3, v1

    const/16 v1, 0x9f

    const-string v2, "volume_ring_last_audible_usb_accessory"

    aput-object v2, v3, v1

    const/16 v1, 0xa0

    const-string v2, "volume_music_last_audible_usb_accessory"

    aput-object v2, v3, v1

    const/16 v1, 0xa1

    const-string v2, "volume_alarm_last_audible_usb_accessory"

    aput-object v2, v3, v1

    const/16 v1, 0xa2

    const-string v2, "volume_notification_last_audible_usb_accessory"

    aput-object v2, v3, v1

    const/16 v1, 0xa3

    const-string v2, "volume_voice_usb_device"

    aput-object v2, v3, v1

    const/16 v1, 0xa4

    const-string v2, "volume_system_usb_device"

    aput-object v2, v3, v1

    const/16 v1, 0xa5

    const-string v2, "volume_ring_usb_device"

    aput-object v2, v3, v1

    const/16 v1, 0xa6

    const-string v2, "volume_music_usb_device"

    aput-object v2, v3, v1

    const/16 v1, 0xa7

    const-string v2, "volume_alarm_usb_device"

    aput-object v2, v3, v1

    const/16 v1, 0xa8

    const-string v2, "volume_notification_usb_device"

    aput-object v2, v3, v1

    const/16 v1, 0xa9

    const-string v2, "volume_voice_last_audible_usb_device"

    aput-object v2, v3, v1

    const/16 v1, 0xaa

    const-string v2, "volume_system_last_audible_usb_device"

    aput-object v2, v3, v1

    const/16 v1, 0xab

    const-string v2, "volume_ring_last_audible_usb_device"

    aput-object v2, v3, v1

    const/16 v1, 0xac

    const-string v2, "volume_music_last_audible_usb_device"

    aput-object v2, v3, v1

    const/16 v1, 0xad

    const-string v2, "volume_alarm_last_audible_usb_device"

    aput-object v2, v3, v1

    const/16 v1, 0xae

    const-string v2, "volume_notification_last_audible_usb_device"

    aput-object v2, v3, v1

    const/16 v1, 0xaf

    const-string v2, "volume_dtmf_last_audible"

    aput-object v2, v3, v1

    const/16 v1, 0xb0

    const-string v2, "be_polite"

    aput-object v2, v3, v1

    const/16 v1, 0xb1

    const-string v2, "pocket_mode"

    aput-object v2, v3, v1

    const/16 v1, 0xb2

    const-string v2, "flip_to_speaker"

    aput-object v2, v3, v1

    const/16 v1, 0xb3

    const-string v2, "window_animation_scale"

    aput-object v2, v3, v1

    const/16 v1, 0xb4

    const-string v2, "transition_animation_scale"

    aput-object v2, v3, v1

    const/16 v1, 0xb5

    const-string v2, "silent_mode"

    aput-object v2, v3, v1

    const/16 v1, 0xb6

    const-string v2, "FOTA_periodic_checkin"

    aput-object v2, v3, v1

    const/16 v1, 0xb7

    const-string v2, "roaming_ringtone_on"

    aput-object v2, v3, v1

    const/16 v1, 0xb8

    const-string v2, "sd_card_notifications"

    aput-object v2, v3, v1

    const/16 v1, 0xb9

    const-string v2, "psaver_enable"

    aput-object v2, v3, v1

    const/16 v1, 0xba

    const-string v2, "psaver_schedule"

    aput-object v2, v3, v1

    const/16 v1, 0xbb

    const-string v2, "htc_application_automatic_startup"

    aput-object v2, v3, v1

    const/16 v1, 0xbc

    const-string v2, "htc_application_notification"

    aput-object v2, v3, v1

    const/16 v1, 0xbd

    const-string v2, "htc_wireless_sleep_mode_enabled"

    aput-object v2, v3, v1

    const/16 v1, 0xbe

    const-string v2, "htc_wireless_sleep_start_time"

    aput-object v2, v3, v1

    const/16 v1, 0xbf

    const-string v2, "htc_wireless_sleep_end_time"

    aput-object v2, v3, v1

    const/16 v1, 0xc0

    const-string v2, "charm_message_notification"

    aput-object v2, v3, v1

    const/16 v1, 0xc1

    const-string v2, "charm_phone_notification"

    aput-object v2, v3, v1

    const/16 v1, 0xc2

    const-string v2, "charm_voice_mail_notification"

    aput-object v2, v3, v1

    const/16 v1, 0xc3

    const-string v2, "charm_message_received_notification"

    aput-object v2, v3, v1

    const/16 v1, 0xc4

    const-string v2, "charm_indicator_supported"

    aput-object v2, v3, v1

    const/16 v1, 0xc5

    const-string v2, "htcspeak_default_lang"

    aput-object v2, v3, v1

    const/16 v1, 0xc6

    const-string v2, "enable_power_efficiency"

    aput-object v2, v3, v1

    const/16 v1, 0xc7

    const-string v2, "set_powermode"

    aput-object v2, v3, v1

    const/16 v1, 0xc8

    const-string v2, "powersaver_enable"

    aput-object v2, v3, v1

    const/16 v1, 0xc9

    const-string v2, "htc_app_storage_loc_backup"

    aput-object v2, v3, v1

    const/16 v1, 0xca

    const-string v2, "htc_gestures_enabled"

    aput-object v2, v3, v1

    const/16 v1, 0xcb

    const-string v2, "htc_animation_enabled"

    aput-object v2, v3, v1

    const/16 v1, 0xcc

    const-string v2, "htc_window_animation_scale"

    aput-object v2, v3, v1

    const/16 v1, 0xcd

    const-string v2, "htc_transition_animation_scale"

    aput-object v2, v3, v1

    const/16 v1, 0xce

    const-string v2, "htc_beats_audio"

    aput-object v2, v3, v1

    const/16 v1, 0xcf

    const-string v2, "htc_font_size"

    aput-object v2, v3, v1

    const/16 v1, 0xd0

    const-string v2, "compass_warning"

    aput-object v2, v3, v1

    const/16 v1, 0xd1

    const-string v2, "date_format_short"

    aput-object v2, v3, v1

    const/16 v1, 0xd2

    const-string v2, "accelerometer_rotation"

    aput-object v2, v3, v1

    #calls: Lcom/htc/wrap/android/provider/HtcWrapSettings;->combineStringArrays([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings;->access$200([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    return-void

    :cond_2
    move v0, v1

    .line 522
    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/htc/wrap/android/provider/Settings$System;-><init>()V

    return-void
.end method

.method public static disableQuickTipFlag(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 2
    .parameter "resolver"
    .parameter "name"

    .prologue
    .line 382
    invoke-static {p0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->loadQuickTipState(Landroid/content/ContentResolver;)V

    .line 384
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->sQuickTipMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->sQuickTipMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    :cond_0
    invoke-static {p0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->saveQuickTipState(Landroid/content/ContentResolver;)V

    .line 390
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_1

    .line 391
    invoke-static {p0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->printQuickTipState(Landroid/content/ContentResolver;)V

    .line 393
    :cond_1
    return-void
.end method

.method public static getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 2
    .parameter "cr"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 329
    invoke-static {p0, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, v:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 332
    new-instance v1, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v1, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 334
    :cond_0
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 2
    .parameter "cr"
    .parameter "name"
    .parameter "defValue"

    .prologue
    .line 302
    invoke-static {p0, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, v:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 307
    .end local p2
    :goto_0
    return p2

    .restart local p2
    :cond_0
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    move p2, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getQuickTipFlag(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 4
    .parameter "resolver"
    .parameter "name"

    .prologue
    const/4 v1, 0x1

    .line 363
    invoke-static {p0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->loadQuickTipState(Landroid/content/ContentResolver;)V

    .line 365
    sget-object v2, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->sQuickTipMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 368
    .local v0, appQuickTipFlag:Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 369
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 372
    :cond_0
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_1

    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/htc/wrap/android/provider/HtcWrapSettings;->Log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings;->access$000(Ljava/lang/String;)V

    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appQuickTipFlag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/htc/wrap/android/provider/HtcWrapSettings;->Log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings;->access$000(Ljava/lang/String;)V

    .line 375
    invoke-static {p0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->printQuickTipState(Landroid/content/ContentResolver;)V

    .line 378
    :cond_1
    sget-boolean v2, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->sGlobalQuickTipFlag:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getShowQuickTip(Landroid/content/ContentResolver;)Z
    .locals 1
    .parameter "resolver"

    .prologue
    .line 437
    invoke-static {p0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->loadQuickTipState(Landroid/content/ContentResolver;)V

    .line 439
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 440
    invoke-static {p0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->printQuickTipState(Landroid/content/ContentResolver;)V

    .line 443
    :cond_0
    sget-boolean v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->sGlobalQuickTipFlag:Z

    return v0
.end method

.method public static getShowQuickTip(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 433
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getShowQuickTip(Landroid/content/ContentResolver;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "resolver"
    .parameter "name"

    .prologue
    .line 229
    const-class v1, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    const-string v0, "HtcWrapSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has moved from android.provider.Settings.System"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to android.provider.Settings.Secure, returning read-only value."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-static {p0, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 234
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {p0, p1}, Lcom/htc/wrap/android/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "name"

    .prologue
    .line 272
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    const-string v0, "HtcWrapSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has moved from android.provider.Settings.System"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to android.provider.Settings.Secure, returning Secure URI."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 277
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/htc/wrap/android/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private static loadQuickTipState(Landroid/content/ContentResolver;)V
    .locals 8
    .parameter "resolver"

    .prologue
    const/4 v7, 0x0

    .line 466
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_0

    .line 467
    const-string v4, "loadQuickTipState()"

    #calls: Lcom/htc/wrap/android/provider/HtcWrapSettings;->Log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/htc/wrap/android/provider/HtcWrapSettings;->access$000(Ljava/lang/String;)V

    .line 469
    :cond_0
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v4, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->sQuickTipMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 472
    const-string v4, "show_all_quick_tips"

    invoke-static {p0, v4}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 473
    .local v3, value:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 497
    :cond_1
    :goto_0
    return-void

    .line 477
    :cond_2
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 478
    .local v2, segments:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, index:I
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_4

    .line 479
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_3

    .line 480
    aget-object v4, v2, v0

    #calls: Lcom/htc/wrap/android/provider/HtcWrapSettings;->Log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/htc/wrap/android/provider/HtcWrapSettings;->access$000(Ljava/lang/String;)V

    .line 483
    :cond_3
    packed-switch v0, :pswitch_data_0

    .line 488
    aget-object v4, v2, v0

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 489
    .local v1, pairs:[Ljava/lang/String;
    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->sQuickTipMap:Ljava/util/concurrent/ConcurrentHashMap;

    aget-object v5, v1, v7

    const/4 v6, 0x1

    aget-object v6, v1, v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    .end local v1           #pairs:[Ljava/lang/String;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 485
    :pswitch_0
    aget-object v4, v2, v7

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sput-boolean v4, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->sGlobalQuickTipFlag:Z

    goto :goto_2

    .line 494
    :cond_4
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_1

    .line 495
    invoke-static {p0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->printQuickTipState(Landroid/content/ContentResolver;)V

    goto :goto_0

    .line 483
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static printQuickTipState(Landroid/content/ContentResolver;)V
    .locals 2
    .parameter "resolver"

    .prologue
    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->sQuickTipMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/htc/wrap/android/provider/HtcWrapSettings;->Log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/htc/wrap/android/provider/HtcWrapSettings;->access$000(Ljava/lang/String;)V

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "database: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "show_all_quick_tips"

    invoke-static {p0, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/htc/wrap/android/provider/HtcWrapSettings;->Log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/htc/wrap/android/provider/HtcWrapSettings;->access$000(Ljava/lang/String;)V

    .line 502
    return-void
.end method

.method public static putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 354
    if-eqz p2, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-static {p0, p1, v0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "resolver"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 249
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 250
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MONITOR_KEYS:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/htc/wrap/android/provider/HtcWrapSettings;->Log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/htc/wrap/android/provider/HtcWrapSettings;->access$000(Ljava/lang/String;)V

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/htc/wrap/android/provider/HtcWrapSettings;->Log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/htc/wrap/android/provider/HtcWrapSettings;->access$000(Ljava/lang/String;)V

    .line 253
    #calls: Lcom/htc/wrap/android/provider/HtcWrapSettings;->traceCallingStack()V
    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapSettings;->access$100()V

    .line 257
    :cond_0
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    const-string v0, "HtcWrapSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has moved from android.provider.Settings.System"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to android.provider.Settings.Secure, value is unchanged."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v0, 0x0

    .line 262
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/htc/wrap/android/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static saveQuickTipState(Landroid/content/ContentResolver;)V
    .locals 7
    .parameter "resolver"

    .prologue
    const/16 v6, 0x3b

    const/4 v3, 0x1

    .line 447
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_0

    .line 448
    const-string v4, "saveQuickTipState()"

    #calls: Lcom/htc/wrap/android/provider/HtcWrapSettings;->Log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/htc/wrap/android/provider/HtcWrapSettings;->access$000(Ljava/lang/String;)V

    .line 451
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 454
    .local v0, builder:Ljava/lang/StringBuilder;
    sget-boolean v4, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->sGlobalQuickTipFlag:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->sQuickTipMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    sput-boolean v3, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->sGlobalQuickTipFlag:Z

    .line 455
    sget-boolean v3, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->sGlobalQuickTipFlag:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 456
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 458
    sget-object v3, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->sQuickTipMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 459
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 454
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 462
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_2
    const-string v3, "show_all_quick_tips"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 463
    return-void
.end method

.method public static setShowQuickTip(Landroid/content/ContentResolver;Z)V
    .locals 5
    .parameter "resolver"
    .parameter "bool"

    .prologue
    .line 411
    invoke-static {p0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->loadQuickTipState(Landroid/content/ContentResolver;)V

    .line 413
    sput-boolean p1, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->sGlobalQuickTipFlag:Z

    .line 414
    sget-object v3, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->sQuickTipMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 415
    .local v2, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 416
    .local v1, packageName:Ljava/lang/String;
    sget-object v3, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->sQuickTipMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 419
    .end local v1           #packageName:Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->saveQuickTipState(Landroid/content/ContentResolver;)V

    .line 421
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_1

    .line 422
    invoke-static {p0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->printQuickTipState(Landroid/content/ContentResolver;)V

    .line 424
    :cond_1
    return-void
.end method

.method public static setShowQuickTip(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "bool"

    .prologue
    .line 403
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->setShowQuickTip(Landroid/content/ContentResolver;Z)V

    .line 405
    new-instance v0, Landroid/content/Intent;

    const-string v1, "htc.intent.action.QUICK_TIPS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 406
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 407
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 408
    return-void
.end method
