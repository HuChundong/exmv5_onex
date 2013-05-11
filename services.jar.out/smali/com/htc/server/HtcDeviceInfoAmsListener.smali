.class public Lcom/htc/server/HtcDeviceInfoAmsListener;
.super Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
.source "HtcDeviceInfoAmsListener.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HtcDeviceInfoManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

.field private mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppDiedLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2
    .parameter "process"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iget v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager;->appDied(I)V

    .line 76
    :cond_0
    return-void
.end method

.method public onAttachApplicationLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 4
    .parameter "process"

    .prologue
    .line 92
    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    .line 93
    .local v1, processName:Ljava/lang/String;
    iget v0, p1, Lcom/android/server/am/HtcWrapProcessRecord;->pid:I

    .line 95
    .local v0, pid:I
    iget-object v2, p1, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->htcApp:Z

    if-eqz v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Lcom/htc/server/HtcDeviceInfoManager;->startProcess(Ljava/lang/String;II)V

    .line 101
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v2, p1, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->gmsApp:Z

    if-eqz v2, :cond_1

    .line 98
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v0, v3}, Lcom/htc/server/HtcDeviceInfoManager;->startProcess(Ljava/lang/String;II)V

    goto :goto_0

    .line 100
    :cond_1
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3}, Lcom/htc/server/HtcDeviceInfoManager;->startProcess(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public onCleanUpApplicationRecordLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2
    .parameter "process"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager;->killProcess(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public onCrashApplication(Lcom/android/server/am/HtcWrapProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 2
    .parameter "process"
    .parameter "crashInfo"

    .prologue
    .line 128
    iget-boolean v0, p1, Lcom/android/server/am/HtcWrapProcessRecord;->isDirty:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->htcApp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isDashboardBuild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager;->addCrash(Ljava/lang/String;)V

    .line 130
    :cond_0
    return-void
.end method

.method public onFinishBooting()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager;->setup(Landroid/content/Context;)V

    .line 106
    return-void
.end method

.method public onGenerateApplicationProvidersLocked(Lcom/android/server/am/HtcWrapProcessRecord;Landroid/content/pm/ProviderInfo;)V
    .locals 4
    .parameter "process"
    .parameter "pi"

    .prologue
    .line 111
    iget-boolean v0, p1, Lcom/android/server/am/HtcWrapProcessRecord;->isDirty:Z

    if-nez v0, :cond_0

    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->isDirty:Z

    if-eqz v0, :cond_0

    .line 112
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/am/HtcWrapProcessRecord;->setIsDirty(Z)V

    .line 113
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager;->killProcess(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/HtcWrapProcessRecord;->pid:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/HtcDeviceInfoManager;->startProcess(Ljava/lang/String;II)V

    .line 116
    :cond_0
    return-void
.end method

.method public onGoingToSleep()V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager;->setNewTopApp(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public onHandleTopAppChanged(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 3
    .parameter "topApp"

    .prologue
    .line 143
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getPrevTopApp()Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v1

    if-nez v1, :cond_0

    .line 144
    const/4 v0, 0x0

    .line 148
    .local v0, processName:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    invoke-virtual {v1, v0}, Lcom/htc/server/HtcDeviceInfoManager;->update(Ljava/lang/String;)V

    .line 151
    if-eqz p1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iget-object v2, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/server/HtcDeviceInfoManager;->setNewTopApp(Ljava/lang/String;)V

    .line 155
    :goto_1
    return-void

    .line 146
    .end local v0           #processName:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getPrevTopApp()Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v1

    iget-object v0, v1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    .restart local v0       #processName:Ljava/lang/String;
    goto :goto_0

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/server/HtcDeviceInfoManager;->setNewTopApp(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onHibernate()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager;->update(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    invoke-virtual {v0}, Lcom/htc/server/HtcDeviceInfoManager;->flush()V

    .line 47
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    invoke-virtual {v0}, Lcom/htc/server/HtcDeviceInfoManager;->stop()V

    .line 48
    return-void
.end method

.method public onHibernateKillApp(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2
    .parameter "process"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager;->killProcess(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public onMain(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 1
    .parameter "service"
    .parameter "context"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 24
    iput-object p2, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mContext:Landroid/content/Context;

    .line 25
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHtcDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iput-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    .line 26
    return-void
.end method

.method public onRealAppNotResponding(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2
    .parameter "process"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isDebuggerAttached()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/am/HtcWrapProcessRecord;->isDirty:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->htcApp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isDashboardBuild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager;->addANR(Ljava/lang/String;)V

    .line 83
    :cond_0
    return-void
.end method

.method public onRemoveProcessLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2
    .parameter "process"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager;->killProcess(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public onResumeFromHibernate()V
    .locals 3

    .prologue
    .line 63
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    invoke-virtual {v1}, Lcom/htc/server/HtcDeviceInfoManager;->reset()V

    .line 64
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getPrevTopApp()Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v0

    .line 65
    .local v0, prevTopApp:Lcom/android/server/am/HtcWrapProcessRecord;
    if-eqz v0, :cond_0

    .line 66
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iget-object v2, v0, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/server/HtcDeviceInfoManager;->setNewTopApp(Ljava/lang/String;)V

    .line 69
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/server/HtcDeviceInfoManager;->setNewTopApp(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onShutdown()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager;->update(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    invoke-virtual {v0}, Lcom/htc/server/HtcDeviceInfoManager;->flush()V

    .line 122
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    invoke-virtual {v0}, Lcom/htc/server/HtcDeviceInfoManager;->stop()V

    .line 123
    return-void
.end method

.method public onStartProcessLockedNewPackage(Lcom/android/server/am/HtcWrapProcessRecord;Landroid/content/pm/ApplicationInfo;)V
    .locals 4
    .parameter "process"
    .parameter "info"

    .prologue
    .line 53
    iget-boolean v0, p1, Lcom/android/server/am/HtcWrapProcessRecord;->isDirty:Z

    if-nez v0, :cond_0

    iget-boolean v0, p2, Landroid/content/pm/ApplicationInfo;->isDirty:Z

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/am/HtcWrapProcessRecord;->setIsDirty(Z)V

    .line 55
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager;->killProcess(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/HtcWrapProcessRecord;->pid:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/HtcDeviceInfoManager;->startProcess(Ljava/lang/String;II)V

    .line 58
    :cond_0
    return-void
.end method

.method public onWakingUp()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPrevTopApp()Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getPrevTopApp()Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager;->setNewTopApp(Ljava/lang/String;)V

    .line 40
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoAmsListener;->mDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager;->setNewTopApp(Ljava/lang/String;)V

    goto :goto_0
.end method
