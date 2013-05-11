.class Landroid/media/MediaPluginDLNA$ControllerListener;
.super Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
.source "MediaPluginDLNA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPluginDLNA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPluginDLNA;


# direct methods
.method private constructor <init>(Landroid/media/MediaPluginDLNA;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-direct {p0}, Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaPluginDLNA;Landroid/media/MediaPluginDLNA$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 204
    invoke-direct {p0, p1}, Landroid/media/MediaPluginDLNA$ControllerListener;-><init>(Landroid/media/MediaPluginDLNA;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "rendererID"
    .parameter "errorID"
    .parameter "errorReason"

    .prologue
    .line 256
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    const/16 v1, 0x1100

    #calls: Landroid/media/MediaPluginDLNA;->setState(I)V
    invoke-static {v0, v1}, Landroid/media/MediaPluginDLNA;->access$1000(Landroid/media/MediaPluginDLNA;I)V

    .line 257
    const-string v0, "[MediaPluginDLNA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError: renderID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errorID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errorReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0}, Landroid/media/MediaPluginDLNA;->unlockCommand()V

    .line 259
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$900(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPlugin$OnEventListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Landroid/media/MediaPlugin$OnEventListener;->onError(II)V

    .line 260
    return-void
.end method

.method public onPlayStateChanged(I)V
    .locals 5
    .parameter "playState"

    .prologue
    const/16 v2, 0x2000

    const/16 v4, 0x1800

    const/4 v3, 0x0

    .line 207
    packed-switch p1, :pswitch_data_0

    .line 237
    :pswitch_0
    const-string v0, "[MediaPluginDLNA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPlayStateChanged:: unknow state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :goto_0
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #calls: Landroid/media/MediaPluginDLNA;->getState()I
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$1300(Landroid/media/MediaPluginDLNA;)I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 241
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0}, Landroid/media/MediaPluginDLNA;->unlockCommand()V

    .line 242
    :cond_0
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$900(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPlugin$OnEventListener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #calls: Landroid/media/MediaPluginDLNA;->getState()I
    invoke-static {v1}, Landroid/media/MediaPluginDLNA;->access$1300(Landroid/media/MediaPluginDLNA;)I

    move-result v1

    invoke-interface {v0, v1, v3}, Landroid/media/MediaPlugin$OnEventListener;->onStateChanged(II)V

    .line 243
    return-void

    .line 209
    :pswitch_1
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    const/16 v1, 0x1010

    #calls: Landroid/media/MediaPluginDLNA;->setState(I)V
    invoke-static {v0, v1}, Landroid/media/MediaPluginDLNA;->access$1000(Landroid/media/MediaPluginDLNA;I)V

    .line 210
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0}, Landroid/media/MediaPluginDLNA;->isSeeking()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$900(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPlugin$OnEventListener;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Landroid/media/MediaPlugin$OnEventListener;->onStateChanged(II)V

    .line 212
    :cond_1
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0, v3}, Landroid/media/MediaPluginDLNA;->setSeeking(I)V

    .line 213
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #calls: Landroid/media/MediaPluginDLNA;->enterDimMode()V
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$1100(Landroid/media/MediaPluginDLNA;)V

    .line 214
    const-string v0, "[MediaPluginDLNA]"

    const-string/jumbo v1, "onPlayStateChanged::STATE_PLAYING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 217
    :pswitch_2
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    const/16 v1, 0x1040

    #calls: Landroid/media/MediaPluginDLNA;->setState(I)V
    invoke-static {v0, v1}, Landroid/media/MediaPluginDLNA;->access$1000(Landroid/media/MediaPluginDLNA;I)V

    .line 218
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0}, Landroid/media/MediaPluginDLNA;->isSeeking()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$900(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPlugin$OnEventListener;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Landroid/media/MediaPlugin$OnEventListener;->onStateChanged(II)V

    .line 220
    :cond_2
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0, v3}, Landroid/media/MediaPluginDLNA;->setSeeking(I)V

    .line 221
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #calls: Landroid/media/MediaPluginDLNA;->leaveDimMode()V
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$1200(Landroid/media/MediaPluginDLNA;)V

    .line 222
    const-string v0, "[MediaPluginDLNA]"

    const-string/jumbo v1, "onPlayStateChanged::STATE_STOPPED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 225
    :pswitch_3
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    const/16 v1, 0x1020

    #calls: Landroid/media/MediaPluginDLNA;->setState(I)V
    invoke-static {v0, v1}, Landroid/media/MediaPluginDLNA;->access$1000(Landroid/media/MediaPluginDLNA;I)V

    .line 226
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #calls: Landroid/media/MediaPluginDLNA;->leaveDimMode()V
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$1200(Landroid/media/MediaPluginDLNA;)V

    .line 227
    const-string v0, "[MediaPluginDLNA]"

    const-string/jumbo v1, "onPlayStateChanged::STATE_PAUSED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 230
    :pswitch_4
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #calls: Landroid/media/MediaPluginDLNA;->setState(I)V
    invoke-static {v0, v4}, Landroid/media/MediaPluginDLNA;->access$1000(Landroid/media/MediaPluginDLNA;I)V

    .line 231
    const-string v0, "[MediaPluginDLNA]"

    const-string/jumbo v1, "onPlayStateChanged::STATE_TRANSITIONING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 234
    :pswitch_5
    const-string v0, "[MediaPluginDLNA]"

    const-string/jumbo v1, "onPlayStateChanged::STATE_NO_MEDIA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onPlaybackCompleted(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/16 v2, 0x1080

    .line 247
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #calls: Landroid/media/MediaPluginDLNA;->setState(I)V
    invoke-static {v0, v2}, Landroid/media/MediaPluginDLNA;->access$1000(Landroid/media/MediaPluginDLNA;I)V

    .line 248
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0}, Landroid/media/MediaPluginDLNA;->unlockCommand()V

    .line 249
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #calls: Landroid/media/MediaPluginDLNA;->leaveDimMode()V
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$1200(Landroid/media/MediaPluginDLNA;)V

    .line 250
    const-string v0, "[MediaPluginDLNA]"

    const-string/jumbo v1, "onPlaybackCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$900(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPlugin$OnEventListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Landroid/media/MediaPlugin$OnEventListener;->onStateChanged(II)V

    .line 252
    return-void
.end method

.method public onResponse(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .parameter "rendererID"
    .parameter "responseID"
    .parameter "responseReason"

    .prologue
    const/16 v4, 0x2080

    const/16 v3, 0x1100

    .line 264
    const-string v0, "[MediaPluginDLNA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResponse: renderID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", responseID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", responseReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    packed-switch p2, :pswitch_data_0

    .line 276
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$900(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPlugin$OnEventListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Landroid/media/MediaPlugin$OnEventListener;->onResponse(II)V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 267
    :pswitch_0
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #calls: Landroid/media/MediaPluginDLNA;->getState()I
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$1300(Landroid/media/MediaPluginDLNA;)I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 268
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$900(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPlugin$OnEventListener;

    move-result-object v0

    const/16 v1, 0x2081

    invoke-interface {v0, v4, v1}, Landroid/media/MediaPlugin$OnEventListener;->onResponse(II)V

    goto :goto_0

    .line 272
    :pswitch_1
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #calls: Landroid/media/MediaPluginDLNA;->getState()I
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$1300(Landroid/media/MediaPluginDLNA;)I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 273
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$900(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPlugin$OnEventListener;

    move-result-object v0

    const/16 v1, 0x2082

    invoke-interface {v0, v4, v1}, Landroid/media/MediaPlugin$OnEventListener;->onResponse(II)V

    goto :goto_0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch -0x143
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
