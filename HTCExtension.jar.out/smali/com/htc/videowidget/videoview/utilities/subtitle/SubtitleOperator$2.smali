.class Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;
.super Landroid/os/Handler;
.source "SubtitleOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private retMode:I

.field final synthetic this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)V
    .locals 1
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 287
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->retMode:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v7, 0x2

    const/4 v6, -0x1

    const/16 v8, 0x2710

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 290
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 293
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 294
    invoke-virtual {p0, v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->removeMessages(I)V

    .line 295
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 296
    invoke-virtual {p0, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->removeMessages(I)V

    .line 297
    :cond_2
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;
    invoke-static {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$300(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 299
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mPlayNext:Z
    invoke-static {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$400(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 301
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;
    invoke-static {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$300(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->getParseStatus()I

    move-result v4

    if-eq v4, v2, :cond_3

    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;
    invoke-static {v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$300(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->getParseStatus()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_4

    .line 303
    :cond_3
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mThreadHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$600(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mSearchRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$500(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 305
    :cond_4
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;
    invoke-static {v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$300(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->getParseStatus()I

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;
    invoke-static {v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$300(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->getParseStatus()I

    move-result v2

    if-ne v2, v7, :cond_6

    .line 307
    :cond_5
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$700()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[VIDEO SUBTITLE SEARCH] no subtitle file"

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 309
    :cond_6
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;
    invoke-static {v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$300(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->getParseStatus()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 311
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #setter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mPlayNext:Z
    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$402(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;Z)Z

    .line 312
    invoke-virtual {p0, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 313
    const-wide/16 v2, 0x64

    invoke-virtual {p0, p1, v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 314
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$700()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[VIDEO SUBTITLE SEARCH] try again, still searching subtitle or parsing..."

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 319
    :cond_7
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #setter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mPlayNext:Z
    invoke-static {v4, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$402(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;Z)Z

    .line 320
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mSubtitleText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$800(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)Landroid/widget/TextView;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    invoke-virtual {p0, v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 322
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$700()Ljava/lang/String;

    move-result-object v2

    const-string v4, "[VIDEO SUBTITLE SEARCH] play next"

    invoke-static {v2, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mPlayer:Lcom/htc/videowidget/videoview/IHtcPlayerAPI;
    invoke-static {v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$900(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)Lcom/htc/videowidget/videoview/IHtcPlayerAPI;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/videowidget/videoview/IHtcPlayerAPI;->getCurrentPosition()I

    move-result v2

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mAdjTime:I
    invoke-static {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$1000(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)I

    move-result v4

    sub-int/2addr v2, v4

    if-ge v2, v8, :cond_8

    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mFirstTimePlay:Z
    invoke-static {v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$1100(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 326
    :cond_8
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$700()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Adjust render subtitle"

    invoke-static {v2, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mPlayer:Lcom/htc/videowidget/videoview/IHtcPlayerAPI;
    invoke-static {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$900(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)Lcom/htc/videowidget/videoview/IHtcPlayerAPI;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/videowidget/videoview/IHtcPlayerAPI;->getCurrentPosition()I

    move-result v4

    #setter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mAdjTime:I
    invoke-static {v2, v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$1002(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;I)I

    .line 328
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mCurrentIndex:I
    invoke-static {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$000(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    #calls: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->getStrPos(I)I
    invoke-static {v2, v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$1200(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;I)I

    move-result v2

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mAdjTime:I
    invoke-static {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$1000(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)I

    move-result v4

    sub-int/2addr v2, v4

    int-to-long v4, v2

    invoke-virtual {p0, p1, v4, v5}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 329
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #setter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mFirstTimePlay:Z
    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$1102(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;Z)Z

    .line 335
    :goto_1
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    invoke-static {v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$008(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)I

    goto/16 :goto_0

    .line 333
    :cond_9
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mCurrentIndex:I
    invoke-static {v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$000(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    #calls: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->getStrPos(I)I
    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$1200(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;I)I

    move-result v2

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mCurrentIndex:I
    invoke-static {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$000(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)I

    move-result v4

    #calls: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->getEndPos(I)I
    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$1300(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {p0, p1, v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 340
    :pswitch_1
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mPlayer:Lcom/htc/videowidget/videoview/IHtcPlayerAPI;
    invoke-static {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$900(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)Lcom/htc/videowidget/videoview/IHtcPlayerAPI;

    move-result-object v4

    if-nez v4, :cond_a

    .line 342
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$700()Ljava/lang/String;

    move-result-object v2

    const-string v3, "media player is null"

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 357
    :cond_a
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mPlayer:Lcom/htc/videowidget/videoview/IHtcPlayerAPI;
    invoke-static {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$900(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)Lcom/htc/videowidget/videoview/IHtcPlayerAPI;

    move-result-object v4

    const-string v5, "TAG_VIDEO_SPEED"

    invoke-interface {v4, v5}, Lcom/htc/videowidget/videoview/IHtcPlayerAPI;->getProperty(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 358
    .local v0, b:Landroid/os/Bundle;
    const-string v4, "TAG_VIDEO_SPEED"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->retMode:I

    .line 362
    invoke-virtual {p0, v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 363
    invoke-virtual {p0, v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->removeMessages(I)V

    .line 364
    :cond_b
    invoke-virtual {p0, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 365
    invoke-virtual {p0, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->removeMessages(I)V

    .line 367
    :cond_c
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #setter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mPlayNext:Z
    invoke-static {v4, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$402(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;Z)Z

    .line 369
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mPlayer:Lcom/htc/videowidget/videoview/IHtcPlayerAPI;
    invoke-static {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$900(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)Lcom/htc/videowidget/videoview/IHtcPlayerAPI;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/videowidget/videoview/IHtcPlayerAPI;->getState()I

    move-result v4

    if-ne v4, v7, :cond_d

    move v1, v2

    .line 371
    .local v1, isPlaying:Z
    :goto_2
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mCurrentIndex:I
    invoke-static {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$000(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)I

    move-result v4

    if-ltz v4, :cond_e

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mCurrentIndex:I
    invoke-static {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$000(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #calls: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->getSubtitleSize()I
    invoke-static {v5}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$1400(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)I

    move-result v5

    if-ge v4, v5, :cond_e

    if-eqz v1, :cond_e

    iget v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->retMode:I

    if-eqz v4, :cond_e

    .line 374
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$700()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[VIDEO SUBTITLE PLAY] high speed subtitle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    iget-object v6, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mCurrentIndex:I
    invoke-static {v6}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$000(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)I

    move-result v6

    #calls: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->getSubtitle(I)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$1500(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mSubtitleText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$800(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    iget-object v5, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mCurrentIndex:I
    invoke-static {v5}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$000(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)I

    move-result v5

    #calls: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->getSubtitle(I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$1500(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    invoke-virtual {p0, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 377
    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, p1, v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .end local v1           #isPlaying:Z
    :cond_d
    move v1, v3

    .line 369
    goto :goto_2

    .line 380
    .restart local v1       #isPlaying:Z
    :cond_e
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mCurrentIndex:I
    invoke-static {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$000(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)I

    move-result v4

    if-ltz v4, :cond_10

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mCurrentIndex:I
    invoke-static {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$000(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #calls: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->getSubtitleSize()I
    invoke-static {v5}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$1400(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)I

    move-result v5

    if-ge v4, v5, :cond_10

    if-eqz v1, :cond_10

    .line 382
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$700()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[VIDEO SUBTITLE PLAY] subtitle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    iget-object v7, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mCurrentIndex:I
    invoke-static {v7}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$000(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)I

    move-result v7

    #calls: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->getSubtitle(I)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$1500(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #setter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mPlayNext:Z
    invoke-static {v4, v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$402(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;Z)Z

    .line 384
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mSubtitleText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$800(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    iget-object v5, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mCurrentIndex:I
    invoke-static {v5}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$000(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)I

    move-result v5

    #calls: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->getSubtitle(I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$1500(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    invoke-virtual {p0, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 387
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mPlayer:Lcom/htc/videowidget/videoview/IHtcPlayerAPI;
    invoke-static {v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$900(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)Lcom/htc/videowidget/videoview/IHtcPlayerAPI;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/videowidget/videoview/IHtcPlayerAPI;->getCurrentPosition()I

    move-result v2

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mAdjTime:I
    invoke-static {v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$1000(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)I

    move-result v3

    sub-int/2addr v2, v3

    if-lt v2, v8, :cond_f

    .line 389
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$700()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Adjust render subtitle"

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mPlayer:Lcom/htc/videowidget/videoview/IHtcPlayerAPI;
    invoke-static {v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$900(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)Lcom/htc/videowidget/videoview/IHtcPlayerAPI;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/videowidget/videoview/IHtcPlayerAPI;->getCurrentPosition()I

    move-result v3

    #setter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mAdjTime:I
    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$1002(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;I)I

    .line 391
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mCurrentIndex:I
    invoke-static {v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$000(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)I

    move-result v3

    #calls: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->getEndPos(I)I
    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$1300(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;I)I

    move-result v2

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mAdjTime:I
    invoke-static {v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$1000(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {p0, p1, v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 395
    :cond_f
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mCurrentIndex:I
    invoke-static {v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$000(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)I

    move-result v3

    #calls: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->getEndPos(I)I
    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$1300(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;I)I

    move-result v2

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mCurrentIndex:I
    invoke-static {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$000(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)I

    move-result v4

    #calls: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->getStrPos(I)I
    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$1200(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {p0, p1, v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 399
    :cond_10
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mCurrentIndex:I
    invoke-static {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$000(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #calls: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->getSubtitleSize()I
    invoke-static {v5}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$1400(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)I

    move-result v5

    if-ne v4, v5, :cond_11

    .line 401
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$700()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[VIDEO SUBTITLE PLAY] no more subtitle"

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mSubtitleText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$800(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 405
    :cond_11
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mCurrentIndex:I
    invoke-static {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$000(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)I

    move-result v4

    if-ne v4, v6, :cond_13

    iget v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->retMode:I

    if-nez v4, :cond_13

    .line 407
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$700()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[VIDEO SUBTITLE PLAY] Video start play"

    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mSubtitleText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$800(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)Landroid/widget/TextView;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #setter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mCurrentIndex:I
    invoke-static {v4, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$002(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;I)I

    .line 410
    invoke-virtual {p0, v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 412
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mPlayer:Lcom/htc/videowidget/videoview/IHtcPlayerAPI;
    invoke-static {v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$900(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)Lcom/htc/videowidget/videoview/IHtcPlayerAPI;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/videowidget/videoview/IHtcPlayerAPI;->getCurrentPosition()I

    move-result v2

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mAdjTime:I
    invoke-static {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$1000(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)I

    move-result v4

    sub-int/2addr v2, v4

    if-lt v2, v8, :cond_12

    .line 414
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$700()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Adjust render subtitle"

    invoke-static {v2, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mPlayer:Lcom/htc/videowidget/videoview/IHtcPlayerAPI;
    invoke-static {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$900(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)Lcom/htc/videowidget/videoview/IHtcPlayerAPI;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/videowidget/videoview/IHtcPlayerAPI;->getCurrentPosition()I

    move-result v4

    #setter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mAdjTime:I
    invoke-static {v2, v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$1002(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;I)I

    .line 416
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #calls: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->getStrPos(I)I
    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$1200(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;I)I

    move-result v2

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mAdjTime:I
    invoke-static {v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$1000(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {p0, p1, v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 420
    :cond_12
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #calls: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->getStrPos(I)I
    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$1200(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;I)I

    move-result v2

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mPlayer:Lcom/htc/videowidget/videoview/IHtcPlayerAPI;
    invoke-static {v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$900(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)Lcom/htc/videowidget/videoview/IHtcPlayerAPI;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/videowidget/videoview/IHtcPlayerAPI;->getCurrentPosition()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {p0, p1, v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 424
    :cond_13
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mCurrentIndex:I
    invoke-static {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$000(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)I

    move-result v4

    const/4 v5, -0x3

    if-ne v4, v5, :cond_14

    iget v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->retMode:I

    if-nez v4, :cond_14

    .line 426
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$700()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[VIDEO SUBTITLE PLAY] the closet time index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mNextIndex:I
    invoke-static {v5}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$1600(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0, v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 428
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mNextIndex:I
    invoke-static {v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$1600(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)I

    move-result v3

    #calls: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->getStrPos(I)I
    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$1200(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;I)I

    move-result v2

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mPlayer:Lcom/htc/videowidget/videoview/IHtcPlayerAPI;
    invoke-static {v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$900(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)Lcom/htc/videowidget/videoview/IHtcPlayerAPI;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/videowidget/videoview/IHtcPlayerAPI;->getCurrentPosition()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {p0, p1, v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 429
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mNextIndex:I
    invoke-static {v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$1600(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)I

    move-result v3

    #setter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mCurrentIndex:I
    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$002(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;I)I

    goto/16 :goto_0

    .line 431
    :cond_14
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mCurrentIndex:I
    invoke-static {v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$000(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)I

    move-result v2

    const/4 v4, -0x2

    if-ne v2, v4, :cond_15

    .line 433
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$700()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[VIDEO SUBTITLE PLAY] no subtitle or parse error"

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mSubtitleText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$800(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 438
    :cond_15
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$700()Ljava/lang/String;

    move-result-object v2

    const-string v4, "[VIDEO SUBTITLE PLAY] can\'t find subtitle"

    invoke-static {v2, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mSubtitleText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$800(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)Landroid/widget/TextView;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    invoke-virtual {p0, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 441
    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, p1, v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 290
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
