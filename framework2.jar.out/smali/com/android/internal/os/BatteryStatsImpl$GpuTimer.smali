.class public final Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;
.super Lcom/android/internal/os/BatteryStatsImpl$Timer;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GpuTimer"
.end annotation


# instance fields
.field mAcquireTime:J

.field private mGpuSpeedTimes:[J

.field mNesting:I

.field private mRelGpuSpeedTimes:[J

.field mTimeout:J

.field final mTimerPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalGpuSpeedTimes:[J

.field final mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

.field private mUnplugGpuSpeedTimes:[J

.field mUpdateTime:J


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .parameter "uid"
    .parameter "type"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, timerPool:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;>;"
    .local p4, unpluggables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;>;"
    const/4 v2, 0x0

    .line 1208
    invoke-direct {p0, p2, p4}, Lcom/android/internal/os/BatteryStatsImpl$Timer;-><init>(ILjava/util/ArrayList;)V

    .line 1145
    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUnplugGpuSpeedTimes:[J

    .line 1150
    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    .line 1155
    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mRelGpuSpeedTimes:[J

    .line 1160
    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    .line 1215
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 1216
    iput-object p3, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTimerPool:Ljava/util/ArrayList;

    .line 1218
    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->getGpuSpeedSteps()I

    move-result v1

    .line 1220
    .local v1, steps:I
    new-array v2, v1, [J

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    .line 1222
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1224
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v0

    .line 1222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1226
    :cond_0
    return-void
.end method

.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V
    .locals 7
    .parameter "uid"
    .parameter "type"
    .parameter
    .parameter
    .parameter "in"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;",
            ">;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, timerPool:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;>;"
    .local p4, unpluggables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;>;"
    const/4 v4, 0x0

    .line 1165
    invoke-direct {p0, p2, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$Timer;-><init>(ILjava/util/ArrayList;Landroid/os/Parcel;)V

    .line 1145
    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUnplugGpuSpeedTimes:[J

    .line 1150
    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    .line 1155
    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mRelGpuSpeedTimes:[J

    .line 1160
    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    .line 1172
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 1173
    iput-object p3, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTimerPool:Ljava/util/ArrayList;

    .line 1174
    invoke-virtual {p5}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUpdateTime:J

    .line 1176
    invoke-virtual {p5}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1177
    .local v0, bins:I
    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->getGpuSpeedSteps()I

    move-result v3

    .line 1184
    .local v3, steps:I
    if-ltz v0, :cond_0

    const/16 v4, 0x14

    if-le v0, v4, :cond_1

    .line 1186
    :cond_0
    const/4 v0, 0x0

    .line 1189
    :cond_1
    if-lt v0, v3, :cond_2

    move v4, v0

    :goto_0
    new-array v4, v4, [J

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    .line 1191
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 1193
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    invoke-virtual {p5}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    aput-wide v5, v4, v1

    .line 1191
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1           #i:I
    :cond_2
    move v4, v3

    .line 1189
    goto :goto_0

    .line 1196
    .restart local v1       #i:I
    :cond_3
    if-ge v0, v3, :cond_4

    .line 1198
    move v2, v0

    .local v2, j:I
    :goto_2
    if-ge v2, v3, :cond_4

    .line 1200
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v2

    .line 1198
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1203
    .end local v2           #j:I
    :cond_4
    return-void
.end method

.method private static refreshTimersLocked(Lcom/android/internal/os/BatteryStatsImpl;Ljava/util/ArrayList;)V
    .locals 13
    .parameter "stats"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsImpl;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1484
    .local p1, pool:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    mul-long v6, v9, v11

    .line 1485
    .local v6, realtime:J
    invoke-virtual {p0, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryRealtimeLocked(J)J

    move-result-wide v1

    .line 1486
    .local v1, batteryRealtime:J
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1488
    .local v0, N:I
    add-int/lit8 v5, v0, -0x1

    .local v5, i:I
    :goto_0
    if-ltz v5, :cond_1

    .line 1490
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;

    .line 1491
    .local v8, t:Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;
    iget-wide v9, v8, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUpdateTime:J

    sub-long v3, v1, v9

    .line 1493
    .local v3, heldTime:J
    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-lez v9, :cond_0

    .line 1495
    iget-wide v9, v8, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    int-to-long v11, v0

    div-long v11, v3, v11

    add-long/2addr v9, v11

    iput-wide v9, v8, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    .line 1498
    :cond_0
    iput-wide v1, v8, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUpdateTime:J

    .line 1488
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 1500
    .end local v3           #heldTime:J
    .end local v8           #t:Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;
    :cond_1
    return-void
.end method


# virtual methods
.method public addGpuSpeedStepTimes([J)V
    .locals 10
    .parameter "values"

    .prologue
    const-wide/16 v8, 0x0

    .line 1668
    if-nez p1, :cond_1

    .line 1704
    :cond_0
    return-void

    .line 1673
    :cond_1
    const/4 v3, 0x0

    .line 1675
    .local v3, totalLen:I
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    if-nez v5, :cond_2

    .line 1677
    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->getGpuSpeedSteps()I

    move-result v3

    .line 1679
    new-array v5, v3, [J

    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    .line 1681
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 1683
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    aput-wide v8, v5, v2

    .line 1681
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1689
    .end local v2           #i:I
    :cond_2
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    array-length v3, v5

    .line 1692
    :cond_3
    const-wide/16 v0, 0x0

    .line 1693
    .local v0, amt:J
    array-length v4, p1

    .line 1695
    .local v4, valueLen:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    if-ge v2, v3, :cond_0

    if-ge v2, v4, :cond_0

    .line 1697
    aget-wide v0, p1, v2

    .line 1699
    cmp-long v5, v0, v8

    if-lez v5, :cond_4

    .line 1701
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    aget-wide v6, v5, v2

    add-long/2addr v6, v0

    aput-wide v6, v5, v2

    .line 1695
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected computeCurrentCountLocked()I
    .locals 1

    .prologue
    .line 1530
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    return v0
.end method

.method protected computeRunTimeLocked(J)J
    .locals 6
    .parameter "curBatteryRealtime"

    .prologue
    const-wide/16 v0, 0x0

    .line 1512
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTimeout:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUpdateTime:J

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTimeout:J

    add-long/2addr v2, v4

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 1514
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUpdateTime:J

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTimeout:J

    add-long p1, v2, v4

    .line 1516
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mNesting:I

    if-lez v4, :cond_1

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUpdateTime:J

    sub-long v4, p1, v0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    int-to-long v0, v0

    div-long v0, v4, v0

    :cond_1
    add-long/2addr v0, v2

    return-wide v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method detach()V
    .locals 1

    .prologue
    .line 1593
    invoke-super {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->detach()V

    .line 1595
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1597
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1599
    :cond_0
    return-void
.end method

.method public getTimeAtGpuSpeedStep(II)J
    .locals 3
    .parameter "speedStep"
    .parameter "which"

    .prologue
    const-wide/16 v0, 0x0

    .line 1770
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    if-nez v2, :cond_1

    .line 1791
    :cond_0
    :goto_0
    return-wide v0

    .line 1775
    :cond_1
    if-ltz p1, :cond_0

    .line 1780
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    array-length v2, v2

    if-ge p1, v2, :cond_0

    .line 1787
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    aget-wide v0, v0, p1

    goto :goto_0
.end method

.method isRunningLocked()Z
    .locals 1

    .prologue
    .line 1415
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mNesting:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 1351
    invoke-super {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->logState(Landroid/util/Printer;Ljava/lang/String;)V

    .line 1352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mNesting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mNesting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUpdateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAcquireTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mAcquireTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1354
    return-void
.end method

.method public plug(JJ)V
    .locals 1
    .parameter "batteryUptime"
    .parameter "batteryRealtime"

    .prologue
    .line 1329
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mNesting:I

    if-lez v0, :cond_0

    .line 1336
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->plug(JJ)V

    .line 1338
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->updateGpuSpeedStepTimes()V

    .line 1340
    iput-wide p3, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUpdateTime:J

    .line 1347
    :cond_0
    return-void
.end method

.method readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 7
    .parameter "in"

    .prologue
    .line 1603
    invoke-super {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 1604
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mNesting:I

    .line 1606
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1607
    .local v0, bins:I
    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->getGpuSpeedSteps()I

    move-result v3

    .line 1614
    .local v3, steps:I
    if-ltz v0, :cond_0

    const/16 v4, 0x14

    if-le v0, v4, :cond_1

    .line 1616
    :cond_0
    const/4 v0, 0x0

    .line 1619
    :cond_1
    if-lt v0, v3, :cond_2

    move v4, v0

    :goto_0
    new-array v4, v4, [J

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    .line 1621
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 1623
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    aput-wide v5, v4, v1

    .line 1621
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1           #i:I
    :cond_2
    move v4, v3

    .line 1619
    goto :goto_0

    .line 1626
    .restart local v1       #i:I
    :cond_3
    if-ge v0, v3, :cond_4

    .line 1628
    move v2, v0

    .local v2, j:I
    :goto_2
    if-ge v2, v3, :cond_4

    .line 1630
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v2

    .line 1628
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1634
    .end local v2           #j:I
    :cond_4
    return-void
.end method

.method reset(Lcom/android/internal/os/BatteryStatsImpl;Z)Z
    .locals 8
    .parameter "stats"
    .parameter "detachIfReset"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1540
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mNesting:I

    if-gtz v4, :cond_0

    move v0, v2

    .line 1541
    .local v0, canDetach:Z
    :goto_0
    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    :goto_1
    invoke-super {p0, p1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->reset(Lcom/android/internal/os/BatteryStatsImpl;Z)Z

    .line 1543
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mNesting:I

    if-lez v2, :cond_3

    .line 1545
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryRealtimeLocked(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUpdateTime:J

    .line 1548
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    if-nez v2, :cond_2

    .line 1550
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/internal/os/ProcessStats;->getGpuSpeedTimes([J)[J

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    .line 1551
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    array-length v2, v2

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mRelGpuSpeedTimes:[J

    .line 1553
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 1555
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mRelGpuSpeedTimes:[J

    aput-wide v6, v2, v1

    .line 1553
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0           #canDetach:Z
    .end local v1           #i:I
    :cond_0
    move v0, v3

    .line 1540
    goto :goto_0

    .restart local v0       #canDetach:Z
    :cond_1
    move v2, v3

    .line 1541
    goto :goto_1

    .line 1560
    :cond_2
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    invoke-static {v2}, Lcom/android/internal/os/ProcessStats;->getGpuSpeedTimes([J)[J

    .line 1573
    :cond_3
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mAcquireTime:J

    .line 1575
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    if-eqz v2, :cond_4

    .line 1577
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 1579
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    aput-wide v6, v2, v1

    .line 1577
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1583
    .end local v1           #i:I
    :cond_4
    return v0
.end method

.method setTimeout(J)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 1235
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTimeout:J

    .line 1236
    return-void
.end method

.method startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V
    .locals 5
    .parameter "stats"

    .prologue
    .line 1365
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mNesting:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mNesting:I

    if-nez v1, :cond_3

    .line 1367
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryRealtimeLocked(J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUpdateTime:J

    .line 1370
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1374
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->refreshTimersLocked(Lcom/android/internal/os/BatteryStatsImpl;Ljava/util/ArrayList;)V

    .line 1376
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1380
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    if-nez v1, :cond_1

    .line 1382
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/internal/os/ProcessStats;->getGpuSpeedTimes([J)[J

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    .line 1383
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mRelGpuSpeedTimes:[J

    .line 1385
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1387
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mRelGpuSpeedTimes:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 1385
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1392
    .end local v0           #i:I
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    invoke-static {v1}, Lcom/android/internal/os/ProcessStats;->getGpuSpeedTimes([J)[J

    .line 1396
    :cond_2
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    .line 1397
    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mAcquireTime:J

    .line 1411
    :cond_3
    return-void
.end method

.method stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V
    .locals 8
    .parameter "stats"

    .prologue
    .line 1428
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mNesting:I

    if-nez v4, :cond_1

    .line 1477
    :cond_0
    :goto_0
    return-void

    .line 1433
    :cond_1
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mNesting:I

    if-nez v4, :cond_0

    .line 1435
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v2, v4, v6

    .line 1436
    .local v2, realtime:J
    invoke-virtual {p1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryRealtimeLocked(J)J

    move-result-wide v0

    .line 1443
    .local v0, batteryRealtime:J
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 1447
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-static {p1, v4}, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->refreshTimersLocked(Lcom/android/internal/os/BatteryStatsImpl;Ljava/util/ArrayList;)V

    .line 1449
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1465
    :goto_1
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mAcquireTime:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 1469
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    .line 1472
    :cond_2
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUpdateTime:J

    cmp-long v4, v4, v0

    if-eqz v4, :cond_0

    .line 1474
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->updateGpuSpeedStepTimes()V

    goto :goto_0

    .line 1453
    :cond_3
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mNesting:I

    .line 1454
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->computeRunTimeLocked(J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    .line 1455
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mNesting:I

    goto :goto_1
.end method

.method public unplug(JJ)V
    .locals 1
    .parameter "batteryUptime"
    .parameter "batteryRealtime"

    .prologue
    .line 1271
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->unplug(JJ)V

    .line 1293
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mNesting:I

    if-lez v0, :cond_0

    .line 1301
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    if-nez v0, :cond_1

    .line 1303
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/os/ProcessStats;->getGpuSpeedTimes([J)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    .line 1319
    :cond_0
    :goto_0
    return-void

    .line 1307
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    invoke-static {v0}, Lcom/android/internal/os/ProcessStats;->getGpuSpeedTimes([J)[J

    goto :goto_0
.end method

.method public updateGpuSpeedStepTimes()V
    .locals 12

    .prologue
    .line 1708
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mRelGpuSpeedTimes:[J

    if-nez v7, :cond_1

    .line 1710
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/internal/os/ProcessStats;->getGpuSpeedTimes([J)[J

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mRelGpuSpeedTimes:[J

    .line 1726
    :goto_0
    const-wide/16 v5, 0x0

    .line 1727
    .local v5, temp:J
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    array-length v3, v7

    .line 1728
    .local v3, mGpuSpeedLen:I
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mRelGpuSpeedTimes:[J

    array-length v4, v7

    .line 1729
    .local v4, mRelGpuSpeedLen:I
    const/4 v0, 0x0

    .line 1731
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_2

    if-ge v1, v4, :cond_2

    .line 1733
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mRelGpuSpeedTimes:[J

    aget-wide v5, v7, v1

    .line 1735
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    aget-wide v7, v7, v1

    cmp-long v7, v5, v7

    if-gez v7, :cond_0

    .line 1737
    const-string v7, "BatteryStatsImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error current Gpu time ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") < last Gpu time ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    aget-wide v9, v9, v1

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    :cond_0
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mRelGpuSpeedTimes:[J

    aget-wide v8, v7, v1

    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    aget-wide v10, v10, v1

    sub-long/2addr v8, v10

    aput-wide v8, v7, v1

    .line 1741
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mGpuSpeedTimes:[J

    aput-wide v5, v7, v1

    .line 1742
    add-int/lit8 v0, v0, 0x1

    .line 1731
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1714
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #mGpuSpeedLen:I
    .end local v4           #mRelGpuSpeedLen:I
    .end local v5           #temp:J
    :cond_1
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mRelGpuSpeedTimes:[J

    invoke-static {v7}, Lcom/android/internal/os/ProcessStats;->getGpuSpeedTimes([J)[J

    goto :goto_0

    .line 1754
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v3       #mGpuSpeedLen:I
    .restart local v4       #mRelGpuSpeedLen:I
    .restart local v5       #temp:J
    :cond_2
    move v2, v0

    .local v2, j:I
    :goto_2
    if-ge v2, v4, :cond_3

    .line 1756
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mRelGpuSpeedTimes:[J

    const-wide/16 v8, 0x0

    aput-wide v8, v7, v2

    .line 1754
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1759
    :cond_3
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mRelGpuSpeedTimes:[J

    invoke-virtual {p0, v7}, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->addGpuSpeedStepTimes([J)V

    .line 1761
    return-void
.end method

.method writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V
    .locals 4
    .parameter "out"
    .parameter "batteryRealtime"

    .prologue
    .line 1638
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 1640
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    array-length v0, v2

    .line 1647
    .local v0, bins:I
    if-ltz v0, :cond_0

    const/16 v2, 0x14

    if-le v0, v2, :cond_1

    .line 1649
    :cond_0
    const/4 v0, 0x0

    .line 1652
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1654
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1656
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    aget-wide v2, v2, v1

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1654
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1659
    :cond_2
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;J)V
    .locals 4
    .parameter "out"
    .parameter "batteryRealtime"

    .prologue
    .line 1245
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 1246
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mUpdateTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1248
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    array-length v0, v2

    .line 1250
    .local v0, bins:I
    if-ltz v0, :cond_0

    const/16 v2, 0x14

    if-le v0, v2, :cond_1

    .line 1252
    :cond_0
    const/4 v0, 0x0

    .line 1255
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1257
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1259
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$GpuTimer;->mTotalGpuSpeedTimes:[J

    aget-wide v2, v2, v1

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1257
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1261
    :cond_2
    return-void
.end method
