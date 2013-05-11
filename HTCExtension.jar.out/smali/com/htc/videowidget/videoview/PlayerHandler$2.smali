.class Lcom/htc/videowidget/videoview/PlayerHandler$2;
.super Ljava/lang/Object;
.source "PlayerHandler.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 910
    iput-object p1, p0, Lcom/htc/videowidget/videoview/PlayerHandler$2;->this$0:Lcom/htc/videowidget/videoview/PlayerHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .parameter "paramMediaPlayer"
    .parameter "nFramework_err"
    .parameter "nImplement_err"

    .prologue
    const/4 v4, 0x1

    .line 915
    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler$2;->this$0:Lcom/htc/videowidget/videoview/PlayerHandler;

    #getter for: Lcom/htc/videowidget/videoview/PlayerHandler;->mPrintLog:Z
    invoke-static {v1}, Lcom/htc/videowidget/videoview/PlayerHandler;->access$100(Lcom/htc/videowidget/videoview/PlayerHandler;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AutoTest"

    const-string v2, "[AutoProf](301) [OTHER][PlayerHandler][onError][START]"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    :cond_0
    const-string v1, "PlayerHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnErrorListener::onError() "

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

    .line 918
    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler$2;->this$0:Lcom/htc/videowidget/videoview/PlayerHandler;

    #calls: Lcom/htc/videowidget/videoview/PlayerHandler;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;
    invoke-static {v1}, Lcom/htc/videowidget/videoview/PlayerHandler;->access$200(Lcom/htc/videowidget/videoview/PlayerHandler;)Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v0

    .line 919
    .local v0, playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v0, :cond_1

    .line 921
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->updateState(I)V

    .line 924
    :cond_1
    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler$2;->this$0:Lcom/htc/videowidget/videoview/PlayerHandler;

    #calls: Lcom/htc/videowidget/videoview/PlayerHandler;->updateUiNotificationWithError(II)V
    invoke-static {v1, p2, p3}, Lcom/htc/videowidget/videoview/PlayerHandler;->access$300(Lcom/htc/videowidget/videoview/PlayerHandler;II)V

    .line 925
    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler$2;->this$0:Lcom/htc/videowidget/videoview/PlayerHandler;

    #getter for: Lcom/htc/videowidget/videoview/PlayerHandler;->mPrintLog:Z
    invoke-static {v1}, Lcom/htc/videowidget/videoview/PlayerHandler;->access$100(Lcom/htc/videowidget/videoview/PlayerHandler;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "AutoTest"

    const-string v2, "[AutoProf](302) [OTHER][PlayerHandler][onError][FINISH]"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :cond_2
    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler$2;->this$0:Lcom/htc/videowidget/videoview/PlayerHandler;

    #setter for: Lcom/htc/videowidget/videoview/PlayerHandler;->isIdle:Z
    invoke-static {v1, v4}, Lcom/htc/videowidget/videoview/PlayerHandler;->access$402(Lcom/htc/videowidget/videoview/PlayerHandler;Z)Z

    .line 927
    return v4
.end method
