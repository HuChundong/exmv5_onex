.class Lcom/htc/videowidget/videoview/PlayerHandler$4;
.super Ljava/lang/Object;
.source "PlayerHandler.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 948
    iput-object p1, p0, Lcom/htc/videowidget/videoview/PlayerHandler$4;->this$0:Lcom/htc/videowidget/videoview/PlayerHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onPrepared_setup_audioid(Lcom/htc/videowidget/videoview/utilities/PlayerState;Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "playerState"
    .parameter "mediaplayer"

    .prologue
    .line 951
    invoke-virtual {p2}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->setAudioSessionId(I)V

    .line 952
    return-void
.end method

.method private onPrepared_setup_duration(Lcom/htc/videowidget/videoview/utilities/PlayerState;Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "playerState"
    .parameter "mediaplayer"

    .prologue
    .line 958
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getDuration()I

    move-result v1

    if-gez v1, :cond_0

    .line 960
    invoke-virtual {p2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 961
    .local v0, duration:I
    invoke-virtual {p1, v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->setDuration(I)V

    .line 962
    if-nez v0, :cond_0

    .line 964
    invoke-virtual {p1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->setLiveStreaming()V

    .line 965
    invoke-virtual {p1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->setNotSeekable()V

    .line 968
    .end local v0           #duration:I
    :cond_0
    return-void
.end method

.method private onPrepared_setup_videosize(Lcom/htc/videowidget/videoview/utilities/PlayerState;Landroid/media/MediaPlayer;)V
    .locals 4
    .parameter "playerState"
    .parameter "mediaplayer"

    .prologue
    .line 972
    invoke-virtual {p2}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->setVideoSize(DD)V

    .line 973
    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5
    .parameter "mediaplayer"

    .prologue
    .line 978
    const-string v2, "PlayerHandler"

    const-string v3, "OnPreparedListener::onPrepared()"

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    iget-object v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler$4;->this$0:Lcom/htc/videowidget/videoview/PlayerHandler;

    #getter for: Lcom/htc/videowidget/videoview/PlayerHandler;->mPrintLog:Z
    invoke-static {v2}, Lcom/htc/videowidget/videoview/PlayerHandler;->access$100(Lcom/htc/videowidget/videoview/PlayerHandler;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "AutoTest"

    const-string v3, "[AutoProf](301) [OTHER][PlayerHandler][onPrepared][START]"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    :cond_0
    if-nez p1, :cond_2

    .line 1008
    :cond_1
    :goto_0
    return-void

    .line 983
    :cond_2
    iget-object v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler$4;->this$0:Lcom/htc/videowidget/videoview/PlayerHandler;

    #calls: Lcom/htc/videowidget/videoview/PlayerHandler;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;
    invoke-static {v2}, Lcom/htc/videowidget/videoview/PlayerHandler;->access$200(Lcom/htc/videowidget/videoview/PlayerHandler;)Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v1

    .line 985
    .local v1, playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v1, :cond_1

    .line 989
    :try_start_0
    invoke-direct {p0, v1, p1}, Lcom/htc/videowidget/videoview/PlayerHandler$4;->onPrepared_setup_audioid(Lcom/htc/videowidget/videoview/utilities/PlayerState;Landroid/media/MediaPlayer;)V

    .line 991
    invoke-direct {p0, v1, p1}, Lcom/htc/videowidget/videoview/PlayerHandler$4;->onPrepared_setup_videosize(Lcom/htc/videowidget/videoview/utilities/PlayerState;Landroid/media/MediaPlayer;)V

    .line 993
    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isLiveStreaming()Z

    move-result v2

    if-nez v2, :cond_3

    .line 995
    invoke-direct {p0, v1, p1}, Lcom/htc/videowidget/videoview/PlayerHandler$4;->onPrepared_setup_duration(Lcom/htc/videowidget/videoview/utilities/PlayerState;Landroid/media/MediaPlayer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1002
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler$4;->this$0:Lcom/htc/videowidget/videoview/PlayerHandler;

    #calls: Lcom/htc/videowidget/videoview/PlayerHandler;->createSoundEffect()V
    invoke-static {v2}, Lcom/htc/videowidget/videoview/PlayerHandler;->access$600(Lcom/htc/videowidget/videoview/PlayerHandler;)V

    .line 1004
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->updateState(I)V

    .line 1006
    iget-object v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler$4;->this$0:Lcom/htc/videowidget/videoview/PlayerHandler;

    const/4 v3, 0x4

    #calls: Lcom/htc/videowidget/videoview/PlayerHandler;->updateUiNotificationWithInt(I)V
    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/PlayerHandler;->access$500(Lcom/htc/videowidget/videoview/PlayerHandler;I)V

    .line 1007
    iget-object v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler$4;->this$0:Lcom/htc/videowidget/videoview/PlayerHandler;

    #getter for: Lcom/htc/videowidget/videoview/PlayerHandler;->mPrintLog:Z
    invoke-static {v2}, Lcom/htc/videowidget/videoview/PlayerHandler;->access$100(Lcom/htc/videowidget/videoview/PlayerHandler;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "AutoTest"

    const-string v3, "[AutoProf](302) [OTHER][PlayerHandler][onPrepared][FINISH]"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 998
    :catch_0
    move-exception v0

    .line 999
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "PlayerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepared getParam error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
