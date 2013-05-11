.class Lcom/htc/sunnyCore/GLView$1RenderThreadInterruption_BindWindow;
.super Lcom/htc/sunnyCore/RenderThreadInterruption;
.source "GLView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunnyCore/GLView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RenderThreadInterruption_BindWindow"
.end annotation


# instance fields
.field private height:I

.field private surface:Landroid/view/Surface;

.field final synthetic this$0:Lcom/htc/sunnyCore/GLView;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/htc/sunnyCore/GLView;Ljava/lang/Object;Ljava/lang/String;Landroid/view/Surface;II)V
    .locals 2
    .parameter
    .parameter "host"
    .parameter "name"
    .parameter "s"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v1, 0x0

    .line 322
    iput-object p1, p0, Lcom/htc/sunnyCore/GLView$1RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunnyCore/GLView;

    .line 323
    invoke-direct {p0, p2, p3}, Lcom/htc/sunnyCore/RenderThreadInterruption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunnyCore/GLView$1RenderThreadInterruption_BindWindow;->surface:Landroid/view/Surface;

    .line 319
    iput v1, p0, Lcom/htc/sunnyCore/GLView$1RenderThreadInterruption_BindWindow;->width:I

    .line 320
    iput v1, p0, Lcom/htc/sunnyCore/GLView$1RenderThreadInterruption_BindWindow;->height:I

    .line 324
    iput-object p4, p0, Lcom/htc/sunnyCore/GLView$1RenderThreadInterruption_BindWindow;->surface:Landroid/view/Surface;

    .line 325
    iput p5, p0, Lcom/htc/sunnyCore/GLView$1RenderThreadInterruption_BindWindow;->width:I

    .line 326
    iput p6, p0, Lcom/htc/sunnyCore/GLView$1RenderThreadInterruption_BindWindow;->height:I

    .line 327
    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 347
    return-void
.end method

.method public onProcessInterruptionIRT()V
    .locals 5

    .prologue
    .line 330
    iget-object v1, p0, Lcom/htc/sunnyCore/GLView$1RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunnyCore/GLView;

    iget v1, v1, Lcom/htc/sunnyCore/GLView;->sunnyWindow:I

    iget-object v2, p0, Lcom/htc/sunnyCore/GLView$1RenderThreadInterruption_BindWindow;->surface:Landroid/view/Surface;

    iget v3, p0, Lcom/htc/sunnyCore/GLView$1RenderThreadInterruption_BindWindow;->width:I

    iget v4, p0, Lcom/htc/sunnyCore/GLView$1RenderThreadInterruption_BindWindow;->height:I

    invoke-static {v1, v2, v3, v4}, Lcom/htc/sunnyCore/SunnyCore;->Window_BindSurface(ILandroid/view/Surface;II)Z

    .line 331
    iget-object v1, p0, Lcom/htc/sunnyCore/GLView$1RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->renderThread:Lcom/htc/sunnyCore/RenderThread;
    invoke-static {v1}, Lcom/htc/sunnyCore/GLView;->access$100(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/RenderThread;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunnyCore/GLView$1RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunnyCore/GLView;

    iget v2, v2, Lcom/htc/sunnyCore/GLView;->sunnyWindow:I

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/RenderThread;->registerRenderWindowIRT(I)Z

    .line 334
    iget-object v1, p0, Lcom/htc/sunnyCore/GLView$1RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->surfaceWidth:I
    invoke-static {v1}, Lcom/htc/sunnyCore/GLView;->access$200(Lcom/htc/sunnyCore/GLView;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunnyCore/GLView$1RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->surfaceHeight:I
    invoke-static {v1}, Lcom/htc/sunnyCore/GLView;->access$300(Lcom/htc/sunnyCore/GLView;)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 336
    .local v0, isFirstBind:Z
    :goto_0
    iget-object v1, p0, Lcom/htc/sunnyCore/GLView$1RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunnyCore/GLView;

    iget v2, p0, Lcom/htc/sunnyCore/GLView$1RenderThreadInterruption_BindWindow;->width:I

    #setter for: Lcom/htc/sunnyCore/GLView;->surfaceWidth:I
    invoke-static {v1, v2}, Lcom/htc/sunnyCore/GLView;->access$202(Lcom/htc/sunnyCore/GLView;I)I

    .line 337
    iget-object v1, p0, Lcom/htc/sunnyCore/GLView$1RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunnyCore/GLView;

    iget v2, p0, Lcom/htc/sunnyCore/GLView$1RenderThreadInterruption_BindWindow;->height:I

    #setter for: Lcom/htc/sunnyCore/GLView;->surfaceHeight:I
    invoke-static {v1, v2}, Lcom/htc/sunnyCore/GLView;->access$302(Lcom/htc/sunnyCore/GLView;I)I

    .line 339
    iget-object v1, p0, Lcom/htc/sunnyCore/GLView$1RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->surfaceListener:Lcom/htc/sunnyCore/GLView$SurfaceListener;
    invoke-static {v1}, Lcom/htc/sunnyCore/GLView;->access$000(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/GLView$SurfaceListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 341
    if-eqz v0, :cond_2

    .line 342
    iget-object v1, p0, Lcom/htc/sunnyCore/GLView$1RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->surfaceListener:Lcom/htc/sunnyCore/GLView$SurfaceListener;
    invoke-static {v1}, Lcom/htc/sunnyCore/GLView;->access$000(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/GLView$SurfaceListener;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunnyCore/GLView$1RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->surfaceWidth:I
    invoke-static {v2}, Lcom/htc/sunnyCore/GLView;->access$200(Lcom/htc/sunnyCore/GLView;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/sunnyCore/GLView$1RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->surfaceHeight:I
    invoke-static {v3}, Lcom/htc/sunnyCore/GLView;->access$300(Lcom/htc/sunnyCore/GLView;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/htc/sunnyCore/GLView$SurfaceListener;->onSurfaceCreatedIRT(II)V

    .line 346
    :cond_0
    :goto_1
    return-void

    .line 334
    .end local v0           #isFirstBind:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 344
    .restart local v0       #isFirstBind:Z
    :cond_2
    iget-object v1, p0, Lcom/htc/sunnyCore/GLView$1RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->surfaceListener:Lcom/htc/sunnyCore/GLView$SurfaceListener;
    invoke-static {v1}, Lcom/htc/sunnyCore/GLView;->access$000(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/GLView$SurfaceListener;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunnyCore/GLView$1RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->surfaceWidth:I
    invoke-static {v2}, Lcom/htc/sunnyCore/GLView;->access$200(Lcom/htc/sunnyCore/GLView;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/sunnyCore/GLView$1RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->surfaceHeight:I
    invoke-static {v3}, Lcom/htc/sunnyCore/GLView;->access$300(Lcom/htc/sunnyCore/GLView;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/htc/sunnyCore/GLView$SurfaceListener;->onSurfaceChangedIRT(II)V

    goto :goto_1
.end method
