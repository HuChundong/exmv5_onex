.class final Lcom/android/server/am/HtcAmsUtil;
.super Ljava/lang/Object;
.source "HtcAmsUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getProcessNameFromPid(ILcom/android/server/am/ActivityManagerService;)Ljava/lang/String;
    .locals 3
    .parameter "myPid"
    .parameter "mService"

    .prologue
    .line 20
    monitor-enter p1

    .line 21
    :try_start_0
    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 22
    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 23
    .local v0, app:Lcom/android/server/am/ProcessRecord;
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v2, p0, :cond_0

    iget-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-nez v2, :cond_0

    .line 25
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    monitor-exit p1

    .line 29
    .end local v0           #app:Lcom/android/server/am/ProcessRecord;
    :goto_1
    return-object v2

    .line 21
    .restart local v0       #app:Lcom/android/server/am/ProcessRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 29
    .end local v0           #app:Lcom/android/server/am/ProcessRecord;
    :cond_1
    const/4 v2, 0x0

    monitor-exit p1

    goto :goto_1

    .line 30
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static resolveActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ActivityInfo;
    .locals 5
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"

    .prologue
    .line 36
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-static {}, Landroid/os/UserId;->myUserId()I

    move-result v4

    invoke-interface {v3, p0, p1, p2, v4}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 37
    .local v2, rInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .end local v2           #rInfo:Landroid/content/pm/ResolveInfo;
    .local v0, aInfo:Landroid/content/pm/ActivityInfo;
    :goto_0
    return-object v0

    .line 37
    .end local v0           #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v2       #rInfo:Landroid/content/pm/ResolveInfo;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 38
    .end local v2           #rInfo:Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v1

    .line 39
    .local v1, e:Landroid/os/RemoteException;
    const/4 v0, 0x0

    .restart local v0       #aInfo:Landroid/content/pm/ActivityInfo;
    goto :goto_0
.end method
