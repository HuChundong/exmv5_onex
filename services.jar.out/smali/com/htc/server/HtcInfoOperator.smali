.class abstract Lcom/htc/server/HtcInfoOperator;
.super Ljava/lang/Object;
.source "HtcInfoOperator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/HtcInfoOperator$1;,
        Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field static SETTING_SCREEN_OFF_TIMEOUT:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "HtcDeviceInfoManager"

.field private static final VERBOSE:Z


# instance fields
.field mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

.field mLastFlushDeviceInfo:Landroid/app/HtcDeviceInfo;

.field mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

.field mVoiceAppUsage:Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 20
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v1, Lcom/htc/server/HtcInfoOperator;->DEBUG:Z

    .line 21
    const-string v1, "persist.deviceinfo.verbose"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/htc/server/HtcInfoOperator;->VERBOSE:Z

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    .line 30
    iput-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mLastFlushDeviceInfo:Landroid/app/HtcDeviceInfo;

    .line 31
    iput-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    .line 32
    iput-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mVoiceAppUsage:Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;

    .line 38
    new-instance v0, Landroid/app/HtcDeviceInfo;

    invoke-direct {v0}, Landroid/app/HtcDeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    .line 39
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    const-string v1, "ro.build.changelist"

    const-string v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/HtcDeviceInfo;->changeListNo:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    const/4 v1, 0x0

    iput v1, v0, Landroid/app/HtcDeviceInfo;->simState:I

    .line 43
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/HtcDeviceInfo;->lastDeviceAliveUpdateTime:J

    .line 46
    new-instance v0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;

    invoke-direct {v0, p0}, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;-><init>(Lcom/htc/server/HtcInfoOperator;)V

    iput-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mVoiceAppUsage:Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;

    .line 47
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 18
    sget-boolean v0, Lcom/htc/server/HtcInfoOperator;->VERBOSE:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/server/HtcInfoOperator;JLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/server/HtcInfoOperator;->addDeviceUseTime(JLjava/lang/String;)V

    return-void
.end method

.method private addDeviceUseTime(JLjava/lang/String;)V
    .locals 4
    .parameter "duration"
    .parameter "reason"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v1, v0, Landroid/app/HtcDeviceInfo;->deviceUseTime:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/app/HtcDeviceInfo;->deviceUseTime:J

    .line 275
    sget-boolean v0, Lcom/htc/server/HtcInfoOperator;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 276
    const-string v0, "HtcDeviceInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addDeviceUseTime, duration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", deviceUseTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v2, v2, Landroid/app/HtcDeviceInfo;->deviceUseTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_0
    return-void
.end method


# virtual methods
.method abstract addANR(Ljava/lang/String;)V
.end method

.method abstract addCrash(Ljava/lang/String;)V
.end method

.method abstract addKernelCrash()V
.end method

.method abstract addRadioCrash()V
.end method

.method abstract addSentErrorCount(Landroid/content/Intent;)V
.end method

.method abstract addSystemCrash()V
.end method

.method appDied(Landroid/os/Bundle;)V
    .locals 4
    .parameter "b"

    .prologue
    const/4 v3, -0x1

    .line 317
    sget-boolean v1, Lcom/htc/server/HtcInfoOperator;->VERBOSE:Z

    if-eqz v1, :cond_0

    .line 318
    const-string v1, "HtcDeviceInfoManager"

    const-string v2, "APP_DIED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_0
    iget-object v1, p0, Lcom/htc/server/HtcInfoOperator;->mVoiceAppUsage:Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;

    if-nez v1, :cond_2

    .line 331
    :cond_1
    :goto_0
    return-void

    .line 324
    :cond_2
    if-eqz p1, :cond_1

    .line 327
    const-string v1, "pid"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 328
    .local v0, pid:I
    if-eq v0, v3, :cond_1

    .line 329
    iget-object v1, p0, Lcom/htc/server/HtcInfoOperator;->mVoiceAppUsage:Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;

    invoke-virtual {v1, v0, v3}, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->stop(II)V

    goto :goto_0
.end method

.method deserilizeFromFile(Ljava/io/File;)Landroid/app/HtcDeviceInfo;
    .locals 5
    .parameter "file"

    .prologue
    .line 50
    const/4 v1, 0x0

    .line 51
    .local v1, tmp:Landroid/app/HtcDeviceInfo;
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/app/HtcDeviceInfo;->deserializeFromFile(Ljava/lang/String;)Landroid/app/HtcDeviceInfo;

    move-result-object v1

    .line 53
    if-eqz v1, :cond_0

    .line 54
    iget-object v2, v1, Landroid/app/HtcDeviceInfo;->changeListNo:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v3, v3, Landroid/app/HtcDeviceInfo;->changeListNo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 55
    invoke-virtual {v1}, Landroid/app/HtcDeviceInfo;->reset()V

    .line 57
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_0
    :goto_0
    return-object v1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "HtcDeviceInfoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method abstract flush()V
.end method

.method abstract flushClientStatistic()V
.end method

.method abstract flushUsageTime()V
.end method

.method abstract getAppAliveTime(Ljava/lang/String;)J
.end method

.method getDeviceAliveTime()J
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v0, v0, Landroid/app/HtcDeviceInfo;->totalDeviceAliveTime:J

    return-wide v0
.end method

.method getDeviceInfo()Landroid/app/HtcDeviceInfo;
    .locals 2

    .prologue
    .line 111
    iget-object v1, p0, Lcom/htc/server/HtcInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    monitor-enter v1

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v0}, Landroid/app/HtcDeviceInfo;->clone()Landroid/app/HtcDeviceInfo;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getVoiceAppUsage()Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mVoiceAppUsage:Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;

    return-object v0
.end method

.method abstract killAllProc()V
.end method

.method abstract killProc(Ljava/lang/String;)V
.end method

.method abstract logHWInfoTime()V
.end method

.method abstract logInstalledApp()V
.end method

.method abstract logLocationInfo()V
.end method

.method abstract logLockscreenShortcutInfo()V
.end method

.method abstract logSWInfoTime()V
.end method

.method abstract logStatusbarInfo()V
.end method

.method abstract logWallpaperInfo()V
.end method

.method reset()V
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    const-string v1, "ro.build.changelist"

    const-string v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/HtcDeviceInfo;->changeListNo:Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    const/4 v1, 0x0

    iput v1, v0, Landroid/app/HtcDeviceInfo;->simState:I

    .line 119
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/HtcDeviceInfo;->lastDeviceAliveUpdateTime:J

    .line 120
    return-void
.end method

.method abstract screenOff()V
.end method

.method abstract screenOn()V
.end method

.method setScreenOffTimeout(J)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 68
    sput-wide p1, Lcom/htc/server/HtcInfoOperator;->SETTING_SCREEN_OFF_TIMEOUT:J

    .line 69
    return-void
.end method

.method abstract setTop(Ljava/lang/String;)V
.end method

.method abstract setUIMode(Ljava/lang/String;)V
.end method

.method startPhoneCall()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mVoiceAppUsage:Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;

    if-nez v0, :cond_0

    .line 337
    :goto_0
    return-void

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mVoiceAppUsage:Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;

    invoke-virtual {v0}, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startPhoneCall()V

    goto :goto_0
.end method

.method abstract startProc(IILjava/lang/String;)V
.end method

.method stopPhoneCall()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mVoiceAppUsage:Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;

    if-nez v0, :cond_0

    .line 343
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mVoiceAppUsage:Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;

    invoke-virtual {v0}, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->stopPhoneCall()V

    goto :goto_0
.end method

.method update(Ljava/lang/String;)V
    .locals 1
    .parameter "processName"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mVoiceAppUsage:Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator;->mVoiceAppUsage:Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;

    invoke-virtual {v0}, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->updateTime()V

    .line 106
    :cond_0
    return-void
.end method

.method abstract updatePolicy()V
.end method

.method userActivity(Landroid/os/Bundle;)V
    .locals 11
    .parameter "b"

    .prologue
    const-wide/16 v9, 0x0

    .line 285
    iget-object v6, p0, Lcom/htc/server/HtcInfoOperator;->mVoiceAppUsage:Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;

    if-nez v6, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    if-eqz p1, :cond_0

    .line 291
    const-string v6, "time"

    const-wide/16 v7, -0x1

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 292
    .local v4, time:J
    iget-object v6, p0, Lcom/htc/server/HtcInfoOperator;->mVoiceAppUsage:Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;

    invoke-virtual {v6}, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->isVoiceInUse()Z

    move-result v6

    if-nez v6, :cond_4

    .line 293
    iget-object v6, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v2, v6, Landroid/app/HtcDeviceInfo;->lastDeviceUseUpdateTime:J

    .line 294
    .local v2, last_time:J
    const-wide/16 v0, 0x0

    .line 295
    .local v0, duration:J
    cmp-long v6, v4, v9

    if-lez v6, :cond_2

    cmp-long v6, v2, v9

    if-lez v6, :cond_2

    cmp-long v6, v2, v4

    if-gez v6, :cond_2

    .line 296
    sub-long v0, v4, v2

    .line 297
    sget-wide v6, Lcom/htc/server/HtcInfoOperator;->SETTING_SCREEN_OFF_TIMEOUT:J

    cmp-long v6, v0, v6

    if-gtz v6, :cond_3

    .line 298
    const-string v6, "user activity"

    invoke-direct {p0, v0, v1, v6}, Lcom/htc/server/HtcInfoOperator;->addDeviceUseTime(JLjava/lang/String;)V

    .line 313
    .end local v0           #duration:J
    .end local v2           #last_time:J
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iput-wide v4, v6, Landroid/app/HtcDeviceInfo;->lastDeviceUseUpdateTime:J

    goto :goto_0

    .line 301
    .restart local v0       #duration:J
    .restart local v2       #last_time:J
    :cond_3
    sget-boolean v6, Lcom/htc/server/HtcInfoOperator;->VERBOSE:Z

    if-eqz v6, :cond_2

    .line 302
    const-string v6, "HtcDeviceInfoManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "userActivity, over max duration: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-wide v8, Lcom/htc/server/HtcInfoOperator;->SETTING_SCREEN_OFF_TIMEOUT:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 309
    .end local v0           #duration:J
    .end local v2           #last_time:J
    :cond_4
    sget-boolean v6, Lcom/htc/server/HtcInfoOperator;->VERBOSE:Z

    if-eqz v6, :cond_2

    .line 310
    const-string v6, "HtcDeviceInfoManager"

    const-string v7, "userActivity, voiceInUse!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
