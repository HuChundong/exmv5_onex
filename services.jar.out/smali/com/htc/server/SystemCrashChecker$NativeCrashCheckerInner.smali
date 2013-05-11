.class Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;
.super Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
.source "SystemCrashChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/SystemCrashChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeCrashCheckerInner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner$NativeCrashReceiver;
    }
.end annotation


# instance fields
.field private final AP_NATIVE_CRASH_ACTION:Ljava/lang/String;

.field private final IS_USER_BUILD:Z

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mService:Lcom/android/server/am/ActivityManagerService;

.field private mThread:Landroid/os/HandlerThread;

.field private mpid:I

.field private mprocessName:Ljava/lang/String;

.field private mtombstoneFile:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/server/SystemCrashChecker;


# direct methods
.method private constructor <init>(Lcom/htc/server/SystemCrashChecker;)V
    .locals 2
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;->this$0:Lcom/htc/server/SystemCrashChecker;

    invoke-direct {p0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;-><init>()V

    .line 43
    const-string v0, "NativeCrashCheckerInner"

    iput-object v0, p0, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;->TAG:Ljava/lang/String;

    .line 44
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;->IS_USER_BUILD:Z

    .line 50
    const-string v0, "com.htc.intent.action.NOTIFY_AP_NATIVE_CRASH"

    iput-object v0, p0, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;->AP_NATIVE_CRASH_ACTION:Ljava/lang/String;

    .line 70
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/server/SystemCrashChecker;Lcom/htc/server/SystemCrashChecker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;-><init>(Lcom/htc/server/SystemCrashChecker;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;->mprocessName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;->mprocessName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;->mpid:I

    return v0
.end method

.method static synthetic access$402(Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;->mpid:I

    return p1
.end method

.method static synthetic access$500(Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;->mtombstoneFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;->mtombstoneFile:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;->IS_USER_BUILD:Z

    return v0
.end method

.method static synthetic access$700(Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method


# virtual methods
.method public onFinishBooting()V
    .locals 0

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;->setup()V

    .line 61
    return-void
.end method

.method public onMain(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 0
    .parameter "service"
    .parameter "context"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 55
    iput-object p2, p0, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;->mContext:Landroid/content/Context;

    .line 56
    return-void
.end method

.method public setup()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 64
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 65
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.htc.intent.action.NOTIFY_AP_NATIVE_CRASH"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    new-instance v1, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner$NativeCrashReceiver;

    invoke-direct {v1, p0, v3}, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner$NativeCrashReceiver;-><init>(Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;Lcom/htc/server/SystemCrashChecker$1;)V

    .line 67
    .local v1, receiver:Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner$NativeCrashReceiver;
    iget-object v2, p0, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 68
    return-void
.end method
