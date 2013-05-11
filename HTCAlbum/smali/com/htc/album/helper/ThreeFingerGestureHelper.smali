.class public Lcom/htc/album/helper/ThreeFingerGestureHelper;
.super Ljava/lang/Object;
.source "ThreeFingerGestureHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/helper/ThreeFingerGestureHelper$1;,
        Lcom/htc/album/helper/ThreeFingerGestureHelper$ThreeFingerGestureBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ThreeFingerGestureHelper"

.field public static final THREE_FINGER_DOWN:I = 0x3

.field public static final THREE_FINGER_LEFT:I = 0x4

.field public static final THREE_FINGER_RIGHT:I = 0x2

.field public static final THREE_FINGER_UNIDENTIFIED:I = 0x0

.field public static final THREE_FINGER_UP:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/htc/album/helper/ThreeFingerGestureLintener;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/album/helper/ThreeFingerGestureLintener;)V
    .locals 2
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/htc/album/helper/ThreeFingerGestureHelper;->mContext:Landroid/content/Context;

    .line 25
    iput-object v0, p0, Lcom/htc/album/helper/ThreeFingerGestureHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 26
    iput-object v0, p0, Lcom/htc/album/helper/ThreeFingerGestureHelper;->mListener:Lcom/htc/album/helper/ThreeFingerGestureLintener;

    .line 30
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 32
    :cond_0
    const-string v0, "ThreeFingerGestureHelper"

    const-string v1, "[ThreeFingerGestureHelper]: init NG !"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :goto_0
    return-void

    .line 36
    :cond_1
    const-string v0, "ThreeFingerGestureHelper"

    const-string v1, "[ThreeFingerGestureHelper]: Create"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/htc/album/helper/ThreeFingerGestureHelper;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/htc/album/helper/ThreeFingerGestureHelper;->mListener:Lcom/htc/album/helper/ThreeFingerGestureLintener;

    .line 40
    invoke-direct {p0}, Lcom/htc/album/helper/ThreeFingerGestureHelper;->registerReceiver()V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/htc/album/helper/ThreeFingerGestureHelper;)Lcom/htc/album/helper/ThreeFingerGestureLintener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/htc/album/helper/ThreeFingerGestureHelper;->mListener:Lcom/htc/album/helper/ThreeFingerGestureLintener;

    return-object v0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 45
    new-instance v1, Lcom/htc/album/helper/ThreeFingerGestureHelper$ThreeFingerGestureBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/album/helper/ThreeFingerGestureHelper$ThreeFingerGestureBroadcastReceiver;-><init>(Lcom/htc/album/helper/ThreeFingerGestureHelper;Lcom/htc/album/helper/ThreeFingerGestureHelper$1;)V

    iput-object v1, p0, Lcom/htc/album/helper/ThreeFingerGestureHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 46
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 47
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.action.MULTIPLE_FINGER_SWIPE_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/htc/album/helper/ThreeFingerGestureHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/album/helper/ThreeFingerGestureHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 49
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/album/helper/ThreeFingerGestureHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/album/helper/ThreeFingerGestureHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 54
    return-void
.end method


# virtual methods
.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    const-string v0, "ThreeFingerGestureHelper"

    const-string v1, "[ThreeFingerGestureHelper]: release"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Lcom/htc/album/helper/ThreeFingerGestureHelper;->unregisterReceiver()V

    .line 61
    iput-object v2, p0, Lcom/htc/album/helper/ThreeFingerGestureHelper;->mListener:Lcom/htc/album/helper/ThreeFingerGestureLintener;

    .line 62
    iput-object v2, p0, Lcom/htc/album/helper/ThreeFingerGestureHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    iput-object v2, p0, Lcom/htc/album/helper/ThreeFingerGestureHelper;->mContext:Landroid/content/Context;

    .line 64
    return-void
.end method
