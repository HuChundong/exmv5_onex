.class Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;
.super Landroid/os/Handler;
.source "HtcVideoFgm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoview/HtcVideoFgm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# instance fields
.field private iMetaRetryCount:I

.field private mFragment:Lcom/htc/videowidget/videoview/HtcVideoFgm;

.field final synthetic this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;


# direct methods
.method public constructor <init>(Lcom/htc/videowidget/videoview/HtcVideoFgm;Lcom/htc/videowidget/videoview/HtcVideoFgm;)V
    .locals 1
    .parameter
    .parameter "fragment"

    .prologue
    .line 1562
    iput-object p1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1559
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->iMetaRetryCount:I

    .line 1560
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->mFragment:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    .line 1563
    iput-object p2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->mFragment:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    .line 1564
    return-void
.end method

.method private getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;
    .locals 1

    .prologue
    .line 2283
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->mFragment:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    if-eqz v0, :cond_0

    .line 2284
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->mFragment:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v0

    .line 2286
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getUIHandlerString(I)Ljava/lang/String;
    .locals 3
    .parameter "s"

    .prologue
    .line 2249
    packed-switch p1, :pswitch_data_0

    .line 2277
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNDEFINED ACTION("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2279
    .local v0, d:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 2250
    .end local v0           #d:Ljava/lang/String;
    :pswitch_1
    const-string v0, "UI_ACTION_SETVIDEOSIZE"

    .restart local v0       #d:Ljava/lang/String;
    goto :goto_0

    .line 2251
    .end local v0           #d:Ljava/lang/String;
    :pswitch_2
    const-string v0, "UI_ACTION_GETPOSITION"

    .restart local v0       #d:Ljava/lang/String;
    goto :goto_0

    .line 2252
    .end local v0           #d:Ljava/lang/String;
    :pswitch_3
    const-string v0, "UI_ACTION_GETDURATION"

    .restart local v0       #d:Ljava/lang/String;
    goto :goto_0

    .line 2253
    .end local v0           #d:Ljava/lang/String;
    :pswitch_4
    const-string v0, "UI_ACTION_MEDIAUPDATE"

    .restart local v0       #d:Ljava/lang/String;
    goto :goto_0

    .line 2254
    .end local v0           #d:Ljava/lang/String;
    :pswitch_5
    const-string v0, "UI_ACTION_WAITINGCURSOR"

    .restart local v0       #d:Ljava/lang/String;
    goto :goto_0

    .line 2255
    .end local v0           #d:Ljava/lang/String;
    :pswitch_6
    const-string v0, "UI_ACTION_PLAY_BTN"

    .restart local v0       #d:Ljava/lang/String;
    goto :goto_0

    .line 2256
    .end local v0           #d:Ljava/lang/String;
    :pswitch_7
    const-string v0, "UI_ACTION_BUFFER"

    .restart local v0       #d:Ljava/lang/String;
    goto :goto_0

    .line 2257
    .end local v0           #d:Ljava/lang/String;
    :pswitch_8
    const-string v0, "UI_ACTION_AUDIOICONVIEW"

    .restart local v0       #d:Ljava/lang/String;
    goto :goto_0

    .line 2258
    .end local v0           #d:Ljava/lang/String;
    :pswitch_9
    const-string v0, "UI_ACTION_CENTER_BUTTON"

    .restart local v0       #d:Ljava/lang/String;
    goto :goto_0

    .line 2259
    .end local v0           #d:Ljava/lang/String;
    :pswitch_a
    const-string v0, "UI_ACTION_GRAYOUT"

    .restart local v0       #d:Ljava/lang/String;
    goto :goto_0

    .line 2260
    .end local v0           #d:Ljava/lang/String;
    :pswitch_b
    const-string v0, "UI_ACTION_STARTSUBTITLE"

    .restart local v0       #d:Ljava/lang/String;
    goto :goto_0

    .line 2261
    .end local v0           #d:Ljava/lang/String;
    :pswitch_c
    const-string v0, "UI_ACTION_SURFACEVIEW"

    .restart local v0       #d:Ljava/lang/String;
    goto :goto_0

    .line 2262
    .end local v0           #d:Ljava/lang/String;
    :pswitch_d
    const-string v0, "UI_ACTION_CAMERABUTTON"

    .restart local v0       #d:Ljava/lang/String;
    goto :goto_0

    .line 2264
    .end local v0           #d:Ljava/lang/String;
    :pswitch_e
    const-string v0, "UI_ACTION_SLOWMOTION_BTN"

    .restart local v0       #d:Ljava/lang/String;
    goto :goto_0

    .line 2265
    .end local v0           #d:Ljava/lang/String;
    :pswitch_f
    const-string v0, "UI_ACTION_SHOW_CONTROLLER"

    .restart local v0       #d:Ljava/lang/String;
    goto :goto_0

    .line 2266
    .end local v0           #d:Ljava/lang/String;
    :pswitch_10
    const-string v0, "UI_ACTION_TIMEOUT"

    .restart local v0       #d:Ljava/lang/String;
    goto :goto_0

    .line 2267
    .end local v0           #d:Ljava/lang/String;
    :pswitch_11
    const-string v0, "UI_ACTION_SHOW_LOCKSCREEN"

    .restart local v0       #d:Ljava/lang/String;
    goto :goto_0

    .line 2268
    .end local v0           #d:Ljava/lang/String;
    :pswitch_12
    const-string v0, "UI_ACTION_MEDIAUPDATE_TITLE"

    .restart local v0       #d:Ljava/lang/String;
    goto :goto_0

    .line 2269
    .end local v0           #d:Ljava/lang/String;
    :pswitch_13
    const-string v0, "UI_ACTION_TOUCHSCREEN"

    .restart local v0       #d:Ljava/lang/String;
    goto :goto_0

    .line 2270
    .end local v0           #d:Ljava/lang/String;
    :pswitch_14
    const-string v0, "UI_ACTION_CONTROLLER_SELECT"

    .restart local v0       #d:Ljava/lang/String;
    goto :goto_0

    .line 2271
    .end local v0           #d:Ljava/lang/String;
    :pswitch_15
    const-string v0, "UI_ACTION_MEDIAUPDATE_SELECT_DMR"

    .restart local v0       #d:Ljava/lang/String;
    goto :goto_0

    .line 2272
    .end local v0           #d:Ljava/lang/String;
    :pswitch_16
    const-string v0, "UI_ACTION_UPDATE_SEEKBAR_SECONDARY_PROGRESS"

    .restart local v0       #d:Ljava/lang/String;
    goto :goto_0

    .line 2273
    .end local v0           #d:Ljava/lang/String;
    :pswitch_17
    const-string v0, "UI_ACTION_WAIT"

    .restart local v0       #d:Ljava/lang/String;
    goto :goto_0

    .line 2274
    .end local v0           #d:Ljava/lang/String;
    :pswitch_18
    const-string v0, "UI_ACTION_CLEAN_FRAME_BUFFER"

    .restart local v0       #d:Ljava/lang/String;
    goto :goto_0

    .line 2275
    .end local v0           #d:Ljava/lang/String;
    :pswitch_19
    const-string v0, "UI_ACTION_TEXT_TIME"

    .restart local v0       #d:Ljava/lang/String;
    goto :goto_0

    .line 2276
    .end local v0           #d:Ljava/lang/String;
    :pswitch_1a
    const-string v0, "UI_ACTION_AUDIO_VIDEO"

    .restart local v0       #d:Ljava/lang/String;
    goto :goto_0

    .line 2249
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 36
    .parameter "msg"

    .prologue
    .line 1571
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v31, v0

    packed-switch v31, :pswitch_data_0

    .line 2246
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1575
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v31

    if-eqz v31, :cond_0

    .line 1577
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v31

    const-string v32, "int"

    invoke-virtual/range {v31 .. v32}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1578
    .local v6, displayMode:I
    const-string v31, "HtcVideoFgm"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "UIHandler::handleMessage() UI_ACTION_SETVIDEOSIZE displayMode "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    #calls: Lcom/htc/videowidget/videoview/HtcVideoFgm;->setVideoSizeByModeAndCheckFunction(I)V
    invoke-static {v0, v6}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$1300(Lcom/htc/videowidget/videoview/HtcVideoFgm;I)V

    goto :goto_0

    .line 1585
    .end local v6           #displayMode:I
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v27

    .line 1586
    .local v27, state:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$1400(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/PlayerHandler;

    move-result-object v31

    if-eqz v31, :cond_0

    if-eqz v27, :cond_0

    .line 1588
    invoke-virtual/range {v27 .. v27}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isSeeking()Z

    move-result v13

    .line 1590
    .local v13, isSeeking:Z
    if-nez v13, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$1400(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/PlayerHandler;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/htc/videowidget/videoview/PlayerHandler;->isIdle()Z

    move-result v31

    if-eqz v31, :cond_3

    .line 1592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$1400(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/PlayerHandler;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/htc/videowidget/videoview/PlayerHandler;->getCurrentPosition()I

    move-result v20

    .line 1593
    .local v20, pos:I
    if-lez v20, :cond_1

    .line 1594
    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->setCurrentPosition(I)V

    .line 1598
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$300(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    move-result-object v31

    if-eqz v31, :cond_2

    .line 1600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$300(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    move-result-object v31

    const/16 v32, 0x386

    move-object/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->updateSeekBar(II)V

    .line 1608
    .end local v20           #pos:I
    :cond_2
    :goto_1
    const/16 v31, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->hasMessages(I)Z

    move-result v31

    if-nez v31, :cond_0

    .line 1610
    const/16 v31, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v32, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;
    invoke-static/range {v32 .. v32}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$000(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    move-result-object v32

    const/16 v33, 0x1f4

    invoke-static/range {v31 .. v33}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageDelay(ILandroid/os/Handler;I)V

    goto/16 :goto_0

    .line 1603
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$1400(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/PlayerHandler;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/htc/videowidget/videoview/PlayerHandler;->isIdle()Z

    move-result v31

    if-nez v31, :cond_2

    .line 1604
    const-string v31, "HtcVideoFgm"

    const-string v32, "GETPOSITION: can\'t get current position to avoid ANR"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1617
    .end local v13           #isSeeking:Z
    .end local v27           #state:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v18

    .line 1618
    .local v18, playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v18, :cond_0

    .line 1620
    invoke-virtual/range {v18 .. v18}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getDuration()I

    move-result v8

    .line 1621
    .local v8, duration:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$300(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    move-result-object v31

    if-eqz v31, :cond_0

    .line 1622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$300(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    move-result-object v31

    const/16 v32, 0x385

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v0, v1, v8}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->updateSeekBar(II)V

    goto/16 :goto_0

    .line 1628
    .end local v8           #duration:I
    .end local v18           #playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 1629
    .local v3, bundle:Landroid/os/Bundle;
    const-string v31, "int"

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1630
    .local v4, code:I
    const/16 v31, 0xa

    move/from16 v0, v31

    if-ne v4, v0, :cond_5

    .line 1631
    const-string v31, "HtcVideoFgm"

    const-string v32, "MEDIAUPDATE: EVENT_PLAY"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #calls: Lcom/htc/videowidget/videoview/HtcVideoFgm;->ui_mediaplayer_play()V
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$1500(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V

    .line 1679
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    #calls: Lcom/htc/videowidget/videoview/HtcVideoFgm;->callbackApp(Landroid/os/Message;)V
    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$2300(Lcom/htc/videowidget/videoview/HtcVideoFgm;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1633
    :cond_5
    const/16 v31, 0xb

    move/from16 v0, v31

    if-ne v4, v0, :cond_6

    .line 1634
    const-string v31, "HtcVideoFgm"

    const-string v32, "MEDIAUPDATE: EVENT_PAUSE"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #calls: Lcom/htc/videowidget/videoview/HtcVideoFgm;->ui_mediaplayer_pause()V
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$1600(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V

    goto :goto_2

    .line 1637
    :cond_6
    const/16 v31, 0xd

    move/from16 v0, v31

    if-ne v4, v0, :cond_7

    .line 1638
    const-string v31, "HtcVideoFgm"

    const-string v32, "MEDIAUPDATE: EVENT_CLOSE"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #calls: Lcom/htc/videowidget/videoview/HtcVideoFgm;->ui_mediaplayer_close()V
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$1700(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V

    goto :goto_2

    .line 1641
    :cond_7
    if-nez v4, :cond_8

    .line 1643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->isDefaultController:Z
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$200(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Z

    move-result v31

    if-eqz v31, :cond_4

    .line 1644
    const-string v31, "int2"

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 1645
    .local v17, percentage:I
    const/16 v31, 0x12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v32, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;
    invoke-static/range {v32 .. v32}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$000(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    move-result-object v32

    move/from16 v0, v31

    move/from16 v1, v17

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithInt(IILandroid/os/Handler;)V

    goto :goto_2

    .line 1647
    .end local v17           #percentage:I
    :cond_8
    const/16 v31, 0x2

    move/from16 v0, v31

    if-ne v4, v0, :cond_9

    .line 1648
    const-string v31, "HtcVideoFgm"

    const-string v32, "MEDIAUPDATE: EVENT_ERROR"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #calls: Lcom/htc/videowidget/videoview/HtcVideoFgm;->ui_mediaplayer_error()V
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$1800(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V

    goto :goto_2

    .line 1651
    :cond_9
    const/16 v31, 0x6

    move/from16 v0, v31

    if-ne v4, v0, :cond_a

    .line 1652
    const-string v31, "HtcVideoFgm"

    const-string v32, "MEDIAUPDATE: EVENT_VIDEO_SIZE"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    invoke-direct/range {p0 .. p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v31

    if-eqz v31, :cond_4

    .line 1655
    const/16 v31, 0xb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v32, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mDisplayMode:I
    invoke-static/range {v32 .. v32}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$100(Lcom/htc/videowidget/videoview/HtcVideoFgm;)I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v33, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;
    invoke-static/range {v33 .. v33}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$000(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    move-result-object v33

    invoke-static/range {v31 .. v33}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithInt(IILandroid/os/Handler;)V

    goto/16 :goto_2

    .line 1657
    :cond_a
    const/16 v31, 0x4

    move/from16 v0, v31

    if-ne v4, v0, :cond_b

    .line 1658
    const-string v31, "HtcVideoFgm"

    const-string v32, "MEDIAUPDATE: EVENT_PREPAREDE"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #calls: Lcom/htc/videowidget/videoview/HtcVideoFgm;->ui_mediaplayer_prepared()V
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$1900(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V

    goto/16 :goto_2

    .line 1661
    :cond_b
    const/16 v31, 0x1

    move/from16 v0, v31

    if-ne v4, v0, :cond_c

    .line 1662
    const-string v31, "HtcVideoFgm"

    const-string v32, "MEDIAUPDATE: EVENT_COMPLETION"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #calls: Lcom/htc/videowidget/videoview/HtcVideoFgm;->ui_mediaplayer_completion()V
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$2000(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V

    goto/16 :goto_2

    .line 1665
    :cond_c
    const/16 v31, 0x5

    move/from16 v0, v31

    if-ne v4, v0, :cond_d

    .line 1666
    const-string v31, "HtcVideoFgm"

    const-string v32, "MEDIAUPDATE: EVENT_SEEK_COMPLETION"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    #calls: Lcom/htc/videowidget/videoview/HtcVideoFgm;->ui_mediaplayer_seek_completion(Landroid/os/Bundle;)V
    invoke-static {v0, v3}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$2100(Lcom/htc/videowidget/videoview/HtcVideoFgm;Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 1669
    :cond_d
    const/16 v31, 0x3

    move/from16 v0, v31

    if-ne v4, v0, :cond_e

    .line 1670
    const-string v31, "HtcVideoFgm"

    const-string v32, "MEDIAUPDATE: EVENT_INFO"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    #calls: Lcom/htc/videowidget/videoview/HtcVideoFgm;->ui_mediaplayer_info(Landroid/os/Bundle;)V
    invoke-static {v0, v3}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$2200(Lcom/htc/videowidget/videoview/HtcVideoFgm;Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 1672
    :cond_e
    const/16 v31, 0x16

    move/from16 v0, v31

    if-ne v4, v0, :cond_f

    .line 1673
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/LOG;->isDebug()Z

    move-result v31

    if-eqz v31, :cond_4

    const-string v31, "HtcVideoFgm"

    const-string v32, "MEDIAUPDATE: EVENT_UPDATE_BEATS_INDICATOR"

    invoke-static/range {v31 .. v32}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1675
    :cond_f
    const-string v31, "HtcVideoFgm"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "MEDIAUPDATE: code="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1684
    .end local v3           #bundle:Landroid/os/Bundle;
    .end local v4           #code:I
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v31

    if-eqz v31, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mProgressView:Landroid/view/View;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$2400(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/view/View;

    move-result-object v31

    if-eqz v31, :cond_0

    .line 1686
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v31

    const-string v32, "boolean"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 1688
    .local v14, isShow:Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v31

    const-string v32, "str"

    invoke-virtual/range {v31 .. v32}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1690
    .local v28, text:Ljava/lang/String;
    const-string v31, "HtcVideoFgm"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "UI_ACTION_WAITINGCURSOR: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    if-eqz v14, :cond_10

    .line 1693
    const/16 v31, 0x24

    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v33, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;
    invoke-static/range {v33 .. v33}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$000(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    move-result-object v33

    invoke-static/range {v31 .. v33}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithBoolean(IZLandroid/os/Handler;)V

    .line 1694
    const-string v31, "HtcVideoFgm"

    const-string v32, "showProgressView"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mProgressText:Landroid/widget/TextView;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$2500(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/widget/TextView;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mProgressView:Landroid/view/View;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$2400(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/view/View;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->setVisibility(I)V

    .line 1697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mProgressView:Landroid/view/View;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$2400(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/view/View;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_0

    .line 1699
    :cond_10
    const-string v31, "HtcVideoFgm"

    const-string v32, "hideProgressView"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mProgressView:Landroid/view/View;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$2400(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/view/View;

    move-result-object v31

    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->setVisibility(I)V

    .line 1701
    const/16 v31, 0x24

    const/16 v32, 0x64

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v34, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;
    invoke-static/range {v34 .. v34}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$000(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    move-result-object v34

    invoke-static/range {v31 .. v34}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithIntBoolean(IIZLandroid/os/Handler;)V

    .line 1702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getState()I

    move-result v31

    const/16 v32, 0x4

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getState()I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getState()I

    move-result v31

    const/16 v32, 0x6

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    .line 1703
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    const-string v32, "hideProgressView"

    #calls: Lcom/htc/videowidget/videoview/HtcVideoFgm;->refreshCenterBtn(Ljava/lang/String;)V
    invoke-static/range {v31 .. v32}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$2600(Lcom/htc/videowidget/videoview/HtcVideoFgm;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1710
    .end local v14           #isShow:Z
    .end local v28           #text:Ljava/lang/String;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mIsSeekbarDraging:Z
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$2700(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Z

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_12

    .line 1712
    const-string v31, "HtcVideoFgm"

    const-string v32, "ignore UI_ACTION_PLAY_BTN, because seeking"

    invoke-static/range {v31 .. v32}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1715
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v31

    if-eqz v31, :cond_0

    .line 1717
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v31

    const-string v32, "boolean"

    invoke-virtual/range {v31 .. v32}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 1718
    .local v12, isPlaying:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$300(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->setPlayButtonIcon(Z)V

    .line 1720
    invoke-direct/range {p0 .. p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v18

    .line 1721
    .restart local v18       #playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isStreaming()Z

    move-result v31

    if-nez v31, :cond_0

    .line 1723
    invoke-virtual/range {v18 .. v18}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getVideoSpeed()I

    move-result v19

    .line 1725
    .local v19, playspeed:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$300(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->updateSpeedButtonIcon(IZ)V

    goto/16 :goto_0

    .line 1732
    .end local v12           #isPlaying:Z
    .end local v18           #playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    .end local v19           #playspeed:I
    :pswitch_7
    invoke-direct/range {p0 .. p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v27

    .line 1733
    .restart local v27       #state:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v27, :cond_0

    .line 1734
    invoke-virtual/range {v27 .. v27}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isStreaming()Z

    move-result v31

    if-eqz v31, :cond_0

    .line 1735
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v31

    if-eqz v31, :cond_0

    .line 1737
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v31

    const-string v32, "int"

    invoke-virtual/range {v31 .. v32}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 1738
    .local v16, percent:I
    invoke-virtual/range {v27 .. v27}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getDuration()I

    move-result v8

    .line 1740
    .restart local v8       #duration:I
    invoke-virtual/range {v27 .. v27}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getProtocol()I

    move-result v31

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_13

    .line 1744
    div-int/lit8 v31, v8, 0x64

    mul-int v20, v31, v16

    .line 1745
    .restart local v20       #pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$300(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    move-result-object v31

    if-eqz v31, :cond_0

    .line 1747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$300(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    move-result-object v31

    const/16 v32, 0x387

    move-object/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->updateSeekBar(II)V

    goto/16 :goto_0

    .line 1749
    .end local v20           #pos:I
    :cond_13
    invoke-virtual/range {v27 .. v27}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getProtocol()I

    move-result v31

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    .line 1753
    const/16 v21, 0xfa0

    .line 1754
    .local v21, preBufferSize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCurrentPosition()I

    move-result v31

    mul-int/lit8 v32, v16, 0x28

    add-int v20, v31, v32

    .line 1755
    .restart local v20       #pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$300(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    move-result-object v31

    if-eqz v31, :cond_0

    .line 1757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$300(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    move-result-object v31

    const/16 v32, 0x387

    move-object/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->updateSeekBar(II)V

    goto/16 :goto_0

    .line 1764
    .end local v8           #duration:I
    .end local v16           #percent:I
    .end local v20           #pos:I
    .end local v21           #preBufferSize:I
    .end local v27           #state:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    :pswitch_8
    const/4 v14, 0x0

    .line 1765
    .restart local v14       #isShow:Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v31

    if-eqz v31, :cond_14

    .line 1767
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v31

    const-string v32, "boolean"

    invoke-virtual/range {v31 .. v32}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    .line 1770
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSurfaceView:Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$2800(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;

    move-result-object v31

    if-eqz v31, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSurfaceContainer:Landroid/widget/RelativeLayout;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$2900(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/widget/RelativeLayout;

    move-result-object v31

    if-eqz v31, :cond_0

    .line 1771
    invoke-direct/range {p0 .. p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v18

    .line 1772
    .restart local v18       #playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v18, :cond_16

    invoke-virtual/range {v18 .. v18}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getClipType()I

    move-result v31

    if-nez v31, :cond_16

    if-eqz v14, :cond_16

    .line 1773
    const-string v31, "HtcVideoFgm"

    const-string v32, "showAudioIconView"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mAudioIconView:Landroid/widget/ImageView;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$3000(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/widget/ImageView;

    move-result-object v31

    if-nez v31, :cond_15

    .line 1776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v33, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSurfaceContainer:Landroid/widget/RelativeLayout;
    invoke-static/range {v33 .. v33}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$2900(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/widget/RelativeLayout;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/htc/videowidget/videoview/widget/AudioIcon;->create(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/htc/videowidget/videoview/widget/AudioIcon;

    move-result-object v32

    #setter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mAudioIconView:Landroid/widget/ImageView;
    invoke-static/range {v31 .. v32}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$3002(Lcom/htc/videowidget/videoview/HtcVideoFgm;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 1780
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSurfaceView:Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$2800(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1781
    .local v22, r:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v22

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1782
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v22

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSurfaceView:Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$2800(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mAudioIconView:Landroid/widget/ImageView;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$3000(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/widget/ImageView;

    move-result-object v31

    if-eqz v31, :cond_0

    .line 1786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mAudioIconView:Landroid/widget/ImageView;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$3000(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/widget/ImageView;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mAudioIconView:Landroid/widget/ImageView;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$3000(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/widget/ImageView;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/widget/ImageView;->requestLayout()V

    goto/16 :goto_0

    .line 1790
    .end local v22           #r:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_16
    const-string v31, "HtcVideoFgm"

    const-string v32, "hindAudioIconView "

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mAudioIconView:Landroid/widget/ImageView;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$3000(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/widget/ImageView;

    move-result-object v31

    if-eqz v31, :cond_0

    .line 1792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mAudioIconView:Landroid/widget/ImageView;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$3000(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/widget/ImageView;

    move-result-object v31

    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1799
    .end local v14           #isShow:Z
    .end local v18           #playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 1800
    .restart local v3       #bundle:Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 1803
    const-string v31, "boolean"

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 1804
    .restart local v14       #isShow:Z
    if-eqz v14, :cond_1c

    .line 1806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mBtnCenter:Lcom/htc/widget/HtcRimButton;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$3100(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/widget/HtcRimButton;

    move-result-object v31

    if-nez v31, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSurfaceContainer:Landroid/widget/RelativeLayout;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$2900(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/widget/RelativeLayout;

    move-result-object v31

    if-eqz v31, :cond_17

    .line 1808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v33, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSurfaceContainer:Landroid/widget/RelativeLayout;
    invoke-static/range {v33 .. v33}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$2900(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/widget/RelativeLayout;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/htc/videowidget/videoview/widget/CenterButton;->create(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/htc/videowidget/videoview/widget/CenterButton;

    move-result-object v32

    #setter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mBtnCenter:Lcom/htc/widget/HtcRimButton;
    invoke-static/range {v31 .. v32}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$3102(Lcom/htc/videowidget/videoview/HtcVideoFgm;Lcom/htc/widget/HtcRimButton;)Lcom/htc/widget/HtcRimButton;

    .line 1809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mBtnCenter:Lcom/htc/widget/HtcRimButton;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$3100(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/widget/HtcRimButton;

    move-result-object v31

    if-eqz v31, :cond_17

    .line 1811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mBtnCenter:Lcom/htc/widget/HtcRimButton;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$3100(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/widget/HtcRimButton;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v32, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mCenterOnClickListener:Landroid/view/View$OnClickListener;
    invoke-static/range {v32 .. v32}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$3200(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/view/View$OnClickListener;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/htc/widget/HtcRimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1815
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mBtnCenter:Lcom/htc/widget/HtcRimButton;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$3100(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/widget/HtcRimButton;

    move-result-object v31

    if-eqz v31, :cond_0

    .line 1817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mProgressView:Landroid/view/View;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$2400(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/view/View;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getVisibility()I

    move-result v31

    if-nez v31, :cond_18

    .line 1819
    const-string v31, "HtcVideoFgm"

    const-string v32, "ignore, because waiting cursor is showing"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mBtnCenter:Lcom/htc/widget/HtcRimButton;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$3100(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/widget/HtcRimButton;

    move-result-object v31

    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 1824
    :cond_18
    const-string v31, "int"

    const/16 v32, -0x1

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v30

    .line 1825
    .local v30, type:I
    const/16 v24, -0x1

    .line 1826
    .local v24, resId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->getResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v23

    .line 1827
    .local v23, res:Landroid/content/res/Resources;
    if-eqz v23, :cond_1b

    .line 1829
    const/16 v31, 0x1f5

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1a

    .line 1830
    const v24, 0x2080054

    .line 1841
    :cond_19
    :goto_3
    const-string v31, "HtcVideoFgm"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "[UI_ACTION_CENTER_BUTTON] show center button, type = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    const/16 v31, -0x1

    move/from16 v0, v24

    move/from16 v1, v31

    if-eq v0, v1, :cond_0

    .line 1844
    const/16 v31, 0x24

    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v33, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;
    invoke-static/range {v33 .. v33}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$000(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    move-result-object v33

    invoke-static/range {v31 .. v33}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithBoolean(IZLandroid/os/Handler;)V

    .line 1845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mBtnCenter:Lcom/htc/widget/HtcRimButton;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$3100(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/widget/HtcRimButton;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setBackgroundResource(I)V

    .line 1846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mBtnCenter:Lcom/htc/widget/HtcRimButton;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$3100(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/widget/HtcRimButton;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    .line 1847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mBtnCenter:Lcom/htc/widget/HtcRimButton;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$3100(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/widget/HtcRimButton;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/htc/widget/HtcRimButton;->requestLayout()V

    .line 1848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mBtnCenter:Lcom/htc/widget/HtcRimButton;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$3100(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/widget/HtcRimButton;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/htc/widget/HtcRimButton;->invalidate()V

    goto/16 :goto_0

    .line 1831
    :cond_1a
    const/16 v31, 0x1f6

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_19

    .line 1832
    const v24, 0x6020010

    goto :goto_3

    .line 1836
    :cond_1b
    const-string v31, "HtcVideoFgm"

    const-string v32, "can\'t get resource"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mBtnCenter:Lcom/htc/widget/HtcRimButton;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$3100(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/widget/HtcRimButton;

    move-result-object v31

    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 1854
    .end local v23           #res:Landroid/content/res/Resources;
    .end local v24           #resId:I
    .end local v30           #type:I
    :cond_1c
    const-string v31, "HtcVideoFgm"

    const-string v32, "[UI_ACTION_CENTER_BUTTON] hide center button"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mBtnCenter:Lcom/htc/widget/HtcRimButton;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$3100(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/widget/HtcRimButton;

    move-result-object v31

    if-eqz v31, :cond_0

    .line 1857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mBtnCenter:Lcom/htc/widget/HtcRimButton;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$3100(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/widget/HtcRimButton;

    move-result-object v31

    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    .line 1858
    const/16 v31, 0x24

    const/16 v32, 0x64

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v34, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;
    invoke-static/range {v34 .. v34}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$000(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    move-result-object v34

    invoke-static/range {v31 .. v34}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithIntBoolean(IIZLandroid/os/Handler;)V

    goto/16 :goto_0

    .line 1865
    .end local v3           #bundle:Landroid/os/Bundle;
    .end local v14           #isShow:Z
    :pswitch_a
    const/4 v9, 0x0

    .line 1866
    .local v9, flag:Z
    const/16 v30, 0x25c

    .line 1868
    .restart local v30       #type:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v31

    if-eqz v31, :cond_1d

    .line 1870
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v31

    const-string v32, "int"

    const/16 v33, 0x25c

    invoke-virtual/range {v31 .. v33}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v30

    .line 1871
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v31

    const-string v32, "boolean"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 1874
    :cond_1d
    if-eqz v9, :cond_20

    .line 1876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbIsDMP:Z
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$700(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Z

    move-result v31

    if-eqz v31, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbIsSupportByteSeek:Z
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$3300(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Z

    move-result v31

    if-nez v31, :cond_1e

    const/16 v31, 0x25c

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1e

    .line 1879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$300(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    move-result-object v31

    const/16 v32, 0x259

    const/16 v33, 0x1

    invoke-virtual/range {v31 .. v33}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->setControllerGrayOut(IZ)V

    .line 1880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$300(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    move-result-object v31

    const/16 v32, 0x25a

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->setControllerGrayOut(IZ)V

    .line 1881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$300(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    move-result-object v31

    const/16 v32, 0x25b

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->setControllerGrayOut(IZ)V

    goto/16 :goto_0

    .line 1883
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbIsSupportHighSpeedMode:Z
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$3400(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Z

    move-result v31

    if-nez v31, :cond_1f

    const/16 v31, 0x25c

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1f

    .line 1885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$300(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    move-result-object v31

    const/16 v32, 0x259

    const/16 v33, 0x1

    invoke-virtual/range {v31 .. v33}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->setControllerGrayOut(IZ)V

    .line 1886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$300(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    move-result-object v31

    const/16 v32, 0x25a

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->setControllerGrayOut(IZ)V

    .line 1887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$300(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    move-result-object v31

    const/16 v32, 0x25b

    const/16 v33, 0x1

    invoke-virtual/range {v31 .. v33}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->setControllerGrayOut(IZ)V

    goto/16 :goto_0

    .line 1891
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$300(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    move-result-object v31

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v30

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->setControllerGrayOut(IZ)V

    goto/16 :goto_0

    .line 1896
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$300(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v30

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->setControllerGrayOut(IZ)V

    goto/16 :goto_0

    .line 1902
    .end local v9           #flag:Z
    .end local v30           #type:I
    :pswitch_b
    const/4 v9, 0x0

    .line 1903
    .restart local v9       #flag:Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v31

    if-eqz v31, :cond_21

    .line 1905
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v31

    const-string v32, "boolean"

    invoke-virtual/range {v31 .. v32}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 1908
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleOperator:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$500(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    move-result-object v31

    if-eqz v31, :cond_0

    .line 1909
    if-eqz v9, :cond_22

    .line 1910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleOperator:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$500(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->startRenderSubtitle()V

    goto/16 :goto_0

    .line 1912
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleOperator:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$500(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->stopRenderSubtitle()V

    goto/16 :goto_0

    .line 1919
    .end local v9           #flag:Z
    :pswitch_c
    const/4 v9, 0x0

    .line 1920
    .restart local v9       #flag:Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v31

    if-eqz v31, :cond_23

    .line 1922
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v31

    const-string v32, "boolean"

    invoke-virtual/range {v31 .. v32}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 1925
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSurfaceView:Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$2800(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;

    move-result-object v31

    if-eqz v31, :cond_0

    .line 1926
    invoke-direct/range {p0 .. p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v31

    if-eqz v31, :cond_24

    if-nez v9, :cond_24

    .line 1927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSurfaceView:Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$2800(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;

    move-result-object v31

    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;->setVisibility(I)V

    goto/16 :goto_0

    .line 1929
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSurfaceView:Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$2800(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;->setVisibility(I)V

    goto/16 :goto_0

    .line 1937
    .end local v9           #flag:Z
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mForceDisableFunctionTable:Landroid/util/SparseBooleanArray;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$3500(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/util/SparseBooleanArray;

    move-result-object v31

    if-eqz v31, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mForceDisableFunctionTable:Landroid/util/SparseBooleanArray;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$3500(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/util/SparseBooleanArray;

    move-result-object v31

    const/16 v32, 0x3

    invoke-virtual/range {v31 .. v32}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v31

    if-nez v31, :cond_0

    .line 1939
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mCameraButton:Lcom/htc/videowidget/videoview/widget/CameraButton;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$3600(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/CameraButton;

    move-result-object v31

    if-nez v31, :cond_0

    .line 1941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v33, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mViewContainer:Lcom/htc/videowidget/videoview/widget/ViewContainer;
    invoke-static/range {v33 .. v33}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$3700(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/ViewContainer;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v34, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbCaptureButtonOn:Z
    invoke-static/range {v34 .. v34}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$3800(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Z

    move-result v34

    invoke-static/range {v32 .. v34}, Lcom/htc/videowidget/videoview/widget/CameraButton;->create(Landroid/content/Context;Landroid/view/ViewGroup;Z)Lcom/htc/videowidget/videoview/widget/CameraButton;

    move-result-object v32

    #setter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mCameraButton:Lcom/htc/videowidget/videoview/widget/CameraButton;
    invoke-static/range {v31 .. v32}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$3602(Lcom/htc/videowidget/videoview/HtcVideoFgm;Lcom/htc/videowidget/videoview/widget/CameraButton;)Lcom/htc/videowidget/videoview/widget/CameraButton;

    .line 1942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mCameraButton:Lcom/htc/videowidget/videoview/widget/CameraButton;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$3600(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/CameraButton;

    move-result-object v31

    if-eqz v31, :cond_26

    .line 1944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mCameraButton:Lcom/htc/videowidget/videoview/widget/CameraButton;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$3600(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/CameraButton;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->mFragment:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lcom/htc/videowidget/videoview/widget/CameraButton;->setPlayer(Lcom/htc/videowidget/videoview/IHtcPlayerAPI;)V

    .line 1946
    invoke-direct/range {p0 .. p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v18

    .line 1947
    .restart local v18       #playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v18, :cond_26

    .line 1949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mCameraButton:Lcom/htc/videowidget/videoview/widget/CameraButton;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$3600(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/CameraButton;

    move-result-object v31

    invoke-virtual/range {v18 .. v18}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getMetaData()Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/htc/videowidget/videoview/widget/CameraButton;->setMetaData(Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;)V

    .line 1952
    .end local v18           #playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mIsNavigationBarExist:Z
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$3900(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Z

    move-result v31

    if-eqz v31, :cond_0

    .line 1953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v32

    move-object/from16 v0, v32

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v32, v0

    #calls: Lcom/htc/videowidget/videoview/HtcVideoFgm;->setCameraBtnRightMargin(I)V
    invoke-static/range {v31 .. v32}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$4000(Lcom/htc/videowidget/videoview/HtcVideoFgm;I)V

    goto/16 :goto_0

    .line 1959
    :pswitch_e
    invoke-direct/range {p0 .. p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v18

    .line 1960
    .restart local v18       #playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v18, :cond_27

    invoke-virtual/range {v18 .. v18}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isStreaming()Z

    move-result v31

    if-nez v31, :cond_0

    .line 1962
    :cond_27
    const/4 v11, 0x0

    .line 1963
    .local v11, isInitialShowHide:Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v31

    if-eqz v31, :cond_28

    .line 1965
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v31

    const-string v32, "boolean"

    invoke-virtual/range {v31 .. v32}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 1968
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$1400(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/PlayerHandler;

    move-result-object v31

    if-eqz v31, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$300(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    move-result-object v31

    if-eqz v31, :cond_0

    .line 1970
    if-eqz v11, :cond_29

    .line 1972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbIsDMP:Z
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$700(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Z

    move-result v31

    if-nez v31, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$1400(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/PlayerHandler;

    move-result-object v31

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Lcom/htc/videowidget/videoview/PlayerHandler;->checkVideoSupportFunction(I)Z

    move-result v31

    if-eqz v31, :cond_2a

    .line 1974
    const-string v31, "HtcVideoFgm"

    const-string v32, "[SlowMotion] Is slow motion video: true"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    const/16 v32, 0x3e9

    const/16 v33, 0x1

    #calls: Lcom/htc/videowidget/videoview/HtcVideoFgm;->invokeControllerFunction(IZ)V
    invoke-static/range {v31 .. v33}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$800(Lcom/htc/videowidget/videoview/HtcVideoFgm;IZ)V

    .line 1984
    :cond_29
    :goto_4
    const/16 v31, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v32, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;
    invoke-static/range {v32 .. v32}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$1400(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/PlayerHandler;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/htc/videowidget/videoview/PlayerHandler;->getSlowMotionSpeed()I

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_2b

    .line 1986
    const-string v31, "HtcVideoFgm"

    const-string v32, "[SlowMotion] Current slow motion mode: SPEED_1X"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$300(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    move-result-object v31

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->updateSlowMotionState(Z)V

    goto/16 :goto_0

    .line 1979
    :cond_2a
    const-string v31, "HtcVideoFgm"

    const-string v32, "[SlowMotion] Is slow motion video: false"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    const/16 v32, 0x3e9

    const/16 v33, 0x0

    #calls: Lcom/htc/videowidget/videoview/HtcVideoFgm;->invokeControllerFunction(IZ)V
    invoke-static/range {v31 .. v33}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$800(Lcom/htc/videowidget/videoview/HtcVideoFgm;IZ)V

    goto :goto_4

    .line 1991
    :cond_2b
    const-string v31, "HtcVideoFgm"

    const-string v32, "[SlowMotion] Current slow motion mode: SPEED_SLOW"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$300(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->updateSlowMotionState(Z)V

    goto/16 :goto_0

    .line 1999
    .end local v11           #isInitialShowHide:Z
    .end local v18           #playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    :pswitch_f
    const/4 v14, 0x0

    .line 2000
    .restart local v14       #isShow:Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v31

    if-eqz v31, :cond_2c

    .line 2002
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v31

    const-string v32, "boolean"

    invoke-virtual/range {v31 .. v32}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    .line 2004
    :cond_2c
    if-eqz v14, :cond_2d

    .line 2005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #calls: Lcom/htc/videowidget/videoview/HtcVideoFgm;->checkAndshowController()V
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$4100(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V

    goto/16 :goto_0

    .line 2007
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #calls: Lcom/htc/videowidget/videoview/HtcVideoFgm;->checkAndhideController()V
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$4200(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V

    goto/16 :goto_0

    .line 2013
    .end local v14           #isShow:Z
    :pswitch_10
    const-string v31, "AutoTest"

    const-string v32, "[AutoProf](301) [OTHER][HtcVideoFgm][NOTIFICATION_PREPARING_TIMEOUT][START][FINISH]"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    const/16 v31, 0x10

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v33, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;
    invoke-static/range {v33 .. v33}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$000(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    move-result-object v33

    invoke-static/range {v31 .. v33}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithBoolean(IZLandroid/os/Handler;)V

    .line 2015
    const/16 v31, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v32, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;
    invoke-static/range {v32 .. v32}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$1400(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/PlayerHandler;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessage(ILandroid/os/Handler;)V

    .line 2016
    const/16 v31, 0xf

    const/16 v32, 0x2

    const/16 v33, -0x1

    const/16 v34, -0x7cf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v35, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;
    invoke-static/range {v35 .. v35}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$000(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    move-result-object v35

    invoke-static/range {v31 .. v35}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithError(IIIILandroid/os/Handler;)V

    goto/16 :goto_0

    .line 2021
    :pswitch_11
    const/4 v14, 0x0

    .line 2022
    .restart local v14       #isShow:Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v31

    if-eqz v31, :cond_2e

    .line 2024
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v31

    const-string v32, "boolean"

    invoke-virtual/range {v31 .. v32}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    .line 2027
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    #calls: Lcom/htc/videowidget/videoview/HtcVideoFgm;->notifyLockMode(Z)V
    invoke-static {v0, v14}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$4300(Lcom/htc/videowidget/videoview/HtcVideoFgm;Z)V

    .line 2029
    if-eqz v14, :cond_30

    .line 2031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mLockScreenView:Lcom/htc/videowidget/videoview/widget/LockScreenView;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$4400(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/LockScreenView;

    move-result-object v31

    if-nez v31, :cond_2f

    .line 2033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    new-instance v32, Lcom/htc/videowidget/videoview/widget/LockScreenView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v34, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mViewContainer:Lcom/htc/videowidget/videoview/widget/ViewContainer;
    invoke-static/range {v34 .. v34}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$3700(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/ViewContainer;

    move-result-object v34

    invoke-direct/range {v32 .. v34}, Lcom/htc/videowidget/videoview/widget/LockScreenView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    #setter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mLockScreenView:Lcom/htc/videowidget/videoview/widget/LockScreenView;
    invoke-static/range {v31 .. v32}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$4402(Lcom/htc/videowidget/videoview/HtcVideoFgm;Lcom/htc/videowidget/videoview/widget/LockScreenView;)Lcom/htc/videowidget/videoview/widget/LockScreenView;

    .line 2034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mLockScreenView:Lcom/htc/videowidget/videoview/widget/LockScreenView;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$4400(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/LockScreenView;

    move-result-object v31

    if-eqz v31, :cond_2f

    .line 2036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mLockScreenView:Lcom/htc/videowidget/videoview/widget/LockScreenView;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$4400(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/LockScreenView;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v32, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mLockModeListener:Lcom/htc/videowidget/videoview/widget/LockScreenView$OnLockModeChangeListener;
    invoke-static/range {v32 .. v32}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$4500(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/LockScreenView$OnLockModeChangeListener;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->setLockModeListener(Lcom/htc/videowidget/videoview/widget/LockScreenView$OnLockModeChangeListener;)V

    .line 2040
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mLockScreenView:Lcom/htc/videowidget/videoview/widget/LockScreenView;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$4400(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/LockScreenView;

    move-result-object v31

    if-eqz v31, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mLockScreenView:Lcom/htc/videowidget/videoview/widget/LockScreenView;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$4400(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/LockScreenView;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->show()V

    goto/16 :goto_0

    .line 2044
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mLockScreenView:Lcom/htc/videowidget/videoview/widget/LockScreenView;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$4400(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/LockScreenView;

    move-result-object v31

    if-eqz v31, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mLockScreenView:Lcom/htc/videowidget/videoview/widget/LockScreenView;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$4400(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/LockScreenView;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->hide()V

    goto/16 :goto_0

    .line 2051
    .end local v14           #isShow:Z
    :pswitch_12
    invoke-direct/range {p0 .. p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v27

    .line 2052
    .restart local v27       #state:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-nez v27, :cond_31

    .line 2054
    const-string v31, "HtcVideoFgm"

    const-string v32, "UI_ACTION_MEDIAUPDATE_TITLE failed no state"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2057
    :cond_31
    invoke-virtual/range {v27 .. v27}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isStreaming()Z

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_32

    .line 2059
    const-string v31, "HtcVideoFgm"

    const-string v32, "UI_ACTION_MEDIAUPDATE_TITLE not support streming"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2063
    :cond_32
    invoke-virtual/range {v27 .. v27}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getMetaData()Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    move-result-object v31

    if-eqz v31, :cond_33

    invoke-virtual/range {v27 .. v27}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getMetaData()Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;->isReady()Z

    move-result v31

    if-eqz v31, :cond_33

    .line 2065
    invoke-virtual/range {v27 .. v27}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getMetaData()Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;->getTitle()Ljava/lang/String;

    move-result-object v29

    .line 2066
    .local v29, title:Ljava/lang/String;
    const-string v31, "HtcVideoFgm"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "meta title="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mEventListener:Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$4600(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;

    move-result-object v31

    if-eqz v31, :cond_0

    if-eqz v29, :cond_0

    .line 2070
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 2071
    .restart local v3       #bundle:Landroid/os/Bundle;
    const/4 v4, 0x3

    .line 2072
    .restart local v4       #code:I
    const-string v31, "meta_title"

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mEventListener:Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$4600(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-interface {v0, v4, v3}, Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;->onEvent(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2078
    .end local v3           #bundle:Landroid/os/Bundle;
    .end local v4           #code:I
    .end local v29           #title:Ljava/lang/String;
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbIsDMP:Z
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$700(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Z

    move-result v31

    if-nez v31, :cond_0

    .line 2080
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->iMetaRetryCount:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->iMetaRetryCount:I

    .line 2081
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->iMetaRetryCount:I

    move/from16 v31, v0

    const/16 v32, 0xa

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_34

    .line 2082
    const/16 v31, 0x1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v32, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;
    invoke-static/range {v32 .. v32}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$000(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    move-result-object v32

    const/16 v33, 0x1f4

    invoke-static/range {v31 .. v33}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageDelay(ILandroid/os/Handler;I)V

    goto/16 :goto_0

    .line 2084
    :cond_34
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->iMetaRetryCount:I

    goto/16 :goto_0

    .line 2092
    .end local v27           #state:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mEventListener:Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$4600(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;

    move-result-object v31

    if-eqz v31, :cond_0

    .line 2094
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 2095
    .restart local v3       #bundle:Landroid/os/Bundle;
    const/4 v4, 0x7

    .line 2097
    .restart local v4       #code:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mEventListener:Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$4600(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-interface {v0, v4, v3}, Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;->onEvent(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2103
    .end local v3           #bundle:Landroid/os/Bundle;
    .end local v4           #code:I
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mEventListener:Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$4600(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;

    move-result-object v31

    if-eqz v31, :cond_0

    .line 2105
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 2106
    .restart local v3       #bundle:Landroid/os/Bundle;
    const/16 v4, 0x8

    .line 2108
    .restart local v4       #code:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mEventListener:Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$4600(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-interface {v0, v4, v3}, Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;->onEvent(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2114
    .end local v3           #bundle:Landroid/os/Bundle;
    .end local v4           #code:I
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mEventListener:Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$4600(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;

    move-result-object v31

    if-eqz v31, :cond_0

    .line 2116
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 2117
    .restart local v3       #bundle:Landroid/os/Bundle;
    const-string v31, "str"

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2119
    .local v7, dmr:Ljava/lang/String;
    const/16 v4, 0x15

    .line 2120
    .restart local v4       #code:I
    const-string v31, "render"

    move-object/from16 v0, v31

    invoke-virtual {v3, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mEventListener:Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$4600(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-interface {v0, v4, v3}, Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;->onEvent(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2127
    .end local v3           #bundle:Landroid/os/Bundle;
    .end local v4           #code:I
    .end local v7           #dmr:Ljava/lang/String;
    :pswitch_16
    const/16 v20, -0x1

    .line 2128
    .restart local v20       #pos:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v31

    if-eqz v31, :cond_35

    .line 2130
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v31

    const-string v32, "int"

    const/16 v33, -0x1

    invoke-virtual/range {v31 .. v33}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 2132
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$300(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    move-result-object v31

    if-eqz v31, :cond_0

    if-lez v20, :cond_0

    .line 2133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$300(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    move-result-object v31

    const/16 v32, 0x387

    move-object/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->updateSeekBar(II)V

    goto/16 :goto_0

    .line 2138
    .end local v20           #pos:I
    :pswitch_17
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 2139
    .restart local v3       #bundle:Landroid/os/Bundle;
    if-eqz v3, :cond_36

    .line 2141
    const-string v31, "int"

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v25

    .line 2142
    .local v25, retryCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v25

    #calls: Lcom/htc/videowidget/videoview/HtcVideoFgm;->restoreLastPlay(I)V
    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$4700(Lcom/htc/videowidget/videoview/HtcVideoFgm;I)V

    goto/16 :goto_0

    .line 2146
    .end local v25           #retryCount:I
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    #calls: Lcom/htc/videowidget/videoview/HtcVideoFgm;->restoreLastPlay(I)V
    invoke-static/range {v31 .. v32}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$4700(Lcom/htc/videowidget/videoview/HtcVideoFgm;I)V

    goto/16 :goto_0

    .line 2152
    .end local v3           #bundle:Landroid/os/Bundle;
    :pswitch_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mEventListener:Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$4600(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;

    move-result-object v31

    if-eqz v31, :cond_0

    .line 2154
    const/4 v10, 0x0

    .line 2155
    .local v10, isClean:Z
    const/4 v5, 0x0

    .line 2156
    .local v5, delay:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v31

    if-eqz v31, :cond_37

    .line 2158
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v31

    const-string v32, "boolean"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 2159
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v31

    const-string v32, "int"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 2161
    :cond_37
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2162
    .restart local v3       #bundle:Landroid/os/Bundle;
    const-string v31, "clean_frame"

    move-object/from16 v0, v31

    invoke-virtual {v3, v0, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2163
    const-string v31, "clean_frame_delay"

    move-object/from16 v0, v31

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2164
    const/16 v4, 0xf

    .line 2165
    .restart local v4       #code:I
    if-nez v10, :cond_3e

    .line 2167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mLockScreenView:Lcom/htc/videowidget/videoview/widget/LockScreenView;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$4400(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/LockScreenView;

    move-result-object v31

    if-eqz v31, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mLockScreenView:Lcom/htc/videowidget/videoview/widget/LockScreenView;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$4400(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/LockScreenView;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->isShown()Z

    move-result v31

    if-nez v31, :cond_3c

    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleView:Landroid/widget/TextView;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$600(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/widget/TextView;

    move-result-object v31

    if-eqz v31, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleView:Landroid/widget/TextView;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$600(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/widget/TextView;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/widget/TextView;->isShown()Z

    move-result v31

    if-nez v31, :cond_3c

    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$300(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    move-result-object v31

    if-eqz v31, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$300(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->isShowing()Z

    move-result v31

    if-nez v31, :cond_3c

    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mProgressView:Landroid/view/View;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$2400(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/view/View;

    move-result-object v31

    if-eqz v31, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mProgressView:Landroid/view/View;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$2400(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/view/View;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getVisibility()I

    move-result v31

    if-eqz v31, :cond_3c

    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mBtnCenter:Lcom/htc/widget/HtcRimButton;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$3100(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/widget/HtcRimButton;

    move-result-object v31

    if-eqz v31, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mBtnCenter:Lcom/htc/widget/HtcRimButton;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$3100(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/widget/HtcRimButton;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/htc/widget/HtcRimButton;->getVisibility()I

    move-result v31

    if-nez v31, :cond_3d

    .line 2173
    :cond_3c
    const-string v31, "HtcVideoFgm"

    const-string v32, "UI_ACTION_CLEAN_FRAME_BUFFER: Still have showing view don\'t hide the window backgorund."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2177
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mEventListener:Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$4600(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-interface {v0, v4, v3}, Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;->onEvent(ILandroid/os/Bundle;)V

    .line 2178
    const-string v31, "HtcVideoFgm"

    const-string v32, "UI_ACTION_CLEAN_FRAME_BUFFER: HIDE WINDOW BACKGROUND."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2183
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mEventListener:Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$4600(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-interface {v0, v4, v3}, Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;->onEvent(ILandroid/os/Bundle;)V

    .line 2184
    const-string v31, "HtcVideoFgm"

    const-string v32, "UI_ACTION_CLEAN_FRAME_BUFFER: CLEAN FRAME BUFFER."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2191
    .end local v3           #bundle:Landroid/os/Bundle;
    .end local v4           #code:I
    .end local v5           #delay:I
    .end local v10           #isClean:Z
    :pswitch_19
    const/4 v15, 0x1

    .line 2193
    .local v15, isVisible:Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v31

    if-eqz v31, :cond_3f

    .line 2195
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v31

    const-string v32, "boolean"

    const/16 v33, 0x1

    invoke-virtual/range {v31 .. v33}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 2198
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$300(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->setCurrentTimeTextVisibility(Z)V

    goto/16 :goto_0

    .line 2203
    .end local v15           #isVisible:Z
    :pswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mMenu:Landroid/view/Menu;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$4800(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/view/Menu;

    move-result-object v31

    if-eqz v31, :cond_0

    .line 2205
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 2206
    .restart local v3       #bundle:Landroid/os/Bundle;
    invoke-direct/range {p0 .. p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v18

    .line 2207
    .restart local v18       #playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v18, :cond_40

    invoke-virtual/range {v18 .. v18}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isStreaming()Z

    move-result v31

    if-eqz v31, :cond_40

    invoke-virtual/range {v18 .. v18}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getClipType()I

    move-result v31

    if-nez v31, :cond_40

    .line 2209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v32, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mMenu:Landroid/view/Menu;
    invoke-static/range {v32 .. v32}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$4800(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/view/Menu;

    move-result-object v32

    const v33, 0xff02

    const/16 v34, 0x0

    invoke-virtual/range {v31 .. v34}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->updateActionbarBtn(Landroid/view/Menu;IZ)V

    .line 2210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    const/16 v32, 0xd

    #calls: Lcom/htc/videowidget/videoview/HtcVideoFgm;->forceDisableControllerFunction(I)V
    invoke-static/range {v31 .. v32}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$4900(Lcom/htc/videowidget/videoview/HtcVideoFgm;I)V

    .line 2211
    const-string v31, "clip_type"

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2227
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mEventListener:Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$4600(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;

    move-result-object v31

    if-eqz v31, :cond_0

    .line 2229
    const/16 v4, 0x18

    .line 2230
    .restart local v4       #code:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mEventListener:Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;
    invoke-static/range {v31 .. v31}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$4600(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-interface {v0, v4, v3}, Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;->onEvent(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2213
    .end local v4           #code:I
    :cond_40
    if-eqz v18, :cond_41

    invoke-virtual/range {v18 .. v18}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isStreaming()Z

    move-result v31

    if-eqz v31, :cond_41

    invoke-virtual/range {v18 .. v18}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getClipType()I

    move-result v31

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_41

    .line 2215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v32, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mMenu:Landroid/view/Menu;
    invoke-static/range {v32 .. v32}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$4800(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/view/Menu;

    move-result-object v32

    const v33, 0xff01

    const/16 v34, 0x0

    invoke-virtual/range {v31 .. v34}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->updateActionbarBtn(Landroid/view/Menu;IZ)V

    .line 2216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    const/16 v32, 0xf

    #calls: Lcom/htc/videowidget/videoview/HtcVideoFgm;->forceDisableControllerFunction(I)V
    invoke-static/range {v31 .. v32}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$4900(Lcom/htc/videowidget/videoview/HtcVideoFgm;I)V

    .line 2217
    const-string v31, "clip_type"

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_5

    .line 2221
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v32, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mMenu:Landroid/view/Menu;
    invoke-static/range {v32 .. v32}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$4800(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/view/Menu;

    move-result-object v32

    const v33, 0xff02

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->updateActionbarBtn(Landroid/view/Menu;IZ)V

    .line 2222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v32, v0

    #getter for: Lcom/htc/videowidget/videoview/HtcVideoFgm;->mMenu:Landroid/view/Menu;
    invoke-static/range {v32 .. v32}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$4800(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/view/Menu;

    move-result-object v32

    const v33, 0xff01

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->updateActionbarBtn(Landroid/view/Menu;IZ)V

    .line 2223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    const/16 v32, 0xe

    #calls: Lcom/htc/videowidget/videoview/HtcVideoFgm;->forceDisableControllerFunction(I)V
    invoke-static/range {v31 .. v32}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$4900(Lcom/htc/videowidget/videoview/HtcVideoFgm;I)V

    .line 2224
    const-string v31, "clip_type"

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 2237
    .end local v3           #bundle:Landroid/os/Bundle;
    .end local v18           #playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    :pswitch_1b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 2238
    .restart local v3       #bundle:Landroid/os/Bundle;
    if-eqz v3, :cond_42

    const-string v31, "str"

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 2239
    .local v26, s:Ljava/lang/String;
    :goto_6
    if-eqz v26, :cond_0

    .line 2240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v26

    #calls: Lcom/htc/videowidget/videoview/HtcVideoFgm;->sendToast(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$5000(Lcom/htc/videowidget/videoview/HtcVideoFgm;Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2238
    .end local v26           #s:Ljava/lang/String;
    :cond_42
    const/16 v26, 0x0

    goto :goto_6

    .line 1571
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
    .end packed-switch
.end method
