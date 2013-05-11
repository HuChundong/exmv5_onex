.class public final Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
.super Landroid/os/BatteryStats$Uid$Proc;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl$Uid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Proc"
.end annotation


# instance fields
.field mExcessivePower:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;",
            ">;"
        }
    .end annotation
.end field

.field mForegroundTime:J

.field mLastForegroundTime:J

.field mLastStarts:I

.field mLastSystemTime:J

.field mLastUserTime:J

.field mLoadedForegroundTime:J

.field mLoadedStarts:I

.field mLoadedSystemTime:J

.field mLoadedUserTime:J

.field mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

.field mStarts:I

.field mSystemTime:J

.field mUnpluggedForegroundTime:J

.field mUnpluggedStarts:I

.field mUnpluggedSystemTime:J

.field mUnpluggedUserTime:J

.field mUserTime:J

.field final synthetic this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V
    .locals 1
    .parameter

    .prologue
    .line 4464
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    invoke-direct {p0}, Landroid/os/BatteryStats$Uid$Proc;-><init>()V

    .line 4465
    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4466
    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getCpuSpeedSteps()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    .line 4467
    return-void
.end method


# virtual methods
.method public addCpuTimeLocked(II)V
    .locals 4
    .parameter "utime"
    .parameter "stime"

    .prologue
    .line 4625
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    .line 4626
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    .line 4627
    return-void
.end method

.method public addExcessiveCpu(JJ)V
    .locals 2
    .parameter "overTime"
    .parameter "usedTime"

    .prologue
    .line 4513
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 4514
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    .line 4516
    :cond_0
    new-instance v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    invoke-direct {v0}, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;-><init>()V

    .line 4517
    .local v0, ew:Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    .line 4518
    iput-wide p1, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    .line 4519
    iput-wide p3, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    .line 4520
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4521
    return-void
.end method

.method public addExcessiveWake(JJ)V
    .locals 2
    .parameter "overTime"
    .parameter "usedTime"

    .prologue
    .line 4502
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 4503
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    .line 4505
    :cond_0
    new-instance v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    invoke-direct {v0}, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;-><init>()V

    .line 4506
    .local v0, ew:Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    .line 4507
    iput-wide p1, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    .line 4508
    iput-wide p3, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    .line 4509
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4510
    return-void
.end method

.method public addForegroundTimeLocked(J)V
    .locals 2
    .parameter "ttime"

    .prologue
    .line 4630
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    .line 4631
    return-void
.end method

.method public addSpeedStepTimes([J)V
    .locals 6
    .parameter "values"

    .prologue
    .line 4703
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    array-length v4, v4

    if-ge v3, v4, :cond_2

    array-length v4, p1

    if-ge v3, v4, :cond_2

    .line 4704
    aget-wide v0, p1, v3

    .line 4705
    .local v0, amt:J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_1

    .line 4706
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    aget-object v2, v4, v3

    .line 4707
    .local v2, c:Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;
    if-nez v2, :cond_0

    .line 4708
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    .end local v2           #c:Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;-><init>(Ljava/util/ArrayList;)V

    .restart local v2       #c:Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;
    aput-object v2, v4, v3

    .line 4710
    :cond_0
    aget-wide v4, p1, v3

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;->addCountAtomic(J)V

    .line 4703
    .end local v2           #c:Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4713
    .end local v0           #amt:J
    :cond_2
    return-void
.end method

.method public countExcessivePowers()I
    .locals 1

    .prologue
    .line 4491
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method detach()V
    .locals 4

    .prologue
    .line 4480
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4481
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 4482
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    aget-object v0, v2, v1

    .line 4483
    .local v0, c:Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;
    if-eqz v0, :cond_0

    .line 4484
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4485
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 4481
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4488
    .end local v0           #c:Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;
    :cond_1
    return-void
.end method

.method public getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;
    .locals 1

    .prologue
    .line 4621
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method public getExcessivePower(I)Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    .locals 1
    .parameter "i"

    .prologue
    .line 4495
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 4496
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    .line 4498
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getForegroundTime(I)J
    .locals 4
    .parameter "which"

    .prologue
    .line 4672
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 4673
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLastForegroundTime:J

    .line 4682
    .local v0, val:J
    :cond_0
    :goto_0
    return-wide v0

    .line 4675
    .end local v0           #val:J
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    .line 4676
    .restart local v0       #val:J
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 4677
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedForegroundTime:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 4678
    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 4679
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedForegroundTime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getStarts(I)I
    .locals 2
    .parameter "which"

    .prologue
    .line 4688
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 4689
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLastStarts:I

    .line 4698
    .local v0, val:I
    :cond_0
    :goto_0
    return v0

    .line 4691
    .end local v0           #val:I
    :cond_1
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    .line 4692
    .restart local v0       #val:I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 4693
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedStarts:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 4694
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 4695
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedStarts:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getSystemTime(I)J
    .locals 4
    .parameter "which"

    .prologue
    .line 4656
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 4657
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLastSystemTime:J

    .line 4666
    .local v0, val:J
    :cond_0
    :goto_0
    return-wide v0

    .line 4659
    .end local v0           #val:J
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    .line 4660
    .restart local v0       #val:J
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 4661
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedSystemTime:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 4662
    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 4663
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedSystemTime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getTimeAtCpuSpeedStep(II)J
    .locals 4
    .parameter "speedStep"
    .parameter "which"

    .prologue
    const-wide/16 v1, 0x0

    .line 4717
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    array-length v3, v3

    if-ge p1, v3, :cond_0

    .line 4718
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    aget-object v0, v3, p1

    .line 4719
    .local v0, c:Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;->getCountLocked(I)I

    move-result v1

    int-to-long v1, v1

    .line 4721
    .end local v0           #c:Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;
    :cond_0
    return-wide v1
.end method

.method public getUserTime(I)J
    .locals 4
    .parameter "which"

    .prologue
    .line 4640
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 4641
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLastUserTime:J

    .line 4650
    .local v0, val:J
    :cond_0
    :goto_0
    return-wide v0

    .line 4643
    .end local v0           #val:J
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    .line 4644
    .restart local v0       #val:J
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 4645
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedUserTime:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 4646
    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 4647
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedUserTime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public incStartsLocked()V
    .locals 1

    .prologue
    .line 4634
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    .line 4635
    return-void
.end method

.method public plug(JJ)V
    .locals 0
    .parameter "batteryUptime"
    .parameter "batteryRealtime"

    .prologue
    .line 4477
    return-void
.end method

.method readExcessivePowerFromParcelLocked(Landroid/os/Parcel;)Z
    .locals 6
    .parameter "in"

    .prologue
    const/4 v3, 0x1

    .line 4540
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4541
    .local v0, N:I
    if-nez v0, :cond_1

    .line 4542
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    .line 4559
    :cond_0
    :goto_0
    return v3

    .line 4546
    :cond_1
    const/16 v4, 0x2710

    if-le v0, v4, :cond_2

    .line 4547
    const-string v3, "BatteryStatsImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File corrupt: too many excessive power entries "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4548
    const/4 v3, 0x0

    goto :goto_0

    .line 4551
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    .line 4552
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 4553
    new-instance v1, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    invoke-direct {v1}, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;-><init>()V

    .line 4554
    .local v1, ew:Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    .line 4555
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v1, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    .line 4556
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v1, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    .line 4557
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4552
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method readFromParcelLocked(Landroid/os/Parcel;)V
    .locals 7
    .parameter "in"

    .prologue
    const-wide/16 v5, 0x0

    .line 4591
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    .line 4592
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    .line 4593
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    .line 4594
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    .line 4595
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedUserTime:J

    .line 4596
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedSystemTime:J

    .line 4597
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedForegroundTime:J

    .line 4598
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedStarts:I

    .line 4599
    iput-wide v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLastUserTime:J

    .line 4600
    iput-wide v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLastSystemTime:J

    .line 4601
    iput-wide v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLastForegroundTime:J

    .line 4602
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLastStarts:I

    .line 4603
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedUserTime:J

    .line 4604
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedSystemTime:J

    .line 4605
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedForegroundTime:J

    .line 4606
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedStarts:I

    .line 4608
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4609
    .local v0, bins:I
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl;->getCpuSpeedSteps()I

    move-result v2

    .line 4610
    .local v2, steps:I
    if-lt v0, v2, :cond_0

    move v2, v0

    .end local v2           #steps:I
    :cond_0
    new-array v3, v2, [Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    .line 4611
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 4612
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 4613
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v4, v5, p1}, Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;-><init>(Ljava/util/ArrayList;Landroid/os/Parcel;)V

    aput-object v4, v3, v1

    .line 4611
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4617
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->readExcessivePowerFromParcelLocked(Landroid/os/Parcel;)Z

    .line 4618
    return-void
.end method

.method public unplug(JJ)V
    .locals 2
    .parameter "batteryUptime"
    .parameter "batteryRealtime"

    .prologue
    .line 4470
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedUserTime:J

    .line 4471
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedSystemTime:J

    .line 4472
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedStarts:I

    .line 4473
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedForegroundTime:J

    .line 4474
    return-void
.end method

.method writeExcessivePowerToParcelLocked(Landroid/os/Parcel;)V
    .locals 5
    .parameter "out"

    .prologue
    .line 4524
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 4525
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4537
    :cond_0
    return-void

    .line 4529
    :cond_1
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4530
    .local v0, N:I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4531
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 4532
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    .line 4533
    .local v1, ew:Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    iget v3, v1, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4534
    iget-wide v3, v1, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 4535
    iget-wide v3, v1, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 4531
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method writeToParcelLocked(Landroid/os/Parcel;)V
    .locals 4
    .parameter "out"

    .prologue
    .line 4563
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 4564
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 4565
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 4566
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4567
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedUserTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 4568
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedSystemTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 4569
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedForegroundTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 4570
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedStarts:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4571
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedUserTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 4572
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedSystemTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 4573
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedForegroundTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 4574
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedStarts:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4576
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    array-length v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4577
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 4578
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    aget-object v0, v2, v1

    .line 4579
    .local v0, c:Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;
    if-eqz v0, :cond_0

    .line 4580
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4581
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 4577
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4583
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 4587
    .end local v0           #c:Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->writeExcessivePowerToParcelLocked(Landroid/os/Parcel;)V

    .line 4588
    return-void
.end method
