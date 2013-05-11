.class Lcom/htc/videowidget/videoview/utilities/HdmiHelper$2;
.super Landroid/content/BroadcastReceiver;
.source "HdmiHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoview/utilities/HdmiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPreState:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/videowidget/videoview/utilities/HdmiHelper;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/utilities/HdmiHelper;)V
    .locals 1
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/HdmiHelper$2;->this$0:Lcom/htc/videowidget/videoview/utilities/HdmiHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/HdmiHelper$2;->mPreState:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "arg0"
    .parameter "intent"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x1

    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/LOG;->isDebug()Z

    move-result v3

    if-ne v3, v6, :cond_0

    .line 68
    const-string v3, "HdmiHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[1226] Received intent::action = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    const-string v3, "HDMI_CABLE_CONNECTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 72
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/LOG;->isDebug()Z

    move-result v3

    if-ne v3, v6, :cond_1

    .line 73
    const-string v3, "HdmiHelper"

    const-string v4, "AudioSystem.DEVICE_OUT_HDMI_OUT [AVAILABLE]"

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_1
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/HdmiHelper$2;->this$0:Lcom/htc/videowidget/videoview/utilities/HdmiHelper;

    iget-object v2, v3, Lcom/htc/videowidget/videoview/utilities/HdmiHelper;->mContext:Landroid/content/Context;

    .line 76
    .local v2, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/HdmiHelper$2;->this$0:Lcom/htc/videowidget/videoview/utilities/HdmiHelper;

    iget-object v1, v3, Lcom/htc/videowidget/videoview/utilities/HdmiHelper;->mCallback:Lcom/htc/videowidget/videoview/utilities/HdmiHelper$IHdmiPlugReceiver;

    .line 77
    .local v1, callback:Lcom/htc/videowidget/videoview/utilities/HdmiHelper$IHdmiPlugReceiver;
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/HdmiHelper$2;->this$0:Lcom/htc/videowidget/videoview/utilities/HdmiHelper;

    invoke-virtual {v3}, Lcom/htc/videowidget/videoview/utilities/HdmiHelper;->stopMonitor()Z

    .line 78
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/HdmiHelper$2;->this$0:Lcom/htc/videowidget/videoview/utilities/HdmiHelper;

    invoke-virtual {v3, v2, v1}, Lcom/htc/videowidget/videoview/utilities/HdmiHelper;->startUnplugedMonitor(Landroid/content/Context;Lcom/htc/videowidget/videoview/utilities/HdmiHelper$IHdmiPlugReceiver;)Z

    .line 80
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/HdmiHelper$2;->this$0:Lcom/htc/videowidget/videoview/utilities/HdmiHelper;

    #getter for: Lcom/htc/videowidget/videoview/utilities/HdmiHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/videowidget/videoview/utilities/HdmiHelper;->access$000(Lcom/htc/videowidget/videoview/utilities/HdmiHelper;)Landroid/os/Handler;

    move-result-object v3

    const-string v4, "PLUG-IN"

    invoke-virtual {v3, v7, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 94
    .end local v1           #callback:Lcom/htc/videowidget/videoview/utilities/HdmiHelper$IHdmiPlugReceiver;
    .end local v2           #context:Landroid/content/Context;
    :cond_2
    :goto_0
    return-void

    .line 82
    :cond_3
    const-string v3, "HDMI_CABLE_DISCONNECTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 84
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/LOG;->isDebug()Z

    move-result v3

    if-ne v3, v6, :cond_4

    .line 85
    const-string v3, "HdmiHelper"

    const-string v4, "AudioSystem.DEVICE_OUT_HDMI_OUT [UNAVAILABLE]"

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_4
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/HdmiHelper$2;->this$0:Lcom/htc/videowidget/videoview/utilities/HdmiHelper;

    iget-object v2, v3, Lcom/htc/videowidget/videoview/utilities/HdmiHelper;->mContext:Landroid/content/Context;

    .line 88
    .restart local v2       #context:Landroid/content/Context;
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/HdmiHelper$2;->this$0:Lcom/htc/videowidget/videoview/utilities/HdmiHelper;

    iget-object v1, v3, Lcom/htc/videowidget/videoview/utilities/HdmiHelper;->mCallback:Lcom/htc/videowidget/videoview/utilities/HdmiHelper$IHdmiPlugReceiver;

    .line 89
    .restart local v1       #callback:Lcom/htc/videowidget/videoview/utilities/HdmiHelper$IHdmiPlugReceiver;
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/HdmiHelper$2;->this$0:Lcom/htc/videowidget/videoview/utilities/HdmiHelper;

    invoke-virtual {v3}, Lcom/htc/videowidget/videoview/utilities/HdmiHelper;->stopMonitor()Z

    .line 90
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/HdmiHelper$2;->this$0:Lcom/htc/videowidget/videoview/utilities/HdmiHelper;

    invoke-virtual {v3, v2, v1}, Lcom/htc/videowidget/videoview/utilities/HdmiHelper;->startPlugedMonitor(Landroid/content/Context;Lcom/htc/videowidget/videoview/utilities/HdmiHelper$IHdmiPlugReceiver;)Z

    .line 92
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/HdmiHelper$2;->this$0:Lcom/htc/videowidget/videoview/utilities/HdmiHelper;

    #getter for: Lcom/htc/videowidget/videoview/utilities/HdmiHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/videowidget/videoview/utilities/HdmiHelper;->access$000(Lcom/htc/videowidget/videoview/utilities/HdmiHelper;)Landroid/os/Handler;

    move-result-object v3

    const-string v4, "UNPLUG"

    invoke-virtual {v3, v7, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
