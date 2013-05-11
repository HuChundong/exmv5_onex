.class final Lcom/android/server/HtcWakeLockMonitor$LockRecordList;
.super Ljava/util/ArrayList;
.source "HtcWakeLockMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcWakeLockMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LockRecordList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private skipScan:Z

.field final synthetic this$0:Lcom/android/server/HtcWakeLockMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/HtcWakeLockMonitor;)V
    .locals 1
    .parameter

    .prologue
    .line 810
    iput-object p1, p0, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 811
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->skipScan:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/HtcWakeLockMonitor;Lcom/android/server/HtcWakeLockMonitor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 810
    invoke-direct {p0, p1}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;-><init>(Lcom/android/server/HtcWakeLockMonitor;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/HtcWakeLockMonitor$LockRecordList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 810
    invoke-direct {p0}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->shouldSkipAll()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/android/server/HtcWakeLockMonitor$LockRecordList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 810
    invoke-direct {p0}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->dump()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/HtcWakeLockMonitor$LockRecordList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 810
    invoke-direct {p0}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->update()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/HtcWakeLockMonitor$LockRecordList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 810
    invoke-direct {p0}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->updateAllHeldDuration()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/HtcWakeLockMonitor$LockRecordList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 810
    invoke-direct {p0}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->calcRatio()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/HtcWakeLockMonitor$LockRecordList;ILjava/lang/String;IILandroid/os/IBinder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 810
    invoke-direct/range {p0 .. p5}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->addRecord(ILjava/lang/String;IILandroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/HtcWakeLockMonitor$LockRecordList;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 810
    invoke-direct {p0}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->getAbnormalPkg()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/HtcWakeLockMonitor$LockRecordList;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 810
    invoke-direct {p0, p1, p2}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->stopRecord(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/HtcWakeLockMonitor$LockRecordList;Landroid/os/IBinder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 810
    invoke-direct {p0, p1}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->stopDeadRecord(Landroid/os/IBinder;)V

    return-void
.end method

.method private addRecord(ILjava/lang/String;IILandroid/os/IBinder;)V
    .locals 7
    .parameter "flags"
    .parameter "tag"
    .parameter "uid"
    .parameter "pid"
    .parameter "binder"

    .prologue
    .line 847
    monitor-enter p0

    .line 848
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->size()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    .line 849
    invoke-direct {p0}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->update()V

    .line 851
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->getRecord(Ljava/lang/String;)Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;

    move-result-object v0

    .line 853
    .local v0, record:Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;
    if-nez v0, :cond_1

    .line 854
    new-instance v0, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;

    .end local v0           #record:Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;
    iget-object v1, p0, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;-><init>(Lcom/android/server/HtcWakeLockMonitor;ILjava/lang/String;IILandroid/os/IBinder;)V

    .line 855
    .restart local v0       #record:Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;
    invoke-virtual {p0, v0}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->add(Ljava/lang/Object;)Z

    .line 857
    :cond_1
    #calls: Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->start(Landroid/os/IBinder;)V
    invoke-static {v0, p5}, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->access$3000(Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;Landroid/os/IBinder;)V

    .line 860
    iget-object v1, p0, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #getter for: Lcom/android/server/HtcWakeLockMonitor;->ENABLE_MONITOR:Z
    invoke-static {v1}, Lcom/android/server/HtcWakeLockMonitor;->access$1000(Lcom/android/server/HtcWakeLockMonitor;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #getter for: Lcom/android/server/HtcWakeLockMonitor;->mScreenState:Z
    invoke-static {v1}, Lcom/android/server/HtcWakeLockMonitor;->access$2400(Lcom/android/server/HtcWakeLockMonitor;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->isInWhiteList(Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 861
    iget-object v1, p0, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #getter for: Lcom/android/server/HtcWakeLockMonitor;->DEBUG_ON:Z
    invoke-static {v1}, Lcom/android/server/HtcWakeLockMonitor;->access$1100(Lcom/android/server/HtcWakeLockMonitor;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 862
    const-string v1, "HtcWLM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addRecord: tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is in white list. Treat it as screen turning on."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->skipScan:Z

    .line 866
    iget-object v1, p0, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    const/4 v2, 0x1

    #calls: Lcom/android/server/HtcWakeLockMonitor;->saveScreenTimeStamp(Z)V
    invoke-static {v1, v2}, Lcom/android/server/HtcWakeLockMonitor;->access$3100(Lcom/android/server/HtcWakeLockMonitor;Z)V

    .line 868
    :cond_3
    monitor-exit p0

    .line 869
    return-void

    .line 868
    .end local v0           #record:Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private calcRatio()V
    .locals 9

    .prologue
    .line 981
    iget-object v5, p0, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #getter for: Lcom/android/server/HtcWakeLockMonitor;->ENABLE_MONITOR:Z
    invoke-static {v5}, Lcom/android/server/HtcWakeLockMonitor;->access$1000(Lcom/android/server/HtcWakeLockMonitor;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1005
    :cond_0
    return-void

    .line 985
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;

    .line 987
    .local v4, record:Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;
    #calls: Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->shouldMonitor()Z
    invoke-static {v4}, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->access$3800(Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;)Z

    move-result v5

    if-eqz v5, :cond_2

    #calls: Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->isAbnormal()Z
    invoke-static {v4}, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->access$3900(Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 989
    #calls: Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->getPackageName()V
    invoke-static {v4}, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->access$4000(Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;)V

    .line 991
    #getter for: Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->heldDuration:[J
    invoke-static {v4}, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->access$1300(Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;)[J

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #getter for: Lcom/android/server/HtcWakeLockMonitor;->MINIMUM_DURATION:J
    invoke-static {v6}, Lcom/android/server/HtcWakeLockMonitor;->access$4100(Lcom/android/server/HtcWakeLockMonitor;)J

    move-result-wide v6

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->getTotalHeldDuration([JJ)J

    move-result-wide v1

    .line 992
    .local v1, TOTAL_HELD:J
    const-wide/16 v5, 0x64

    mul-long/2addr v5, v1

    iget-object v7, p0, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #getter for: Lcom/android/server/HtcWakeLockMonitor;->mTotalScreenOffTime:J
    invoke-static {v7}, Lcom/android/server/HtcWakeLockMonitor;->access$3400(Lcom/android/server/HtcWakeLockMonitor;)J

    move-result-wide v7

    div-long/2addr v5, v7

    long-to-int v0, v5

    .line 994
    .local v0, RATIO:I
    iget-object v5, p0, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #getter for: Lcom/android/server/HtcWakeLockMonitor;->DEBUG_ON:Z
    invoke-static {v5}, Lcom/android/server/HtcWakeLockMonitor;->access$1100(Lcom/android/server/HtcWakeLockMonitor;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 995
    const-string v5, "HtcWLM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calcRatio: ratio="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #getter for: Lcom/android/server/HtcWakeLockMonitor;->mTotalScreenOffTime:J
    invoke-static {v7}, Lcom/android/server/HtcWakeLockMonitor;->access$3400(Lcom/android/server/HtcWakeLockMonitor;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", tag="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    #getter for: Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->tag:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->access$1900(Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    :cond_3
    iget-object v5, p0, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #getter for: Lcom/android/server/HtcWakeLockMonitor;->WL_HELD_RATIO:I
    invoke-static {v5}, Lcom/android/server/HtcWakeLockMonitor;->access$4200(Lcom/android/server/HtcWakeLockMonitor;)I

    move-result v5

    if-lt v0, v5, :cond_2

    .line 1001
    invoke-static {v4}, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->access$1608(Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;)I

    goto/16 :goto_0
.end method

.method private dump()V
    .locals 8

    .prologue
    const/16 v7, 0xa

    .line 922
    monitor-enter p0

    .line 923
    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "WakeLock Record Dumping:\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 925
    .local v3, sb:Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #getter for: Lcom/android/server/HtcWakeLockMonitor;->mScreenState:Z
    invoke-static {v4}, Lcom/android/server/HtcWakeLockMonitor;->access$2400(Lcom/android/server/HtcWakeLockMonitor;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 926
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #getter for: Lcom/android/server/HtcWakeLockMonitor;->mTotalScreenOffTime:J
    invoke-static {v5}, Lcom/android/server/HtcWakeLockMonitor;->access$3400(Lcom/android/server/HtcWakeLockMonitor;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #getter for: Lcom/android/server/HtcWakeLockMonitor;->mTotalTime:J
    invoke-static {v5}, Lcom/android/server/HtcWakeLockMonitor;->access$3500(Lcom/android/server/HtcWakeLockMonitor;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 929
    :cond_0
    invoke-direct {p0}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->update()V

    .line 931
    invoke-virtual {p0}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;

    .line 932
    .local v2, record:Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;
    invoke-virtual {p0, v2}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 933
    .local v1, index:I
    if-ne v1, v7, :cond_3

    .line 937
    .end local v1           #index:I
    .end local v2           #record:Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->size()I

    move-result v4

    if-le v4, v7, :cond_2

    .line 938
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " more...\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 941
    :cond_2
    const-string v4, "HtcWLM"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    monitor-exit p0

    .line 943
    return-void

    .line 934
    .restart local v1       #index:I
    .restart local v2       #record:Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Lock("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #calls: Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->info()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->access$3600(Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 942
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #index:I
    .end local v2           #record:Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;
    .end local v3           #sb:Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private getAbnormalPkg()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1045
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1047
    .local v0, abnormalPkgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-enter p0

    .line 1048
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;

    .line 1049
    .local v3, record:Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;
    #calls: Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->shouldMonitor()Z
    invoke-static {v3}, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->access$3800(Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;)Z

    move-result v4

    if-eqz v4, :cond_0

    #calls: Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->isAbnormal()Z
    invoke-static {v3}, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->access$3900(Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1050
    #getter for: Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->pkgName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->access$1800(Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1051
    #getter for: Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->pkgName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->access$1800(Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1053
    const/4 v4, 0x0

    #setter for: Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->abnormal_count:I
    invoke-static {v3, v4}, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->access$1602(Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;I)I

    .line 1054
    const/4 v4, 0x0

    #setter for: Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->heldDuration:[J
    invoke-static {v3, v4}, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->access$1302(Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;[J)[J

    goto :goto_0

    .line 1062
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #record:Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1056
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #record:Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #getter for: Lcom/android/server/HtcWakeLockMonitor;->DEBUG_ON:Z
    invoke-static {v4}, Lcom/android/server/HtcWakeLockMonitor;->access$1100(Lcom/android/server/HtcWakeLockMonitor;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1057
    const-string v4, "HtcWLM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAbnormalPkg: pkgName is null for record.tag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    #getter for: Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->tag:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->access$1900(Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1062
    .end local v3           #record:Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1065
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1066
    .local v1, hs:Ljava/util/HashSet;
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1067
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1068
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1070
    return-object v0
.end method

.method private getRecord(Ljava/lang/String;)Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;
    .locals 3
    .parameter "tag"

    .prologue
    .line 814
    monitor-enter p0

    .line 815
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;

    .line 816
    .local v1, record:Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;
    #getter for: Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->tag:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->access$1900(Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 817
    monitor-exit p0

    .line 820
    .end local v1           #record:Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 821
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getTotalHeldDuration([JJ)J
    .locals 15
    .parameter "heldDuration"
    .parameter "OFFSET"

    .prologue
    .line 946
    const-wide/16 v9, 0x0

    .line 948
    .local v9, sum:J
    :try_start_0
    iget-object v11, p0, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #getter for: Lcom/android/server/HtcWakeLockMonitor;->mScreenTimeStamp:[[J
    invoke-static {v11}, Lcom/android/server/HtcWakeLockMonitor;->access$3700(Lcom/android/server/HtcWakeLockMonitor;)[[J

    move-result-object v11

    const/4 v12, 0x0

    aget-object v11, v11, v12

    array-length v6, v11

    .line 950
    .local v6, SIZE:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 951
    .local v4, NOW:J
    sub-long v2, v4, p2

    .line 954
    .local v2, MIN_RANGE:J
    const-wide/16 v11, 0x0

    cmp-long v11, v4, v11

    if-lez v11, :cond_0

    const-wide/16 v11, 0x0

    cmp-long v11, v2, v11

    if-gtz v11, :cond_2

    .line 955
    :cond_0
    iget-object v11, p0, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #getter for: Lcom/android/server/HtcWakeLockMonitor;->DEBUG_ON:Z
    invoke-static {v11}, Lcom/android/server/HtcWakeLockMonitor;->access$1100(Lcom/android/server/HtcWakeLockMonitor;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 956
    const-string v11, "HtcWLM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getTotalHeldDuration: Abnormal case found. OFFSET="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p2

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", NOW="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", MIN_RANGE="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :cond_1
    const-wide/16 v11, 0x0

    .line 976
    .end local v2           #MIN_RANGE:J
    .end local v4           #NOW:J
    .end local v6           #SIZE:I
    :goto_0
    return-wide v11

    .line 964
    .restart local v2       #MIN_RANGE:J
    .restart local v4       #NOW:J
    .restart local v6       #SIZE:I
    :cond_2
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v6, :cond_4

    .line 967
    iget-object v11, p0, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #getter for: Lcom/android/server/HtcWakeLockMonitor;->mScreenTimeStamp:[[J
    invoke-static {v11}, Lcom/android/server/HtcWakeLockMonitor;->access$3700(Lcom/android/server/HtcWakeLockMonitor;)[[J

    move-result-object v11

    const/4 v12, 0x1

    aget-object v11, v11, v12

    aget-wide v11, v11, v8

    cmp-long v11, v2, v11

    if-gtz v11, :cond_3

    iget-object v11, p0, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #getter for: Lcom/android/server/HtcWakeLockMonitor;->mScreenTimeStamp:[[J
    invoke-static {v11}, Lcom/android/server/HtcWakeLockMonitor;->access$3700(Lcom/android/server/HtcWakeLockMonitor;)[[J

    move-result-object v11

    const/4 v12, 0x0

    aget-object v11, v11, v12

    aget-wide v11, v11, v8

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_3

    iget-object v11, p0, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #getter for: Lcom/android/server/HtcWakeLockMonitor;->mScreenTimeStamp:[[J
    invoke-static {v11}, Lcom/android/server/HtcWakeLockMonitor;->access$3700(Lcom/android/server/HtcWakeLockMonitor;)[[J

    move-result-object v11

    const/4 v12, 0x1

    aget-object v11, v11, v12

    aget-wide v11, v11, v8

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_3

    aget-wide v11, p1, v8

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_3

    .line 968
    aget-wide v11, p1, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v9, v11

    .line 964
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 971
    .end local v2           #MIN_RANGE:J
    .end local v4           #NOW:J
    .end local v6           #SIZE:I
    .end local v8           #i:I
    :catch_0
    move-exception v7

    .line 972
    .local v7, e:Ljava/lang/Exception;
    iget-object v11, p0, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #getter for: Lcom/android/server/HtcWakeLockMonitor;->DEBUG_ON:Z
    invoke-static {v11}, Lcom/android/server/HtcWakeLockMonitor;->access$1100(Lcom/android/server/HtcWakeLockMonitor;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 973
    const-string v11, "HtcWLM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getTotalHeldDuration: Exception caught. "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v7           #e:Ljava/lang/Exception;
    :cond_4
    move-wide v11, v9

    .line 976
    goto :goto_0
.end method

.method private isInWhiteList(Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;)Z
    .locals 5
    .parameter "RECORD"

    .prologue
    const/4 v2, 0x0

    .line 1009
    iget-object v3, p0, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #getter for: Lcom/android/server/HtcWakeLockMonitor;->ENABLE_MONITOR:Z
    invoke-static {v3}, Lcom/android/server/HtcWakeLockMonitor;->access$1000(Lcom/android/server/HtcWakeLockMonitor;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1021
    :cond_0
    :goto_0
    return v2

    .line 1013
    :cond_1
    iget-object v3, p0, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #getter for: Lcom/android/server/HtcWakeLockMonitor;->TAG_WHITE_LIST_REGEX:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/server/HtcWakeLockMonitor;->access$4300(Lcom/android/server/HtcWakeLockMonitor;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1014
    .local v1, regex:Ljava/lang/String;
    #getter for: Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->tag:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->access$1900(Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1015
    iget-object v2, p0, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #getter for: Lcom/android/server/HtcWakeLockMonitor;->DEBUG_ON:Z
    invoke-static {v2}, Lcom/android/server/HtcWakeLockMonitor;->access$1100(Lcom/android/server/HtcWakeLockMonitor;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1016
    const-string v2, "HtcWLM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isInWhiteList: tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    #getter for: Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->tag:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->access$1900(Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " matched "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private shouldSkipAll()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1025
    iget-object v4, p0, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #getter for: Lcom/android/server/HtcWakeLockMonitor;->ENABLE_MONITOR:Z
    invoke-static {v4}, Lcom/android/server/HtcWakeLockMonitor;->access$1000(Lcom/android/server/HtcWakeLockMonitor;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1040
    :goto_0
    return v2

    .line 1029
    :cond_0
    monitor-enter p0

    .line 1030
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->skipScan:Z

    if-eqz v4, :cond_1

    .line 1031
    monitor-exit p0

    move v2, v3

    goto :goto_0

    .line 1034
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;

    .line 1035
    .local v1, record:Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;
    #calls: Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->isStart()Z
    invoke-static {v1}, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->access$4400(Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v1}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->isInWhiteList(Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1036
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->skipScan:Z

    .line 1037
    monitor-exit p0

    move v2, v3

    goto :goto_0

    .line 1040
    .end local v1           #record:Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;
    :cond_3
    monitor-exit p0

    goto :goto_0

    .line 1041
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private stopDeadRecord(Landroid/os/IBinder;)V
    .locals 5
    .parameter "binder"

    .prologue
    .line 898
    monitor-enter p0

    .line 899
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;

    .line 900
    .local v1, record:Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;
    #calls: Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->stop(Landroid/os/IBinder;)V
    invoke-static {v1, p1}, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->access$3200(Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;Landroid/os/IBinder;)V

    .line 904
    iget-object v2, p0, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #getter for: Lcom/android/server/HtcWakeLockMonitor;->ENABLE_MONITOR:Z
    invoke-static {v2}, Lcom/android/server/HtcWakeLockMonitor;->access$1000(Lcom/android/server/HtcWakeLockMonitor;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->isInWhiteList(Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 905
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->skipScan:Z

    .line 907
    iget-object v2, p0, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #calls: Lcom/android/server/HtcWakeLockMonitor;->isScreenOn()Z
    invoke-static {v2}, Lcom/android/server/HtcWakeLockMonitor;->access$3300(Lcom/android/server/HtcWakeLockMonitor;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #getter for: Lcom/android/server/HtcWakeLockMonitor;->mScreenState:Z
    invoke-static {v2}, Lcom/android/server/HtcWakeLockMonitor;->access$2400(Lcom/android/server/HtcWakeLockMonitor;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->shouldSkipAll()Z

    move-result v2

    if-nez v2, :cond_0

    .line 908
    iget-object v2, p0, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #getter for: Lcom/android/server/HtcWakeLockMonitor;->DEBUG_ON:Z
    invoke-static {v2}, Lcom/android/server/HtcWakeLockMonitor;->access$1100(Lcom/android/server/HtcWakeLockMonitor;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 909
    const-string v2, "HtcWLM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopDeadRecord: tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    #getter for: Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->tag:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->access$1900(Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is in white list. Treat it as screen turning off."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    :cond_1
    iget-object v2, p0, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    const/4 v3, 0x0

    #calls: Lcom/android/server/HtcWakeLockMonitor;->saveScreenTimeStamp(Z)V
    invoke-static {v2, v3}, Lcom/android/server/HtcWakeLockMonitor;->access$3100(Lcom/android/server/HtcWakeLockMonitor;Z)V

    goto :goto_0

    .line 916
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #record:Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 917
    return-void
.end method

.method private stopRecord(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 4
    .parameter "tag"
    .parameter "binder"

    .prologue
    .line 873
    monitor-enter p0

    .line 874
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->getRecord(Ljava/lang/String;)Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;

    move-result-object v0

    .line 876
    .local v0, record:Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;
    if-eqz v0, :cond_1

    .line 877
    #calls: Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->stop(Landroid/os/IBinder;)V
    invoke-static {v0, p2}, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->access$3200(Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;Landroid/os/IBinder;)V

    .line 881
    iget-object v1, p0, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #getter for: Lcom/android/server/HtcWakeLockMonitor;->ENABLE_MONITOR:Z
    invoke-static {v1}, Lcom/android/server/HtcWakeLockMonitor;->access$1000(Lcom/android/server/HtcWakeLockMonitor;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->isInWhiteList(Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 882
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->skipScan:Z

    .line 884
    iget-object v1, p0, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #calls: Lcom/android/server/HtcWakeLockMonitor;->isScreenOn()Z
    invoke-static {v1}, Lcom/android/server/HtcWakeLockMonitor;->access$3300(Lcom/android/server/HtcWakeLockMonitor;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #getter for: Lcom/android/server/HtcWakeLockMonitor;->mScreenState:Z
    invoke-static {v1}, Lcom/android/server/HtcWakeLockMonitor;->access$2400(Lcom/android/server/HtcWakeLockMonitor;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->shouldSkipAll()Z

    move-result v1

    if-nez v1, :cond_1

    .line 885
    iget-object v1, p0, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #getter for: Lcom/android/server/HtcWakeLockMonitor;->DEBUG_ON:Z
    invoke-static {v1}, Lcom/android/server/HtcWakeLockMonitor;->access$1100(Lcom/android/server/HtcWakeLockMonitor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 886
    const-string v1, "HtcWLM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopRecord: tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is in white list. Treat it as screen turning off."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :cond_0
    iget-object v1, p0, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    const/4 v2, 0x0

    #calls: Lcom/android/server/HtcWakeLockMonitor;->saveScreenTimeStamp(Z)V
    invoke-static {v1, v2}, Lcom/android/server/HtcWakeLockMonitor;->access$3100(Lcom/android/server/HtcWakeLockMonitor;Z)V

    .line 893
    :cond_1
    monitor-exit p0

    .line 894
    return-void

    .line 893
    .end local v0           #record:Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private update()V
    .locals 4

    .prologue
    const/16 v3, 0x32

    .line 825
    monitor-enter p0

    .line 826
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;

    .line 827
    .local v1, record:Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;
    #calls: Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->update()V
    invoke-static {v1}, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->access$2800(Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;)V

    goto :goto_0

    .line 835
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #record:Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 829
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 831
    invoke-virtual {p0}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->size()I

    move-result v2

    if-le v2, v3, :cond_1

    .line 832
    const/16 v2, 0x32

    invoke-virtual {p0}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->size()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 833
    invoke-virtual {p0}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->trimToSize()V

    .line 835
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 836
    return-void
.end method

.method private updateAllHeldDuration()V
    .locals 3

    .prologue
    .line 839
    monitor-enter p0

    .line 840
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;

    .line 841
    .local v1, record:Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;
    #calls: Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->saveHeldDuration()V
    invoke-static {v1}, Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;->access$2900(Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;)V

    goto :goto_0

    .line 843
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #record:Lcom/android/server/HtcWakeLockMonitor$WakeLockRecord;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 844
    return-void
.end method
