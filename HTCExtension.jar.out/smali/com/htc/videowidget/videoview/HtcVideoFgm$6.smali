.class Lcom/htc/videowidget/videoview/HtcVideoFgm$6;
.super Ljava/lang/Object;
.source "HtcVideoFgm.java"

# interfaces
.implements Lcom/htc/videowidget/videoview/utilities/PlayerState$IPlayerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoview/HtcVideoFgm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V
    .locals 0
    .parameter

    .prologue
    .line 1512
    iput-object p1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$6;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMetaPrepared(Lcom/htc/videowidget/videoview/utilities/PlayerState;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1516
    const-string v1, "HtcVideoFgm"

    const-string v2, "onMetaPrepared "

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$6;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v0

    .line 1518
    .local v0, playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isStreaming()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1520
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$6;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #calls: Lcom/htc/videowidget/videoview/HtcVideoFgm;->onPrepared_setup_subtitle()V
    invoke-static {v1}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$1200(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V

    .line 1522
    :cond_0
    return-void
.end method
