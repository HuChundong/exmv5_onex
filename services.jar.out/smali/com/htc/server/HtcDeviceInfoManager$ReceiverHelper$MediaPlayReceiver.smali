.class final Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$MediaPlayReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaPlayReceiver"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 382
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 383
    iput-object p1, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$MediaPlayReceiver;->mHandler:Landroid/os/Handler;

    .line 384
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 387
    const-string v1, "HtcDeviceInfoManager"

    const-string v2, "MediaReceiver.onReceive"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$MediaPlayReceiver;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1e

    invoke-static {v1, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 391
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 393
    return-void
.end method
