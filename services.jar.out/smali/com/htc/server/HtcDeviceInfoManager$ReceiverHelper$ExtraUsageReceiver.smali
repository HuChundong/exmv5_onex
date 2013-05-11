.class final Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$ExtraUsageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExtraUsageReceiver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 425
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 426
    iput-object p1, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$ExtraUsageReceiver;->mContext:Landroid/content/Context;

    .line 427
    iput-object p2, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$ExtraUsageReceiver;->mHandler:Landroid/os/Handler;

    .line 428
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 431
    const-string v0, "HtcDeviceInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExtraUsageReceiver: FlushReceiver receive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const-string v0, "com.htc.DEVICE_INFO_LogInstalledApp"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$ExtraUsageReceiver;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 435
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$ExtraUsageReceiver;->mContext:Landroid/content/Context;

    const-string v1, "com.htc.DEVICE_INFO_LogInstalledApp"

    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->access$300()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->setupPendingIntent(Landroid/content/Context;Ljava/lang/String;J)V

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    const-string v0, "com.htc.DEVICE_INFO_LogSWInfoTime"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 437
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$ExtraUsageReceiver;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 438
    :cond_2
    const-string v0, "com.htc.DEVICE_INFO_LogHWInfoTime"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 439
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$ExtraUsageReceiver;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 440
    :cond_3
    const-string v0, "com.htc.screen_capture_action"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$ExtraUsageReceiver;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
