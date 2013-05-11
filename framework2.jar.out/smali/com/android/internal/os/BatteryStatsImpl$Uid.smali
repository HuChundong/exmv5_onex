.class public final Lcom/android/internal/os/BatteryStatsImpl$Uid;
.super Landroid/os/BatteryStats$Uid;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Uid"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    }
.end annotation


# instance fields
.field mAudioTurnedOn:Z

.field mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mCurrentBrightnesslevel:I

.field mCurrentTcpBytesReceived:J

.field mCurrentTcpBytesSent:J

.field final mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mDisplayTurnedOn:Z

.field mDisplayTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mFullWifiLockOut:Z

.field mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mGpuTurnedOn:Z

.field mGpuTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

.field mLoadedTcpBytesReceived:J

.field mLoadedTcpBytesSent:J

.field final mPackageStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;",
            ">;"
        }
    .end annotation
.end field

.field final mPids:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/BatteryStats$Uid$Pid;",
            ">;"
        }
    .end annotation
.end field

.field final mProcessStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;",
            ">;"
        }
    .end annotation
.end field

.field mScanWifiLockOut:Z

.field mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mSensorStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;",
            ">;"
        }
    .end annotation
.end field

.field mStartedTcpBytesReceived:J

.field mStartedTcpBytesSent:J

.field mTcpBytesReceivedAtLastUnplug:J

.field mTcpBytesSentAtLastUnplug:J

.field final mUid:I

.field mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

.field mVideoTurnedOn:Z

.field mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mWakelockStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;",
            ">;"
        }
    .end annotation
.end field

.field mWifiMulticastEnabled:Z

.field mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mWifiRunning:Z

.field mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;I)V
    .locals 8
    .parameter
    .parameter "uid"

    .prologue
    const-wide/16 v1, -0x1

    const/4 v7, 0x7

    const/4 v6, 0x5

    const/4 v5, 0x0

    .line 3320
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0}, Landroid/os/BatteryStats$Uid;-><init>()V

    .line 3259
    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mStartedTcpBytesReceived:J

    .line 3260
    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mStartedTcpBytesSent:J

    .line 3286
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentBrightnesslevel:I

    .line 3290
    new-array v1, v6, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 3298
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Ljava/util/HashMap;

    .line 3303
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Ljava/util/HashMap;

    .line 3308
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Ljava/util/HashMap;

    .line 3313
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Ljava/util/HashMap;

    .line 3318
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    .line 3328
    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    .line 3329
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 3331
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v2, p1, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v6, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 3333
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/android/internal/os/BatteryStatsImpl;->mScanWifiLockTimers:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 3335
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v2, p1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v7, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 3337
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v2, p1, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v7, v5, v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 3339
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v2, 0x8

    iget-object v3, p1, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v5, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 3342
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    const/16 v2, 0x40

    iget-object v3, p1, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v5, v3}, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    .line 3346
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v2, 0x80

    iget-object v3, p1, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v5, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 3349
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 3350
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    add-int/lit16 v3, v0, 0x3e8

    iget-object v4, p1, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3, v5, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    aput-object v2, v1, v0

    .line 3349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3353
    :cond_0
    return-void
.end method

.method private getWakeLockTypeString(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 5304
    packed-switch p1, :pswitch_data_0

    .line 5312
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 5306
    :pswitch_0
    const-string v0, "partial"

    goto :goto_0

    .line 5308
    :pswitch_1
    const-string v0, "full"

    goto :goto_0

    .line 5310
    :pswitch_2
    const-string v0, "window"

    goto :goto_0

    .line 5304
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public computeCurrentTcpBytesReceived()J
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 3396
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #calls: Lcom/android/internal/os/BatteryStatsImpl;->getNetworkStatsDetailGroupedByUid()Landroid/net/NetworkStats;
    invoke-static {v4}, Lcom/android/internal/os/BatteryStatsImpl;->access$400(Lcom/android/internal/os/BatteryStatsImpl;)Landroid/net/NetworkStats;

    move-result-object v4

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    invoke-virtual {v4, v5, v6}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;I)Landroid/net/NetworkStats$Entry;

    move-result-object v4

    iget-wide v0, v4, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 3398
    .local v0, uidRxBytes:J
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentTcpBytesReceived:J

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mStartedTcpBytesReceived:J

    cmp-long v6, v6, v2

    if-ltz v6, :cond_0

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mStartedTcpBytesReceived:J

    sub-long v2, v0, v2

    :cond_0
    add-long/2addr v2, v4

    return-wide v2
.end method

.method public computeCurrentTcpBytesSent()J
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 3792
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #calls: Lcom/android/internal/os/BatteryStatsImpl;->getNetworkStatsDetailGroupedByUid()Landroid/net/NetworkStats;
    invoke-static {v4}, Lcom/android/internal/os/BatteryStatsImpl;->access$400(Lcom/android/internal/os/BatteryStatsImpl;)Landroid/net/NetworkStats;

    move-result-object v4

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    invoke-virtual {v4, v5, v6}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;I)Landroid/net/NetworkStats$Entry;

    move-result-object v4

    iget-wide v0, v4, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 3794
    .local v0, uidTxBytes:J
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentTcpBytesSent:J

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mStartedTcpBytesSent:J

    cmp-long v6, v6, v2

    if-ltz v6, :cond_0

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mStartedTcpBytesSent:J

    sub-long v2, v0, v2

    :cond_0
    add-long/2addr v2, v4

    return-wide v2
.end method

.method public getAudioTurnedOnTime(JI)J
    .locals 2
    .parameter "batteryRealtime"
    .parameter "which"

    .prologue
    .line 3678
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 3679
    const-wide/16 v0, 0x0

    .line 3681
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;
    .locals 1

    .prologue
    .line 5361
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method public getDisplayBrightnessTime(IJI)J
    .locals 4
    .parameter "brightnessBin"
    .parameter "batteryRealtime"
    .parameter "which"

    .prologue
    .line 3737
    move v0, p1

    .line 3738
    .local v0, bin:I
    if-gez p1, :cond_2

    const/4 v0, 0x0

    .line 3741
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    .line 3743
    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3745
    const-string v1, "BatteryStatsImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDisplayBrightnessTime no Timer and Uid ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3748
    :cond_1
    const-wide/16 v1, 0x0

    .line 3756
    :goto_1
    return-wide v1

    .line 3739
    :cond_2
    const/4 v1, 0x5

    if-lt p1, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    .line 3756
    :cond_3
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v1

    goto :goto_1
.end method

.method public getDisplayTurnedOnTime(JI)J
    .locals 3
    .parameter "batteryRealtime"
    .parameter "which"

    .prologue
    .line 3717
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_1

    .line 3719
    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3721
    const-string v0, "BatteryStatsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDisplayTurnedOnTime no Timer and Uid ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3724
    :cond_0
    const-wide/16 v0, 0x0

    .line 3732
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getFullWifiLockTime(JI)J
    .locals 2
    .parameter "batteryRealtime"
    .parameter "which"

    .prologue
    .line 3653
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 3654
    const-wide/16 v0, 0x0

    .line 3656
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getPackageStats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Pkg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3372
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Ljava/util/HashMap;

    return-object v0
.end method

.method public getPackageStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .locals 2
    .parameter "name"

    .prologue
    .line 5127
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    .line 5128
    .local v0, ps:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    if-nez v0, :cond_0

    .line 5129
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    .end local v0           #ps:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    .line 5130
    .restart local v0       #ps:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5133
    :cond_0
    return-object v0
.end method

.method public getPidStats()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<+",
            "Landroid/os/BatteryStats$Uid$Pid;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5110
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getPidStatsLocked(I)Landroid/os/BatteryStats$Uid$Pid;
    .locals 2
    .parameter "pid"

    .prologue
    .line 5114
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$Uid$Pid;

    .line 5115
    .local v0, p:Landroid/os/BatteryStats$Uid$Pid;
    if-nez v0, :cond_0

    .line 5116
    new-instance v0, Landroid/os/BatteryStats$Uid$Pid;

    .end local v0           #p:Landroid/os/BatteryStats$Uid$Pid;
    invoke-direct {v0, p0}, Landroid/os/BatteryStats$Uid$Pid;-><init>(Landroid/os/BatteryStats$Uid;)V

    .line 5117
    .restart local v0       #p:Landroid/os/BatteryStats$Uid$Pid;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5119
    :cond_0
    return-object v0
.end method

.method public getProcessStats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Proc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3367
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Ljava/util/HashMap;

    return-object v0
.end method

.method public getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .locals 2
    .parameter "name"

    .prologue
    .line 5100
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 5101
    .local v0, ps:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-nez v0, :cond_0

    .line 5102
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .end local v0           #ps:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    .line 5103
    .restart local v0       #ps:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5106
    :cond_0
    return-object v0
.end method

.method public getScanWifiLockTime(JI)J
    .locals 2
    .parameter "batteryRealtime"
    .parameter "which"

    .prologue
    .line 3661
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 3662
    const-wide/16 v0, 0x0

    .line 3664
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getSensorStats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "+",
            "Landroid/os/BatteryStats$Uid$Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3362
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 5
    .parameter "sensor"
    .parameter "create"

    .prologue
    .line 5197
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .line 5198
    .local v0, se:Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    if-nez v0, :cond_2

    .line 5199
    if-nez p2, :cond_1

    .line 5200
    const/4 v1, 0x0

    .line 5216
    :cond_0
    :goto_0
    return-object v1

    .line 5202
    :cond_1
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .end local v0           #se:Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    invoke-direct {v0, p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;I)V

    .line 5203
    .restart local v0       #se:Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5205
    :cond_2
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5206
    .local v1, t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-nez v1, :cond_0

    .line 5209
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 5210
    .local v2, timers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    if-nez v2, :cond_3

    .line 5211
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #timers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5212
    .restart local v2       #timers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5214
    :cond_3
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .end local v1           #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v3, v2, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 5215
    .restart local v1       #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iput-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_0
.end method

.method public getServiceStatsLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .locals 3
    .parameter "pkg"
    .parameter "serv"

    .prologue
    .line 5141
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getPackageStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    move-result-object v0

    .line 5142
    .local v0, ps:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    .line 5143
    .local v1, ss:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    if-nez v1, :cond_0

    .line 5144
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->newServiceStatsLocked()Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v1

    .line 5145
    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5148
    :cond_0
    return-object v1
.end method

.method public getTcpBytesReceived(I)J
    .locals 4
    .parameter "which"

    .prologue
    .line 3382
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 3383
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLoadedTcpBytesReceived:J

    .line 3391
    :cond_0
    :goto_0
    return-wide v0

    .line 3385
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->computeCurrentTcpBytesReceived()J

    move-result-wide v0

    .line 3386
    .local v0, current:J
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 3387
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mTcpBytesReceivedAtLastUnplug:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 3388
    :cond_2
    if-nez p1, :cond_0

    .line 3389
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLoadedTcpBytesReceived:J

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public getTcpBytesSent(I)J
    .locals 4
    .parameter "which"

    .prologue
    .line 3404
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 3405
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLoadedTcpBytesSent:J

    .line 3413
    :cond_0
    :goto_0
    return-wide v0

    .line 3407
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->computeCurrentTcpBytesSent()J

    move-result-wide v0

    .line 3408
    .local v0, current:J
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 3409
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mTcpBytesSentAtLastUnplug:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 3410
    :cond_2
    if-nez p1, :cond_0

    .line 3411
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLoadedTcpBytesSent:J

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public getTimeAtGpuSpeedStep(II)J
    .locals 3
    .parameter "speedStep"
    .parameter "which"

    .prologue
    .line 3695
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    if-nez v0, :cond_1

    .line 3697
    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3699
    const-string v0, "BatteryStatsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTimeAtGpuSpeedStep no Timer and Uid ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3702
    :cond_0
    const-wide/16 v0, 0x0

    .line 3710
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->getTimeAtGpuSpeedStep(II)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 3377
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    return v0
.end method

.method public getUserActivityCount(II)I
    .locals 1
    .parameter "type"
    .parameter "which"

    .prologue
    .line 3778
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-nez v0, :cond_0

    .line 3779
    const/4 v0, 0x0

    .line 3781
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->getCountLocked(I)I

    move-result v0

    goto :goto_0
.end method

.method public getVideoTurnedOnTime(JI)J
    .locals 2
    .parameter "batteryRealtime"
    .parameter "which"

    .prologue
    .line 3686
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 3687
    const-wide/16 v0, 0x0

    .line 3689
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getWakeTimerLocked(Ljava/lang/String;I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 7
    .parameter "name"
    .parameter "type"

    .prologue
    .line 5152
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 5153
    .local v3, wl:Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    if-nez v3, :cond_2

    .line 5154
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 5155
    .local v0, N:I
    const/16 v4, 0x1e

    if-le v0, v4, :cond_1

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_0

    const/16 v4, 0x32

    if-le v0, v4, :cond_1

    .line 5157
    :cond_0
    const-string p1, "*overflow*"

    .line 5158
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #wl:Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 5160
    .restart local v3       #wl:Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    :cond_1
    if-nez v3, :cond_2

    .line 5161
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .end local v3           #wl:Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    invoke-direct {v3, p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    .line 5162
    .restart local v3       #wl:Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5165
    .end local v0           #N:I
    :cond_2
    const/4 v1, 0x0

    .line 5166
    .local v1, t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    packed-switch p2, :pswitch_data_0

    .line 5192
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5168
    :pswitch_0
    iget-object v1, v3, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5169
    if-nez v1, :cond_3

    .line 5170
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .end local v1           #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v4, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 5172
    .restart local v1       #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iput-object v1, v3, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    :cond_3
    move-object v2, v1

    .line 5190
    .end local v1           #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .local v2, t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :goto_0
    return-object v2

    .line 5176
    .end local v2           #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .restart local v1       #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :pswitch_1
    iget-object v1, v3, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5177
    if-nez v1, :cond_4

    .line 5178
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .end local v1           #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mFullTimers:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v4, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 5180
    .restart local v1       #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iput-object v1, v3, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    :cond_4
    move-object v2, v1

    .line 5182
    .end local v1           #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .restart local v2       #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    goto :goto_0

    .line 5184
    .end local v2           #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .restart local v1       #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :pswitch_2
    iget-object v1, v3, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5185
    if-nez v1, :cond_5

    .line 5186
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .end local v1           #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mWindowTimers:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v4, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 5188
    .restart local v1       #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iput-object v1, v3, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    :cond_5
    move-object v2, v1

    .line 5190
    .end local v1           #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .restart local v2       #t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    goto :goto_0

    .line 5166
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getWakelockStats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Wakelock;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3357
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Ljava/util/HashMap;

    return-object v0
.end method

.method public getWifiMulticastTime(JI)J
    .locals 2
    .parameter "batteryRealtime"
    .parameter "which"

    .prologue
    .line 3669
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 3670
    const-wide/16 v0, 0x0

    .line 3672
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getWifiRunningTime(JI)J
    .locals 2
    .parameter "batteryRealtime"
    .parameter "which"

    .prologue
    .line 3645
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 3646
    const-wide/16 v0, 0x0

    .line 3648
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    goto :goto_0
.end method

.method public hasUserActivity()Z
    .locals 1

    .prologue
    .line 3773
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method initUserActivityLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x7

    .line 3785
    new-array v1, v4, [Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 3786
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 3787
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Ljava/util/ArrayList;)V

    aput-object v2, v1, v0

    .line 3786
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3789
    :cond_0
    return-void
.end method

.method public noteAudioTurnedOffLocked()V
    .locals 2

    .prologue
    .line 3511
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOn:Z

    if-eqz v0, :cond_0

    .line 3512
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOn:Z

    .line 3513
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3515
    :cond_0
    return-void
.end method

.method public noteAudioTurnedOnLocked()V
    .locals 4

    .prologue
    .line 3499
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOn:Z

    if-nez v0, :cond_1

    .line 3500
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOn:Z

    .line 3501
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 3502
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v1, 0x7

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 3505
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3507
    :cond_1
    return-void
.end method

.method public noteDisplayBrightnessLocked(I)V
    .locals 5
    .parameter "bin"

    .prologue
    const/4 v1, 0x5

    .line 3622
    if-gez p1, :cond_4

    const/4 p1, 0x0

    .line 3625
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOn:Z

    if-eqz v0, :cond_3

    .line 3626
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentBrightnesslevel:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentBrightnesslevel:I

    if-ge v0, v1, :cond_1

    .line 3627
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentBrightnesslevel:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 3628
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentBrightnesslevel:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3632
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    if-nez v0, :cond_2

    .line 3633
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    add-int/lit16 v2, p1, 0x3e8

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    aput-object v1, v0, p1

    .line 3636
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3637
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentBrightnesslevel:I

    .line 3640
    :cond_3
    return-void

    .line 3623
    :cond_4
    if-lt p1, v1, :cond_0

    const/4 p1, 0x4

    goto :goto_0
.end method

.method public noteDisplayTurnedOffLocked()V
    .locals 4

    .prologue
    .line 3597
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOn:Z

    if-eqz v2, :cond_1

    .line 3598
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOn:Z

    .line 3599
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3601
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v2, :cond_1

    .line 3602
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    array-length v0, v2

    .line 3603
    .local v0, bin:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3604
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 3605
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3603
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3618
    .end local v0           #bin:I
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method public noteDisplayTurnedOnLocked()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3572
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOn:Z

    if-nez v0, :cond_1

    .line 3594
    :cond_0
    :goto_0
    return-void

    .line 3576
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOn:Z

    if-nez v0, :cond_0

    .line 3577
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOn:Z

    .line 3578
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_2

    .line 3579
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v1, 0x80

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v5, v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 3582
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3584
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentBrightnesslevel:I

    .line 3586
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentBrightnesslevel:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentBrightnesslevel:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 3587
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentBrightnesslevel:I

    aget-object v0, v0, v1

    if-nez v0, :cond_3

    .line 3588
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentBrightnesslevel:I

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentBrightnesslevel:I

    add-int/lit16 v3, v3, 0x3e8

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3, v5, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    aput-object v2, v0, v1

    .line 3590
    :cond_3
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentBrightnesslevel:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    goto :goto_0
.end method

.method public noteFullWifiLockAcquiredLocked()V
    .locals 4

    .prologue
    .line 3439
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    if-nez v0, :cond_1

    .line 3440
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    .line 3441
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 3442
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 3445
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3447
    :cond_1
    return-void
.end method

.method public noteFullWifiLockReleasedLocked()V
    .locals 2

    .prologue
    .line 3451
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    if-eqz v0, :cond_0

    .line 3452
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    .line 3453
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3455
    :cond_0
    return-void
.end method

.method public noteGpuTurnedOffLocked()V
    .locals 2

    .prologue
    .line 3562
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOn:Z

    if-eqz v0, :cond_0

    .line 3563
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOn:Z

    .line 3564
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3566
    :cond_0
    return-void
.end method

.method public noteGpuTurnedOnLocked()V
    .locals 4

    .prologue
    .line 3545
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOn:Z

    if-nez v0, :cond_1

    .line 3546
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOn:Z

    .line 3547
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    if-nez v0, :cond_0

    .line 3548
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    const/16 v1, 0x40

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    .line 3551
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3553
    :cond_1
    return-void
.end method

.method public noteScanWifiLockAcquiredLocked()V
    .locals 4

    .prologue
    .line 3459
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockOut:Z

    if-nez v0, :cond_1

    .line 3460
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockOut:Z

    .line 3461
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 3462
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mScanWifiLockTimers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 3465
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3467
    :cond_1
    return-void
.end method

.method public noteScanWifiLockReleasedLocked()V
    .locals 2

    .prologue
    .line 3471
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockOut:Z

    if-eqz v0, :cond_0

    .line 3472
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockOut:Z

    .line 3473
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3475
    :cond_0
    return-void
.end method

.method public noteStartGps()V
    .locals 3

    .prologue
    .line 5347
    const/16 v1, -0x2710

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    .line 5348
    .local v0, t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    .line 5349
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 5351
    :cond_0
    return-void
.end method

.method public noteStartSensor(I)V
    .locals 2
    .parameter "sensor"

    .prologue
    .line 5332
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    .line 5333
    .local v0, t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    .line 5334
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 5336
    :cond_0
    return-void
.end method

.method public noteStartWakeLocked(ILjava/lang/String;I)V
    .locals 12
    .parameter "pid"
    .parameter "name"
    .parameter "type"

    .prologue
    .line 5220
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWakeTimerLocked(Ljava/lang/String;I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v4

    .line 5221
    .local v4, t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v4, :cond_6

    .line 5222
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v4, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 5224
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileDebugWakelock()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 5225
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #getter for: Lcom/android/internal/os/BatteryStatsImpl;->mWakelockHistory:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/internal/os/BatteryStatsImpl;->access$500(Lcom/android/internal/os/BatteryStatsImpl;)Ljava/util/HashMap;

    move-result-object v7

    monitor-enter v7

    .line 5226
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #getter for: Lcom/android/internal/os/BatteryStatsImpl;->mWakelockHistory:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/internal/os/BatteryStatsImpl;->access$500(Lcom/android/internal/os/BatteryStatsImpl;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;

    .line 5227
    .local v5, wh:Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;
    if-nez v5, :cond_0

    .line 5228
    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;

    .end local v5           #wh:Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;
    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;-><init>(Lcom/android/internal/os/BatteryStatsImpl$1;)V

    .line 5229
    .restart local v5       #wh:Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;
    iput-object p2, v5, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mName:Ljava/lang/String;

    .line 5230
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #getter for: Lcom/android/internal/os/BatteryStatsImpl;->mWakelockHistory:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/internal/os/BatteryStatsImpl;->access$500(Lcom/android/internal/os/BatteryStatsImpl;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, p2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5233
    :cond_0
    iget-object v6, v5, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mLockTypes:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 5234
    iget-object v6, v5, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mLockTypes:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5237
    :cond_1
    iget-object v6, v5, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mReleaseTimeList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v8, 0x64

    if-le v6, v8, :cond_3

    .line 5238
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/16 v6, 0x32

    if-ge v2, v6, :cond_3

    .line 5239
    iget-object v6, v5, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mReleaseTimeList:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v6, v5, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mAcquireTimeList:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long v0, v8, v10

    .line 5240
    .local v0, diff:J
    const-wide/16 v8, 0x0

    cmp-long v6, v0, v8

    if-gez v6, :cond_2

    .line 5241
    const-wide/16 v0, 0x0

    .line 5242
    :cond_2
    iget-wide v8, v5, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mSum:J

    add-long/2addr v8, v0

    iput-wide v8, v5, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mSum:J

    .line 5243
    iget-object v6, v5, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mReleaseTimeList:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5244
    iget-object v6, v5, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mAcquireTimeList:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5238
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5247
    .end local v0           #diff:J
    .end local v2           #i:I
    :cond_3
    iget-object v6, v5, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mAcquireTimeList:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5248
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5250
    .end local v5           #wh:Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;
    :cond_4
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfilePower()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 5251
    const-string v6, "BatteryStatsImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hold "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWakeLockTypeString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " wakelock, name="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5255
    :cond_5
    sget-boolean v6, Lcom/htc/utils/PerformanceLogUtil;->Enabled:Z

    if-eqz v6, :cond_6

    .line 5256
    invoke-direct {p0, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWakeLockTypeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, v6}, Lcom/htc/utils/PerformanceLogUtil;->logNoteStartWakeLock(Ljava/lang/String;Ljava/lang/String;)V

    .line 5260
    :cond_6
    if-ltz p1, :cond_7

    if-nez p3, :cond_7

    .line 5261
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getPidStatsLocked(I)Landroid/os/BatteryStats$Uid$Pid;

    move-result-object v3

    .line 5262
    .local v3, p:Landroid/os/BatteryStats$Uid$Pid;
    iget-wide v6, v3, Landroid/os/BatteryStats$Uid$Pid;->mWakeStart:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_7

    .line 5263
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v3, Landroid/os/BatteryStats$Uid$Pid;->mWakeStart:J

    .line 5266
    .end local v3           #p:Landroid/os/BatteryStats$Uid$Pid;
    :cond_7
    return-void

    .line 5248
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public noteStopGps()V
    .locals 3

    .prologue
    .line 5354
    const/16 v1, -0x2710

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    .line 5355
    .local v0, t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    .line 5356
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 5358
    :cond_0
    return-void
.end method

.method public noteStopSensor(I)V
    .locals 2
    .parameter "sensor"

    .prologue
    .line 5340
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    .line 5341
    .local v0, t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    .line 5342
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 5344
    :cond_0
    return-void
.end method

.method public noteStopWakeLocked(ILjava/lang/String;I)V
    .locals 11
    .parameter "pid"
    .parameter "name"
    .parameter "type"

    .prologue
    const-wide/16 v9, 0x0

    .line 5269
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWakeTimerLocked(Ljava/lang/String;I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    .line 5270
    .local v1, t:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v1, :cond_3

    .line 5271
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 5273
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileDebugWakelock()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5274
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #getter for: Lcom/android/internal/os/BatteryStatsImpl;->mWakelockHistory:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/internal/os/BatteryStatsImpl;->access$500(Lcom/android/internal/os/BatteryStatsImpl;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    .line 5275
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #getter for: Lcom/android/internal/os/BatteryStatsImpl;->mWakelockHistory:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/internal/os/BatteryStatsImpl;->access$500(Lcom/android/internal/os/BatteryStatsImpl;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;

    .line 5276
    .local v2, wh:Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;
    if-eqz v2, :cond_0

    .line 5277
    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mReleaseTimeList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mAcquireTimeList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 5278
    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mReleaseTimeList:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5280
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5283
    .end local v2           #wh:Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;
    :cond_1
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfilePower()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5284
    const-string v3, "BatteryStatsImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "release "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWakeLockTypeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " wakelock, name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5288
    :cond_2
    sget-boolean v3, Lcom/htc/utils/PerformanceLogUtil;->Enabled:Z

    if-eqz v3, :cond_3

    .line 5289
    invoke-direct {p0, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWakeLockTypeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/htc/utils/PerformanceLogUtil;->logNoteStopWakeLock(Ljava/lang/String;Ljava/lang/String;)V

    .line 5293
    :cond_3
    if-ltz p1, :cond_4

    if-nez p3, :cond_4

    .line 5294
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$Uid$Pid;

    .line 5295
    .local v0, p:Landroid/os/BatteryStats$Uid$Pid;
    if-eqz v0, :cond_4

    iget-wide v3, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStart:J

    cmp-long v3, v3, v9

    if-eqz v3, :cond_4

    .line 5296
    iget-wide v3, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeSum:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStart:J

    sub-long/2addr v5, v7

    add-long/2addr v3, v5

    iput-wide v3, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeSum:J

    .line 5297
    iput-wide v9, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStart:J

    .line 5300
    .end local v0           #p:Landroid/os/BatteryStats$Uid$Pid;
    :cond_4
    return-void

    .line 5280
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public noteUserActivityLocked(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 3763
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-nez v0, :cond_0

    .line 3764
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->initUserActivityLocked()V

    .line 3766
    :cond_0
    if-gez p1, :cond_2

    const/4 p1, 0x0

    .line 3768
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->stepAtomic()V

    .line 3769
    return-void

    .line 3767
    :cond_2
    const/4 v0, 0x7

    if-lt p1, v0, :cond_1

    const/4 p1, 0x6

    goto :goto_0
.end method

.method public noteVideoTurnedOffLocked()V
    .locals 2

    .prologue
    .line 3531
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOn:Z

    if-eqz v0, :cond_0

    .line 3532
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOn:Z

    .line 3533
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3535
    :cond_0
    return-void
.end method

.method public noteVideoTurnedOnLocked()V
    .locals 4

    .prologue
    .line 3519
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOn:Z

    if-nez v0, :cond_1

    .line 3520
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOn:Z

    .line 3521
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 3522
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 3525
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3527
    :cond_1
    return-void
.end method

.method public noteWifiMulticastDisabledLocked()V
    .locals 2

    .prologue
    .line 3491
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    if-eqz v0, :cond_0

    .line 3492
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    .line 3493
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3495
    :cond_0
    return-void
.end method

.method public noteWifiMulticastEnabledLocked()V
    .locals 4

    .prologue
    .line 3479
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    if-nez v0, :cond_1

    .line 3480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    .line 3481
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 3482
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 3485
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3487
    :cond_1
    return-void
.end method

.method public noteWifiRunningLocked()V
    .locals 4

    .prologue
    .line 3419
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    if-nez v0, :cond_1

    .line 3420
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    .line 3421
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 3422
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 3425
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3427
    :cond_1
    return-void
.end method

.method public noteWifiStoppedLocked()V
    .locals 2

    .prologue
    .line 3431
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    if-eqz v0, :cond_0

    .line 3432
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    .line 3433
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 3435
    :cond_0
    return-void
.end method

.method readFromParcelLocked(Ljava/util/ArrayList;Landroid/os/Parcel;)V
    .locals 26
    .parameter
    .parameter "in"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;",
            ">;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4097
    .local p1, unpluggables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 4098
    .local v16, numWakelocks:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 4099
    const/4 v10, 0x0

    .local v10, j:I
    :goto_0
    move/from16 v0, v16

    if-ge v10, v0, :cond_0

    .line 4100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 4101
    .local v24, wakelockName:Ljava/lang/String;
    new-instance v23, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    .line 4102
    .local v23, wakelock:Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->readFromParcelLocked(Ljava/util/ArrayList;Landroid/os/Parcel;)V

    .line 4106
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Ljava/util/HashMap;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4099
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 4109
    .end local v23           #wakelock:Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    .end local v24           #wakelockName:Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 4110
    .local v15, numSensors:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 4111
    const/4 v11, 0x0

    .local v11, k:I
    :goto_1
    if-ge v11, v15, :cond_1

    .line 4112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 4113
    .local v22, sensorNumber:I
    new-instance v21, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;I)V

    .line 4114
    .local v21, sensor:Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->readFromParcelLocked(Ljava/util/ArrayList;Landroid/os/Parcel;)V

    .line 4115
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Ljava/util/HashMap;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4111
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 4118
    .end local v21           #sensor:Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    .end local v22           #sensorNumber:I
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 4119
    .local v14, numProcs:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 4120
    const/4 v11, 0x0

    :goto_2
    if-ge v11, v14, :cond_2

    .line 4121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 4122
    .local v20, processName:Ljava/lang/String;
    new-instance v19, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    .line 4123
    .local v19, proc:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->readFromParcelLocked(Landroid/os/Parcel;)V

    .line 4124
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Ljava/util/HashMap;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4120
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 4127
    .end local v19           #proc:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .end local v20           #processName:Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 4128
    .local v13, numPkgs:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 4129
    const/4 v12, 0x0

    .local v12, l:I
    :goto_3
    if-ge v12, v13, :cond_3

    .line 4130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 4131
    .local v17, packageName:Ljava/lang/String;
    new-instance v18, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    .line 4132
    .local v18, pkg:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->readFromParcelLocked(Landroid/os/Parcel;)V

    .line 4133
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Ljava/util/HashMap;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4129
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 4136
    .end local v17           #packageName:Ljava/lang/String;
    .end local v18           #pkg:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLoadedTcpBytesReceived:J

    .line 4137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLoadedTcpBytesSent:J

    .line 4138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentTcpBytesReceived:J

    .line 4139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentTcpBytesSent:J

    .line 4140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mTcpBytesReceivedAtLastUnplug:J

    .line 4141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mTcpBytesSentAtLastUnplug:J

    .line 4142
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    .line 4143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 4144
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v4, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v4, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4149
    :goto_4
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    .line 4150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    .line 4151
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v4, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v4, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4156
    :goto_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockOut:Z

    .line 4157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    .line 4158
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v4, Lcom/android/internal/os/BatteryStatsImpl;->mScanWifiLockTimers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v4, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4163
    :goto_6
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    .line 4164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    .line 4165
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v4, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v4, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4170
    :goto_7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOn:Z

    .line 4171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    .line 4172
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v4, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4177
    :goto_8
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOn:Z

    .line 4178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    .line 4179
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v4, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4185
    :goto_9
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOn:Z

    .line 4186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    .line 4194
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    const/16 v5, 0x40

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v4, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    .line 4201
    :goto_a
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOn:Z

    .line 4202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b

    .line 4203
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v5, 0x80

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v4, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4209
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    .line 4210
    const/4 v9, 0x0

    .local v9, i:I
    :goto_c
    const/4 v3, 0x5

    if-ge v9, v3, :cond_d

    .line 4211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    add-int/lit16 v5, v9, 0x3e8

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v4, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    aput-object v3, v25, v9

    .line 4210
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 4147
    .end local v9           #i:I
    :cond_4
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto/16 :goto_4

    .line 4154
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto/16 :goto_5

    .line 4161
    :cond_6
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto/16 :goto_6

    .line 4168
    :cond_7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto/16 :goto_7

    .line 4175
    :cond_8
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto/16 :goto_8

    .line 4182
    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto/16 :goto_9

    .line 4197
    :cond_a
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    goto :goto_a

    .line 4206
    :cond_b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_b

    .line 4215
    :cond_c
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_d
    const/4 v3, 0x5

    if-ge v9, v3, :cond_d

    .line 4216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    add-int/lit16 v5, v9, 0x3e8

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v7, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    aput-object v4, v3, v9

    .line 4215
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 4222
    :cond_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e

    .line 4223
    const/4 v3, 0x7

    new-array v3, v3, [Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 4224
    const/4 v9, 0x0

    :goto_e
    const/4 v3, 0x7

    if-ge v9, v3, :cond_f

    .line 4225
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Ljava/util/ArrayList;Landroid/os/Parcel;)V

    aput-object v4, v3, v9

    .line 4224
    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    .line 4228
    :cond_e
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 4236
    :cond_f
    return-void
.end method

.method public reportExcessiveCpuLocked(Ljava/lang/String;JJ)V
    .locals 1
    .parameter "proc"
    .parameter "overTime"
    .parameter "usedTime"

    .prologue
    .line 5325
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v0

    .line 5326
    .local v0, p:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v0, :cond_0

    .line 5327
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addExcessiveCpu(JJ)V

    .line 5329
    :cond_0
    return-void
.end method

.method public reportExcessiveWakeLocked(Ljava/lang/String;JJ)V
    .locals 1
    .parameter "proc"
    .parameter "overTime"
    .parameter "usedTime"

    .prologue
    .line 5318
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v0

    .line 5319
    .local v0, p:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v0, :cond_0

    .line 5320
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addExcessiveWake(JJ)V

    .line 5322
    :cond_0
    return-void
.end method

.method reset()Z
    .locals 23

    .prologue
    .line 3803
    const/4 v3, 0x0

    .line 3811
    .local v3, active:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 3812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Lcom/android/internal/os/BatteryStatsImpl;Z)Z

    move-result v19

    if-nez v19, :cond_9

    const/16 v19, 0x1

    :goto_0
    or-int v3, v3, v19

    .line 3813
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    move/from16 v19, v0

    or-int v3, v3, v19

    .line 3815
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 3816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Lcom/android/internal/os/BatteryStatsImpl;Z)Z

    move-result v19

    if-nez v19, :cond_a

    const/16 v19, 0x1

    :goto_1
    or-int v3, v3, v19

    .line 3817
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    move/from16 v19, v0

    or-int v3, v3, v19

    .line 3819
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    .line 3820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Lcom/android/internal/os/BatteryStatsImpl;Z)Z

    move-result v19

    if-nez v19, :cond_b

    const/16 v19, 0x1

    :goto_2
    or-int v3, v3, v19

    .line 3821
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockOut:Z

    move/from16 v19, v0

    or-int v3, v3, v19

    .line 3823
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 3824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Lcom/android/internal/os/BatteryStatsImpl;Z)Z

    move-result v19

    if-nez v19, :cond_c

    const/16 v19, 0x1

    :goto_3
    or-int v3, v3, v19

    .line 3825
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    move/from16 v19, v0

    or-int v3, v3, v19

    .line 3827
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 3828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Lcom/android/internal/os/BatteryStatsImpl;Z)Z

    move-result v19

    if-nez v19, :cond_d

    const/16 v19, 0x1

    :goto_4
    or-int v3, v3, v19

    .line 3829
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOn:Z

    move/from16 v19, v0

    or-int v3, v3, v19

    .line 3831
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    .line 3832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Lcom/android/internal/os/BatteryStatsImpl;Z)Z

    move-result v19

    if-nez v19, :cond_e

    const/16 v19, 0x1

    :goto_5
    or-int v3, v3, v19

    .line 3833
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOn:Z

    move/from16 v19, v0

    or-int v3, v3, v19

    .line 3836
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    .line 3837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->reset(Lcom/android/internal/os/BatteryStatsImpl;Z)Z

    move-result v19

    if-nez v19, :cond_f

    const/16 v19, 0x1

    :goto_6
    or-int v3, v3, v19

    .line 3838
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOn:Z

    move/from16 v19, v0

    or-int v3, v3, v19

    .line 3842
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    .line 3843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Lcom/android/internal/os/BatteryStatsImpl;Z)Z

    move-result v19

    if-nez v19, :cond_10

    const/16 v19, 0x1

    :goto_7
    or-int v3, v3, v19

    .line 3844
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOn:Z

    move/from16 v19, v0

    or-int v3, v3, v19

    .line 3847
    :cond_7
    const/4 v4, 0x0

    .local v4, i:I
    :goto_8
    const/16 v19, 0x5

    move/from16 v0, v19

    if-ge v4, v0, :cond_11

    .line 3848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    if-eqz v19, :cond_8

    .line 3849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Lcom/android/internal/os/BatteryStatsImpl;Z)Z

    .line 3847
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 3812
    .end local v4           #i:I
    :cond_9
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 3816
    :cond_a
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 3820
    :cond_b
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 3824
    :cond_c
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 3828
    :cond_d
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 3832
    :cond_e
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 3837
    :cond_f
    const/16 v19, 0x0

    goto :goto_6

    .line 3843
    :cond_10
    const/16 v19, 0x0

    goto :goto_7

    .line 3854
    .restart local v4       #i:I
    :cond_11
    const-wide/16 v19, 0x0

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLoadedTcpBytesSent:J

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLoadedTcpBytesReceived:J

    .line 3855
    const-wide/16 v19, 0x0

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentTcpBytesSent:J

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurrentTcpBytesReceived:J

    .line 3857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_12

    .line 3858
    const/4 v4, 0x0

    :goto_9
    const/16 v19, 0x7

    move/from16 v0, v19

    if-ge v4, v0, :cond_12

    .line 3859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->reset(Z)V

    .line 3858
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 3863
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->size()I

    move-result v19

    if-lez v19, :cond_14

    .line 3864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 3865
    .local v8, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;>;"
    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_14

    .line 3866
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 3867
    .local v17, wakelockEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 3868
    .local v18, wl:Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->reset()Z

    move-result v19

    if-eqz v19, :cond_13

    .line 3869
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    .line 3871
    :cond_13
    const/4 v3, 0x1

    goto :goto_a

    .line 3875
    .end local v8           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;>;"
    .end local v17           #wakelockEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    .end local v18           #wl:Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->size()I

    move-result v19

    if-lez v19, :cond_16

    .line 3876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 3877
    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;>;>;"
    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_16

    .line 3878
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 3879
    .local v15, sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .line 3880
    .local v14, s:Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    invoke-virtual {v14}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->reset()Z

    move-result v19

    if-eqz v19, :cond_15

    .line 3881
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_b

    .line 3883
    :cond_15
    const/4 v3, 0x1

    goto :goto_b

    .line 3887
    .end local v5           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;>;>;"
    .end local v14           #s:Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    .end local v15           #sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;>;"
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->size()I

    move-result v19

    if-lez v19, :cond_18

    .line 3888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 3889
    .local v7, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;>;>;"
    :goto_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_17

    .line 3890
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 3891
    .local v13, procEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->detach()V

    goto :goto_c

    .line 3893
    .end local v13           #procEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;>;"
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->clear()V

    .line 3895
    .end local v7           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;>;>;"
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v19

    if-lez v19, :cond_1a

    .line 3896
    const/4 v4, 0x0

    :goto_d
    if-nez v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v4, v0, :cond_1a

    .line 3897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/BatteryStats$Uid$Pid;

    .line 3898
    .local v11, pid:Landroid/os/BatteryStats$Uid$Pid;
    iget-wide v0, v11, Landroid/os/BatteryStats$Uid$Pid;->mWakeStart:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-eqz v19, :cond_19

    .line 3899
    const/4 v3, 0x1

    .line 3896
    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 3903
    .end local v11           #pid:Landroid/os/BatteryStats$Uid$Pid;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->size()I

    move-result v19

    if-lez v19, :cond_1d

    .line 3904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 3905
    .local v6, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;>;"
    :cond_1b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1c

    .line 3906
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 3907
    .local v12, pkgEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    .line 3908
    .local v10, p:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    invoke-virtual {v10}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->detach()V

    .line 3909
    iget-object v0, v10, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->size()I

    move-result v19

    if-lez v19, :cond_1b

    .line 3910
    iget-object v0, v10, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 3912
    .local v9, it2:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;>;"
    :goto_e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1b

    .line 3913
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 3914
    .local v16, servEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->detach()V

    goto :goto_e

    .line 3918
    .end local v9           #it2:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;>;"
    .end local v10           #p:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .end local v12           #pkgEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    .end local v16           #servEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;"
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->clear()V

    .line 3921
    .end local v6           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;>;"
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->clear()V

    .line 3923
    if-nez v3, :cond_28

    .line 3924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1e

    .line 3925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 3927
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1f

    .line 3928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 3930
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_20

    .line 3931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 3933
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_21

    .line 3934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 3936
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_22

    .line 3937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 3939
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_23

    .line 3940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 3943
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_24

    .line 3944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->detach()V

    .line 3948
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_25

    .line 3949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 3951
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_27

    .line 3952
    const/4 v4, 0x0

    :goto_f
    const/16 v19, 0x5

    move/from16 v0, v19

    if-ge v4, v0, :cond_27

    .line 3953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    if-eqz v19, :cond_26

    .line 3954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 3952
    :cond_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 3960
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_28

    .line 3961
    const/4 v4, 0x0

    :goto_10
    const/16 v19, 0x7

    move/from16 v0, v19

    if-ge v4, v0, :cond_28

    .line 3962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->detach()V

    .line 3961
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 3967
    :cond_28
    if-nez v3, :cond_29

    const/16 v19, 0x1

    :goto_11
    return v19

    :cond_29
    const/16 v19, 0x0

    goto :goto_11
.end method

.method writeToParcelLocked(Landroid/os/Parcel;J)V
    .locals 12
    .parameter "out"
    .parameter "batteryRealtime"

    .prologue
    .line 3978
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 3979
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 3980
    .local v9, wakelockEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3981
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 3982
    .local v8, wakelock:Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    invoke-virtual {v8, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->writeToParcelLocked(Landroid/os/Parcel;J)V

    goto :goto_0

    .line 3985
    .end local v8           #wakelock:Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    .end local v9           #wakelockEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    :cond_0
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 3986
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 3987
    .local v7, sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 3988
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .line 3989
    .local v6, sensor:Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    invoke-virtual {v6, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->writeToParcelLocked(Landroid/os/Parcel;J)V

    goto :goto_1

    .line 3992
    .end local v6           #sensor:Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    .end local v7           #sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;>;"
    :cond_1
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 3993
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 3994
    .local v5, procEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3995
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 3996
    .local v4, proc:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    invoke-virtual {v4, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->writeToParcelLocked(Landroid/os/Parcel;)V

    goto :goto_2

    .line 3999
    .end local v4           #proc:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .end local v5           #procEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;>;"
    :cond_2
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4000
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4001
    .local v3, pkgEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4002
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    .line 4003
    .local v2, pkg:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    invoke-virtual {v2, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->writeToParcelLocked(Landroid/os/Parcel;)V

    goto :goto_3

    .line 4006
    .end local v2           #pkg:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .end local v3           #pkgEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    :cond_3
    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLoadedTcpBytesReceived:J

    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 4007
    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLoadedTcpBytesSent:J

    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 4008
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->computeCurrentTcpBytesReceived()J

    move-result-wide v10

    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 4009
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->computeCurrentTcpBytesSent()J

    move-result-wide v10

    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 4010
    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mTcpBytesReceivedAtLastUnplug:J

    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 4011
    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mTcpBytesSentAtLastUnplug:J

    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 4012
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v10, :cond_4

    .line 4013
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4014
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v10, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 4018
    :goto_4
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v10, :cond_5

    .line 4019
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4020
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v10, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 4024
    :goto_5
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v10, :cond_6

    .line 4025
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4026
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScanWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v10, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 4030
    :goto_6
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v10, :cond_7

    .line 4031
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4032
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v10, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 4036
    :goto_7
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v10, :cond_8

    .line 4037
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4038
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v10, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 4042
    :goto_8
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v10, :cond_9

    .line 4043
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4044
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v10, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 4049
    :goto_9
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    if-eqz v10, :cond_a

    .line 4050
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4051
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    invoke-virtual {v10, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 4057
    :goto_a
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v10, :cond_b

    .line 4058
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4059
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v10, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 4063
    :goto_b
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v10, :cond_c

    .line 4064
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4065
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    const/4 v10, 0x5

    if-ge v0, v10, :cond_d

    .line 4066
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mDisplayBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v10, v10, v0

    invoke-virtual {v10, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 4065
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 4016
    .end local v0           #i:I
    :cond_4
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 4022
    :cond_5
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 4028
    :cond_6
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 4034
    :cond_7
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 4040
    :cond_8
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 4046
    :cond_9
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 4053
    :cond_a
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 4061
    :cond_b
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 4069
    :cond_c
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4073
    :cond_d
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-eqz v10, :cond_e

    .line 4074
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4075
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_d
    const/4 v10, 0x7

    if-ge v0, v10, :cond_f

    .line 4076
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v10, v10, v0

    invoke-virtual {v10, p1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeToParcel(Landroid/os/Parcel;)V

    .line 4075
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 4079
    .end local v0           #i:I
    :cond_e
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4087
    :cond_f
    return-void
.end method
