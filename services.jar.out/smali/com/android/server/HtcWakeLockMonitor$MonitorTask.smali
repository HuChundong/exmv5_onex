.class Lcom/android/server/HtcWakeLockMonitor$MonitorTask;
.super Ljava/lang/Object;
.source "HtcWakeLockMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcWakeLockMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonitorTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/HtcWakeLockMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/HtcWakeLockMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 1086
    iput-object p1, p0, Lcom/android/server/HtcWakeLockMonitor$MonitorTask;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/HtcWakeLockMonitor;Lcom/android/server/HtcWakeLockMonitor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1086
    invoke-direct {p0, p1}, Lcom/android/server/HtcWakeLockMonitor$MonitorTask;-><init>(Lcom/android/server/HtcWakeLockMonitor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 1089
    const/4 v0, 0x0

    .line 1091
    .local v0, abnormalPkgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/HtcWakeLockMonitor$MonitorTask;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #getter for: Lcom/android/server/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/HtcWakeLockMonitor$LockRecordList;
    invoke-static {v7}, Lcom/android/server/HtcWakeLockMonitor;->access$2500(Lcom/android/server/HtcWakeLockMonitor;)Lcom/android/server/HtcWakeLockMonitor$LockRecordList;

    move-result-object v8

    monitor-enter v8

    .line 1093
    :try_start_0
    iget-object v7, p0, Lcom/android/server/HtcWakeLockMonitor$MonitorTask;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #getter for: Lcom/android/server/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/HtcWakeLockMonitor$LockRecordList;
    invoke-static {v7}, Lcom/android/server/HtcWakeLockMonitor;->access$2500(Lcom/android/server/HtcWakeLockMonitor;)Lcom/android/server/HtcWakeLockMonitor$LockRecordList;

    move-result-object v7

    #calls: Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->update()V
    invoke-static {v7}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->access$4700(Lcom/android/server/HtcWakeLockMonitor$LockRecordList;)V

    .line 1094
    iget-object v7, p0, Lcom/android/server/HtcWakeLockMonitor$MonitorTask;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #getter for: Lcom/android/server/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/HtcWakeLockMonitor$LockRecordList;
    invoke-static {v7}, Lcom/android/server/HtcWakeLockMonitor;->access$2500(Lcom/android/server/HtcWakeLockMonitor;)Lcom/android/server/HtcWakeLockMonitor$LockRecordList;

    move-result-object v7

    #calls: Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->updateAllHeldDuration()V
    invoke-static {v7}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->access$4800(Lcom/android/server/HtcWakeLockMonitor$LockRecordList;)V

    .line 1095
    iget-object v7, p0, Lcom/android/server/HtcWakeLockMonitor$MonitorTask;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #getter for: Lcom/android/server/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/HtcWakeLockMonitor$LockRecordList;
    invoke-static {v7}, Lcom/android/server/HtcWakeLockMonitor;->access$2500(Lcom/android/server/HtcWakeLockMonitor;)Lcom/android/server/HtcWakeLockMonitor$LockRecordList;

    move-result-object v7

    #calls: Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->calcRatio()V
    invoke-static {v7}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->access$4900(Lcom/android/server/HtcWakeLockMonitor$LockRecordList;)V

    .line 1098
    iget-object v7, p0, Lcom/android/server/HtcWakeLockMonitor$MonitorTask;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #getter for: Lcom/android/server/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/HtcWakeLockMonitor$LockRecordList;
    invoke-static {v7}, Lcom/android/server/HtcWakeLockMonitor;->access$2500(Lcom/android/server/HtcWakeLockMonitor;)Lcom/android/server/HtcWakeLockMonitor$LockRecordList;

    move-result-object v7

    #calls: Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->getAbnormalPkg()Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->access$5000(Lcom/android/server/HtcWakeLockMonitor$LockRecordList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1101
    iget-object v7, p0, Lcom/android/server/HtcWakeLockMonitor$MonitorTask;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    #setter for: Lcom/android/server/HtcWakeLockMonitor;->mLastScanTime:J
    invoke-static {v7, v9, v10}, Lcom/android/server/HtcWakeLockMonitor;->access$5102(Lcom/android/server/HtcWakeLockMonitor;J)J

    .line 1102
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1104
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 1105
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.htc.htcpowermanager.batterymonitor.APP_LIST_DETECTED"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1106
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "bad_app_list"

    invoke-virtual {v2, v7, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1107
    iget-object v7, p0, Lcom/android/server/HtcWakeLockMonitor$MonitorTask;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #getter for: Lcom/android/server/HtcWakeLockMonitor;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/HtcWakeLockMonitor;->access$5200(Lcom/android/server/HtcWakeLockMonitor;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1110
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v7, p0, Lcom/android/server/HtcWakeLockMonitor$MonitorTask;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #getter for: Lcom/android/server/HtcWakeLockMonitor;->DEBUG_ON:Z
    invoke-static {v7}, Lcom/android/server/HtcWakeLockMonitor;->access$1100(Lcom/android/server/HtcWakeLockMonitor;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1111
    const-string v7, "HtcWLM"

    iget-object v8, p0, Lcom/android/server/HtcWakeLockMonitor$MonitorTask;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #calls: Lcom/android/server/HtcWakeLockMonitor;->criteriaToString()Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/HtcWakeLockMonitor;->access$5300(Lcom/android/server/HtcWakeLockMonitor;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    const-string v6, ""

    .line 1114
    .local v6, whiteList:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/HtcWakeLockMonitor$MonitorTask;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #getter for: Lcom/android/server/HtcWakeLockMonitor;->TAG_WHITE_LIST_REGEX:Ljava/util/HashSet;
    invoke-static {v7}, Lcom/android/server/HtcWakeLockMonitor;->access$4300(Lcom/android/server/HtcWakeLockMonitor;)Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1115
    .local v4, regex:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1102
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #regex:Ljava/lang/String;
    .end local v6           #whiteList:Ljava/lang/String;
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 1117
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v6       #whiteList:Ljava/lang/String;
    :cond_1
    const-string v7, "HtcWLM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skip tag w/ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    iget-object v7, p0, Lcom/android/server/HtcWakeLockMonitor$MonitorTask;->this$0:Lcom/android/server/HtcWakeLockMonitor;

    #getter for: Lcom/android/server/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/HtcWakeLockMonitor$LockRecordList;
    invoke-static {v7}, Lcom/android/server/HtcWakeLockMonitor;->access$2500(Lcom/android/server/HtcWakeLockMonitor;)Lcom/android/server/HtcWakeLockMonitor$LockRecordList;

    move-result-object v7

    #calls: Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->shouldSkipAll()Z
    invoke-static {v7}, Lcom/android/server/HtcWakeLockMonitor$LockRecordList;->access$400(Lcom/android/server/HtcWakeLockMonitor$LockRecordList;)Z

    move-result v5

    .line 1120
    .local v5, skip:Z
    const-string v7, "HtcWLM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MonitorTask: shouldSkipAll="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 1123
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1124
    .local v3, pkg:Ljava/lang/String;
    const-string v7, "HtcWLM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    pkg: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1127
    .end local v3           #pkg:Ljava/lang/String;
    :cond_2
    const-string v7, "HtcWLM"

    const-string v8, "    no abnormal app found!"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v5           #skip:Z
    .end local v6           #whiteList:Ljava/lang/String;
    :cond_3
    return-void
.end method
