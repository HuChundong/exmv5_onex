.class Lcom/htc/album/helper/ThreeFingerGestureHelper$ThreeFingerGestureBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ThreeFingerGestureHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/ThreeFingerGestureHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreeFingerGestureBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/helper/ThreeFingerGestureHelper;


# direct methods
.method private constructor <init>(Lcom/htc/album/helper/ThreeFingerGestureHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/htc/album/helper/ThreeFingerGestureHelper$ThreeFingerGestureBroadcastReceiver;->this$0:Lcom/htc/album/helper/ThreeFingerGestureHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/helper/ThreeFingerGestureHelper;Lcom/htc/album/helper/ThreeFingerGestureHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/htc/album/helper/ThreeFingerGestureHelper$ThreeFingerGestureBroadcastReceiver;-><init>(Lcom/htc/album/helper/ThreeFingerGestureHelper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 71
    const-string v3, "ThreeFingerGestureHelper"

    const-string v4, "[ThreeFingerGestureHelper][ThreeFingerGestureBroadcastReceiver]: +"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v3, "FingerCount"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 74
    .local v2, nFingerCount:I
    const-string v3, "Direction"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 76
    .local v1, nDirection:I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    if-eqz v1, :cond_0

    .line 78
    const-string v3, "ThreeFingerGestureHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ThreeFingerGestureHelper][ThreeFingerGestureBroadcastReceiver]: Gesture - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v3, p0, Lcom/htc/album/helper/ThreeFingerGestureHelper$ThreeFingerGestureBroadcastReceiver;->this$0:Lcom/htc/album/helper/ThreeFingerGestureHelper;

    #getter for: Lcom/htc/album/helper/ThreeFingerGestureHelper;->mListener:Lcom/htc/album/helper/ThreeFingerGestureLintener;
    invoke-static {v3}, Lcom/htc/album/helper/ThreeFingerGestureHelper;->access$100(Lcom/htc/album/helper/ThreeFingerGestureHelper;)Lcom/htc/album/helper/ThreeFingerGestureLintener;

    move-result-object v0

    .line 81
    .local v0, listener:Lcom/htc/album/helper/ThreeFingerGestureLintener;
    if-eqz v0, :cond_0

    .line 82
    invoke-interface {v0, v1}, Lcom/htc/album/helper/ThreeFingerGestureLintener;->onThreeFingerGestureDetected(I)V

    .line 85
    .end local v0           #listener:Lcom/htc/album/helper/ThreeFingerGestureLintener;
    :cond_0
    const-string v3, "ThreeFingerGestureHelper"

    const-string v4, "[ThreeFingerGestureHelper][ThreeFingerGestureBroadcastReceiver]: -"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method
