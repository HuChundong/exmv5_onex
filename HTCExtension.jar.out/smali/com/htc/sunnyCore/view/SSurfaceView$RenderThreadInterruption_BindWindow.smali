.class Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;
.super Lcom/htc/sunnyCore/RenderThreadInterruption;
.source "SSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/view/SSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderThreadInterruption_BindWindow"
.end annotation


# static fields
.field static final INTERRUPTION_NAME:Ljava/lang/String; = "BindWindow"


# instance fields
.field private height:I

.field private isBinded:Z

.field private newHeight:I

.field private newSurface:Landroid/view/Surface;

.field private newWidth:I

.field private surface:Landroid/view/Surface;

.field final synthetic this$0:Lcom/htc/sunnyCore/view/SSurfaceView;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/htc/sunnyCore/view/SSurfaceView;)V
    .locals 1
    .parameter

    .prologue
    .line 1394
    iput-object p1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunnyCore/view/SSurfaceView;

    .line 1395
    const-string v0, "BindWindow"

    invoke-direct {p0, p1, v0}, Lcom/htc/sunnyCore/RenderThreadInterruption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1396
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;->isBinded:Z

    .line 1397
    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 1438
    return-void
.end method

.method public declared-synchronized onProcessInterruptionIRT()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1406
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;->surface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;->newSurface:Landroid/view/Surface;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;->width:I

    iget v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;->newWidth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;->height:I

    iget v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;->newHeight:I

    if-ne v0, v1, :cond_0

    .line 1407
    const-string v0, "SSurfaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind the same Surface with width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    :cond_0
    iget-boolean v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;->isBinded:Z

    if-ne v3, v0, :cond_1

    .line 1411
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunnyCore/view/SSurfaceView;

    iget-object v0, v0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    iget-object v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunnyCore/view/SSurfaceView;

    iget v1, v1, Lcom/htc/sunnyCore/view/SSurfaceView;->mSunnyWindow:I

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->unregisterRenderWindowIRT(I)Z

    .line 1412
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunnyCore/view/SSurfaceView;

    iget v0, v0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSunnyWindow:I

    invoke-static {v0}, Lcom/htc/sunnyCore/SunnyCore;->Window_UnbindSurface(I)V

    .line 1413
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;->isBinded:Z

    .line 1416
    :cond_1
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;->newSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;->newSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1418
    :cond_2
    const-string v0, "SSurfaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newSurface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;->newSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", or newSurface is invalid!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1437
    :goto_0
    monitor-exit p0

    return-void

    .line 1420
    :cond_3
    :try_start_1
    iget-boolean v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;->isBinded:Z

    if-nez v0, :cond_4

    .line 1421
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;->newSurface:Landroid/view/Surface;

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;->surface:Landroid/view/Surface;

    .line 1422
    iget v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;->newWidth:I

    iput v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;->width:I

    .line 1423
    iget v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;->newHeight:I

    iput v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;->height:I

    .line 1425
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunnyCore/view/SSurfaceView;

    iget v0, v0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSunnyWindow:I

    iget-object v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;->surface:Landroid/view/Surface;

    iget v2, p0, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;->width:I

    iget v3, p0, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;->height:I

    invoke-static {v0, v1, v2, v3}, Lcom/htc/sunnyCore/SunnyCore;->Window_BindSurface(ILandroid/view/Surface;II)Z

    .line 1426
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunnyCore/view/SSurfaceView;

    iget-object v0, v0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    iget-object v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunnyCore/view/SSurfaceView;

    iget v1, v1, Lcom/htc/sunnyCore/view/SSurfaceView;->mSunnyWindow:I

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->registerRenderWindowIRT(I)Z

    .line 1428
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunnyCore/view/SSurfaceView;

    iget v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;->width:I

    iget v2, p0, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;->height:I

    #calls: Lcom/htc/sunnyCore/view/SSurfaceView;->onSurfaceChangedIRT(II)V
    invoke-static {v0, v1, v2}, Lcom/htc/sunnyCore/view/SSurfaceView;->access$1700(Lcom/htc/sunnyCore/view/SSurfaceView;II)V

    .line 1430
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;->isBinded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1406
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1435
    :cond_4
    :try_start_2
    const-string v0, "SSurfaceView"

    const-string v1, "newSurface is binded! It is impossible!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized setup(Landroid/view/Surface;II)V
    .locals 1
    .parameter "s"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1400
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;->newSurface:Landroid/view/Surface;

    .line 1401
    iput p2, p0, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;->newWidth:I

    .line 1402
    iput p3, p0, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;->newHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1403
    monitor-exit p0

    return-void

    .line 1400
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
