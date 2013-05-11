.class public Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
.super Ljava/lang/Object;
.source "ActivityManagerServiceCallbacks.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterStartActivityUncheckedLocked()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method public beforeStartActivityUncheckedLocked()V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method public onAddRecentTaskLocked(Lcom/android/server/am/HtcWrapTaskRecord;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "task"
    .parameter "history"

    .prologue
    .line 106
    return-void
.end method

.method public onAppDiedLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 0
    .parameter "process"

    .prologue
    .line 131
    return-void
.end method

.method public onAttachApplicationLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 0
    .parameter "process"

    .prologue
    .line 86
    return-void
.end method

.method public onBroadcastIntentLocked(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 114
    return-void
.end method

.method public onCleanUpApplicationRecordLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 0
    .parameter "process"

    .prologue
    .line 148
    return-void
.end method

.method public onCrashApplication(Lcom/android/server/am/HtcWrapProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 0
    .parameter "process"
    .parameter "crashInfo"

    .prologue
    .line 140
    return-void
.end method

.method public onFinishBooting()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public onGenerateApplicationProvidersLocked(Lcom/android/server/am/HtcWrapProcessRecord;Landroid/content/pm/ProviderInfo;)V
    .locals 0
    .parameter "process"
    .parameter "pi"

    .prologue
    .line 96
    return-void
.end method

.method public onGenerateProcessError(Lcom/android/server/am/HtcWrapProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "process"
    .parameter "condition"
    .parameter "activity"
    .parameter "shortMsg"
    .parameter "longMsg"
    .parameter "stackTrace"

    .prologue
    .line 242
    return-void
.end method

.method public onGoingToSleep()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public onHandleActivityPaused(Lcom/android/server/am/HtcWrapActivityRecord;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 172
    return-void
.end method

.method public onHandleActivityResumed(Lcom/android/server/am/HtcWrapActivityRecord;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 164
    return-void
.end method

.method public onHandleApplicationCrash(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 0
    .parameter "process"

    .prologue
    .line 122
    return-void
.end method

.method public onHandleTopAppChanged(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 0
    .parameter "process"

    .prologue
    .line 156
    return-void
.end method

.method public onHibernate()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public onHibernateKillApp(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 0
    .parameter "process"

    .prologue
    .line 186
    return-void
.end method

.method public onMain(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 0
    .parameter "service"
    .parameter "context"

    .prologue
    .line 23
    return-void
.end method

.method public onRealAppNotResponding(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 0
    .parameter "process"

    .prologue
    .line 70
    return-void
.end method

.method public onRemoveProcessLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 0
    .parameter "process"

    .prologue
    .line 78
    return-void
.end method

.method public onResumeFromHibernate()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public onShutdown()V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method public onStartActivityUncheckedLockedNewIntent(Lcom/android/server/am/HtcWrapTaskRecord;Lcom/android/server/am/HtcWrapTaskRecord;)V
    .locals 0
    .parameter "prev"
    .parameter "curr"

    .prologue
    .line 225
    return-void
.end method

.method public onStartProcessLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 0
    .parameter "process"

    .prologue
    .line 61
    return-void
.end method

.method public onStartProcessLockedNewPackage(Lcom/android/server/am/HtcWrapProcessRecord;Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .parameter "process"
    .parameter "info"

    .prologue
    .line 53
    return-void
.end method

.method public onWakingUp()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method
