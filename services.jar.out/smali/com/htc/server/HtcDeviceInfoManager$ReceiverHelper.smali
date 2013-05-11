.class Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;
.super Ljava/lang/Object;
.source "HtcDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcDeviceInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReceiverHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$ErrorInfoReceiver;,
        Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$BGFunctionReceiver;,
        Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$ExtraUsageReceiver;,
        Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$SettingContentObserver;,
        Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$MediaPlayReceiver;,
        Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$DevicePhoneStateListener;,
        Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$FlushReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_NOTIFY_SYSTEM_CRASH:Ljava/lang/String; = "com.htc.updater.NOTIFY_SYSTEM_CRASH"

.field private static final ACTION_TELLHTC_UIMODE:Ljava/lang/String; = "com.htc.intent.action.SET_TELLHTC_UIMODE"

.field private static final FLUSH_CLIENT_INFO_ACTION:Ljava/lang/String; = "com.htc.CLIENT_INFO_FLUSH"

#the value of this static final field might be set in the static constructor
.field private static final FLUSH_CLIENT_INFO_INTERVAL:J = 0x0L

.field private static final FLUSH_INFO_ACTION:Ljava/lang/String; = "com.htc.DEVICE_INFO_FLUSH"

#the value of this static final field might be set in the static constructor
.field private static final FLUSH_INFO_INTERVAL:J = 0x0L

.field private static final FLUSH_USAGE_TIME_ACTION:Ljava/lang/String; = "com.htc.USE_TIME_FLUSH"

#the value of this static final field might be set in the static constructor
.field private static final FLUSH_USAGE_TIME_INTERVAL:J = 0x0L

.field private static final KEY_CUSTOMIZED_REASON:Ljava/lang/String; = "com.htc.CUSTOMIZED_REASON"

.field private static final LOGHWINFOTIME_ACTION:Ljava/lang/String; = "com.htc.DEVICE_INFO_LogHWInfoTime"

.field private static final LOGINSTALLEDAPP_ACTION:Ljava/lang/String; = "com.htc.DEVICE_INFO_LogInstalledApp"

.field private static LOGINSTALLEDAPP_INTERVAL:J = 0x0L

.field private static final LOGLOCATIONINFO_ACTION:Ljava/lang/String; = "com.htc.screen_capture_action"

.field private static final LOGSWINFOTIME_ACTION:Ljava/lang/String; = "com.htc.DEVICE_INFO_LogSWInfoTime"

#the value of this static final field might be set in the static constructor
.field private static final MAX_USER_ACTIVITY_DURATION:J = 0x0L

.field private static final MEDIA_RECEIVER_ACTION:Ljava/lang/String; = "com.htc.HtcDeviceInfoManager.MediaReceiver"

.field private static final ULOG_POLICY_CHANGED_ACTION:Ljava/lang/String; = "com.htc.intent.action.ULOG_POLICY_CHANGED"

.field private static final UPDATE_INTERVAL:J


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    .line 127
    const-wide/16 v3, 0x0

    .local v3, flushInfoIntervalForTest:J
    const-wide/16 v5, 0x0

    .local v5, flushUsageTimeInterval:J
    const-wide/16 v1, 0x0

    .local v1, flushClientInfoInterval:J
    const-wide/16 v7, 0x0

    .line 129
    .local v7, updateInterval:J
    invoke-static {}, Lcom/htc/utils/report/ReportConfig;->isShippingRom()Z

    move-result v9

    if-nez v9, :cond_0

    .line 131
    :try_start_0
    const-string v9, "htcdeviceinfo.flush_info"

    const-wide/16 v10, 0x0

    invoke-static {v9, v10, v11}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 132
    const-string v9, "htcdeviceinfo.flush_usage_time"

    const-wide/16 v10, 0x0

    invoke-static {v9, v10, v11}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 133
    const-string v9, "htcdeviceinfo.flush_client_info"

    const-wide/16 v10, 0x0

    invoke-static {v9, v10, v11}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 134
    const-string v9, "htcdeviceinfo.update"

    const-wide/16 v10, 0x0

    invoke-static {v9, v10, v11}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    .line 140
    :cond_0
    :goto_0
    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-lez v9, :cond_2

    const-wide/16 v9, 0x3e8

    mul-long/2addr v9, v3

    :goto_1
    sput-wide v9, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_INFO_INTERVAL:J

    .line 141
    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-lez v9, :cond_3

    const-wide/16 v9, 0x3e8

    mul-long/2addr v9, v5

    :goto_2
    sput-wide v9, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_USAGE_TIME_INTERVAL:J

    .line 142
    const-wide/16 v9, 0x0

    cmp-long v9, v1, v9

    if-lez v9, :cond_4

    const-wide/16 v9, 0x3e8

    mul-long/2addr v9, v1

    :goto_3
    sput-wide v9, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_CLIENT_INFO_INTERVAL:J

    .line 143
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_5

    const-wide/16 v9, 0x3e8

    mul-long/2addr v9, v7

    :goto_4
    sput-wide v9, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->UPDATE_INTERVAL:J

    .line 145
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$000()Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "HtcDeviceInfoManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FLUSH_INFO_INTERVAL: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-wide v11, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_INFO_INTERVAL:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", FLUSH_USAGE_TIME_INTERVAL: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-wide v11, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_USAGE_TIME_INTERVAL:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", FLUSH_CLIENT_INFO_INTERVAL: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-wide v11, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_CLIENT_INFO_INTERVAL:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", UPDATE_INTERVAL: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-wide v11, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->UPDATE_INTERVAL:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_1
    const-string v9, "persist.deviceinfo.idletime"

    const-wide/32 v10, 0xafc8

    invoke-static {v9, v10, v11}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    sput-wide v9, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->MAX_USER_ACTIVITY_DURATION:J

    .line 180
    const-wide/32 v9, 0x5265c00

    sput-wide v9, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->LOGINSTALLEDAPP_INTERVAL:J

    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v9, "HtcDeviceInfoManager"

    const-string v10, "[Parse interval]"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 140
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_2
    const-wide/32 v9, 0x1b7740

    goto/16 :goto_1

    .line 141
    :cond_3
    const-wide/32 v9, 0x5265c00

    goto :goto_2

    .line 142
    :cond_4
    const-wide/32 v9, 0x240c8400

    goto :goto_3

    .line 143
    :cond_5
    const-wide/32 v9, 0xea60

    goto :goto_4
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 465
    return-void
.end method

.method static synthetic access$100()J
    .locals 2

    .prologue
    .line 119
    sget-wide v0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_INFO_INTERVAL:J

    return-wide v0
.end method

.method static synthetic access$200()J
    .locals 2

    .prologue
    .line 119
    sget-wide v0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->MAX_USER_ACTIVITY_DURATION:J

    return-wide v0
.end method

.method static synthetic access$300()J
    .locals 2

    .prologue
    .line 119
    sget-wide v0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->LOGINSTALLEDAPP_INTERVAL:J

    return-wide v0
.end method

.method static synthetic access$500()J
    .locals 2

    .prologue
    .line 119
    sget-wide v0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_USAGE_TIME_INTERVAL:J

    return-wide v0
.end method

.method static synthetic access$600()J
    .locals 2

    .prologue
    .line 119
    sget-wide v0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_CLIENT_INFO_INTERVAL:J

    return-wide v0
.end method

.method static synthetic access$700()J
    .locals 2

    .prologue
    .line 119
    sget-wide v0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->UPDATE_INTERVAL:J

    return-wide v0
.end method

.method private static getFirstFlushClientInfoInterval(J)J
    .locals 3
    .parameter "lastTimeOfClientStatLogOutput"

    .prologue
    .line 200
    const-string v0, "getFirstFlushClientInfoInterval"

    sget-wide v1, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_CLIENT_INFO_INTERVAL:J

    invoke-static {v0, p0, p1, v1, v2}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->getFirstScheduleInterval(Ljava/lang/String;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getFirstFlushUsageTimeInterval(J)J
    .locals 3
    .parameter "lastTimeOfUseTimeLogOutput"

    .prologue
    .line 204
    const-string v0, "getFirstFlushUsageTimeInterval"

    sget-wide v1, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_USAGE_TIME_INTERVAL:J

    invoke-static {v0, p0, p1, v1, v2}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->getFirstScheduleInterval(Ljava/lang/String;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getFirstScheduleInterval(Ljava/lang/String;JJ)J
    .locals 11
    .parameter "subTag"
    .parameter "lastScheduleTime"
    .parameter "defaultInterval"

    .prologue
    .line 208
    const-wide/16 v4, 0x0

    .line 209
    .local v4, nextScheduleInterval:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 210
    .local v6, now:J
    const-wide/32 v0, 0x1d4c0

    .line 211
    .local v0, delayWhenBootUp:J
    sub-long v8, v6, p1

    div-long v2, v8, p3

    .line 213
    .local v2, missingUploadCount:J
    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-lez v8, :cond_0

    cmp-long v8, p1, v6

    if-lez v8, :cond_2

    .line 214
    :cond_0
    move-wide v4, p3

    .line 220
    :goto_0
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$000()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "HtcDeviceInfoManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " nextScheduleInterval: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", now: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", lastScheduleTime: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", interval: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", missing upload count: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_1
    return-wide v4

    .line 215
    :cond_2
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_3

    .line 216
    const-wide/32 v4, 0x1d4c0

    goto :goto_0

    .line 218
    :cond_3
    sub-long v8, v6, p1

    rem-long/2addr v8, p3

    sub-long v4, p3, v8

    goto :goto_0
.end method

.method public static registerClientStatsReceiver(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 10
    .parameter "context"
    .parameter "handler"
    .parameter "receiveHandler"

    .prologue
    const-wide/16 v8, 0x0

    .line 183
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 184
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v5, "com.htc.USE_TIME_FLUSH"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    const-string v5, "com.htc.CLIENT_INFO_FLUSH"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    new-instance v5, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$FlushReceiver;

    invoke-direct {v5, p0, p1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$FlushReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v0, v6, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 188
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getInstance()Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getLastTimeOfClientStatLogOutput()J

    move-result-wide v1

    .line 189
    .local v1, lastTimeOfClientStatLogOutput:J
    const-string v5, "com.htc.CLIENT_INFO_FLUSH"

    invoke-static {v1, v2}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->getFirstFlushClientInfoInterval(J)J

    move-result-wide v6

    invoke-static {p0, v5, v6, v7}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->setupPendingIntent(Landroid/content/Context;Ljava/lang/String;J)V

    .line 190
    cmp-long v5, v1, v8

    if-gtz v5, :cond_0

    .line 191
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getInstance()Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->setLastTimeOfClientStatLogOutput(J)V

    .line 193
    :cond_0
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getInstance()Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getLastTimeOfUseTimeLogOutput()J

    move-result-wide v3

    .line 194
    .local v3, lastTimeOfUseTimeLogOutput:J
    const-string v5, "com.htc.USE_TIME_FLUSH"

    invoke-static {v3, v4}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->getFirstFlushUsageTimeInterval(J)J

    move-result-wide v6

    invoke-static {p0, v5, v6, v7}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->setupPendingIntent(Landroid/content/Context;Ljava/lang/String;J)V

    .line 195
    cmp-long v5, v3, v8

    if-gtz v5, :cond_1

    .line 196
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getInstance()Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->setLastTimeOfUseTimeLogOutput(J)V

    .line 197
    :cond_1
    return-void
.end method

.method public static registerContentReceiver(Landroid/content/Context;Landroid/os/Handler;[Lcom/htc/server/HtcInfoOperator;)V
    .locals 11
    .parameter "context"
    .parameter "handler"
    .parameter "infoOperators"

    .prologue
    .line 265
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 266
    .local v2, cr:Landroid/content/ContentResolver;
    new-instance v1, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$SettingContentObserver;

    invoke-direct {v1, p0, p1, p2}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$SettingContentObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;[Lcom/htc/server/HtcInfoOperator;)V

    .line 267
    .local v1, co:Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$SettingContentObserver;
    const-string v8, "screen_off_timeout"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 270
    const-string v8, "screen_off_timeout"

    sget-wide v9, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->MAX_USER_ACTIVITY_DURATION:J

    invoke-static {v2, v8, v9, v10}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 272
    .local v3, duration:J
    move-object v0, p2

    .local v0, arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v7, v0, v5

    .line 273
    .local v7, op:Lcom/htc/server/HtcInfoOperator;
    const-wide/16 v8, -0x1

    cmp-long v8, v3, v8

    if-eqz v8, :cond_0

    .line 274
    invoke-virtual {v7, v3, v4}, Lcom/htc/server/HtcInfoOperator;->setScreenOffTimeout(J)V

    .line 272
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 276
    :cond_0
    sget-wide v8, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->MAX_USER_ACTIVITY_DURATION:J

    invoke-virtual {v7, v8, v9}, Lcom/htc/server/HtcInfoOperator;->setScreenOffTimeout(J)V

    goto :goto_1

    .line 278
    .end local v7           #op:Lcom/htc/server/HtcInfoOperator;
    :cond_1
    return-void
.end method

.method public static registerDebugInfoReceiver(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 4
    .parameter "context"
    .parameter "handler"
    .parameter "receiveHandler"

    .prologue
    .line 227
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 228
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.DEVICE_INFO_FLUSH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    new-instance v1, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$FlushReceiver;

    invoke-direct {v1, p0, p1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$FlushReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 234
    const-string v1, "com.htc.DEVICE_INFO_FLUSH"

    sget-wide v2, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_INFO_INTERVAL:J

    invoke-static {p0, v1, v2, v3}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->setupPendingIntent(Landroid/content/Context;Ljava/lang/String;J)V

    .line 235
    return-void
.end method

.method public static registerErrorInfoReceiver(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 3
    .parameter "context"
    .parameter "handler"
    .parameter "receiveHandler"

    .prologue
    .line 304
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 305
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.intent.action.BUGREPORT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 306
    new-instance v1, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$ErrorInfoReceiver;

    invoke-direct {v1, p1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$ErrorInfoReceiver;-><init>(Landroid/os/Handler;)V

    const-string v2, "com.htc.permission.FEEDBACK_PROTECT"

    invoke-virtual {p0, v1, v0, v2, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 307
    return-void
.end method

.method public static registerExtraUsageReceiver(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 4
    .parameter "context"
    .parameter "handler"
    .parameter "mReceiveHandler"

    .prologue
    .line 281
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 282
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.DEVICE_INFO_LogInstalledApp"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    const-string v1, "com.htc.DEVICE_INFO_LogSWInfoTime"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    const-string v1, "com.htc.DEVICE_INFO_LogHWInfoTime"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    const-string v1, "com.htc.screen_capture_action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    new-instance v1, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$ExtraUsageReceiver;

    invoke-direct {v1, p0, p1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$ExtraUsageReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 288
    const-string v1, "com.htc.DEVICE_INFO_LogInstalledApp"

    sget-wide v2, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->LOGINSTALLEDAPP_INTERVAL:J

    invoke-static {p0, v1, v2, v3}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->setupPendingIntent(Landroid/content/Context;Ljava/lang/String;J)V

    .line 289
    return-void
.end method

.method public static registerMediaReceiver(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 3
    .parameter "context"
    .parameter "handler"
    .parameter "receiveHandler"

    .prologue
    .line 253
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 254
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.HtcDeviceInfoManager.MediaReceiver"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    new-instance v1, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$MediaPlayReceiver;

    invoke-direct {v1, p1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$MediaPlayReceiver;-><init>(Landroid/os/Handler;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 256
    return-void
.end method

.method public static registerPhoneReceiver(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 238
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 240
    .local v0, telephony:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 241
    new-instance v1, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$1;

    invoke-direct {v1, v0, p1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$1;-><init>(Landroid/telephony/TelephonyManager;Landroid/os/Handler;)V

    .line 248
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 250
    .end local v1           #thread:Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method public static registerPolicyChangeReceiver(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 3
    .parameter "context"
    .parameter "handler"
    .parameter "receiveHandler"

    .prologue
    .line 298
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 299
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.intent.action.ULOG_POLICY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    new-instance v1, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$BGFunctionReceiver;

    invoke-direct {v1, p0, p1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$BGFunctionReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 301
    return-void
.end method

.method public static registerSystemErrorReceiver(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 3
    .parameter "context"
    .parameter "handler"
    .parameter "receiveHandler"

    .prologue
    .line 259
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 260
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.updater.NOTIFY_SYSTEM_CRASH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    new-instance v1, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$FlushReceiver;

    invoke-direct {v1, p0, p1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$FlushReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 262
    return-void
.end method

.method public static registerUIModeReceiver(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 3
    .parameter "context"
    .parameter "handler"
    .parameter "receiveHandler"

    .prologue
    .line 292
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 293
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.intent.action.SET_TELLHTC_UIMODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    new-instance v1, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$BGFunctionReceiver;

    invoke-direct {v1, p0, p1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$BGFunctionReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    const-string v2, "com.htc.permission.SET_TELLHTC_UIMODE"

    invoke-virtual {p0, v1, v0, v2, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 295
    return-void
.end method

.method public static setupPendingIntent(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 7
    .parameter "context"
    .parameter "action"
    .parameter "interval"

    .prologue
    const/4 v6, 0x0

    .line 477
    const-string v5, "alarm"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 478
    .local v0, alarm:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 479
    .local v1, broadcastIntent:Landroid/content/Intent;
    invoke-static {p0, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 480
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    add-long v3, p2, v5

    .line 481
    .local v3, triggerTime:J
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v3, v4, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 482
    return-void
.end method
