.class Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner;
.super Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
.source "SystemCrashChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/SystemCrashChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemCrashCheckerInner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner$CheckSystemCrashRunnable;
    }
.end annotation


# instance fields
.field private final SYSTEM_CRASH_ENTRY:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHtcErrorReportManager:Lcom/android/server/am/HtcErrorReportManager;

.field private mService:Lcom/android/server/am/ActivityManagerService;

.field final synthetic this$0:Lcom/htc/server/SystemCrashChecker;


# direct methods
.method private constructor <init>(Lcom/htc/server/SystemCrashChecker;)V
    .locals 1
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner;->this$0:Lcom/htc/server/SystemCrashChecker;

    invoke-direct {p0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;-><init>()V

    .line 87
    const-string v0, "SystemCrashCheckerInner"

    iput-object v0, p0, Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner;->TAG:Ljava/lang/String;

    .line 91
    const-string v0, "/data/system/last_crash_msg"

    iput-object v0, p0, Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner;->SYSTEM_CRASH_ENTRY:Ljava/lang/String;

    .line 105
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/server/SystemCrashChecker;Lcom/htc/server/SystemCrashChecker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner;-><init>(Lcom/htc/server/SystemCrashChecker;)V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onFinishBooting()V
    .locals 3

    .prologue
    .line 101
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner$CheckSystemCrashRunnable;

    invoke-direct {v1, p0}, Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner$CheckSystemCrashRunnable;-><init>(Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner;)V

    const-string v2, "CheckSystemCrash"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 103
    return-void
.end method

.method public onMain(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 0
    .parameter "service"
    .parameter "context"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 96
    iput-object p2, p0, Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner;->mContext:Landroid/content/Context;

    .line 97
    return-void
.end method
