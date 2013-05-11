.class public Lcom/htc/profileflag/ProfileConfig;
.super Ljava/lang/Object;
.source "ProfileConfig.java"


# static fields
#the value of this static final field might be set in the static constructor
.field public static final HtcDebug:Z = false

.field static final LOGTAG:Ljava/lang/String; = "ProfileConfig"

.field public static final LOGTAG_LAUNCH:Ljava/lang/String; = "ProfileLaunch"

.field public static final LOGTAG_RESUME:Ljava/lang/String; = "ProfileResume"

.field private static final PROF_UI_MESSAGE_LIMITATION_FLASH:Ljava/lang/String; = "profiler.performance.flash"

.field private static final PROP_ANRHISTORY:Ljava/lang/String; = "debugtool.anrhistory"

.field private static final PROP_ANR_DUMP_BINDER:Ljava/lang/String; = "profiler.anr_dump_binder"

.field private static final PROP_ANR_DUMP_NATIVE_UID:Ljava/lang/String; = "profiler.anr_dump_native_uid"

.field private static final PROP_CHECK_HEAP:Ljava/lang/String; = "profiler.checkheap"

.field private static final PROP_CHECK_LOW_MEMORY:Ljava/lang/String; = "profiler.checklowmemory"

.field private static final PROP_CHECK_LOW_STORAGE:Ljava/lang/String; = "profiler.checklowstorage"

.field private static final PROP_DEBUGBROADCAST:Ljava/lang/String; = "profiler.debugbroadcast"

.field private static final PROP_DEBUGB_TIMETICK:Ljava/lang/String; = "profiler.debug.timetick"

.field private static final PROP_DEBUG_BATTERY_HISTORY:Ljava/lang/String; = "profiler.dbg.batthistory"

.field private static final PROP_DEBUG_DISABLE_HW_ACCEL:Ljava/lang/String; = "profiler.debug.disable_hw_accel"

.field private static final PROP_DEBUG_HIDE_BG_ANR:Ljava/lang/String; = "profiler.debug.hide_bg_anr"

.field private static final PROP_DEBUG_MONITOR:Ljava/lang/String; = "profiler.debugmonitor"

.field private static final PROP_DEBUG_PROVIDER_CLIENT:Ljava/lang/String; = "profiler.debug.provider_client"

.field private static final PROP_DEBUG_SCHEDULE:Ljava/lang/String; = "profiler.debug_schedule"

.field private static final PROP_DEBUG_WAKELOCK:Ljava/lang/String; = "profiler.wakelock"

.field private static final PROP_DUMP_PROVIDER_STACK_ONDYING:Ljava/lang/String; = "profiler.provdump.ondying"

.field private static final PROP_FAST_LAUNCH:Ljava/lang/String; = "fast_launch"

.field private static final PROP_FEATURE_HARDWARE_RESET:Ljava/lang/String; = "ro.product.hwreset"

.field private static final PROP_FEATURE_HARDWARE_RESET_TIMER1:Ljava/lang/String; = "ro.product.hwreset.timer1"

.field private static final PROP_FEATURE_HARDWARE_RESET_TIMER2:Ljava/lang/String; = "ro.product.hwreset.timer2"

.field private static final PROP_FEATURE_MULTI_CORE_FUNCTION_SWITCH:Ljava/lang/String; = "persist.htc.multicore.switch"

.field private static final PROP_FEATURE_MULTI_CORE_TIMEOUT_MILLISECOND:Ljava/lang/String; = "persist.htc.multicore.timeout"

.field private static final PROP_FEATURE_SCREEN_CAPTURE:Ljava/lang/String; = "ro.htc.framework.screencapture"

.field private static final PROP_FEATURE_SHAREKEY_LONG_PRESS_ACT:Ljava/lang/String; = "ro.htc.sharekey.lact"

.field private static final PROP_FEATURE_SHAREKEY_LONG_PRESS_INTENT_ACTION:Ljava/lang/String; = "ro.htc.sharekey.lint"

.field private static final PROP_FEATURE_SHAREKEY_LONG_PRESS_PKG:Ljava/lang/String; = "ro.htc.sharekey.lpkg"

.field private static final PROP_FEATURE_SHAREKEY_SHORT_PRESS_ACT:Ljava/lang/String; = "ro.htc.sharekey.sact"

.field private static final PROP_FEATURE_SHAREKEY_SHORT_PRESS_INTENT_ACTION:Ljava/lang/String; = "ro.htc.sharekey.sint"

.field private static final PROP_FEATURE_SHAREKEY_SHORT_PRESS_PKG:Ljava/lang/String; = "ro.htc.sharekey.spkg"

.field private static final PROP_FEATURE_STATUS_BAR_COLLAPSE_DELAY_MILLISECOND_FOR_WIFIDISPLAY:Ljava/lang/String; = "persist.htc.sbcd.wifidisplay"

.field private static final PROP_FEATURE_STATUS_BAR_COLLAPSE_TIMEOUT_MILLISECOND:Ljava/lang/String; = "persist.htc.sbcollapsetimeout"

.field public static final PROP_FORCE_DISABLE_ERROR_REPORT:Ljava/lang/String; = "profiler.force_disable_err_rpt"

.field public static final PROP_FORCE_DISABLE_ULOG:Ljava/lang/String; = "profiler.force_disable_ulog"

.field private static final PROP_FREE_FILEMAP:Ljava/lang/String; = "profiler.freeFileMap"

.field private static final PROP_FREE_NATIVE_BITMAP:Ljava/lang/String; = "profiler.freeNativeBmp"

.field private static final PROP_FREE_NATIVE_BITMAP_DEBUG:Ljava/lang/String; = "profiler.freeNativeBmpDebug"

.field private static final PROP_HUNG_DOBUGREPORT:Ljava/lang/String; = "profiler.hung.dumpdobugreport"

.field private static final PROP_HUNG_DUMPALLPROCESSES:Ljava/lang/String; = "profiler.hung.dumpallprocesses"

.field private static final PROP_HUNG_DUMPMEDIANATIVE:Ljava/lang/String; = "profiler.hung.dumpmedianative"

.field private static final PROP_HUNG_DUMPSYSNATIVE:Ljava/lang/String; = "profiler.hung.dumpsysnative"

.field private static final PROP_HUNG_KEEPALIVE:Ljava/lang/String; = "profiler.hung.keepalive"

.field private static final PROP_KERNELSTACK:Ljava/lang/String; = "profiler.debugtool.kernelstack"

.field private static final PROP_KEYINPUTQUEUE_DEBUGUPDOWN:Ljava/lang/String; = "profiler.KIQdebugupdown"

.field private static final PROP_KEY_LAUNCH:Ljava/lang/String; = "profiler.launch"

.field private static final PROP_KEY_PERFORMANCE:Ljava/lang/String; = "profiler.performance"

.field private static final PROP_KEY_PREFIX:Ljava/lang/String; = "profiler."

.field private static final PROP_KEY_RESUME:Ljava/lang/String; = "profiler.resume"

.field private static final PROP_LAUNCHPID_FILEPATH:Ljava/lang/String; = "/sdcard/profilePID"

.field private static final PROP_LOG_FPS:Ljava/lang/String; = "profiler.logfps"

.field private static final PROP_LOW_STORAGE_THRESHOLD:Ljava/lang/String; = "profiler.lowstoragethreshold"

.field private static final PROP_MONITOR_THREAD_CPU_USAGE:Ljava/lang/String; = "profiler.monitorthreadcpuusage"

.field private static final PROP_NO_ROTATIONANIMATION:Ljava/lang/String; = "profiler.no_RotationAnimation"

.field private static final PROP_OPEN_CURSOR:Ljava/lang/String; = "profiler.opencursor"

.field private static final PROP_POWER:Ljava/lang/String; = "profiler.power"

.field private static final PROP_RECYCLE_BITMAP:Ljava/lang/String; = "profiler.recyclebmp"

.field private static final PROP_RECYCLE_BITMAP_SIZE:Ljava/lang/String; = "profiler.recyclebmpsize"

.field private static final PROP_STRICT_POLICY_SET:Ljava/lang/String; = "strictmode.policyset"

.field private static final PROP_SYNCDETECTOR:Ljava/lang/String; = "profiler.syncdetector"

.field private static final PROP_VALUE_ENABLE_HAPTIC:Ljava/lang/String; = "htc.fw.db.enable_haptic"

.field private static final PROP_VALUE_FORCE_WRITE_AHEAD_LOGGING:Ljava/lang/String; = "htc.fw.db.enable_wal"

.field private static final PROP_VALUE_SHAREKEY_LONG_PRESS_DEFAULT_ACT:Ljava/lang/String; = "com.sina.mfweibo.LookAroundListActivity"

.field private static final PROP_VALUE_SHAREKEY_LONG_PRESS_DEFAULT_INTENT_ACTION:Ljava/lang/String; = ""

.field private static final PROP_VALUE_SHAREKEY_LONG_PRESS_DEFAULT_PKG:Ljava/lang/String; = "com.sina.mfweibo"

.field private static final PROP_VALUE_SHAREKEY_SHORT_PRESS_DEFAULT_ACT:Ljava/lang/String; = "com.sina.mfweibo.EditActivity"

.field private static final PROP_VALUE_SHAREKEY_SHORT_PRESS_DEFAULT_INTENT_ACTION:Ljava/lang/String; = ""

.field private static final PROP_VALUE_SHAREKEY_SHORT_PRESS_DEFAULT_PKG:Ljava/lang/String; = "com.sina.mfweibo"

.field private static final PROP_WINDOWMANAGERSERVICE_DEBUGUPDOWN:Ljava/lang/String; = "profiler.WMSdebugupdown"

.field static dumped:Z

.field private static mEnableReleaseBitmapDevices:[B

.field private static profile_anr_dump_binder:Z

.field private static profile_anr_dump_native_uid:I

.field private static profile_anrhistory:Z

.field private static profile_checkheap:Z

.field private static profile_checklowmemory:Z

.field private static profile_checklowstorage:Z

.field private static profile_debug_batteryhistory:Z

.field private static profile_debug_disable_hw_accel:Z

.field private static profile_debug_hideBgAnr:I

.field private static profile_debug_provider_client:I

.field private static profile_debug_schedule:Z

.field private static profile_debug_timetick:Z

.field private static profile_debug_wakelock:Z

.field private static profile_debugbroadcast:Z

.field private static profile_debugmonitor:Z

.field private static profile_fast_launch:Z

.field private static profile_feature_multicore_function_switch:Z

.field private static profile_feature_multicore_timeout_millisecond:I

.field private static profile_feature_statusbar_collapse_delay_for_wifidisplay_only:I

.field private static profile_feature_statusbar_collapse_timeout_millisecond:I

.field private static profile_force_disable_error_report:Z

.field private static profile_force_disable_ulog:Z

.field private static profile_framework_enable_haptic:Z

.field private static profile_framework_force_write_ahead_logging:Z

.field private static profile_framework_screencapture:Z

.field private static profile_framework_sharekey_long_press_act:Ljava/lang/String;

.field private static profile_framework_sharekey_long_press_intent_action:Ljava/lang/String;

.field private static profile_framework_sharekey_long_press_pkg:Ljava/lang/String;

.field private static profile_framework_sharekey_short_press_act:Ljava/lang/String;

.field private static profile_framework_sharekey_short_press_intent_action:Ljava/lang/String;

.field private static profile_framework_sharekey_short_press_pkg:Ljava/lang/String;

.field private static profile_freeFileMap:Z

.field private static profile_freeNativeBmp:I

.field private static profile_freeNativeBmpDebug:Z

.field private static profile_hardware_reset_feature:I

.field private static profile_hardware_reset_feature_timer1:I

.field private static profile_hardware_reset_feature_timer2:I

.field private static profile_hung_dobugreport:Z

.field private static profile_hung_dumpallprocesses:Z

.field private static profile_hung_dumpmedianative:Z

.field private static profile_hung_dumpsysnative:Z

.field private static profile_hung_keepalive:Z

.field private static profile_kernelstack:Z

.field private static profile_keyInputQueue_debugUpDown:Z

.field private static profile_launch:Z

.field private static profile_launch_pid:I

.field private static profile_log_fps:I

.field private static profile_lowstoragethreshold:I

.field private static profile_monitor_thread_cpu_usage:Z

.field private static profile_no_RotationAnimation:Z

.field private static profile_opencursor:Z

.field private static profile_performance:I

.field private static profile_power:Z

.field private static profile_provider_dumpstack_ondying:Z

.field private static profile_recyclebmp:Z

.field private static profile_recyclebmpsize:I

.field private static profile_resume:Z

.field private static profile_syncdetector:Z

.field private static profile_ui_message_limitation:I

.field private static profile_windowManagerService_debugUpDown:Z

.field private static sIsRealShutdown:Z

.field private static strictmode_policy_set:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0x32

    const/4 v9, 0x5

    const/4 v8, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 34
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/htc/utils/report/ReportConfig;->isShippingRom()Z

    move-result v4

    if-nez v4, :cond_7

    move v4, v5

    :goto_0
    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    .line 162
    sput-boolean v6, Lcom/htc/profileflag/ProfileConfig;->sIsRealShutdown:Z

    .line 257
    const-string v4, "ro.factorytest"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, factoryTestStr:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move v1, v6

    .line 259
    .local v1, factoryTest:I
    :goto_1
    if-eqz v1, :cond_9

    .line 260
    sput-boolean v5, Lcom/htc/profileflag/ProfileConfig;->profile_force_disable_error_report:Z

    .line 264
    :goto_2
    invoke-static {}, Lcom/htc/utils/report/ReportConfig;->isShippingRom()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 265
    sput-boolean v5, Lcom/htc/profileflag/ProfileConfig;->profile_force_disable_ulog:Z

    .line 269
    :goto_3
    const-string v4, "profiler.resume"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_resume:Z

    .line 270
    const-string v4, "profiler.launch"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_launch:Z

    .line 271
    sget-boolean v4, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    if-ne v4, v5, :cond_c

    const-string v4, "profiler.performance"

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_b

    move v4, v6

    :goto_4
    sput v4, Lcom/htc/profileflag/ProfileConfig;->profile_performance:I

    .line 275
    const-string v4, "profiler.opencursor"

    sget-boolean v7, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_opencursor:Z

    .line 276
    const-string v4, "profiler.checkheap"

    sget-boolean v7, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_checkheap:Z

    .line 277
    const-string v4, "profiler.recyclebmp"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_recyclebmp:Z

    .line 278
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v7, 0x42

    if-eq v4, v7, :cond_0

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v7, 0x62

    if-eq v4, v7, :cond_0

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v7, 0x7e

    if-eq v4, v7, :cond_0

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v7, 0x31

    if-eq v4, v7, :cond_0

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v4, v10, :cond_d

    :cond_0
    move v0, v5

    .line 283
    .local v0, disablefreeNativeBmpDevice:Z
    :goto_5
    if-eqz v0, :cond_e

    move v4, v6

    :goto_6
    sput v4, Lcom/htc/profileflag/ProfileConfig;->profile_freeNativeBmp:I

    .line 285
    const-string v4, "profiler.freeNativeBmpDebug"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_freeNativeBmpDebug:Z

    .line 286
    const-string v4, "profiler.recyclebmpsize"

    invoke-static {v4, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/htc/profileflag/ProfileConfig;->profile_recyclebmpsize:I

    .line 287
    const-string v4, "profiler.checklowmemory"

    sget-boolean v7, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_checklowmemory:Z

    .line 288
    const-string v4, "profiler.debugmonitor"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_debugmonitor:Z

    .line 289
    const-string v4, "profiler.KIQdebugupdown"

    sget-boolean v7, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_keyInputQueue_debugUpDown:Z

    .line 290
    const-string v4, "profiler.WMSdebugupdown"

    sget-boolean v7, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_windowManagerService_debugUpDown:Z

    .line 291
    sput v8, Lcom/htc/profileflag/ProfileConfig;->profile_launch_pid:I

    .line 292
    const-string v4, "debugtool.anrhistory"

    sget-boolean v7, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_anrhistory:Z

    .line 293
    const-string v4, "profiler.hung.keepalive"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_hung_keepalive:Z

    .line 294
    const-string v4, "profiler.hung.dumpallprocesses"

    sget-boolean v7, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_hung_dumpallprocesses:Z

    .line 295
    const-string v4, "profiler.hung.dumpsysnative"

    sget-boolean v7, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_hung_dumpsysnative:Z

    .line 296
    const-string v4, "profiler.hung.dumpmedianative"

    sget-boolean v7, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_hung_dumpmedianative:Z

    .line 297
    const-string v4, "profiler.hung.dumpdobugreport"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_hung_dobugreport:Z

    .line 298
    const-string v4, "profiler.monitorthreadcpuusage"

    sget-boolean v7, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_monitor_thread_cpu_usage:Z

    .line 299
    const-string v4, "profiler.wakelock"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_debug_wakelock:Z

    .line 300
    const-string v4, "profiler.debugtool.kernelstack"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_kernelstack:Z

    .line 301
    const-string v4, "profiler.anr_dump_binder"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    sget-boolean v4, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    if-eqz v4, :cond_f

    :cond_1
    move v4, v5

    :goto_7
    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_anr_dump_binder:Z

    .line 302
    sget-boolean v4, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    if-eqz v4, :cond_10

    const-string v4, "profiler.anr_dump_native_uid"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    :goto_8
    sput v4, Lcom/htc/profileflag/ProfileConfig;->profile_anr_dump_native_uid:I

    .line 303
    const-string v4, "strictmode.policyset"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/htc/profileflag/ProfileConfig;->strictmode_policy_set:I

    .line 304
    const-string v4, "profiler.no_RotationAnimation"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_11

    sget-boolean v4, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    if-eqz v4, :cond_11

    move v4, v5

    :goto_9
    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_no_RotationAnimation:Z

    .line 305
    const-string v4, "profiler.logfps"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/htc/profileflag/ProfileConfig;->profile_log_fps:I

    .line 308
    const-string v4, "profiler.checklowstorage"

    sget-boolean v7, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_checklowstorage:Z

    .line 309
    const-string v4, "profiler.lowstoragethreshold"

    const/high16 v7, 0x90

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/high16 v7, 0x90

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    sput v4, Lcom/htc/profileflag/ProfileConfig;->profile_lowstoragethreshold:I

    .line 318
    const-string v4, "ro.htc.framework.screencapture"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_framework_screencapture:Z

    .line 321
    const-string v4, "ro.product.hwreset"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/htc/profileflag/ProfileConfig;->profile_hardware_reset_feature:I

    .line 322
    const-string v4, "ro.product.hwreset.timer1"

    invoke-static {v4, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/htc/profileflag/ProfileConfig;->profile_hardware_reset_feature_timer1:I

    .line 323
    const-string v4, "ro.product.hwreset.timer2"

    const/16 v7, 0x8

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/htc/profileflag/ProfileConfig;->profile_hardware_reset_feature_timer2:I

    .line 325
    sget v4, Lcom/htc/profileflag/ProfileConfig;->profile_hardware_reset_feature_timer1:I

    const/4 v7, 0x2

    if-le v4, v7, :cond_2

    sget v4, Lcom/htc/profileflag/ProfileConfig;->profile_hardware_reset_feature_timer1:I

    const/16 v7, 0xa

    if-le v4, v7, :cond_3

    .line 326
    :cond_2
    sput v9, Lcom/htc/profileflag/ProfileConfig;->profile_hardware_reset_feature_timer1:I

    .line 328
    :cond_3
    sget v4, Lcom/htc/profileflag/ProfileConfig;->profile_hardware_reset_feature_timer2:I

    sget v7, Lcom/htc/profileflag/ProfileConfig;->profile_hardware_reset_feature_timer1:I

    if-gt v4, v7, :cond_4

    .line 329
    sget v4, Lcom/htc/profileflag/ProfileConfig;->profile_hardware_reset_feature_timer1:I

    add-int/lit8 v4, v4, 0x3

    sput v4, Lcom/htc/profileflag/ProfileConfig;->profile_hardware_reset_feature_timer2:I

    .line 333
    :cond_4
    const-string v4, "ro.htc.sharekey.spkg"

    invoke-static {v4}, Lcom/htc/profileflag/ProfileConfig;->init_sharekey_property_value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_short_press_pkg:Ljava/lang/String;

    .line 334
    const-string v4, "ro.htc.sharekey.sact"

    invoke-static {v4}, Lcom/htc/profileflag/ProfileConfig;->init_sharekey_property_value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_short_press_act:Ljava/lang/String;

    .line 335
    const-string v4, "ro.htc.sharekey.sint"

    invoke-static {v4}, Lcom/htc/profileflag/ProfileConfig;->init_sharekey_property_value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_short_press_intent_action:Ljava/lang/String;

    .line 338
    const-string v4, ""

    sget-object v7, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_short_press_pkg:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, ""

    sget-object v7, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_short_press_act:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, ""

    sget-object v7, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_short_press_intent_action:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 341
    const-string v4, "com.sina.mfweibo"

    sput-object v4, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_short_press_pkg:Ljava/lang/String;

    .line 342
    const-string v4, "com.sina.mfweibo.EditActivity"

    sput-object v4, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_short_press_act:Ljava/lang/String;

    .line 343
    const-string v4, ""

    sput-object v4, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_short_press_intent_action:Ljava/lang/String;

    .line 344
    const-string v4, "ProfileConfig"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "share key short press:get default intent - package:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_short_press_pkg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", activity:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_short_press_act:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", action:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_short_press_intent_action:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_5
    const-string v4, "ro.htc.sharekey.lpkg"

    invoke-static {v4}, Lcom/htc/profileflag/ProfileConfig;->init_sharekey_property_value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_long_press_pkg:Ljava/lang/String;

    .line 350
    const-string v4, "ro.htc.sharekey.lact"

    invoke-static {v4}, Lcom/htc/profileflag/ProfileConfig;->init_sharekey_property_value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_long_press_act:Ljava/lang/String;

    .line 351
    const-string v4, "ro.htc.sharekey.lint"

    invoke-static {v4}, Lcom/htc/profileflag/ProfileConfig;->init_sharekey_property_value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_long_press_intent_action:Ljava/lang/String;

    .line 354
    const-string v4, ""

    sget-object v7, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_long_press_pkg:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, ""

    sget-object v7, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_long_press_act:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, ""

    sget-object v7, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_long_press_intent_action:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 357
    const-string v4, "com.sina.mfweibo"

    sput-object v4, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_long_press_pkg:Ljava/lang/String;

    .line 358
    const-string v4, "com.sina.mfweibo.LookAroundListActivity"

    sput-object v4, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_long_press_act:Ljava/lang/String;

    .line 359
    const-string v4, ""

    sput-object v4, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_long_press_intent_action:Ljava/lang/String;

    .line 360
    const-string v4, "ProfileConfig"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "share key long press:get default intent - package:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_long_press_pkg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", activity"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_long_press_act:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", action:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_long_press_intent_action:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_6
    const-string v4, "htc.fw.db.enable_wal"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_framework_force_write_ahead_logging:Z

    .line 368
    const-string v4, "htc.fw.db.enable_haptic"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_framework_enable_haptic:Z

    .line 371
    const-string v4, "profiler.syncdetector"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_syncdetector:Z

    .line 372
    const-string v4, "profiler.debugbroadcast"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_debugbroadcast:Z

    .line 373
    const-string v7, "profiler.debug.timetick"

    sget-boolean v4, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    if-ne v4, v5, :cond_12

    move v4, v5

    :goto_a
    invoke-static {v7, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_debug_timetick:Z

    .line 374
    new-array v4, v6, [B

    sput-object v4, Lcom/htc/profileflag/ProfileConfig;->mEnableReleaseBitmapDevices:[B

    .line 378
    const-string v4, "fast_launch"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_fast_launch:Z

    .line 379
    const-string v4, "profiler.debug_schedule"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_debug_schedule:Z

    .line 380
    const-string v4, "profiler.power"

    sget-boolean v7, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_power:Z

    .line 381
    const-string v4, "profiler.dbg.batthistory"

    sget-boolean v7, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_debug_batteryhistory:Z

    .line 384
    const-string v4, "profiler.debug.hide_bg_anr"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/htc/profileflag/ProfileConfig;->profile_debug_hideBgAnr:I

    .line 389
    const-string v4, "profiler.debug.provider_client"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/htc/profileflag/ProfileConfig;->profile_debug_provider_client:I

    .line 393
    const-string v4, "profiler.freeFileMap"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_freeFileMap:Z

    .line 397
    const-string v4, "profiler.debug.disable_hw_accel"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_debug_disable_hw_accel:Z

    .line 402
    const-string v4, "persist.htc.multicore.switch"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_feature_multicore_function_switch:Z

    .line 403
    const-string v4, "persist.htc.multicore.timeout"

    const/16 v5, 0x7d0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/htc/profileflag/ProfileConfig;->profile_feature_multicore_timeout_millisecond:I

    .line 405
    const-string v4, "persist.htc.sbcollapsetimeout"

    const/16 v5, 0x1f4

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/htc/profileflag/ProfileConfig;->profile_feature_statusbar_collapse_timeout_millisecond:I

    .line 407
    const-string v4, "persist.htc.sbcd.wifidisplay"

    const/16 v5, 0x2bc

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/htc/profileflag/ProfileConfig;->profile_feature_statusbar_collapse_delay_for_wifidisplay_only:I

    .line 410
    const-string v4, "4.0a"

    sget-object v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Extra_Sense_Version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 411
    .local v3, isSense40a:Z
    const-string v5, "profiler.performance.flash"

    if-eqz v3, :cond_13

    const/16 v4, 0x1f4

    :goto_b
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/htc/profileflag/ProfileConfig;->profile_ui_message_limitation:I

    .line 414
    const-string v4, "profiler.provdump.ondying"

    sget-boolean v5, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_provider_dumpstack_ondying:Z

    .line 1324
    sput-boolean v6, Lcom/htc/profileflag/ProfileConfig;->dumped:Z

    return-void

    .end local v0           #disablefreeNativeBmpDevice:Z
    .end local v1           #factoryTest:I
    .end local v2           #factoryTestStr:Ljava/lang/String;
    .end local v3           #isSense40a:Z
    :cond_7
    move v4, v6

    .line 34
    goto/16 :goto_0

    .line 258
    .restart local v2       #factoryTestStr:Ljava/lang/String;
    :cond_8
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_1

    .line 262
    .restart local v1       #factoryTest:I
    :cond_9
    const-string v4, "profiler.force_disable_err_rpt"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_force_disable_error_report:Z

    goto/16 :goto_2

    .line 267
    :cond_a
    sput-boolean v6, Lcom/htc/profileflag/ProfileConfig;->profile_force_disable_ulog:Z

    goto/16 :goto_3

    .line 271
    :cond_b
    const-string v4, "profiler.performance"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto/16 :goto_4

    :cond_c
    const-string v4, "profiler.performance"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    goto/16 :goto_4

    :cond_d
    move v0, v6

    .line 278
    goto/16 :goto_5

    .line 283
    .restart local v0       #disablefreeNativeBmpDevice:Z
    :cond_e
    const-string v4, "profiler.freeNativeBmp"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    goto/16 :goto_6

    :cond_f
    move v4, v6

    .line 301
    goto/16 :goto_7

    :cond_10
    move v4, v6

    .line 302
    goto/16 :goto_8

    :cond_11
    move v4, v6

    .line 304
    goto/16 :goto_9

    :cond_12
    move v4, v6

    .line 373
    goto/16 :goto_a

    .line 411
    .restart local v3       #isSense40a:Z
    :cond_13
    const/16 v4, 0x12c

    goto :goto_b
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    return-void
.end method

.method private static canDoHPROF(I)Z
    .locals 25
    .parameter "length"

    .prologue
    .line 1330
    :try_start_0
    const-string v19, "profiler.hprof.once"

    const/16 v20, 0x1

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 1331
    sget-boolean v19, Lcom/htc/profileflag/ProfileConfig;->dumped:Z

    if-eqz v19, :cond_0

    .line 1332
    const-string v19, "ProfileConfig"

    const-string v20, "HPROF already dumped"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    const/16 v16, 0x0

    .line 1380
    :goto_0
    return v16

    .line 1337
    :cond_0
    const-string v19, "ProfileConfig"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "canDoHPROF: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move/from16 v0, p0

    div-int/lit16 v0, v0, 0x400

    move/from16 v21, v0

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0x400

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "mb"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    const-string v19, "chmod 777 /data/misc"

    invoke-static/range {v19 .. v19}, Lcom/htc/profileflag/ProfileConfig;->runRootCommand(Ljava/lang/String;)Z

    .line 1339
    new-instance v5, Ljava/io/File;

    const-string v19, "/data/misc/"

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1340
    .local v5, dir:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->canWrite()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1341
    new-instance v19, Lcom/htc/profileflag/ProfileConfig$1;

    invoke-direct/range {v19 .. v19}, Lcom/htc/profileflag/ProfileConfig$1;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v8

    .line 1347
    .local v8, hprofs:[Ljava/io/File;
    new-instance v19, Lcom/htc/profileflag/ProfileConfig$2;

    invoke-direct/range {v19 .. v19}, Lcom/htc/profileflag/ProfileConfig$2;-><init>()V

    move-object/from16 v0, v19

    invoke-static {v8, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1353
    const-wide/16 v17, 0x0

    .line 1354
    .local v17, size:J
    move-object v2, v8

    .local v2, arr$:[Ljava/io/File;
    array-length v10, v2

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_1
    if-ge v9, v10, :cond_1

    aget-object v7, v2, v9

    .line 1355
    .local v7, hprof:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v19

    add-long v17, v17, v19

    .line 1354
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1358
    .end local v7           #hprof:Ljava/io/File;
    :cond_1
    const-string v19, "profiler.hprof.max"

    const/16 v20, 0x28

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    move/from16 v0, v19

    mul-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    move/from16 v0, v19

    mul-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    sub-int v19, v19, p0

    move/from16 v0, v19

    int-to-long v12, v0

    .line 1359
    .local v12, maxThreshold:J
    cmp-long v19, v17, v12

    if-lez v19, :cond_2

    .line 1360
    const-string v19, "ProfileConfig"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "HPROF use more than "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-wide/16 v21, 0x400

    div-long v21, v12, v21

    const-wide/16 v23, 0x400

    div-long v21, v21, v23

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "mb, trim!"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    move-object v2, v8

    array-length v10, v2

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v10, :cond_2

    aget-object v7, v2, v9

    .line 1362
    .restart local v7       #hprof:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v19

    sub-long v17, v17, v19

    .line 1363
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1364
    const-string v19, "ProfileConfig"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Trim HPROF: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    cmp-long v19, v17, v12

    if-gez v19, :cond_3

    .line 1371
    .end local v2           #arr$:[Ljava/io/File;
    .end local v7           #hprof:Ljava/io/File;
    .end local v8           #hprofs:[Ljava/io/File;
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v12           #maxThreshold:J
    .end local v17           #size:J
    :cond_2
    new-instance v11, Landroid/os/StatFs;

    const-string v19, "/data/misc/"

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1372
    .local v11, mStatFs:Landroid/os/StatFs;
    invoke-virtual {v11}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    invoke-virtual {v11}, Landroid/os/StatFs;->getBlockSize()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    mul-long v3, v19, v21

    .line 1373
    .local v3, avail:J
    const-string v19, "profiler.hprof.min"

    const/16 v20, 0x14

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    move/from16 v0, v19

    mul-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    move/from16 v0, v19

    mul-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    add-int v19, v19, p0

    move/from16 v0, v19

    int-to-long v14, v0

    .line 1374
    .local v14, minThreshold:J
    cmp-long v19, v3, v14

    if-ltz v19, :cond_4

    const/16 v16, 0x1

    .line 1375
    .local v16, result:Z
    :goto_3
    if-eqz v16, :cond_5

    const/16 v19, 0x1

    :goto_4
    sput-boolean v19, Lcom/htc/profileflag/ProfileConfig;->dumped:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1377
    .end local v3           #avail:J
    .end local v5           #dir:Ljava/io/File;
    .end local v11           #mStatFs:Landroid/os/StatFs;
    .end local v14           #minThreshold:J
    .end local v16           #result:Z
    :catch_0
    move-exception v6

    .line 1378
    .local v6, ex:Ljava/lang/Exception;
    const-string v19, "ProfileConfig"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "error in canDoHPROF "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1380
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 1361
    .end local v6           #ex:Ljava/lang/Exception;
    .restart local v2       #arr$:[Ljava/io/File;
    .restart local v5       #dir:Ljava/io/File;
    .restart local v7       #hprof:Ljava/io/File;
    .restart local v8       #hprofs:[Ljava/io/File;
    .restart local v9       #i$:I
    .restart local v10       #len$:I
    .restart local v12       #maxThreshold:J
    .restart local v17       #size:J
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 1374
    .end local v2           #arr$:[Ljava/io/File;
    .end local v7           #hprof:Ljava/io/File;
    .end local v8           #hprofs:[Ljava/io/File;
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v12           #maxThreshold:J
    .end local v17           #size:J
    .restart local v3       #avail:J
    .restart local v11       #mStatFs:Landroid/os/StatFs;
    .restart local v14       #minThreshold:J
    :cond_4
    const/16 v16, 0x0

    goto :goto_3

    .line 1375
    .restart local v16       #result:Z
    :cond_5
    :try_start_1
    sget-boolean v19, Lcom/htc/profileflag/ProfileConfig;->dumped:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method private static dumpFD()V
    .locals 3

    .prologue
    .line 1319
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ls -l /proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/fd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/profileflag/ProfileConfig;->runRootCommand(Ljava/lang/String;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1320
    const-string v0, "ProfileConfig"

    const-string v1, "dump FD failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    :cond_0
    return-void
.end method

.method public static getCheckHeap()Z
    .locals 1

    .prologue
    .line 465
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_checkheap:Z

    return v0
.end method

.method public static getCheckLowMemory()Z
    .locals 1

    .prologue
    .line 504
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_checklowmemory:Z

    return v0
.end method

.method public static getCheckLowStorage()Z
    .locals 1

    .prologue
    .line 521
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_checklowstorage:Z

    return v0
.end method

.method public static getFreeFileMap()Z
    .locals 1

    .prologue
    .line 651
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    if-nez v0, :cond_0

    .line 652
    const/4 v0, 0x1

    .line 654
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_freeFileMap:Z

    goto :goto_0
.end method

.method public static getFreeNativeBitmap()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 478
    sget v6, Lcom/htc/profileflag/ProfileConfig;->profile_freeNativeBmp:I

    if-ne v4, v6, :cond_1

    .line 490
    .local v0, arr$:[B
    .local v2, i$:I
    .local v3, len$:I
    :cond_0
    :goto_0
    return v4

    .line 480
    .end local v0           #arr$:[B
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    sget v6, Lcom/htc/profileflag/ProfileConfig;->profile_freeNativeBmp:I

    if-nez v6, :cond_2

    move v4, v5

    .line 481
    goto :goto_0

    .line 482
    :cond_2
    const/4 v6, -0x1

    sget v7, Lcom/htc/profileflag/ProfileConfig;->profile_freeNativeBmp:I

    if-ne v6, v7, :cond_4

    .line 483
    sget-object v0, Lcom/htc/profileflag/ProfileConfig;->mEnableReleaseBitmapDevices:[B

    .restart local v0       #arr$:[B
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-byte v1, v0, v2

    .line 484
    .local v1, device:B
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v6, v1, :cond_0

    .line 483
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #device:B
    :cond_3
    move v4, v5

    .line 488
    goto :goto_0

    .end local v0           #arr$:[B
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_4
    move v4, v5

    .line 490
    goto :goto_0
.end method

.method public static getFreeNativeBitmapDebug()Z
    .locals 1

    .prologue
    .line 495
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_freeNativeBmpDebug:Z

    return v0
.end method

.method public static getLowStorageThreshold()I
    .locals 1

    .prologue
    .line 528
    sget v0, Lcom/htc/profileflag/ProfileConfig;->profile_lowstoragethreshold:I

    return v0
.end method

.method public static getProfileANRDumpBinder()Z
    .locals 1

    .prologue
    .line 581
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_anr_dump_binder:Z

    return v0
.end method

.method public static getProfileANRDumpNativeUID()I
    .locals 1

    .prologue
    .line 677
    sget v0, Lcom/htc/profileflag/ProfileConfig;->profile_anr_dump_native_uid:I

    return v0
.end method

.method public static getProfileDebugANRHistory()Z
    .locals 1

    .prologue
    .line 977
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_anrhistory:Z

    return v0
.end method

.method public static getProfileDebugBatteryHistory()Z
    .locals 1

    .prologue
    .line 599
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_debug_batteryhistory:Z

    return v0
.end method

.method public static getProfileDebugBroadcast()Z
    .locals 2

    .prologue
    .line 1075
    const/16 v0, 0x93

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v1, :cond_0

    .line 1076
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_debugbroadcast:Z

    .line 1078
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getProfileDebugDisableHwAccel()Z
    .locals 1

    .prologue
    .line 664
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_debug_disable_hw_accel:Z

    return v0
.end method

.method public static getProfileDebugHungDoBugreport()Z
    .locals 1

    .prologue
    .line 1022
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_hung_dobugreport:Z

    return v0
.end method

.method public static getProfileDebugHungDumpAllProcesses()Z
    .locals 1

    .prologue
    .line 995
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_hung_dumpallprocesses:Z

    return v0
.end method

.method public static getProfileDebugHungDumpMediaNative()Z
    .locals 1

    .prologue
    .line 1013
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_hung_dumpmedianative:Z

    return v0
.end method

.method public static getProfileDebugHungDumpSysNative()Z
    .locals 1

    .prologue
    .line 1004
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_hung_dumpsysnative:Z

    return v0
.end method

.method public static getProfileDebugHungKeepAlive()Z
    .locals 1

    .prologue
    .line 986
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_hung_keepalive:Z

    return v0
.end method

.method public static getProfileDebugKernelStack()Z
    .locals 1

    .prologue
    .line 1096
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_kernelstack:Z

    return v0
.end method

.method public static getProfileDebugMonitor()Z
    .locals 1

    .prologue
    .line 554
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_debugmonitor:Z

    return v0
.end method

.method public static getProfileDebugSchedule()Z
    .locals 1

    .prologue
    .line 1132
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_debug_schedule:Z

    return v0
.end method

.method public static getProfileDebugTimeTick()Z
    .locals 1

    .prologue
    .line 1087
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_debug_timetick:Z

    return v0
.end method

.method public static getProfileDebugWakelock()Z
    .locals 1

    .prologue
    .line 1040
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_debug_wakelock:Z

    return v0
.end method

.method public static getProfileDumpProviderStackOnDying()Z
    .locals 1

    .prologue
    .line 1385
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_provider_dumpstack_ondying:Z

    return v0
.end method

.method public static getProfileFastLaunch()Z
    .locals 1

    .prologue
    .line 1123
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_fast_launch:Z

    return v0
.end method

.method public static getProfileForceDisableErrorRport()Z
    .locals 1

    .prologue
    .line 1044
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_force_disable_error_report:Z

    return v0
.end method

.method public static getProfileForceDisableUlog()Z
    .locals 1

    .prologue
    .line 1053
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_force_disable_ulog:Z

    return v0
.end method

.method public static getProfileForceWriteAheadLogging()Z
    .locals 1

    .prologue
    .line 538
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_framework_force_write_ahead_logging:Z

    return v0
.end method

.method public static getProfileHapticFeature()Z
    .locals 1

    .prologue
    .line 546
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_framework_enable_haptic:Z

    return v0
.end method

.method public static getProfileHardwareResetEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 734
    sget v1, Lcom/htc/profileflag/ProfileConfig;->profile_hardware_reset_feature:I

    if-ne v1, v0, :cond_0

    .line 735
    .local v0, enabled:Z
    :goto_0
    return v0

    .line 734
    .end local v0           #enabled:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getProfileHardwareResetTimer1()I
    .locals 1

    .prologue
    .line 743
    sget v0, Lcom/htc/profileflag/ProfileConfig;->profile_hardware_reset_feature_timer1:I

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public static getProfileHardwareResetTimer2()I
    .locals 1

    .prologue
    .line 751
    sget v0, Lcom/htc/profileflag/ProfileConfig;->profile_hardware_reset_feature_timer2:I

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public static getProfileHideBgAnr()I
    .locals 1

    .prologue
    .line 606
    sget v0, Lcom/htc/profileflag/ProfileConfig;->profile_debug_hideBgAnr:I

    return v0
.end method

.method public static getProfileKeyInputQueueDebugUpDown()Z
    .locals 1

    .prologue
    .line 563
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_keyInputQueue_debugUpDown:Z

    return v0
.end method

.method public static getProfileLaunch()Z
    .locals 1

    .prologue
    .line 443
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_launch:Z

    return v0
.end method

.method public static getProfileLaunchPid()I
    .locals 1

    .prologue
    .line 1187
    const/4 v0, -0x1

    return v0
.end method

.method public static getProfileLogFps()I
    .locals 1

    .prologue
    .line 1114
    sget v0, Lcom/htc/profileflag/ProfileConfig;->profile_log_fps:I

    return v0
.end method

.method public static getProfileMonitorThreadCpuUsage()Z
    .locals 1

    .prologue
    .line 1031
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_monitor_thread_cpu_usage:Z

    return v0
.end method

.method public static getProfileMulticoreSwitch()Z
    .locals 1

    .prologue
    .line 621
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_feature_multicore_function_switch:Z

    return v0
.end method

.method public static getProfileMulticoreTimeout()I
    .locals 1

    .prologue
    .line 626
    sget v0, Lcom/htc/profileflag/ProfileConfig;->profile_feature_multicore_timeout_millisecond:I

    return v0
.end method

.method public static getProfileNoRotationAnimation()Z
    .locals 1

    .prologue
    .line 686
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_no_RotationAnimation:Z

    return v0
.end method

.method public static getProfileOpenCursor()Z
    .locals 1

    .prologue
    .line 456
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_opencursor:Z

    return v0
.end method

.method public static getProfilePerformance()I
    .locals 1

    .prologue
    .line 452
    sget v0, Lcom/htc/profileflag/ProfileConfig;->profile_performance:I

    return v0
.end method

.method public static getProfilePower()Z
    .locals 1

    .prologue
    .line 590
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_power:Z

    return v0
.end method

.method public static getProfileProviderClient()I
    .locals 1

    .prologue
    .line 613
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/htc/profileflag/ProfileConfig;->profile_debug_provider_client:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getProfileResume()Z
    .locals 1

    .prologue
    .line 434
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_resume:Z

    return v0
.end method

.method public static getProfileScreenCaptureEnabled()Z
    .locals 1

    .prologue
    .line 696
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_framework_screencapture:Z

    return v0
.end method

.method public static getProfileShareKeyLongPressActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 796
    sget-object v0, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_long_press_act:Ljava/lang/String;

    return-object v0
.end method

.method public static getProfileShareKeyLongPressIntentAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 805
    sget-object v0, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_long_press_intent_action:Ljava/lang/String;

    return-object v0
.end method

.method public static getProfileShareKeyLongPressPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 787
    sget-object v0, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_long_press_pkg:Ljava/lang/String;

    return-object v0
.end method

.method public static getProfileShareKeyShortPressActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 769
    sget-object v0, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_short_press_act:Ljava/lang/String;

    return-object v0
.end method

.method public static getProfileShareKeyShortPressIntentAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 778
    sget-object v0, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_short_press_intent_action:Ljava/lang/String;

    return-object v0
.end method

.method public static getProfileShareKeyShortPressPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 760
    sget-object v0, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_short_press_pkg:Ljava/lang/String;

    return-object v0
.end method

.method public static getProfileStatusbarCollapseDelayForWifidisplayOnly()I
    .locals 1

    .prologue
    .line 636
    sget v0, Lcom/htc/profileflag/ProfileConfig;->profile_feature_statusbar_collapse_delay_for_wifidisplay_only:I

    return v0
.end method

.method public static getProfileStatusbarCollapseTimeout()I
    .locals 1

    .prologue
    .line 631
    sget v0, Lcom/htc/profileflag/ProfileConfig;->profile_feature_statusbar_collapse_timeout_millisecond:I

    return v0
.end method

.method public static getProfileSyncDetector()Z
    .locals 2

    .prologue
    .line 1062
    const/16 v0, 0x93

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v1, :cond_0

    const/16 v0, 0xa8

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-nez v0, :cond_1

    .line 1065
    :cond_0
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_syncdetector:Z

    .line 1066
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getProfileUIMessageLimitation()I
    .locals 1

    .prologue
    .line 642
    sget v0, Lcom/htc/profileflag/ProfileConfig;->profile_ui_message_limitation:I

    return v0
.end method

.method public static getProfileWindowManagerServiceDebugUpDown()Z
    .locals 1

    .prologue
    .line 572
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_windowManagerService_debugUpDown:Z

    return v0
.end method

.method public static getRecycleBitmap()Z
    .locals 1

    .prologue
    .line 474
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_recyclebmp:Z

    return v0
.end method

.method public static getRecycleBitmapSize()I
    .locals 1

    .prologue
    .line 513
    sget v0, Lcom/htc/profileflag/ProfileConfig;->profile_recyclebmpsize:I

    return v0
.end method

.method public static getShutdownState()Z
    .locals 1

    .prologue
    .line 823
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->sIsRealShutdown:Z

    return v0
.end method

.method public static getStrictModePolicySet()I
    .locals 1

    .prologue
    .line 1105
    sget v0, Lcom/htc/profileflag/ProfileConfig;->strictmode_policy_set:I

    return v0
.end method

.method private static init_sharekey_property_value(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "featureString"

    .prologue
    .line 702
    const-string v3, ""

    .line 703
    .local v3, retString:Ljava/lang/String;
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    and-int/lit16 v1, v4, 0xff

    .line 704
    .local v1, HtcProjectFlagInInt:I
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    and-int/lit16 v0, v4, 0xff

    .line 705
    .local v0, HtcLanguageFlagInInt:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 707
    .local v2, featureStringWithProject:Ljava/lang/StringBuilder;
    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_1

    .line 713
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 714
    const-string v4, "ProfileConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sharekey: reading property:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :goto_0
    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 721
    const-string v4, ""

    invoke-static {p0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 722
    const-string v4, "ProfileConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sharekey reading orig property: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_0
    return-object v3

    .line 716
    :cond_1
    const-string v4, "ProfileConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "featureStringWithProject is too long:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static runCommand(Ljava/lang/String;)Z
    .locals 10
    .parameter "command"

    .prologue
    const/4 v6, 0x0

    .line 1276
    const-string v7, "ProfileConfig"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "runCommand: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    const/4 v4, 0x0

    .line 1278
    .local v4, process:Ljava/lang/Process;
    const/4 v2, 0x0

    .line 1280
    .local v2, output:Ljava/io/DataOutputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    const-string v8, "sh"

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 1281
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 1282
    .end local v2           #output:Ljava/io/DataOutputStream;
    .local v3, output:Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1283
    const-string v7, "exit\n"

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1284
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 1286
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1289
    .local v5, reader:Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 1290
    const-string v7, "ProfileConfig"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1292
    .end local v1           #line:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1296
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1305
    if-eqz v3, :cond_0

    .line 1306
    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 1308
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_1
    move-object v2, v3

    .line 1312
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #output:Ljava/io/DataOutputStream;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v2       #output:Ljava/io/DataOutputStream;
    :goto_2
    return v6

    .line 1296
    .end local v2           #output:Ljava/io/DataOutputStream;
    .restart local v3       #output:Ljava/io/DataOutputStream;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :catchall_0
    move-exception v7

    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 1300
    .end local v5           #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    move-object v2, v3

    .line 1301
    .end local v3           #output:Ljava/io/DataOutputStream;
    .restart local v0       #e:Ljava/lang/Exception;
    .restart local v2       #output:Ljava/io/DataOutputStream;
    :goto_3
    :try_start_6
    const-string v7, "ProfileConfig"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1305
    if-eqz v2, :cond_1

    .line 1306
    :try_start_7
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 1308
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    .line 1309
    :catch_2
    move-exception v7

    goto :goto_2

    .line 1304
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v6

    .line 1305
    :goto_4
    if-eqz v2, :cond_2

    .line 1306
    :try_start_8
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 1308
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 1304
    :goto_5
    throw v6

    .line 1296
    .end local v2           #output:Ljava/io/DataOutputStream;
    .restart local v1       #line:Ljava/lang/String;
    .restart local v3       #output:Ljava/io/DataOutputStream;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :cond_3
    :try_start_9
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 1305
    if-eqz v3, :cond_4

    .line 1306
    :try_start_a
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 1308
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 1312
    :goto_6
    const/4 v6, 0x1

    move-object v2, v3

    .end local v3           #output:Ljava/io/DataOutputStream;
    .restart local v2       #output:Ljava/io/DataOutputStream;
    goto :goto_2

    .line 1309
    .end local v2           #output:Ljava/io/DataOutputStream;
    .restart local v3       #output:Ljava/io/DataOutputStream;
    :catch_3
    move-exception v6

    goto :goto_6

    .end local v1           #line:Ljava/lang/String;
    .restart local v0       #e:Ljava/lang/Exception;
    :catch_4
    move-exception v7

    goto :goto_1

    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #output:Ljava/io/DataOutputStream;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v2       #output:Ljava/io/DataOutputStream;
    :catch_5
    move-exception v7

    goto :goto_5

    .line 1304
    .end local v2           #output:Ljava/io/DataOutputStream;
    .restart local v3       #output:Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v6

    move-object v2, v3

    .end local v3           #output:Ljava/io/DataOutputStream;
    .restart local v2       #output:Ljava/io/DataOutputStream;
    goto :goto_4

    .line 1300
    :catch_6
    move-exception v0

    goto :goto_3
.end method

.method private static runRootCommand(Ljava/lang/String;)Z
    .locals 10
    .parameter "command"

    .prologue
    const/4 v6, 0x0

    .line 1224
    sget-boolean v7, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    if-nez v7, :cond_0

    .line 1264
    :goto_0
    return v6

    .line 1227
    :cond_0
    const-string v7, "ProfileConfig"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "runRootCommand: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    const/4 v4, 0x0

    .line 1229
    .local v4, process:Ljava/lang/Process;
    const/4 v2, 0x0

    .line 1231
    .local v2, output:Ljava/io/DataOutputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    const-string v8, "su"

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 1232
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 1233
    .end local v2           #output:Ljava/io/DataOutputStream;
    .local v3, output:Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1234
    const-string v7, "exit\n"

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1235
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 1238
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1241
    .local v5, reader:Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 1242
    const-string v7, "ProfileConfig"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1244
    .end local v1           #line:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1248
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1257
    if-eqz v3, :cond_1

    .line 1258
    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 1260
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 1261
    .end local v3           #output:Ljava/io/DataOutputStream;
    .end local v5           #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v7

    goto :goto_0

    .line 1248
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #output:Ljava/io/DataOutputStream;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :catchall_0
    move-exception v7

    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1252
    .end local v5           #reader:Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    move-object v2, v3

    .line 1253
    .end local v3           #output:Ljava/io/DataOutputStream;
    .restart local v0       #e:Ljava/lang/Exception;
    .restart local v2       #output:Ljava/io/DataOutputStream;
    :goto_2
    :try_start_6
    const-string v7, "ProfileConfig"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1257
    if-eqz v2, :cond_2

    .line 1258
    :try_start_7
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 1260
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 1248
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #output:Ljava/io/DataOutputStream;
    .restart local v1       #line:Ljava/lang/String;
    .restart local v3       #output:Ljava/io/DataOutputStream;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :cond_3
    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 1251
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 1257
    if-eqz v3, :cond_4

    .line 1258
    :try_start_9
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 1260
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 1264
    :goto_3
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1256
    .end local v1           #line:Ljava/lang/String;
    .end local v3           #output:Ljava/io/DataOutputStream;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v2       #output:Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v6

    .line 1257
    :goto_4
    if-eqz v2, :cond_5

    .line 1258
    :try_start_a
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 1260
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 1256
    :goto_5
    throw v6

    .line 1261
    .end local v2           #output:Ljava/io/DataOutputStream;
    .restart local v1       #line:Ljava/lang/String;
    .restart local v3       #output:Ljava/io/DataOutputStream;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :catch_3
    move-exception v6

    goto :goto_3

    .end local v1           #line:Ljava/lang/String;
    .end local v3           #output:Ljava/io/DataOutputStream;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v2       #output:Ljava/io/DataOutputStream;
    :catch_4
    move-exception v7

    goto :goto_5

    .line 1256
    .end local v2           #output:Ljava/io/DataOutputStream;
    .restart local v3       #output:Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v6

    move-object v2, v3

    .end local v3           #output:Ljava/io/DataOutputStream;
    .restart local v2       #output:Ljava/io/DataOutputStream;
    goto :goto_4

    .line 1252
    :catch_5
    move-exception v0

    goto :goto_2
.end method

.method public static setCheckHeap(Z)V
    .locals 0
    .parameter "checkheap"

    .prologue
    .line 868
    sput-boolean p0, Lcom/htc/profileflag/ProfileConfig;->profile_checkheap:Z

    .line 869
    return-void
.end method

.method public static setCheckLowMemory(Z)V
    .locals 0
    .parameter "checklowmemory"

    .prologue
    .line 908
    sput-boolean p0, Lcom/htc/profileflag/ProfileConfig;->profile_checklowmemory:Z

    .line 909
    return-void
.end method

.method public static setCheckLowStorage(Z)V
    .locals 0
    .parameter "checklowstorage"

    .prologue
    .line 916
    sput-boolean p0, Lcom/htc/profileflag/ProfileConfig;->profile_checklowstorage:Z

    .line 917
    return-void
.end method

.method public static setFreeNativeBitmap(Z)V
    .locals 1
    .parameter "freeNativeBmp"

    .prologue
    .line 886
    if-eqz p0, :cond_0

    .line 887
    const/4 v0, 0x1

    sput v0, Lcom/htc/profileflag/ProfileConfig;->profile_freeNativeBmp:I

    .line 891
    :goto_0
    return-void

    .line 889
    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/htc/profileflag/ProfileConfig;->profile_freeNativeBmp:I

    goto :goto_0
.end method

.method public static setFreeNativeBitmapDebug(Z)V
    .locals 0
    .parameter "freeNativeBmpDebug"

    .prologue
    .line 899
    sput-boolean p0, Lcom/htc/profileflag/ProfileConfig;->profile_freeNativeBmpDebug:Z

    .line 900
    return-void
.end method

.method public static setLowStorageThreshold(I)V
    .locals 0
    .parameter "lowstoragethreshold"

    .prologue
    .line 923
    sput p0, Lcom/htc/profileflag/ProfileConfig;->profile_lowstoragethreshold:I

    .line 924
    return-void
.end method

.method public static setProfileANRDumpBinder(Z)V
    .locals 0
    .parameter "anr_dump_binder"

    .prologue
    .line 968
    sput-boolean p0, Lcom/htc/profileflag/ProfileConfig;->profile_anr_dump_binder:Z

    .line 969
    return-void
.end method

.method public static setProfileDebugMonitor(Z)V
    .locals 0
    .parameter "debugmonitor"

    .prologue
    .line 941
    sput-boolean p0, Lcom/htc/profileflag/ProfileConfig;->profile_debugmonitor:Z

    .line 942
    return-void
.end method

.method public static setProfileKeyInputQueueDebugUpDown(Z)V
    .locals 0
    .parameter "keyInputQueue_debugUpDown"

    .prologue
    .line 950
    sput-boolean p0, Lcom/htc/profileflag/ProfileConfig;->profile_keyInputQueue_debugUpDown:Z

    .line 951
    return-void
.end method

.method public static setProfileLaunch(Z)V
    .locals 0
    .parameter "launch"

    .prologue
    .line 841
    sput-boolean p0, Lcom/htc/profileflag/ProfileConfig;->profile_launch:Z

    .line 842
    return-void
.end method

.method public static setProfileLaunchPid(I)V
    .locals 0
    .parameter "pid"

    .prologue
    .line 1178
    return-void
.end method

.method public static setProfileOpenCursor(Z)V
    .locals 0
    .parameter "opencursor"

    .prologue
    .line 859
    sput-boolean p0, Lcom/htc/profileflag/ProfileConfig;->profile_opencursor:Z

    .line 860
    return-void
.end method

.method public static setProfilePerformance(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 850
    sput p0, Lcom/htc/profileflag/ProfileConfig;->profile_performance:I

    .line 851
    return-void
.end method

.method public static setProfileResume(Z)V
    .locals 0
    .parameter "resume"

    .prologue
    .line 832
    sput-boolean p0, Lcom/htc/profileflag/ProfileConfig;->profile_resume:Z

    .line 833
    return-void
.end method

.method public static setProfileWindowManagerServiceDebugUpDown(Z)V
    .locals 0
    .parameter "windowManagerService_debugUpDown"

    .prologue
    .line 959
    sput-boolean p0, Lcom/htc/profileflag/ProfileConfig;->profile_windowManagerService_debugUpDown:Z

    .line 960
    return-void
.end method

.method public static setRecycleBitmap(Z)V
    .locals 0
    .parameter "recyclebmp"

    .prologue
    .line 877
    sput-boolean p0, Lcom/htc/profileflag/ProfileConfig;->profile_recyclebmp:Z

    .line 878
    return-void
.end method

.method public static setRecycleBitmapSize(I)V
    .locals 0
    .parameter "recyclebmpsize"

    .prologue
    .line 932
    sput p0, Lcom/htc/profileflag/ProfileConfig;->profile_recyclebmpsize:I

    .line 933
    return-void
.end method

.method public static setShutdownState(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 815
    sput-boolean p0, Lcom/htc/profileflag/ProfileConfig;->sIsRealShutdown:Z

    .line 816
    return-void
.end method
