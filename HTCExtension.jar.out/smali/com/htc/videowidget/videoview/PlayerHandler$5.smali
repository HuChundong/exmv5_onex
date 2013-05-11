.class Lcom/htc/videowidget/videoview/PlayerHandler$5;
.super Ljava/lang/Object;
.source "PlayerHandler.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 1012
    iput-object p1, p0, Lcom/htc/videowidget/videoview/PlayerHandler$5;->this$0:Lcom/htc/videowidget/videoview/PlayerHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "paramMediaPlayer"

    .prologue
    .line 1017
    const-string v0, "PlayerHandler"

    const-string v1, "OnCompletionListener::onCompletion()"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler$5;->this$0:Lcom/htc/videowidget/videoview/PlayerHandler;

    #getter for: Lcom/htc/videowidget/videoview/PlayerHandler;->mPrintLog:Z
    invoke-static {v0}, Lcom/htc/videowidget/videoview/PlayerHandler;->access$100(Lcom/htc/videowidget/videoview/PlayerHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AutoTest"

    const-string v1, "[AutoProf](301) [OTHER][PlayerHandler][onCompletion][START]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    :cond_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler$5;->this$0:Lcom/htc/videowidget/videoview/PlayerHandler;

    #calls: Lcom/htc/videowidget/videoview/PlayerHandler;->action_Complete()V
    invoke-static {v0}, Lcom/htc/videowidget/videoview/PlayerHandler;->access$700(Lcom/htc/videowidget/videoview/PlayerHandler;)V

    .line 1020
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler$5;->this$0:Lcom/htc/videowidget/videoview/PlayerHandler;

    #getter for: Lcom/htc/videowidget/videoview/PlayerHandler;->mPrintLog:Z
    invoke-static {v0}, Lcom/htc/videowidget/videoview/PlayerHandler;->access$100(Lcom/htc/videowidget/videoview/PlayerHandler;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AutoTest"

    const-string v1, "[AutoProf](302) [OTHER][PlayerHandler][onCompletion][FINISH]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :cond_1
    return-void
.end method
