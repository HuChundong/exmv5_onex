.class Lcom/htc/videowidget/videoview/PlayerHandler$6;
.super Ljava/lang/Object;
.source "PlayerHandler.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


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
    .line 1025
    iput-object p1, p0, Lcom/htc/videowidget/videoview/PlayerHandler$6;->this$0:Lcom/htc/videowidget/videoview/PlayerHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 5
    .parameter "paramMediaPlayer"

    .prologue
    .line 1029
    const-string v2, "PlayerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnSeekCompleteListener::onSeekComplete(), mIsSeekingByUser = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/videowidget/videoview/PlayerHandler$6;->this$0:Lcom/htc/videowidget/videoview/PlayerHandler;

    #getter for: Lcom/htc/videowidget/videoview/PlayerHandler;->mIsSeekingByUser:Z
    invoke-static {v4}, Lcom/htc/videowidget/videoview/PlayerHandler;->access$800(Lcom/htc/videowidget/videoview/PlayerHandler;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    iget-object v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler$6;->this$0:Lcom/htc/videowidget/videoview/PlayerHandler;

    #calls: Lcom/htc/videowidget/videoview/PlayerHandler;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;
    invoke-static {v2}, Lcom/htc/videowidget/videoview/PlayerHandler;->access$200(Lcom/htc/videowidget/videoview/PlayerHandler;)Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v0

    .line 1031
    .local v0, playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v0, :cond_1

    .line 1033
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->setSeeking(Z)V

    .line 1034
    iget-object v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler$6;->this$0:Lcom/htc/videowidget/videoview/PlayerHandler;

    #getter for: Lcom/htc/videowidget/videoview/PlayerHandler;->mIsSeekingByUser:Z
    invoke-static {v2}, Lcom/htc/videowidget/videoview/PlayerHandler;->access$800(Lcom/htc/videowidget/videoview/PlayerHandler;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isStreaming()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1036
    :cond_0
    iget-object v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler$6;->this$0:Lcom/htc/videowidget/videoview/PlayerHandler;

    invoke-virtual {v2}, Lcom/htc/videowidget/videoview/PlayerHandler;->getCurrentPosition()I

    move-result v1

    .line 1037
    .local v1, pos:I
    const-string v2, "PlayerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnSeekCompleteListener::onSeekComplete(), pos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    iget-object v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler$6;->this$0:Lcom/htc/videowidget/videoview/PlayerHandler;

    const/4 v3, 0x5

    #calls: Lcom/htc/videowidget/videoview/PlayerHandler;->updateUiNotificationWith2Int(II)V
    invoke-static {v2, v3, v1}, Lcom/htc/videowidget/videoview/PlayerHandler;->access$000(Lcom/htc/videowidget/videoview/PlayerHandler;II)V

    .line 1041
    .end local v1           #pos:I
    :cond_1
    return-void
.end method
