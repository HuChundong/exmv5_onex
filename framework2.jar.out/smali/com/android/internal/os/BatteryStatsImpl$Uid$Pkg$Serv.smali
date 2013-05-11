.class public final Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
.super Landroid/os/BatteryStats$Uid$Pkg$Serv;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Serv"
.end annotation


# instance fields
.field mLastLaunches:I

.field mLastStartTime:J

.field mLastStarts:I

.field mLaunched:Z

.field mLaunchedSince:J

.field mLaunchedTime:J

.field mLaunches:I

.field mLoadedLaunches:I

.field mLoadedStartTime:J

.field mLoadedStarts:I

.field mRunning:Z

.field mRunningSince:J

.field mStartTime:J

.field mStarts:I

.field mUnpluggedLaunches:I

.field mUnpluggedStartTime:J

.field mUnpluggedStarts:I

.field final synthetic this$2:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;)V
    .locals 1
    .parameter

    .prologue
    .line 4921
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->this$2:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    invoke-direct {p0, p1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;-><init>(Landroid/os/BatteryStats$Uid$Pkg;)V

    .line 4922
    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4923
    return-void
.end method


# virtual methods
.method detach()V
    .locals 1

    .prologue
    .line 4935
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->this$2:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4936
    return-void
.end method

.method public getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;
    .locals 1

    .prologue
    .line 5026
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->this$2:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method getLaunchTimeToNowLocked(J)J
    .locals 4
    .parameter "batteryUptime"

    .prologue
    .line 4976
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedTime:J

    .line 4977
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedTime:J

    add-long/2addr v0, p1

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedSince:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getLaunches(I)I
    .locals 2
    .parameter "which"

    .prologue
    .line 5033
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 5034
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLastLaunches:I

    .line 5044
    .local v0, val:I
    :cond_0
    :goto_0
    return v0

    .line 5036
    .end local v0           #val:I
    :cond_1
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    .line 5037
    .restart local v0       #val:I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 5038
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedLaunches:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 5039
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 5040
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mUnpluggedLaunches:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getStartTime(JI)J
    .locals 4
    .parameter "now"
    .parameter "which"

    .prologue
    .line 5050
    const/4 v2, 0x1

    if-ne p3, v2, :cond_1

    .line 5051
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLastStartTime:J

    .line 5061
    .local v0, val:J
    :cond_0
    :goto_0
    return-wide v0

    .line 5053
    .end local v0           #val:J
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getStartTimeToNowLocked(J)J

    move-result-wide v0

    .line 5054
    .restart local v0       #val:J
    const/4 v2, 0x2

    if-ne p3, v2, :cond_2

    .line 5055
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedStartTime:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 5056
    :cond_2
    const/4 v2, 0x3

    if-ne p3, v2, :cond_0

    .line 5057
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mUnpluggedStartTime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method getStartTimeToNowLocked(J)J
    .locals 4
    .parameter "batteryUptime"

    .prologue
    .line 4981
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTime:J

    .line 4982
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTime:J

    add-long/2addr v0, p1

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunningSince:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getStarts(I)I
    .locals 2
    .parameter "which"

    .prologue
    .line 5067
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 5068
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLastStarts:I

    .line 5078
    .local v0, val:I
    :cond_0
    :goto_0
    return v0

    .line 5070
    .end local v0           #val:I
    :cond_1
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    .line 5071
    .restart local v0       #val:I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 5072
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedStarts:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 5073
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 5074
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mUnpluggedStarts:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public plug(JJ)V
    .locals 0
    .parameter "batteryUptime"
    .parameter "batteryRealtime"

    .prologue
    .line 4932
    return-void
.end method

.method readFromParcelLocked(Landroid/os/Parcel;)V
    .locals 5
    .parameter "in"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4939
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTime:J

    .line 4940
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunningSince:J

    .line 4941
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    .line 4942
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    .line 4943
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedTime:J

    .line 4944
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedSince:J

    .line 4945
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    .line 4946
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    .line 4947
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedStartTime:J

    .line 4948
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedStarts:I

    .line 4949
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedLaunches:I

    .line 4950
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLastStartTime:J

    .line 4951
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLastStarts:I

    .line 4952
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLastLaunches:I

    .line 4953
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mUnpluggedStartTime:J

    .line 4954
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mUnpluggedStarts:I

    .line 4955
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mUnpluggedLaunches:I

    .line 4956
    return-void

    :cond_0
    move v0, v2

    .line 4941
    goto :goto_0

    :cond_1
    move v1, v2

    .line 4945
    goto :goto_1
.end method

.method public startLaunchedLocked()V
    .locals 2

    .prologue
    .line 4986
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    if-nez v0, :cond_0

    .line 4987
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    .line 4988
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->this$2:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedSince:J

    .line 4989
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    .line 4991
    :cond_0
    return-void
.end method

.method public startRunningLocked()V
    .locals 2

    .prologue
    .line 5006
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    if-nez v0, :cond_0

    .line 5007
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    .line 5008
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->this$2:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunningSince:J

    .line 5009
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    .line 5011
    :cond_0
    return-void
.end method

.method public stopLaunchedLocked()V
    .locals 6

    .prologue
    .line 4994
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    if-eqz v2, :cond_0

    .line 4995
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->this$2:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedSince:J

    sub-long v0, v2, v4

    .line 4996
    .local v0, time:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 4997
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedTime:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedTime:J

    .line 5001
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    .line 5003
    .end local v0           #time:J
    :cond_0
    return-void

    .line 4999
    .restart local v0       #time:J
    :cond_1
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    goto :goto_0
.end method

.method public stopRunningLocked()V
    .locals 6

    .prologue
    .line 5014
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    if-eqz v2, :cond_0

    .line 5015
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->this$2:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunningSince:J

    sub-long v0, v2, v4

    .line 5016
    .local v0, time:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 5017
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTime:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTime:J

    .line 5021
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    .line 5023
    .end local v0           #time:J
    :cond_0
    return-void

    .line 5019
    .restart local v0       #time:J
    :cond_1
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    goto :goto_0
.end method

.method public unplug(JJ)V
    .locals 2
    .parameter "batteryUptime"
    .parameter "batteryRealtime"

    .prologue
    .line 4926
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getStartTimeToNowLocked(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mUnpluggedStartTime:J

    .line 4927
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mUnpluggedStarts:I

    .line 4928
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mUnpluggedLaunches:I

    .line 4929
    return-void
.end method

.method writeToParcelLocked(Landroid/os/Parcel;)V
    .locals 5
    .parameter "out"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4959
    iget-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 4960
    iget-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunningSince:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 4961
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4962
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4963
    iget-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 4964
    iget-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedSince:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 4965
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4966
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4967
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4968
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedStarts:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4969
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedLaunches:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4970
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mUnpluggedStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4971
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mUnpluggedStarts:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4972
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mUnpluggedLaunches:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4973
    return-void

    :cond_0
    move v0, v2

    .line 4961
    goto :goto_0

    :cond_1
    move v1, v2

    .line 4965
    goto :goto_1
.end method
