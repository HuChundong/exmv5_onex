.class Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanGestureCompensator;
.super Lcom/htc/sunnyCore/RenderThreadEvent;
.source "FullScreenViewScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanGestureCompensator"
.end annotation


# instance fields
.field private compensateDistance:I

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "host"
    .parameter "name"

    .prologue
    .line 256
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanGestureCompensator;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    .line 257
    invoke-direct {p0, p2, p3}, Lcom/htc/sunnyCore/RenderThreadEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanGestureCompensator;->compensateDistance:I

    .line 258
    return-void
.end method

.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "host"
    .parameter "name"
    .parameter "distance"

    .prologue
    .line 262
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanGestureCompensator;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    iput p4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanGestureCompensator;->compensateDistance:I

    .line 264
    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 277
    return-void
.end method

.method public onProcessEventIRT()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanGestureCompensator;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanGestureCompensator;->compensateDistance:I

    int-to-float v1, v1

    #calls: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->doFramesOffset(F)V
    invoke-static {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1000(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;F)V

    .line 270
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanGestureCompensator;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->doCenterAlign()V

    .line 271
    return-void
.end method
