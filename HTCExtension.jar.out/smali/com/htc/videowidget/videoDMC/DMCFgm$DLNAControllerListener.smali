.class Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;
.super Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
.source "DMCFgm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoDMC/DMCFgm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DLNAControllerListener"
.end annotation


# instance fields
.field private mControllerInfoLockObject:Ljava/lang/Object;

.field private mPlayStateLockObject:Ljava/lang/Object;

.field final synthetic this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;


# direct methods
.method private constructor <init>(Lcom/htc/videowidget/videoDMC/DMCFgm;)V
    .locals 1
    .parameter

    .prologue
    .line 3264
    iput-object p1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    invoke-direct {p0}, Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;-><init>()V

    .line 3272
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->mPlayStateLockObject:Ljava/lang/Object;

    .line 3348
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->mControllerInfoLockObject:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/videowidget/videoDMC/DMCFgm;Lcom/htc/videowidget/videoDMC/DMCFgm$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3264
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;-><init>(Lcom/htc/videowidget/videoDMC/DMCFgm;)V

    return-void
.end method


# virtual methods
.method public onControllerInfoupdated(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)V
    .locals 6
    .parameter "ctlInfo"

    .prologue
    .line 3352
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->mControllerInfoLockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 3354
    :try_start_0
    const-string v1, "DMCFgm"

    const-string v3, "[HtcDLNAControllerStatusListener] onControllerInfoupdated, ------------------ Data -------------------------"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3355
    const-string v1, "DMCFgm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcDLNAControllerStatusListener] onControllerInfoupdated, Thread ID             = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3356
    const-string v1, "DMCFgm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcDLNAControllerStatusListener] onControllerInfoupdated, Current Duration      = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->miDuration:I
    invoke-static {v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$1100(Lcom/htc/videowidget/videoDMC/DMCFgm;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3357
    const-string v1, "DMCFgm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcDLNAControllerStatusListener] onControllerInfoupdated, Info    Duration      = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getDuration()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3358
    const-string v1, "DMCFgm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcDLNAControllerStatusListener] onControllerInfoupdated, Current RendererName  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererName:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$2900(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3359
    const-string v1, "DMCFgm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcDLNAControllerStatusListener] onControllerInfoupdated, Info    RendererName  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getRendererName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3360
    const-string v1, "DMCFgm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcDLNAControllerStatusListener] onControllerInfoupdated, Current ThumbNailPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msThumbNailPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$5500(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3361
    const-string v1, "DMCFgm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcDLNAControllerStatusListener] onControllerInfoupdated, Info    ThumbNailPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getThumbnailPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3362
    const-string v1, "DMCFgm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcDLNAControllerStatusListener] onControllerInfoupdated, Current VideoTitle    = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msVideoTitle:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$5600(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3363
    const-string v1, "DMCFgm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcDLNAControllerStatusListener] onControllerInfoupdated, Info    VideoTitle    = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3364
    const-string v1, "DMCFgm"

    const-string v3, "[HtcDLNAControllerStatusListener] onControllerInfoupdated, -------------------------------------------------"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3366
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mbDataSourceIsSetOrTheSame:Z
    invoke-static {v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3300(Lcom/htc/videowidget/videoDMC/DMCFgm;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3368
    const-string v1, "DMCFgm"

    const-string v3, "[HtcDLNAControllerStatusListener] onControllerInfoupdated, DataSource has not been set Successfully. Didn\'t Update Anything."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3369
    monitor-exit v2

    .line 3427
    :goto_0
    return-void

    .line 3371
    :cond_0
    const-string v1, "DMCFgm"

    const-string v3, "[HtcDLNAControllerStatusListener] onControllerInfoupdated, ++++++++++++++++++ Updated Data +++++++++++++++++"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3372
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->miDuration:I
    invoke-static {v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$1100(Lcom/htc/videowidget/videoDMC/DMCFgm;)I

    move-result v1

    invoke-virtual {p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getDuration()I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 3374
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    invoke-virtual {p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getDuration()I

    move-result v3

    #setter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->miDuration:I
    invoke-static {v1, v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$1102(Lcom/htc/videowidget/videoDMC/DMCFgm;I)I

    .line 3375
    const-string v1, "DMCFgm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcDLNAControllerStatusListener] onControllerInfoupdated, Duration      = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->miDuration:I
    invoke-static {v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$1100(Lcom/htc/videowidget/videoDMC/DMCFgm;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3377
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3378
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xe

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3379
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->miDuration:I
    invoke-static {v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$1100(Lcom/htc/videowidget/videoDMC/DMCFgm;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3381
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;
    invoke-static {v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$1300(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 3383
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;
    invoke-static {v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$1300(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    move-result-object v1

    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->removeMessages(I)V

    .line 3384
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;
    invoke-static {v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$1300(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3389
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getRendererName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getRendererName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getRendererName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererName:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$2900(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3391
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    invoke-virtual {p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getRendererName()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererName:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$2902(Lcom/htc/videowidget/videoDMC/DMCFgm;Ljava/lang/String;)Ljava/lang/String;

    .line 3392
    const-string v1, "DMCFgm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcDLNAControllerStatusListener] onControllerInfoupdated, RendererName  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererName:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$2900(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3394
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    iget-object v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;
    invoke-static {v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$900(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getState()I

    move-result v3

    #setter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManagerState:I
    invoke-static {v1, v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3102(Lcom/htc/videowidget/videoDMC/DMCFgm;I)I

    .line 3395
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3396
    .restart local v0       #msg:Landroid/os/Message;
    const/16 v1, 0xd

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3397
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManagerState:I
    invoke-static {v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3100(Lcom/htc/videowidget/videoDMC/DMCFgm;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3399
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;
    invoke-static {v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$1300(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 3401
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;
    invoke-static {v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$1300(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    move-result-object v1

    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->removeMessages(I)V

    .line 3402
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;
    invoke-static {v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$1300(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3408
    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mbThumbNailFromActivity:Z
    invoke-static {v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$5700(Lcom/htc/videowidget/videoDMC/DMCFgm;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getThumbnailPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getThumbnailPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getThumbnailPath()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msThumbNailPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$5500(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3410
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    invoke-virtual {p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getThumbnailPath()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msThumbNailPath:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$5502(Lcom/htc/videowidget/videoDMC/DMCFgm;Ljava/lang/String;)Ljava/lang/String;

    .line 3411
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msThumbNailPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$5500(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    #setter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mThumbNailUri:Landroid/net/Uri;
    invoke-static {v1, v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$5802(Lcom/htc/videowidget/videoDMC/DMCFgm;Landroid/net/Uri;)Landroid/net/Uri;

    .line 3412
    const-string v1, "DMCFgm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcDLNAControllerStatusListener] onControllerInfoupdated, ThumbNailPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msThumbNailPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$5500(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3413
    const-string v1, "DMCFgm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcDLNAControllerStatusListener] onControllerInfoupdated, ThumbNailUri  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mThumbNailUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$5800(Lcom/htc/videowidget/videoDMC/DMCFgm;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3415
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #calls: Lcom/htc/videowidget/videoDMC/DMCFgm;->requestUpdateThumbNail()V
    invoke-static {v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$5900(Lcom/htc/videowidget/videoDMC/DMCFgm;)V

    .line 3418
    :cond_3
    invoke-virtual {p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msVideoTitle:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$5600(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 3420
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    invoke-virtual {p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msVideoTitle:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$5602(Lcom/htc/videowidget/videoDMC/DMCFgm;Ljava/lang/String;)Ljava/lang/String;

    .line 3421
    const-string v1, "DMCFgm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcDLNAControllerStatusListener] onControllerInfoupdated, VideoTitle    = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msVideoTitle:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$5600(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3423
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    iget-object v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msVideoTitle:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$5600(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    #calls: Lcom/htc/videowidget/videoDMC/DMCFgm;->callBackActionBarTexts(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v3, v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$6000(Lcom/htc/videowidget/videoDMC/DMCFgm;Ljava/lang/String;Ljava/lang/String;)V

    .line 3425
    :cond_4
    const-string v1, "DMCFgm"

    const-string v3, "[HtcDLNAControllerStatusListener] onControllerInfoupdated, +++++++++++++++++++++++++++++++++++++++++++++++++"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3426
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3387
    .restart local v0       #msg:Landroid/os/Message;
    :cond_5
    :try_start_1
    const-string v1, "DMCFgm"

    const-string v3, "[HtcDLNAControllerStatusListener] onControllerInfoupdated, Fail Update Duration! mUIHandler is Null"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3405
    :cond_6
    const-string v1, "DMCFgm"

    const-string v3, "[HtcDLNAControllerStatusListener] onControllerInfoupdated, Fail Update RendererName! mUIHandler is Null"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2
.end method

.method public onError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .parameter "rendererID"
    .parameter "errorCode"
    .parameter "errorReason"

    .prologue
    const/16 v3, 0x11

    .line 3441
    invoke-super {p0, p1, p2, p3}, Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;->onError(Ljava/lang/String;ILjava/lang/String;)V

    .line 3442
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #setter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mErrorCode:I
    invoke-static {v1, p2}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$6102(Lcom/htc/videowidget/videoDMC/DMCFgm;I)I

    .line 3443
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #setter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msErrorReason:Ljava/lang/String;
    invoke-static {v1, p3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$6202(Lcom/htc/videowidget/videoDMC/DMCFgm;Ljava/lang/String;)Ljava/lang/String;

    .line 3445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAControllerStatusListener] onError: rendererID ="

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

    move-result-object v0

    .line 3446
    .local v0, errorWords:Ljava/lang/String;
    const-string v1, "DMCFgm"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3448
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;
    invoke-static {v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$1300(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->removeMessages(I)V

    .line 3449
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;
    invoke-static {v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$1300(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->sendEmptyMessage(I)Z

    .line 3450
    return-void
.end method

.method public onPlayStateChanged(I)V
    .locals 7
    .parameter "playState"

    .prologue
    const/4 v6, 0x1

    .line 3276
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->mPlayStateLockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 3278
    :try_start_0
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #setter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManagerState:I
    invoke-static {v1, p1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3102(Lcom/htc/videowidget/videoDMC/DMCFgm;I)I

    .line 3280
    const-string v1, "DMCFgm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcDLNAControllerStatusListener] onPlayStateChanged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    iget-object v5, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManagerState:I
    invoke-static {v5}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3100(Lcom/htc/videowidget/videoDMC/DMCFgm;)I

    move-result v5

    #calls: Lcom/htc/videowidget/videoDMC/DMCFgm;->getStateName(I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3200(Lcom/htc/videowidget/videoDMC/DMCFgm;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3282
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mbWaitForReset:Z
    invoke-static {v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$4700(Lcom/htc/videowidget/videoDMC/DMCFgm;)Z

    move-result v1

    if-ne v1, v6, :cond_0

    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManagerState:I
    invoke-static {v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3100(Lcom/htc/videowidget/videoDMC/DMCFgm;)I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 3287
    const-string v1, "DMCFgm"

    const-string v3, "[HtcDLNAControllerStatusListener] onPlayStateChanged, In STATE_STOP, Request RESET"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3288
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    const/4 v3, 0x0

    #setter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mbWaitForReset:Z
    invoke-static {v1, v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$4702(Lcom/htc/videowidget/videoDMC/DMCFgm;Z)Z

    .line 3290
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;
    invoke-static {v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$900(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->reset()I

    .line 3297
    :cond_0
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mbNewRendererIsRequestedAsStateNotIDLE:Z
    invoke-static {v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$4800(Lcom/htc/videowidget/videoDMC/DMCFgm;)Z

    move-result v1

    if-ne v1, v6, :cond_1

    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManagerState:I
    invoke-static {v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3100(Lcom/htc/videowidget/videoDMC/DMCFgm;)I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_1

    .line 3299
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msNewRendererID:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$4900(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 3301
    const-string v1, "DMCFgm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcDLNAControllerStatusListener] onPlayStateChanged, In STATE_IDLE, Set New RendererID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msNewRendererID:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$4900(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3302
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    const/4 v3, 0x0

    #setter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mbNewRendererIsRequestedAsStateNotIDLE:Z
    invoke-static {v1, v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$4802(Lcom/htc/videowidget/videoDMC/DMCFgm;Z)Z

    .line 3303
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #calls: Lcom/htc/videowidget/videoDMC/DMCFgm;->handleNewRendererID()V
    invoke-static {v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$5000(Lcom/htc/videowidget/videoDMC/DMCFgm;)V

    .line 3314
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mbWaitForFirstPlayAfterDataSourceIsSet:Z
    invoke-static {v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$5100(Lcom/htc/videowidget/videoDMC/DMCFgm;)Z

    move-result v1

    if-ne v1, v6, :cond_3

    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mbWaitForFirstPlayAfterFirstSeek:Z
    invoke-static {v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$5200(Lcom/htc/videowidget/videoDMC/DMCFgm;)Z

    move-result v1

    if-ne v1, v6, :cond_3

    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManagerState:I
    invoke-static {v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3100(Lcom/htc/videowidget/videoDMC/DMCFgm;)I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 3317
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msOutPuttingFilePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$5300(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3319
    const-string v1, "DMCFgm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcDLNAControllerStatusListener] onPlayStateChanged, Store output FilePath Pref. Before play command! FilePath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msOutPuttingFilePath:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$5300(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3320
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    invoke-virtual {v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msOutPuttingFilePath:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$5300(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/videowidget/videoDMC/DMCUtil;->saveDLNAPref(Landroid/content/Context;Ljava/lang/String;)V

    .line 3322
    :cond_2
    const-string v1, "DMCFgm"

    const-string v3, "[HtcDLNAControllerStatusListener] onPlayStateChanged, mDLNAManager.play(), After First seek\'s STATE_STOP Call back."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3323
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;
    invoke-static {v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$900(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->play()I

    .line 3325
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    const/4 v3, 0x1

    #setter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mbFirstPlayIsRequested:Z
    invoke-static {v1, v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$5402(Lcom/htc/videowidget/videoDMC/DMCFgm;Z)Z

    .line 3326
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    const/4 v3, 0x0

    #setter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mbWaitForFirstPlayAfterDataSourceIsSet:Z
    invoke-static {v1, v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$5102(Lcom/htc/videowidget/videoDMC/DMCFgm;Z)Z

    .line 3327
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    const/4 v3, 0x0

    #setter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mbWaitForFirstPlayAfterFirstSeek:Z
    invoke-static {v1, v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$5202(Lcom/htc/videowidget/videoDMC/DMCFgm;Z)Z

    .line 3330
    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3331
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xd

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3332
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManagerState:I
    invoke-static {v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3100(Lcom/htc/videowidget/videoDMC/DMCFgm;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3334
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;
    invoke-static {v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$1300(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 3335
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;
    invoke-static {v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$1300(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3338
    :goto_1
    monitor-exit v2

    .line 3339
    return-void

    .line 3307
    .end local v0           #msg:Landroid/os/Message;
    :cond_4
    const-string v1, "DMCFgm"

    const-string v3, "[HtcDLNAControllerStatusListener] onPlayStateChanged, Do Nothing! In STATE_IDLE, But New RendererID is NULL"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3338
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3337
    .restart local v0       #msg:Landroid/os/Message;
    :cond_5
    :try_start_1
    const-string v1, "DMCFgm"

    const-string v3, "[HtcDLNAControllerStatusListener] onPlayStateChanged, Update DLNA\'s STATE UI Fail!, mUIHandler is NULL!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onPlaybackCompleted(I)V
    .locals 6
    .parameter "dlnaServiceManagerState"

    .prologue
    const/16 v5, 0x12

    .line 3461
    invoke-super {p0, p1}, Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;->onPlaybackCompleted(I)V

    .line 3462
    const-string v2, "DMCFgm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcDLNAControllerStatusListener] onPlaybackCompleted, dlnaServiceManagerState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3467
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    const/4 v3, 0x0

    #setter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->miCurrentPosition:I
    invoke-static {v2, v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$1002(Lcom/htc/videowidget/videoDMC/DMCFgm;I)I

    .line 3468
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;
    invoke-static {v2}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$1300(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->removeMessages(I)V

    .line 3469
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;
    invoke-static {v2}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$1300(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->sendEmptyMessage(I)Z

    .line 3471
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    iget-object v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->miCurrentPosition:I
    invoke-static {v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$1000(Lcom/htc/videowidget/videoDMC/DMCFgm;)I

    move-result v3

    #calls: Lcom/htc/videowidget/videoDMC/DMCFgm;->saveTheLastPosition(I)V
    invoke-static {v2, v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$6300(Lcom/htc/videowidget/videoDMC/DMCFgm;I)V

    .line 3473
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mEventListener:Lcom/htc/videowidget/videoDMC/IHtcDMCAPI$OnEventListener;
    invoke-static {v2}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$2100(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/videowidget/videoDMC/IHtcDMCAPI$OnEventListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3475
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3476
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v1, 0x1

    .line 3477
    .local v1, code:I
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mEventListener:Lcom/htc/videowidget/videoDMC/IHtcDMCAPI$OnEventListener;
    invoke-static {v2}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$2100(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/videowidget/videoDMC/IHtcDMCAPI$OnEventListener;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/htc/videowidget/videoDMC/IHtcDMCAPI$OnEventListener;->onEvent(ILandroid/os/Bundle;)V

    .line 3478
    const-string v2, "DMCFgm"

    const-string v3, "Send EVENT BACK = EVENT_COMPLETION"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3480
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #code:I
    :cond_0
    return-void
.end method

.method public onResponse(Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .parameter "rendererID"
    .parameter "responseID"
    .parameter "responseReason"

    .prologue
    const/4 v7, 0x0

    const/16 v6, -0x142

    const/16 v5, -0x143

    const/16 v4, 0x11

    const/4 v3, 0x1

    .line 3494
    invoke-super {p0, p1, p2, p3}, Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;->onResponse(Ljava/lang/String;ILjava/lang/String;)V

    .line 3495
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAControllerStatusListener] onResponse, rendererID="

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

    .line 3497
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;
    invoke-static {v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$900(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3499
    const-string v0, "DMCFgm"

    const-string v1, "[HtcDLNAControllerStatusListener] onResponse, mDLNAManager is Null. Do Nothing! No Request Play or First seek"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3576
    :goto_0
    return-void

    .line 3509
    :cond_0
    const/16 v0, -0x141

    if-ne p2, v0, :cond_4

    .line 3511
    const-string v0, "DMCFgm"

    const-string v1, "[HtcDLNAControllerStatusListener] onResponse, Set DataSource to DLNAManager Success!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3513
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #setter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mbDataSourceIsSetOrTheSame:Z
    invoke-static {v0, v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3302(Lcom/htc/videowidget/videoDMC/DMCFgm;Z)Z

    .line 3515
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mbWaitForFirstPlayAfterDataSourceIsSet:Z
    invoke-static {v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$5100(Lcom/htc/videowidget/videoDMC/DMCFgm;)Z

    move-result v0

    if-ne v0, v3, :cond_3

    .line 3525
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->miFirstSeekPosition:I
    invoke-static {v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$6400(Lcom/htc/videowidget/videoDMC/DMCFgm;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 3527
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAControllerStatusListener] onResponse, Do First seek, Position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->miFirstSeekPosition:I
    invoke-static {v2}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$6400(Lcom/htc/videowidget/videoDMC/DMCFgm;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3528
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->miFirstSeekPosition:I
    invoke-static {v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$6400(Lcom/htc/videowidget/videoDMC/DMCFgm;)I

    move-result v1

    #calls: Lcom/htc/videowidget/videoDMC/DMCFgm;->seekTo(IZ)V
    invoke-static {v0, v1, v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$2600(Lcom/htc/videowidget/videoDMC/DMCFgm;IZ)V

    .line 3529
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #setter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->miFirstSeekPosition:I
    invoke-static {v0, v7}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$6402(Lcom/htc/videowidget/videoDMC/DMCFgm;I)I

    .line 3530
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #setter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mbWaitForFirstPlayAfterFirstSeek:Z
    invoke-static {v0, v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$5202(Lcom/htc/videowidget/videoDMC/DMCFgm;Z)Z

    goto :goto_0

    .line 3534
    :cond_1
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msOutPuttingFilePath:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$5300(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3536
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAControllerStatusListener] onResponse, Store output FilePath Pref. Before play command! FilePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msOutPuttingFilePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$5300(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3537
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msOutPuttingFilePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$5300(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoDMC/DMCUtil;->saveDLNAPref(Landroid/content/Context;Ljava/lang/String;)V

    .line 3539
    :cond_2
    const-string v0, "DMCFgm"

    const-string v1, "[HtcDLNAControllerStatusListener] onResponse, First seek Position is zero. Request Play Directly, mDLNAManager.play() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3540
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;
    invoke-static {v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$900(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->play()I

    .line 3542
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #setter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mbFirstPlayIsRequested:Z
    invoke-static {v0, v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$5402(Lcom/htc/videowidget/videoDMC/DMCFgm;Z)Z

    .line 3543
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #setter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mbWaitForFirstPlayAfterDataSourceIsSet:Z
    invoke-static {v0, v7}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$5102(Lcom/htc/videowidget/videoDMC/DMCFgm;Z)Z

    goto/16 :goto_0

    .line 3548
    :cond_3
    const-string v0, "DMCFgm"

    const-string v1, "[HtcDLNAControllerStatusListener] onResponse, Set DataSource to DLNAManager Success! But First Play has been Requested. Didn\'t First seek or Play"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3551
    :cond_4
    if-ne p2, v6, :cond_5

    .line 3553
    const-string v0, "DMCFgm"

    const-string v1, "[HtcDLNAControllerStatusListener] onResponse, Set DataSource to DLNAManager Error!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3555
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #setter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mErrorCode:I
    invoke-static {v0, v6}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$6102(Lcom/htc/videowidget/videoDMC/DMCFgm;I)I

    .line 3556
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    const-string v1, "setAVTransportURI Error"

    #setter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msErrorReason:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$6202(Lcom/htc/videowidget/videoDMC/DMCFgm;Ljava/lang/String;)Ljava/lang/String;

    .line 3558
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;
    invoke-static {v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$1300(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->removeMessages(I)V

    .line 3559
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;
    invoke-static {v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$1300(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 3561
    :cond_5
    if-ne p2, v5, :cond_6

    .line 3563
    const-string v0, "DMCFgm"

    const-string v1, "[HtcDLNAControllerStatusListener] onResponse, setAVTransportURI TimeOut!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3565
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #setter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mErrorCode:I
    invoke-static {v0, v5}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$6102(Lcom/htc/videowidget/videoDMC/DMCFgm;I)I

    .line 3566
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    const-string v1, "setAVTransportURI TimeOut"

    #setter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msErrorReason:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$6202(Lcom/htc/videowidget/videoDMC/DMCFgm;Ljava/lang/String;)Ljava/lang/String;

    .line 3568
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;
    invoke-static {v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$1300(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->removeMessages(I)V

    .line 3569
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;
    invoke-static {v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$1300(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 3572
    :cond_6
    const-string v0, "DMCFgm"

    const-string v1, "[HtcDLNAControllerStatusListener] onResponse, UnDefined Response ID"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
