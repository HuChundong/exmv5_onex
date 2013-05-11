.class final Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$BGFunctionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BGFunctionReceiver"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 448
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 449
    iput-object p2, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$BGFunctionReceiver;->mHandler:Landroid/os/Handler;

    .line 450
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 453
    const-string v2, "HtcDeviceInfoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BGFunctionReceiver: BGFunctionReceiver receive "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const-string v2, "com.htc.intent.action.SET_TELLHTC_UIMODE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 456
    const-string v2, "ui_mode"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 457
    .local v1, uiMode:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$BGFunctionReceiver;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$BGFunctionReceiver;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x1b

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 462
    .end local v1           #uiMode:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    const-string v2, "com.htc.intent.action.ULOG_POLICY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 459
    const-string v2, "isSIE"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 460
    .local v0, isSIE:Z
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$BGFunctionReceiver;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$BGFunctionReceiver;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x1c

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
