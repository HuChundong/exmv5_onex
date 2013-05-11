.class Lcom/htc/videowidget/videoDMC/DMCFgm$4;
.super Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;
.source "DMCFgm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoDMC/DMCFgm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private iSeekPosition:I

.field final synthetic this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoDMC/DMCFgm;)V
    .locals 1
    .parameter

    .prologue
    .line 2272
    iput-object p1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$4;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    invoke-direct {p0}, Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;-><init>()V

    .line 2273
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$4;->iSeekPosition:I

    return-void
.end method


# virtual methods
.method public onEvent(ILandroid/os/Bundle;)V
    .locals 5
    .parameter "eventID"
    .parameter "bundle"

    .prologue
    .line 2277
    invoke-static {p1}, Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;->getStringFromEventId(I)Ljava/lang/String;

    move-result-object v0

    .line 2278
    .local v0, eventString:Ljava/lang/String;
    const-string v2, "DMCFgm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ControllerListener]: Footer Bar Event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    packed-switch p1, :pswitch_data_0

    .line 2319
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2282
    :pswitch_1
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$4;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #calls: Lcom/htc/videowidget/videoDMC/DMCFgm;->clickPlayButton()V
    invoke-static {v2}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$000(Lcom/htc/videowidget/videoDMC/DMCFgm;)V

    goto :goto_0

    .line 2286
    :pswitch_2
    const-string v2, "DMCFgm"

    const-string v3, "[ControllerListener]: SeekBar START, STOP Update Position."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$4;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    const-string v3, "CONTORLLER_EVENT_ID_SEEK_START"

    #calls: Lcom/htc/videowidget/videoDMC/DMCFgm;->stopUpdatePositionTask(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$2500(Lcom/htc/videowidget/videoDMC/DMCFgm;Ljava/lang/String;)V

    goto :goto_0

    .line 2292
    :pswitch_3
    const-string v2, "key_int"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$4;->iSeekPosition:I

    .line 2295
    iget v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$4;->iSeekPosition:I

    div-int/lit16 v2, v2, 0x3e8

    iput v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$4;->iSeekPosition:I

    .line 2296
    const-string v2, "DMCFgm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ControllerListener]: SeekBar Dragging Position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$4;->iSeekPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2301
    :pswitch_4
    iget v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$4;->iSeekPosition:I

    if-ltz v2, :cond_0

    .line 2303
    const-string v2, "DMCFgm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ControllerListener]: SeekBar STOP Position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$4;->iSeekPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$4;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    iget v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$4;->iSeekPosition:I

    const/4 v4, 0x0

    #calls: Lcom/htc/videowidget/videoDMC/DMCFgm;->seekTo(IZ)V
    invoke-static {v2, v3, v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$2600(Lcom/htc/videowidget/videoDMC/DMCFgm;IZ)V

    .line 2305
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$4;->iSeekPosition:I

    goto :goto_0

    .line 2311
    :pswitch_5
    if-eqz p2, :cond_0

    .line 2313
    const-string v2, "key_int"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2314
    .local v1, menuID:I
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$4;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #calls: Lcom/htc/videowidget/videoDMC/DMCFgm;->onMoreMenuItemSelected(I)V
    invoke-static {v2, v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$2700(Lcom/htc/videowidget/videoDMC/DMCFgm;I)V

    goto :goto_0

    .line 2279
    :pswitch_data_0
    .packed-switch 0xbb9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
