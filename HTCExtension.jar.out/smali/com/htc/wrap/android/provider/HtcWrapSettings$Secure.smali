.class public Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;
.super Lcom/htc/wrap/android/provider/Settings$Secure;
.source "HtcWrapSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Secure"
.end annotation


# static fields
.field public static final ADB_BLOCKED:Ljava/lang/String; = "adb_blocked"

.field public static final ADMIN_LOCKED:Ljava/lang/String; = "admin_locked"

.field public static final APN_LOCKED:Ljava/lang/String; = "apn_locked"

.field public static final AUTOSYNC_IN_MOBILE_ON:Ljava/lang/String; = "autosync_in_mobile_on"

.field public static final AUTOSYNC_IN_WIFI_ON:Ljava/lang/String; = "autosync_in_wifi_on"

.field public static final BOOT_LOCK:Ljava/lang/String; = "boot_lock"

.field public static final CFU_QUERY_WHEN_CAMPON_MESSAGE:Ljava/lang/String; = "cfu_query_when_campon"

.field public static final CUSTOMIZED_LOCATION_PROVIDER:Ljava/lang/String; = "customized_location_provider"

.field public static final DATA_ENCRYPTION:Ljava/lang/String; = "data_encryption"

.field public static final DATA_ROAMING_ALLOWED:Ljava/lang/String; = "data_roaming_allowed"

.field public static final DATA_ROAMING_BLOCKED:Ljava/lang/String; = "data_roaming_blocked"

.field public static final DATA_ROAMING_GUARD:Ljava/lang/String; = "data_roaming_guard"

.field public static final DATA_ROAMING_GUARD_ALLOWED:Ljava/lang/String; = "data_roaming_guard_allowed"

.field public static final DATA_ROAMING_GUARD_BLOCKED:Ljava/lang/String; = "data_roaming_guard_blocked"

.field public static final DENY_USER_CONTROL:Ljava/lang/String; = "deny_user_control"

.field public static final DTMF_ENABLED:Ljava/lang/String; = "dtmf_enabled"

.field public static final EMERGENCY_LOCK_TEXT:Ljava/lang/String; = "emergency_lock"

.field public static final ENABLE_HTC_FASTBOOT:Ljava/lang/String; = "enable_fastboot"

.field public static final ERROR_REPORT_PRIVACY_VERSION:Ljava/lang/String; = "error_report_privacy_version"

.field public static final EXT_VOICE_CALL_PHONE_TYPE:Ljava/lang/String; = "ext_voice_call_phone_type"

.field public static final GPSONE_ALLOWED:Ljava/lang/String; = "gpsone_allowed"

.field public static final HAS_PEN_DOWN_AFTER_SETUP_WIZARD:Ljava/lang/String; = "has_pen_down_after_setup_wizard"

.field public static final HTCSPEAK_DEFALUT_LANG:Ljava/lang/String; = "htcspeak_default_lang"

.field public static final HTC_2D_3D_MODE:Ljava/lang/String; = "htc_2d_3d_mode"

.field public static final HTC_BLOCK_VIRTUAL_KEY:Ljava/lang/String; = "htc_block_virtual_key"

.field public static final HTC_COLLECT_LOCATION_DATA:Ljava/lang/String; = "htc_collect_location_data"

.field public static final HTC_ENABLE_DEFERRED_ACTION_FOR_REJECTING_CALLS:Ljava/lang/String; = "htc_enable_deferred_action_for_rejecting_calls"

.field public static final HTC_ERROR_REPORT_AUTO_SEND:Ljava/lang/String; = "htc_error_report_auto_send"

.field public static final HTC_ERROR_REPORT_PREFER_NETWORK:Ljava/lang/String; = "htc_error_report_prefer_network"

.field public static final HTC_ERROR_REPORT_SETTING:Ljava/lang/String; = "htc_error_report_setting"

.field public static final HTC_LOCATE_ALLOWED:Ljava/lang/String; = "htc_locate_allowed"

.field public static final HTC_MESSAGE_NOTIFICATION_PREVIEW:Ljava/lang/String; = "htc_message_notification_preview"

.field public static final HTC_MUSIC_BYPASS_ENABLED:Ljava/lang/String; = "htc_music_bypass_enabled"

.field public static final HTC_NEW_MESSAGE_NOTIFICATION:Ljava/lang/String; = "htc_new_message_notification"

.field public static final HTC_PHONE_NOTIFICATION_PREVIEW:Ljava/lang/String; = "htc_phone_notification_preview"

.field public static final HTC_SPEAK_ANNOUNCE:Ljava/lang/String; = "htc_speak_announce"

.field public static final HTTP_PROXY_PORT:Ljava/lang/String; = "http_proxy_port"

.field public static final HTTP_PROXY_SERVER:Ljava/lang/String; = "http_proxy_server"

.field public static final INTEGRATE_GOOGLE_NAVIGATION:Ljava/lang/String; = "integrate_google_navigation"

.field public static final LOGGING_ID2:Ljava/lang/String; = "logging_id2"

.field public static final MMS_X_WAP_PROFILE_URL:Ljava/lang/String; = "mms_x_wap_profile_url"

.field public static final MOBILEDATA_ON:Ljava/lang/String; = "mobiledata_on"

.field public static final MOBILE_FEATURE_CONTROL:Ljava/lang/String; = "mobile_feature_control"

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

.field public static final NATIONAL_ROAMING_ON:Ljava/lang/String; = "national_roaming_on"

.field public static final OTA_DELAY:Ljava/lang/String; = "ota_delay"

.field public static final PDP_WATCHDOG_PING_ADDRESS:Ljava/lang/String; = "pdp_watchdog_ping_address"

.field public static final PDP_WATCHDOG_PING_DEADLINE:Ljava/lang/String; = "pdp_watchdog_ping_deadline"

.field public static final PEN_AS_TOUCH:Ljava/lang/String; = "pen_as_touch"

.field public static final PEN_ATTR_FOR_EACH_APP:Ljava/lang/String; = "pen_attr_for_each_app"

.field public static final PEN_ATTR_FOR_EACH_APP_DEFAULT:I = 0x0

.field public static final PEN_ENABLE_SKETCH:Ljava/lang/String; = "pen_enable_sketch"

.field public static final PEN_ENABLE_SKETCH_DEFAULT:I = 0x0

.field public static final PEN_LOWER_BUTTON_ID:Ljava/lang/String; = "pen_lower_button_id"

.field public static final PEN_UPPER_BUTTON_ID:Ljava/lang/String; = "pen_upper_button_id"

.field public static final PHONE_ENCRYPTION:Ljava/lang/String; = "phone_encryption"

.field public static final ROAMING_SOUND_ON:Ljava/lang/String; = "roaming_sound_on"

.field public static final SCREENSHOT_BLOCKED:Ljava/lang/String; = "screenshot_blocked"

.field public static final SD_ENCRYPTION:Ljava/lang/String; = "sd_encryption"

.field public static final SELECT_RESOLUTION_TYPE:Ljava/lang/String; = "select_resolution_type"

.field public static final SEND_HTC_APPLICATION_LOG:Ljava/lang/String; = "send_htc_application_log"

.field public static final SEND_HTC_ERROR_REPORT:Ljava/lang/String; = "send_htc_error_report"

.field public static final SETTINGS_TO_BACKUP:[Ljava/lang/String; = null

.field public static final SMS_ROAMING_GUARD_ALLOWED:Ljava/lang/String; = "sms_roaming_guard_allowed"

.field public static final TELLHTC_ENABLE_SENSE_DOT_COM_LOG:Ljava/lang/String; = "tellhtc_enable_sense_dot_com_log"

.field public static final TELL_HTC_PRIVACY_VERSION:Ljava/lang/String; = "tell_htc_privacy_version"

.field public static final TETHERING_BLOCKED:Ljava/lang/String; = "tethering_blocked"

.field public static final USBNET_ON:Ljava/lang/String; = "usbnet_on"

.field public static final USB_BLOCKED:Ljava/lang/String; = "usb_blocked"

.field public static final USER_PROFILE_PRIVACY_VERSION:Ljava/lang/String; = "user_profile_privacy_version"

.field public static final VOICE_ROAMING_ALLOWED:Ljava/lang/String; = "voice_roaming_allowed"

.field public static final VOICE_ROAMING_BLOCKED:Ljava/lang/String; = "voice_roaming_blocked"

.field public static final VOICE_ROAMING_GUARD_ALLOWED:Ljava/lang/String; = "voice_roaming_guard_allowed"

.field public static final VOICE_ROAMING_GUARD_BLOCKED:Ljava/lang/String; = "voice_roaming_guard_blocked"

.field public static final VZW_GLOBAL_ROAMING_OPTIONS:Ljava/lang/String; = "vzw_global_roaming_options"

.field public static final WIFI_AUTO_IP_ON:Ljava/lang/String; = "wifi_auto_ip_on"

.field public static final WIFI_DHCP_ROAMING:Ljava/lang/String; = "wifi_dhcp_roaming"

.field public static final WIFI_HTTP_PROXY_ON:Ljava/lang/String; = "wifi_http_proxy_on"

.field public static final WIFI_NUM_ALLOWED_CHANNELS:Ljava/lang/String; = "wifi_num_allowed_channels"

.field public static final WIFI_OFFLOAD_ENABLED:Ljava/lang/String; = "wifi_offload_enabled"

.field public static final WIFI_PWR_ACTIVE_MODE:Ljava/lang/String; = "wifi_pwr_active_mode"

.field public static final WIFI_SECURE_NETWORKS_AVAILABLE_NOTIFICATION_ON:Ljava/lang/String; = "wifi_secure_networks_available_notification_on"

.field public static final WIMAX_IDLE_MS:Ljava/lang/String; = "wimax_idle_ms"

.field public static final WIMAX_MOBILE_DATA_TRANSITION_WAKELOCK_TIMEOUT_MS:Ljava/lang/String; = "wimax_mobile_data_transition_wakelock_timeout_ms"

.field public static final WIMAX_NETWORKS_AVAILABLE_NOTIFICATION_ON:Ljava/lang/String; = "wimax_networks_available_notification_on"

.field public static final WIMAX_ON:Ljava/lang/String; = "wimax_on"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 1771
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->MONITOR_KEYS:Ljava/util/HashSet;

    .line 1778
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 1779
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->MONITOR_KEYS:Ljava/util/HashSet;

    .line 1780
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->MONITOR_KEYS:Ljava/util/HashSet;

    const-string v1, "location_providers_allowed"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1781
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->MONITOR_KEYS:Ljava/util/HashSet;

    const-string v1, "mobile_data"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1782
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->MONITOR_KEYS:Ljava/util/HashSet;

    const-string v1, "data_roaming"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2580
    :cond_0
    sget-object v0, Lcom/htc/wrap/android/provider/Settings$Secure;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    const/16 v1, 0x20

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "install_non_market_apps"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "tts_default_variant"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "wifi_country_code"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "wifi_num_allowed_channels"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "wifi_secure_networks_available_notification_on"

    aput-object v3, v1, v2

    const-string v2, "location_providers_allowed"

    aput-object v2, v1, v4

    const/4 v2, 0x6

    const-string v3, "data_roaming_allowed"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "data_roaming_blocked"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "data_roaming_guard_allowed"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "data_roaming_guard_blocked"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "voice_roaming_allowed"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "voice_roaming_blocked"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "voice_roaming_guard_allowed"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "voice_roaming_guard_blocked"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "sms_roaming_guard_allowed"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "htc_locate_allowed"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "integrate_google_navigation"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "pen_attr_for_each_app"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "pen_enable_sketch"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "pen_as_touch"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "pen_upper_button_id"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "pen_lower_button_id"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "ui_night_mode"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "htc_new_message_notification"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "vzw_global_roaming_options"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "enable_fastboot"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "htc_music_bypass_enabled"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "htc_phone_notification_preview"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "htc_message_notification_preview"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "incall_power_button_behavior"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "long_press_timeout"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "spell_checker_enabled"

    aput-object v3, v1, v2

    #calls: Lcom/htc/wrap/android/provider/HtcWrapSettings;->combineStringArrays([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings;->access$200([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1770
    invoke-direct {p0}, Lcom/htc/wrap/android/provider/Settings$Secure;-><init>()V

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
    .line 1886
    invoke-static {p0, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1888
    .local v0, v:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1889
    new-instance v1, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v1, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1891
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
    .line 1859
    invoke-static {p0, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1861
    .local v0, v:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1864
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

.method public static final isDataRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 2
    .parameter "cr"
    .parameter "provider"

    .prologue
    .line 2642
    const-string v1, "data_roaming_allowed"

    invoke-static {p0, v1}, Lcom/htc/wrap/android/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2643
    .local v0, allowedProviders:Ljava/lang/String;
    const/16 v1, 0x2c

    invoke-static {v0, v1, p1}, Landroid/text/TextUtils;->delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static final isDataRoamingBlocked(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 2
    .parameter "cr"
    .parameter "provider"

    .prologue
    .line 2671
    const-string v1, "data_roaming_blocked"

    invoke-static {p0, v1}, Lcom/htc/wrap/android/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2672
    .local v0, allowedProviders:Ljava/lang/String;
    const/16 v1, 0x2c

    invoke-static {v0, v1, p1}, Landroid/text/TextUtils;->delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static final isDataRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 2
    .parameter "cr"
    .parameter "provider"

    .prologue
    .line 2701
    const-string v1, "data_roaming_guard_allowed"

    invoke-static {p0, v1}, Lcom/htc/wrap/android/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2702
    .local v0, allowedProviders:Ljava/lang/String;
    const/16 v1, 0x2c

    invoke-static {v0, v1, p1}, Landroid/text/TextUtils;->delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static final isDataRoamingGuardBlocked(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 2
    .parameter "cr"
    .parameter "provider"

    .prologue
    .line 2730
    const-string v1, "data_roaming_guard_blocked"

    invoke-static {p0, v1}, Lcom/htc/wrap/android/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2731
    .local v0, allowedProviders:Ljava/lang/String;
    const/16 v1, 0x2c

    invoke-static {v0, v1, p1}, Landroid/text/TextUtils;->delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static final isSmsRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 2
    .parameter "cr"
    .parameter "provider"

    .prologue
    .line 2875
    const-string v1, "sms_roaming_guard_allowed"

    invoke-static {p0, v1}, Lcom/htc/wrap/android/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2876
    .local v0, allowedProviders:Ljava/lang/String;
    const/16 v1, 0x2c

    invoke-static {v0, v1, p1}, Landroid/text/TextUtils;->delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static final isVoiceRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 2
    .parameter "cr"
    .parameter "provider"

    .prologue
    .line 2759
    const-string v1, "voice_roaming_allowed"

    invoke-static {p0, v1}, Lcom/htc/wrap/android/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2760
    .local v0, allowedProviders:Ljava/lang/String;
    const/16 v1, 0x2c

    invoke-static {v0, v1, p1}, Landroid/text/TextUtils;->delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static final isVoiceRoamingBlocked(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 2
    .parameter "cr"
    .parameter "provider"

    .prologue
    .line 2788
    const-string v1, "voice_roaming_blocked"

    invoke-static {p0, v1}, Lcom/htc/wrap/android/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2789
    .local v0, allowedProviders:Ljava/lang/String;
    const/16 v1, 0x2c

    invoke-static {v0, v1, p1}, Landroid/text/TextUtils;->delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static final isVoiceRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 2
    .parameter "cr"
    .parameter "provider"

    .prologue
    .line 2817
    const-string v1, "voice_roaming_guard_allowed"

    invoke-static {p0, v1}, Lcom/htc/wrap/android/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2818
    .local v0, allowedProviders:Ljava/lang/String;
    const/16 v1, 0x2c

    invoke-static {v0, v1, p1}, Landroid/text/TextUtils;->delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static final isVoiceRoamingGuardBlocked(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 2
    .parameter "cr"
    .parameter "provider"

    .prologue
    .line 2846
    const-string v1, "voice_roaming_guard_blocked"

    invoke-static {p0, v1}, Lcom/htc/wrap/android/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2847
    .local v0, allowedProviders:Ljava/lang/String;
    const/16 v1, 0x2c

    invoke-static {v0, v1, p1}, Landroid/text/TextUtils;->delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1911
    if-eqz p2, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-static {p0, p1, v0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "resolver"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1801
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 1802
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->MONITOR_KEYS:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1803
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

    .line 1804
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

    .line 1805
    #calls: Lcom/htc/wrap/android/provider/HtcWrapSettings;->traceCallingStack()V
    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapSettings;->access$100()V

    .line 1810
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/htc/wrap/android/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final setDataRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 2
    .parameter "cr"
    .parameter "provider"
    .parameter "enabled"

    .prologue
    .line 2656
    if-eqz p2, :cond_0

    .line 2657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2661
    :goto_0
    const-string v0, "data_roaming_allowed"

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2662
    return-void

    .line 2659
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static final setDataRoamingBlocked(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 2
    .parameter "cr"
    .parameter "provider"
    .parameter "enabled"

    .prologue
    .line 2685
    if-eqz p2, :cond_0

    .line 2686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2690
    :goto_0
    const-string v0, "data_roaming_blocked"

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2691
    return-void

    .line 2688
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static final setDataRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 2
    .parameter "cr"
    .parameter "provider"
    .parameter "enabled"

    .prologue
    .line 2715
    if-eqz p2, :cond_0

    .line 2716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2720
    :goto_0
    const-string v0, "data_roaming_guard_allowed"

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2721
    return-void

    .line 2718
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static final setDataRoamingGuardBlocked(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 2
    .parameter "cr"
    .parameter "provider"
    .parameter "enabled"

    .prologue
    .line 2744
    if-eqz p2, :cond_0

    .line 2745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2749
    :goto_0
    const-string v0, "data_roaming_guard_blocked"

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2750
    return-void

    .line 2747
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static final setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 1
    .parameter "cr"
    .parameter "provider"
    .parameter "enabled"

    .prologue
    .line 1828
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 1829
    #calls: Lcom/htc/wrap/android/provider/HtcWrapSettings;->traceCallingStack()V
    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapSettings;->access$100()V

    .line 1833
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/htc/wrap/android/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1835
    return-void
.end method

.method public static final setSmsRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 2
    .parameter "cr"
    .parameter "provider"
    .parameter "enabled"

    .prologue
    .line 2889
    if-eqz p2, :cond_0

    .line 2890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2894
    :goto_0
    const-string v0, "sms_roaming_guard_allowed"

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2895
    return-void

    .line 2892
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static final setVoiceRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 2
    .parameter "cr"
    .parameter "provider"
    .parameter "enabled"

    .prologue
    .line 2773
    if-eqz p2, :cond_0

    .line 2774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2778
    :goto_0
    const-string v0, "voice_roaming_allowed"

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2779
    return-void

    .line 2776
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static final setVoiceRoamingBlocked(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 2
    .parameter "cr"
    .parameter "provider"
    .parameter "enabled"

    .prologue
    .line 2802
    if-eqz p2, :cond_0

    .line 2803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2807
    :goto_0
    const-string v0, "voice_roaming_blocked"

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2808
    return-void

    .line 2805
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static final setVoiceRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 2
    .parameter "cr"
    .parameter "provider"
    .parameter "enabled"

    .prologue
    .line 2831
    if-eqz p2, :cond_0

    .line 2832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2836
    :goto_0
    const-string v0, "voice_roaming_guard_allowed"

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2837
    return-void

    .line 2834
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static final setVoiceRoamingGuardBlocked(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 2
    .parameter "cr"
    .parameter "provider"
    .parameter "enabled"

    .prologue
    .line 2860
    if-eqz p2, :cond_0

    .line 2861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2865
    :goto_0
    const-string v0, "voice_roaming_guard_blocked"

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2866
    return-void

    .line 2863
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
