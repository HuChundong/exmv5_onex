.class Lcom/htc/videowidget/videoview/PlayerHandler$7;
.super Ljava/lang/Object;
.source "PlayerHandler.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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
    .line 1046
    iput-object p1, p0, Lcom/htc/videowidget/videoview/PlayerHandler$7;->this$0:Lcom/htc/videowidget/videoview/PlayerHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 6
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v5, 0x1

    .line 1049
    const-string v2, "PlayerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInfo what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",= extra="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    const/4 v0, 0x0

    .line 1052
    .local v0, isHandled:Z
    iget-object v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler$7;->this$0:Lcom/htc/videowidget/videoview/PlayerHandler;

    #calls: Lcom/htc/videowidget/videoview/PlayerHandler;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;
    invoke-static {v2}, Lcom/htc/videowidget/videoview/PlayerHandler;->access$200(Lcom/htc/videowidget/videoview/PlayerHandler;)Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v1

    .line 1053
    .local v1, playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 1056
    iget-object v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler$7;->this$0:Lcom/htc/videowidget/videoview/PlayerHandler;

    #calls: Lcom/htc/videowidget/videoview/PlayerHandler;->onInfoAdapter(Landroid/media/MediaPlayer;IILcom/htc/videowidget/videoview/utilities/PlayerState;)Z
    invoke-static {v2, p1, p2, p3, v1}, Lcom/htc/videowidget/videoview/PlayerHandler;->access$900(Lcom/htc/videowidget/videoview/PlayerHandler;Landroid/media/MediaPlayer;IILcom/htc/videowidget/videoview/utilities/PlayerState;)Z

    move-result v0

    .line 1059
    :cond_0
    if-nez v0, :cond_1

    .line 1061
    sparse-switch p2, :sswitch_data_0

    .line 1084
    :goto_0
    const-string v2, "PlayerHandler"

    const-string v3, "allback MediaPlayer defined INFO to UI"

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    :cond_1
    iget-object v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler$7;->this$0:Lcom/htc/videowidget/videoview/PlayerHandler;

    const/4 v3, 0x3

    #calls: Lcom/htc/videowidget/videoview/PlayerHandler;->updateUiNotificationWith2Int(II)V
    invoke-static {v2, v3, p2}, Lcom/htc/videowidget/videoview/PlayerHandler;->access$000(Lcom/htc/videowidget/videoview/PlayerHandler;II)V

    .line 1088
    return v5

    .line 1063
    :sswitch_0
    const-string v2, "PlayerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInfo what=MEDIA_INFO_VIDEO_TRACK_LAGGING:,= extra="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1066
    :sswitch_1
    const-string v2, "PlayerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInfo what=MEDIA_INFO_BUFFERING_START:,= extra="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    iget-object v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler$7;->this$0:Lcom/htc/videowidget/videoview/PlayerHandler;

    #setter for: Lcom/htc/videowidget/videoview/PlayerHandler;->mIsBuffering:Z
    invoke-static {v2, v5}, Lcom/htc/videowidget/videoview/PlayerHandler;->access$1002(Lcom/htc/videowidget/videoview/PlayerHandler;Z)Z

    goto :goto_0

    .line 1070
    :sswitch_2
    const-string v2, "PlayerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInfo what=MEDIA_INFO_BUFFERING_END:,= extra="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    iget-object v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler$7;->this$0:Lcom/htc/videowidget/videoview/PlayerHandler;

    const/4 v3, 0x0

    #setter for: Lcom/htc/videowidget/videoview/PlayerHandler;->mIsBuffering:Z
    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/PlayerHandler;->access$1002(Lcom/htc/videowidget/videoview/PlayerHandler;Z)Z

    goto :goto_0

    .line 1074
    :sswitch_3
    const-string v2, "PlayerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInfo what=MEDIA_INFO_NOT_SEEKABLE:,= extra="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1077
    :sswitch_4
    const-string v2, "PlayerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInfo what=MEDIA_INFO_NOT_SEEKABLE:,= extra="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1080
    :sswitch_5
    const-string v2, "PlayerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInfo what=MEDIA_INFO_METADATA_UPDATE:,= extra="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1061
    :sswitch_data_0
    .sparse-switch
        0x2bc -> :sswitch_0
        0x2bd -> :sswitch_1
        0x2be -> :sswitch_2
        0x320 -> :sswitch_3
        0x321 -> :sswitch_4
        0x322 -> :sswitch_5
    .end sparse-switch
.end method
