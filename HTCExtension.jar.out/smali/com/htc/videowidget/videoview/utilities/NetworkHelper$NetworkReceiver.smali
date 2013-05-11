.class Lcom/htc/videowidget/videoview/utilities/NetworkHelper$NetworkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoview/utilities/NetworkHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/utilities/NetworkHelper;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/utilities/NetworkHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/NetworkHelper$NetworkReceiver;->this$0:Lcom/htc/videowidget/videoview/utilities/NetworkHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 101
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/NetworkHelper$NetworkReceiver;->this$0:Lcom/htc/videowidget/videoview/utilities/NetworkHelper;

    #getter for: Lcom/htc/videowidget/videoview/utilities/NetworkHelper;->mListener:Lcom/htc/videowidget/videoview/utilities/NetworkHelper$INetworkReceiver;
    invoke-static {v3}, Lcom/htc/videowidget/videoview/utilities/NetworkHelper;->access$000(Lcom/htc/videowidget/videoview/utilities/NetworkHelper;)Lcom/htc/videowidget/videoview/utilities/NetworkHelper$INetworkReceiver;

    move-result-object v3

    if-nez v3, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const-string v3, "NetworkHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NetworkReceiver : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 108
    const-string v3, "NetworkHelper"

    const-string v4, "CONNECTIVITY_ACTION"

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 110
    .local v1, b:Landroid/os/Bundle;
    const-string v3, "networkInfo"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 111
    .local v2, info:Landroid/net/NetworkInfo;
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/NetworkHelper$NetworkReceiver;->this$0:Lcom/htc/videowidget/videoview/utilities/NetworkHelper;

    #calls: Lcom/htc/videowidget/videoview/utilities/NetworkHelper;->showNetworkInfo(Landroid/content/Context;Landroid/net/NetworkInfo;)V
    invoke-static {v3, p1, v2}, Lcom/htc/videowidget/videoview/utilities/NetworkHelper;->access$100(Lcom/htc/videowidget/videoview/utilities/NetworkHelper;Landroid/content/Context;Landroid/net/NetworkInfo;)V

    .line 113
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/NetworkHelper$NetworkReceiver;->this$0:Lcom/htc/videowidget/videoview/utilities/NetworkHelper;

    #getter for: Lcom/htc/videowidget/videoview/utilities/NetworkHelper;->mListener:Lcom/htc/videowidget/videoview/utilities/NetworkHelper$INetworkReceiver;
    invoke-static {v3}, Lcom/htc/videowidget/videoview/utilities/NetworkHelper;->access$000(Lcom/htc/videowidget/videoview/utilities/NetworkHelper;)Lcom/htc/videowidget/videoview/utilities/NetworkHelper$INetworkReceiver;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/htc/videowidget/videoview/utilities/NetworkHelper$INetworkReceiver;->OnNetworkChange(Landroid/net/NetworkInfo;)V

    goto :goto_0

    .line 115
    .end local v1           #b:Landroid/os/Bundle;
    .end local v2           #info:Landroid/net/NetworkInfo;
    :cond_2
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    const-string v3, "NetworkHelper"

    const-string v4, "\u001b[34m doOnAirPlanEvent \u001b[m"

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/NetworkHelper$NetworkReceiver;->this$0:Lcom/htc/videowidget/videoview/utilities/NetworkHelper;

    #getter for: Lcom/htc/videowidget/videoview/utilities/NetworkHelper;->mListener:Lcom/htc/videowidget/videoview/utilities/NetworkHelper$INetworkReceiver;
    invoke-static {v3}, Lcom/htc/videowidget/videoview/utilities/NetworkHelper;->access$000(Lcom/htc/videowidget/videoview/utilities/NetworkHelper;)Lcom/htc/videowidget/videoview/utilities/NetworkHelper$INetworkReceiver;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/videowidget/videoview/utilities/NetworkHelper$INetworkReceiver;->OnAirPlanMode()V

    goto :goto_0
.end method
