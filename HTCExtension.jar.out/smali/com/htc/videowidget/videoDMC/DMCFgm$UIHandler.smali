.class Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;
.super Landroid/os/Handler;
.source "DMCFgm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoDMC/DMCFgm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;


# direct methods
.method private constructor <init>(Lcom/htc/videowidget/videoDMC/DMCFgm;)V
    .locals 0
    .parameter

    .prologue
    .line 1752
    iput-object p1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/videowidget/videoDMC/DMCFgm;Lcom/htc/videowidget/videoDMC/DMCFgm$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1752
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;-><init>(Lcom/htc/videowidget/videoDMC/DMCFgm;)V

    return-void
.end method

.method private getUIHandlerString(I)Ljava/lang/String;
    .locals 3
    .parameter "s"

    .prologue
    .line 1921
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNDEFINED : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1922
    .local v0, d:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1937
    :goto_0
    return-object v0

    .line 1924
    :pswitch_0
    const-string v0, "UI_RESET_POSITION_DURATION"

    goto :goto_0

    .line 1925
    :pswitch_1
    const-string v0, "UI_UPDATE_THUMBNAIL"

    goto :goto_0

    .line 1926
    :pswitch_2
    const-string v0, "UI_UPDATE_POSITION_TASK"

    goto :goto_0

    .line 1927
    :pswitch_3
    const-string v0, "UI_UPDATE_UI_BY_DLNASTATE"

    goto :goto_0

    .line 1928
    :pswitch_4
    const-string v0, "UI_UPDATE_POSITION"

    goto :goto_0

    .line 1929
    :pswitch_5
    const-string v0, "UI_UPDATE_DURATION"

    goto :goto_0

    .line 1930
    :pswitch_6
    const-string v0, "UI_PLAY_BTN"

    goto :goto_0

    .line 1931
    :pswitch_7
    const-string v0, "UI_CTRLER_ENABLE"

    goto :goto_0

    .line 1932
    :pswitch_8
    const-string v0, "UI_ERROR_DIALOG"

    goto :goto_0

    .line 1933
    :pswitch_9
    const-string v0, "UI_CALLBACK_ACTIONBAR_PRIM:"

    goto :goto_0

    .line 1934
    :pswitch_a
    const-string v0, "UI_CALLBACK_ACTIONBAR_SEC:"

    goto :goto_0

    .line 1935
    :pswitch_b
    const-string v0, "UI_DEFAULT_THUMBNAIL"

    goto :goto_0

    .line 1922
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_4
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0xc

    const/16 v9, 0x385

    const/16 v8, 0x386

    const/4 v7, 0x0

    .line 1757
    const-string v4, "DMCFgm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UIHandler(), "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v6}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->getUIHandlerString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 1917
    :cond_0
    :goto_0
    return-void

    .line 1763
    :pswitch_0
    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;
    invoke-static {v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$600(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1765
    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;
    invoke-static {v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$600(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    move-result-object v4

    invoke-virtual {v4, v8, v7}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->updateSeekBar(II)V

    .line 1766
    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;
    invoke-static {v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$600(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    move-result-object v4

    invoke-virtual {v4, v9, v7}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->updateSeekBar(II)V

    goto :goto_0

    .line 1773
    :pswitch_1
    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #calls: Lcom/htc/videowidget/videoDMC/DMCFgm;->setThumbNail()V
    invoke-static {v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$700(Lcom/htc/videowidget/videoDMC/DMCFgm;)V

    goto :goto_0

    .line 1778
    :pswitch_2
    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #calls: Lcom/htc/videowidget/videoDMC/DMCFgm;->setDefaultThumbNail()V
    invoke-static {v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$800(Lcom/htc/videowidget/videoDMC/DMCFgm;)V

    goto :goto_0

    .line 1784
    :pswitch_3
    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;
    invoke-static {v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$900(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;
    invoke-static {v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$900(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getState()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 1787
    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    iget-object v5, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;
    invoke-static {v5}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$900(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getCurrentPosition()I

    move-result v5

    #setter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->miCurrentPosition:I
    invoke-static {v4, v5}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$1002(Lcom/htc/videowidget/videoDMC/DMCFgm;I)I

    .line 1789
    const-string v4, "DMCFgm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UIHandler(), "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v6}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->getUIHandlerString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", currentPosition = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->miCurrentPosition:I
    invoke-static {v6}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$1000(Lcom/htc/videowidget/videoDMC/DMCFgm;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->miCurrentPosition:I
    invoke-static {v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$1000(Lcom/htc/videowidget/videoDMC/DMCFgm;)I

    move-result v4

    mul-int/lit16 v3, v4, 0x3e8

    .line 1794
    .local v3, iCurrentPosition:I
    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;
    invoke-static {v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$600(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1796
    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;
    invoke-static {v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$600(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    move-result-object v4

    invoke-virtual {v4, v8, v3}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->updateSeekBar(II)V

    .line 1798
    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;
    invoke-static {v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$600(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->miDuration:I
    invoke-static {v5}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$1100(Lcom/htc/videowidget/videoDMC/DMCFgm;)I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    invoke-virtual {v4, v9, v5}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->updateSeekBar(II)V

    .line 1800
    :cond_1
    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #calls: Lcom/htc/videowidget/videoDMC/DMCFgm;->updateSecondaryProgress()V
    invoke-static {v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$1200(Lcom/htc/videowidget/videoDMC/DMCFgm;)V

    .line 1801
    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;
    invoke-static {v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$1300(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->removeMessages(I)V

    .line 1802
    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;
    invoke-static {v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$1300(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    move-result-object v4

    const-wide/16 v5, 0x1f4

    invoke-virtual {v4, v10, v5, v6}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1810
    .end local v3           #iCurrentPosition:I
    :pswitch_4
    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    iget v5, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/htc/videowidget/videoDMC/DMCFgm;->updateUIbyDLNAState(I)V
    invoke-static {v4, v5}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$1400(Lcom/htc/videowidget/videoDMC/DMCFgm;I)V

    goto/16 :goto_0

    .line 1816
    :pswitch_5
    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;
    invoke-static {v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$600(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1818
    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mbTempResetPosition:Z
    invoke-static {v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$1500(Lcom/htc/videowidget/videoDMC/DMCFgm;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 1820
    const-string v4, "DMCFgm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UIHandler(), "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v6}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->getUIHandlerString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Temporarily Reset Position to Zero"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;
    invoke-static {v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$600(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    move-result-object v4

    invoke-virtual {v4, v8, v7}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->updateSeekBar(II)V

    .line 1824
    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #setter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mbTempResetPosition:Z
    invoke-static {v4, v7}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$1502(Lcom/htc/videowidget/videoDMC/DMCFgm;Z)Z

    goto/16 :goto_0

    .line 1828
    :cond_2
    const-string v4, "DMCFgm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UIHandler(), "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v6}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->getUIHandlerString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", miCurrentPosition = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->miCurrentPosition:I
    invoke-static {v6}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$1000(Lcom/htc/videowidget/videoDMC/DMCFgm;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;
    invoke-static {v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$600(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->miCurrentPosition:I
    invoke-static {v5}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$1000(Lcom/htc/videowidget/videoDMC/DMCFgm;)I

    move-result v5

    invoke-virtual {v4, v8, v5}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->updateSeekBar(II)V

    goto/16 :goto_0

    .line 1838
    :pswitch_6
    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;
    invoke-static {v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$600(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1840
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1841
    .local v2, duration:I
    const-string v4, "DMCFgm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UIHandler(), "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v6}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->getUIHandlerString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", duration = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    mul-int/lit16 v2, v2, 0x3e8

    .line 1846
    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;
    invoke-static {v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$600(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    move-result-object v4

    invoke-virtual {v4, v9, v2}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->updateSeekBar(II)V

    goto/16 :goto_0

    .line 1853
    .end local v2           #duration:I
    :pswitch_7
    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;
    invoke-static {v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$600(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1855
    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;
    invoke-static {v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$600(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mbIsPlaying:Z
    invoke-static {v5}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$1600(Lcom/htc/videowidget/videoDMC/DMCFgm;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->setPlayButtonIcon(Z)V

    .line 1858
    :cond_3
    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    iget-object v5, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mbIsPlaying:Z
    invoke-static {v5}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$1600(Lcom/htc/videowidget/videoDMC/DMCFgm;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    #calls: Lcom/htc/videowidget/videoDMC/DMCFgm;->setCenterButtonImage(Ljava/lang/Boolean;)V
    invoke-static {v4, v5}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$1700(Lcom/htc/videowidget/videoDMC/DMCFgm;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 1865
    :pswitch_8
    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;
    invoke-static {v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$600(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1867
    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;
    invoke-static {v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$600(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    move-result-object v4

    const/16 v5, 0x25c

    iget-object v6, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mbIsCtrlerEnable:Z
    invoke-static {v6}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$1800(Lcom/htc/videowidget/videoDMC/DMCFgm;)Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->setControllerGrayOut(IZ)V

    .line 1870
    :cond_4
    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    iget-object v5, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mbIsCtrlerEnable:Z
    invoke-static {v5}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$1800(Lcom/htc/videowidget/videoDMC/DMCFgm;)Z

    move-result v5

    #calls: Lcom/htc/videowidget/videoDMC/DMCFgm;->setCenterButtonEnable(Z)V
    invoke-static {v4, v5}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$1900(Lcom/htc/videowidget/videoDMC/DMCFgm;Z)V

    goto/16 :goto_0

    .line 1877
    :pswitch_9
    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #calls: Lcom/htc/videowidget/videoDMC/DMCFgm;->handleErrorDialogMessage()V
    invoke-static {v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$2000(Lcom/htc/videowidget/videoDMC/DMCFgm;)V

    goto/16 :goto_0

    .line 1886
    :pswitch_a
    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mEventListener:Lcom/htc/videowidget/videoDMC/IHtcDMCAPI$OnEventListener;
    invoke-static {v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$2100(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/videowidget/videoDMC/IHtcDMCAPI$OnEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1888
    const-string v4, "DMCFgm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Send EVENT BACK = EVENT_INFO, ActionBarPrim Text = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msActionBarPrimText:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$2200(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1890
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v1, 0x3

    .line 1891
    .local v1, code:I
    const-string v4, "meta_title"

    iget-object v5, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msActionBarPrimText:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$2200(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1892
    const-string v4, "meta_description"

    invoke-virtual {v0, v4, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1893
    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mEventListener:Lcom/htc/videowidget/videoDMC/IHtcDMCAPI$OnEventListener;
    invoke-static {v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$2100(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/videowidget/videoDMC/IHtcDMCAPI$OnEventListener;

    move-result-object v4

    invoke-interface {v4, v1, v0}, Lcom/htc/videowidget/videoDMC/IHtcDMCAPI$OnEventListener;->onEvent(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1903
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #code:I
    :pswitch_b
    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mEventListener:Lcom/htc/videowidget/videoDMC/IHtcDMCAPI$OnEventListener;
    invoke-static {v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$2100(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/videowidget/videoDMC/IHtcDMCAPI$OnEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1905
    const-string v4, "DMCFgm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Send EVENT BACK = EVENT_INFO, ActionBarSec  Text = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msActionBarSecText:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$2300(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1907
    .restart local v0       #bundle:Landroid/os/Bundle;
    const/4 v1, 0x3

    .line 1908
    .restart local v1       #code:I
    const-string v4, "meta_title"

    invoke-virtual {v0, v4, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1909
    const-string v4, "meta_description"

    iget-object v5, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msActionBarSecText:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$2300(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1910
    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mEventListener:Lcom/htc/videowidget/videoDMC/IHtcDMCAPI$OnEventListener;
    invoke-static {v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$2100(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/videowidget/videoDMC/IHtcDMCAPI$OnEventListener;

    move-result-object v4

    invoke-interface {v4, v1, v0}, Lcom/htc/videowidget/videoDMC/IHtcDMCAPI$OnEventListener;->onEvent(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1759
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_5
        :pswitch_a
        :pswitch_b
        :pswitch_2
    .end packed-switch
.end method
