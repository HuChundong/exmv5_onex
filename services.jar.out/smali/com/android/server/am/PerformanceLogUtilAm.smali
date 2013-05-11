.class public Lcom/android/server/am/PerformanceLogUtilAm;
.super Ljava/lang/Object;
.source "PerformanceLogUtilAm.java"


# static fields
#the value of this static final field might be set in the static constructor
.field public static final Enabled:Z = false

.field private static final TAG:Ljava/lang/String; = "Performance"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/am/PerformanceLogUtilAm;->Enabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logActivityStackStartPausingLocked(Landroid/content/Context;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 5
    .parameter "context"
    .parameter "prev"
    .parameter "next"

    .prologue
    .line 42
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/am/ActivityRecord;->labelRes:I

    invoke-static {p0, v3, v4}, Lcom/htc/utils/PerformanceLogUtil;->getUsLabel(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, prevLabel:Ljava/lang/String;
    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget v4, p2, Lcom/android/server/am/ActivityRecord;->labelRes:I

    invoke-static {p0, v3, v4}, Lcom/htc/utils/PerformanceLogUtil;->getUsLabel(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, nextLabel:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v3, "[AutoProf](115) Pause activity record, CURRENT{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Proc Name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Label="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}, NEXT{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Proc Name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Label="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string v3, "Performance"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method

.method public static logResumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 7
    .parameter "prev"
    .parameter "next"

    .prologue
    .line 54
    const-string v2, ""

    .line 55
    .local v2, prevActivity:Ljava/lang/String;
    const-string v0, ""

    .line 56
    .local v0, nextActivity:Ljava/lang/String;
    const/4 v3, 0x0

    .line 57
    .local v3, prevPid:I
    const/4 v1, 0x0

    .line 58
    .local v1, nextPid:I
    if-eqz p0, :cond_0

    .line 59
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 60
    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_0

    .line 61
    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v3, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 64
    :cond_0
    if-eqz p1, :cond_1

    .line 65
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 66
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_1

    .line 67
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v1, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 71
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .local v4, sb:Ljava/lang/StringBuilder;
    const-string v5, "[AutoProf](124) Resume top activity record, prev={"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}, next={"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v5, "Performance"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method

.method public static logStartActivityLocked(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 7
    .parameter "context"
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "pid"

    .prologue
    .line 21
    const/4 v0, 0x0

    .line 23
    .local v0, label:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/16 v5, 0x401

    invoke-static {}, Landroid/os/UserId;->myUserId()I

    move-result v6

    invoke-interface {v4, p1, p2, v5, v6}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 25
    .local v1, rInfo:Landroid/content/pm/ResolveInfo;
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 26
    .local v2, res:Landroid/content/res/Resources;
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->labelRes:I

    invoke-static {v2, v4}, Lcom/htc/utils/PerformanceLogUtil;->getUsLabel(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-static {v2, v4}, Lcom/htc/utils/PerformanceLogUtil;->getUsLabel(Landroid/content/res/Resources;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 35
    .end local v1           #rInfo:Landroid/content/pm/ResolveInfo;
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .local v3, sb:Ljava/lang/StringBuilder;
    const-string v4, "[AutoProf](101) Starting activity {Label="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", FromPid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string v4, "Performance"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void

    .line 32
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v4

    goto :goto_0
.end method
