.class final Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner$NativeCrashReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SystemCrashChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NativeCrashReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;


# direct methods
.method private constructor <init>(Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner$NativeCrashReceiver;->this$1:Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;Lcom/htc/server/SystemCrashChecker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner$NativeCrashReceiver;-><init>(Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 73
    const-string v0, "com.htc.intent.action.NOTIFY_AP_NATIVE_CRASH"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner$NativeCrashReceiver;->this$1:Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;

    const-string v1, "process"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;->mprocessName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;->access$302(Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner$NativeCrashReceiver;->this$1:Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;

    const-string v1, "pid"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;->mpid:I
    invoke-static {v0, v1}, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;->access$402(Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;I)I

    .line 76
    iget-object v0, p0, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner$NativeCrashReceiver;->this$1:Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;

    const-string v1, "path"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;->mtombstoneFile:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;->access$502(Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner$NativeCrashReceiver;->this$1:Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;

    #getter for: Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;->IS_USER_BUILD:Z
    invoke-static {v0}, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;->access$600(Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.htc.launcher"

    iget-object v1, p0, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner$NativeCrashReceiver;->this$1:Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;

    #getter for: Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;->mprocessName:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;->access$300(Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.browser"

    iget-object v1, p0, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner$NativeCrashReceiver;->this$1:Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;

    #getter for: Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;->mprocessName:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;->access$300(Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner$NativeCrashReceiver;->this$1:Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;

    #getter for: Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v0}, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;->access$700(Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHtcErrorReportManager:Lcom/android/server/am/HtcErrorReportManager;

    iget-object v1, p0, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner$NativeCrashReceiver;->this$1:Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;

    #getter for: Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;->mpid:I
    invoke-static {v1}, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;->access$400(Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner$NativeCrashReceiver;->this$1:Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;

    #getter for: Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;->mtombstoneFile:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;->access$500(Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/HtcErrorReportManager;->handleApplicationNativeCrash(ILjava/lang/String;)V

    .line 81
    :cond_1
    return-void
.end method
