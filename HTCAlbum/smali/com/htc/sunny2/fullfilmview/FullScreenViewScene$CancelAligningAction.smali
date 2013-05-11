.class Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$CancelAligningAction;
.super Lcom/htc/sunnyCore/RenderThreadAction;
.source "FullScreenViewScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelAligningAction"
.end annotation


# instance fields
.field private DELAYED_TIME:J

.field private pushedTime:J

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "host"
    .parameter "name"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$CancelAligningAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    .line 217
    invoke-direct {p0, p2, p3}, Lcom/htc/sunnyCore/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$CancelAligningAction;->DELAYED_TIME:J

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$CancelAligningAction;->pushedTime:J

    .line 219
    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 3
    .parameter "cancelReason"

    .prologue
    .line 244
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$CancelAligningAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #calls: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getLastPanRecord()Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$900(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    move-result-object v0

    .line 245
    .local v0, record:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$CancelAligningAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$CancelAligningAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$300(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginFramePosition:F

    .line 246
    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panFrameDistance:F

    .line 248
    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 5
    .parameter "frameIndex"
    .parameter "timeMillis"

    .prologue
    .line 224
    iget-wide v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$CancelAligningAction;->pushedTime:J

    sub-long v1, p2, v1

    iget-wide v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$CancelAligningAction;->DELAYED_TIME:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 226
    const/4 v1, 0x1

    .line 237
    :goto_0
    return v1

    .line 230
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$CancelAligningAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$500(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$CancelAligningAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$600(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunnyCore/RenderThread;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$CancelAligningAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    const-string v3, "Align"

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$CancelAligningAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$500(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onAlignEndIRT()V

    .line 235
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$CancelAligningAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecords:[Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$700(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)[Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$CancelAligningAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecordIndexToAdd:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$800(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v2

    aget-object v0, v1, v2

    .line 236
    .local v0, record:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$CancelAligningAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$CancelAligningAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$300(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginFramePosition:F

    .line 237
    const/4 v1, 0x0

    goto :goto_0
.end method
