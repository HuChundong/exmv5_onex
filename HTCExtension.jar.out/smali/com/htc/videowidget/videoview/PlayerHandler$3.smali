.class Lcom/htc/videowidget/videoview/PlayerHandler$3;
.super Ljava/lang/Object;
.source "PlayerHandler.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoview/PlayerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/PlayerHandler;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/PlayerHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 931
    iput-object p1, p0, Lcom/htc/videowidget/videoview/PlayerHandler$3;->this$0:Lcom/htc/videowidget/videoview/PlayerHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 5
    .parameter "mp"
    .parameter "paramInt1"
    .parameter "paramInt2"

    .prologue
    .line 936
    const-string v1, "PlayerHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnVideoSizeChangedListener::onVideoSizeChanged() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler$3;->this$0:Lcom/htc/videowidget/videoview/PlayerHandler;

    #calls: Lcom/htc/videowidget/videoview/PlayerHandler;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;
    invoke-static {v1}, Lcom/htc/videowidget/videoview/PlayerHandler;->access$200(Lcom/htc/videowidget/videoview/PlayerHandler;)Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v0

    .line 939
    .local v0, playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 941
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->setVideoSize(DD)V

    .line 943
    :cond_0
    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler$3;->this$0:Lcom/htc/videowidget/videoview/PlayerHandler;

    const/4 v2, 0x6

    #calls: Lcom/htc/videowidget/videoview/PlayerHandler;->updateUiNotificationWithInt(I)V
    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/PlayerHandler;->access$500(Lcom/htc/videowidget/videoview/PlayerHandler;I)V

    .line 944
    return-void
.end method
