.class Lcom/htc/videowidget/videoview/HtcVideoFgm$8;
.super Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;
.source "HtcVideoFgm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoview/HtcVideoFgm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lSeekPosition:I

.field final synthetic this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V
    .locals 1
    .parameter

    .prologue
    .line 3243
    iput-object p1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$8;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    invoke-direct {p0}, Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;-><init>()V

    .line 3244
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$8;->lSeekPosition:I

    return-void
.end method


# virtual methods
.method public onEvent(ILandroid/os/Bundle;)V
    .locals 11
    .parameter "eventID"
    .parameter "bundle"

    .prologue
    const/16 v10, 0xc

    const/4 v9, 0x0

    .line 3248
    invoke-static {p1}, Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;->getStringFromEventId(I)Ljava/lang/String;

    move-result-object v5

    .line 3249
    .local v5, s:Ljava/lang/String;
    const/4 v1, 0x1

    .line 3250
    .local v1, bResetTimeOut:Z
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/LOG;->isDebug()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "HtcVideoFgm"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Footer Bar Event: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 3251
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 3345
    :cond_1
    :goto_0
    :pswitch_0
    if-eqz v1, :cond_2

    .line 3346
    const/16 v6, 0x20

    iget-object v7, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$8;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;
    invoke-static {v7}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$000(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessage(ILandroid/os/Handler;)V

    .line 3347
    :cond_2
    return-void

    .line 3254
    :pswitch_1
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$8;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mIsSeekbarDraging:Z
    invoke-static {v6}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$2700(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 3256
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$8;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #calls: Lcom/htc/videowidget/videoview/HtcVideoFgm;->clickPlayButton()V
    invoke-static {v6}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$400(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V

    goto :goto_0

    .line 3259
    :pswitch_2
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$8;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mIsSeekbarDraging:Z
    invoke-static {v6}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$2700(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 3261
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$8;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #calls: Lcom/htc/videowidget/videoview/HtcVideoFgm;->clickFFButton()V
    invoke-static {v6}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$5200(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V

    goto :goto_0

    .line 3264
    :pswitch_3
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$8;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mIsSeekbarDraging:Z
    invoke-static {v6}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$2700(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 3266
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$8;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #calls: Lcom/htc/videowidget/videoview/HtcVideoFgm;->clickRRButton()V
    invoke-static {v6}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$5300(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V

    goto :goto_0

    .line 3269
    :pswitch_4
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$8;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    const/4 v7, 0x1

    #setter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mIsSeekbarDraging:Z
    invoke-static {v6, v7}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$2702(Lcom/htc/videowidget/videoview/HtcVideoFgm;Z)Z

    .line 3270
    const/16 v6, 0xb

    iget-object v7, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$8;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;
    invoke-static {v7}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$1400(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/PlayerHandler;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessage(ILandroid/os/Handler;)V

    .line 3271
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$8;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleOperator:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;
    invoke-static {v6}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$500(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 3274
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$8;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleOperator:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;
    invoke-static {v6}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$500(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->dismissSubtitle()V

    .line 3275
    const-string v6, "HtcVideoFgm"

    const-string v7, "[seek Subtitle] dismiss subtitle"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3277
    :cond_3
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$8;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;
    invoke-static {v6}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$000(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    move-result-object v6

    invoke-static {v10, v6}, Lcom/htc/videowidget/videoview/MessageFactory;->removeMessage(ILandroid/os/Handler;)V

    goto :goto_0

    .line 3281
    :pswitch_5
    const-string v6, "key_int"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$8;->lSeekPosition:I

    .line 3282
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$8;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    invoke-virtual {v6}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v4

    .line 3283
    .local v4, playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isStreaming()Z

    move-result v6

    if-nez v6, :cond_1

    .line 3285
    iget v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$8;->lSeekPosition:I

    if-ltz v6, :cond_1

    .line 3287
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$8;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    iget v7, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$8;->lSeekPosition:I

    invoke-virtual {v6, v7}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->seekTo(I)V

    goto/16 :goto_0

    .line 3293
    .end local v4           #playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    :pswitch_6
    iget v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$8;->lSeekPosition:I

    if-gtz v6, :cond_5

    .line 3295
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$8;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    invoke-virtual {v6, v9}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->seekTo(I)V

    .line 3296
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$8;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    invoke-virtual {v6}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v4

    .line 3297
    .restart local v4       #playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v4, :cond_4

    .line 3299
    invoke-virtual {v4, v9}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->setCurrentPosition(I)V

    .line 3314
    :cond_4
    :goto_1
    iget v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$8;->lSeekPosition:I

    iget-object v7, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$8;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;
    invoke-static {v7}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$1400(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/PlayerHandler;

    move-result-object v7

    invoke-static {v10, v6, v7}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithInt(IILandroid/os/Handler;)V

    .line 3315
    const/4 v6, -0x1

    iput v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$8;->lSeekPosition:I

    .line 3316
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$8;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #setter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mIsSeekbarDraging:Z
    invoke-static {v6, v9}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$2702(Lcom/htc/videowidget/videoview/HtcVideoFgm;Z)Z

    goto/16 :goto_0

    .line 3304
    .end local v4           #playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    :cond_5
    const/4 v2, 0x0

    .line 3305
    .local v2, mDuration:I
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$8;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    invoke-virtual {v6}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v4

    .line 3306
    .restart local v4       #playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v4, :cond_4

    .line 3308
    invoke-virtual {v4}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getDuration()I

    move-result v2

    .line 3309
    iget v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$8;->lSeekPosition:I

    if-ge v6, v2, :cond_4

    .line 3310
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$8;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    iget v7, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$8;->lSeekPosition:I

    invoke-virtual {v6, v7}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->seekTo(I)V

    goto :goto_1

    .line 3319
    .end local v2           #mDuration:I
    .end local v4           #playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    :pswitch_7
    if-eqz p2, :cond_1

    .line 3321
    const-string v6, "key_int"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 3322
    .local v3, menuID:I
    const-string v6, "key_boolean"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 3324
    .local v0, b:Z
    const/4 v6, 0x7

    if-ne v3, v6, :cond_6

    .line 3326
    const/4 v1, 0x0

    .line 3328
    :cond_6
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$8;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #calls: Lcom/htc/videowidget/videoview/HtcVideoFgm;->onMoreMenuItemSelected(IZ)V
    invoke-static {v6, v3, v0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$5400(Lcom/htc/videowidget/videoview/HtcVideoFgm;IZ)V

    goto/16 :goto_0

    .line 3332
    .end local v0           #b:Z
    .end local v3           #menuID:I
    :pswitch_8
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$8;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #calls: Lcom/htc/videowidget/videoview/HtcVideoFgm;->clickSlowMotionButton()V
    invoke-static {v6}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$5500(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V

    goto/16 :goto_0

    .line 3339
    :pswitch_9
    const/16 v6, 0x24

    const/16 v7, 0x64

    iget-object v8, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$8;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;
    invoke-static {v8}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$000(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    move-result-object v8

    invoke-static {v6, v7, v9, v8}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithIntBoolean(IIZLandroid/os/Handler;)V

    .line 3341
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 3251
    nop

    :pswitch_data_0
    .packed-switch 0xbb9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method
