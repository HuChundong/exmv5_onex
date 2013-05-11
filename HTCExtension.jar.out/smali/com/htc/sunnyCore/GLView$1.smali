.class Lcom/htc/sunnyCore/GLView$1;
.super Lcom/htc/sunnyCore/RenderThreadInterruption;
.source "GLView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunnyCore/GLView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunnyCore/GLView;


# direct methods
.method constructor <init>(Lcom/htc/sunnyCore/GLView;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 289
    iput-object p1, p0, Lcom/htc/sunnyCore/GLView$1;->this$0:Lcom/htc/sunnyCore/GLView;

    invoke-direct {p0, p2, p3}, Lcom/htc/sunnyCore/RenderThreadInterruption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 300
    return-void
.end method

.method public onProcessInterruptionIRT()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView$1;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->surfaceListener:Lcom/htc/sunnyCore/GLView$SurfaceListener;
    invoke-static {v0}, Lcom/htc/sunnyCore/GLView;->access$000(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/GLView$SurfaceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView$1;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->surfaceListener:Lcom/htc/sunnyCore/GLView$SurfaceListener;
    invoke-static {v0}, Lcom/htc/sunnyCore/GLView;->access$000(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/GLView$SurfaceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunnyCore/GLView$SurfaceListener;->onSurfaceDestroyedIRT()V

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView$1;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->renderThread:Lcom/htc/sunnyCore/RenderThread;
    invoke-static {v0}, Lcom/htc/sunnyCore/GLView;->access$100(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunnyCore/GLView$1;->this$0:Lcom/htc/sunnyCore/GLView;

    iget v1, v1, Lcom/htc/sunnyCore/GLView;->sunnyWindow:I

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->unregisterRenderWindowIRT(I)Z

    .line 298
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView$1;->this$0:Lcom/htc/sunnyCore/GLView;

    iget v0, v0, Lcom/htc/sunnyCore/GLView;->sunnyWindow:I

    invoke-static {v0}, Lcom/htc/sunnyCore/SunnyCore;->Window_UnbindSurface(I)V

    .line 299
    return-void
.end method
