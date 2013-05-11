.class Lcom/htc/videowidget/videoview/HtcPlayerHelper$1;
.super Ljava/lang/Object;
.source "HtcPlayerHelper.java"

# interfaces
.implements Lcom/htc/videowidget/videoview/utilities/NetworkHelper$INetworkReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoview/HtcPlayerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/HtcPlayerHelper;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/HtcPlayerHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/htc/videowidget/videoview/HtcPlayerHelper$1;->this$0:Lcom/htc/videowidget/videoview/HtcPlayerHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnAirPlanMode()V
    .locals 3

    .prologue
    .line 99
    const-string v0, "HtcPlayerHelper"

    const-string v1, "OnAirPlanMode"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcPlayerHelper$1;->this$0:Lcom/htc/videowidget/videoview/HtcPlayerHelper;

    #getter for: Lcom/htc/videowidget/videoview/HtcPlayerHelper;->listener:Lcom/htc/videowidget/videoview/HtcPlayerHelper$HelperListener;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/HtcPlayerHelper;->access$000(Lcom/htc/videowidget/videoview/HtcPlayerHelper;)Lcom/htc/videowidget/videoview/HtcPlayerHelper$HelperListener;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/htc/videowidget/videoview/HtcPlayerHelper$HelperListener;->onHelper(ILandroid/os/Bundle;)V

    .line 101
    return-void
.end method

.method public OnNetworkChange(Landroid/net/NetworkInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 93
    const-string v0, "HtcPlayerHelper"

    const-string v1, "OnNetworkChange"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcPlayerHelper$1;->this$0:Lcom/htc/videowidget/videoview/HtcPlayerHelper;

    #getter for: Lcom/htc/videowidget/videoview/HtcPlayerHelper;->listener:Lcom/htc/videowidget/videoview/HtcPlayerHelper$HelperListener;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/HtcPlayerHelper;->access$000(Lcom/htc/videowidget/videoview/HtcPlayerHelper;)Lcom/htc/videowidget/videoview/HtcPlayerHelper$HelperListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/videowidget/videoview/HtcPlayerHelper$HelperListener;->onNetworkChange(Landroid/net/NetworkInfo;)V

    .line 95
    return-void
.end method
