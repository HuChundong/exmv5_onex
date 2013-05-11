.class final Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$FlushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FlushReceiver"
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
    .line 312
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 313
    iput-object p1, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$FlushReceiver;->mContext:Landroid/content/Context;

    .line 314
    iput-object p2, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$FlushReceiver;->mHandler:Landroid/os/Handler;

    .line 315
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 318
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    const-string v2, "HtcDeviceInfoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FlushReceiver receive "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_0
    const-string v2, "com.htc.USE_TIME_FLUSH"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 322
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$FlushReceiver;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 345
    :cond_1
    :goto_0
    return-void

    .line 323
    :cond_2
    const-string v2, "com.htc.CLIENT_INFO_FLUSH"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 324
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$FlushReceiver;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 325
    :cond_3
    const-string v2, "com.htc.DEVICE_INFO_FLUSH"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 326
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$FlushReceiver;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 327
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$FlushReceiver;->mContext:Landroid/content/Context;

    const-string v3, "com.htc.DEVICE_INFO_FLUSH"

    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->access$100()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->setupPendingIntent(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    .line 328
    :cond_4
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 329
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$FlushReceiver;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 330
    :cond_5
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 331
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$FlushReceiver;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 332
    :cond_6
    const-string v2, "com.htc.updater.NOTIFY_SYSTEM_CRASH"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 333
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 334
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 335
    const-string v2, "reboot_type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, type:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 337
    const-string v2, "kernel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 338
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$FlushReceiver;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 339
    :cond_7
    const-string v2, "radio"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 340
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$FlushReceiver;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
