.class Lcom/android/camera/widget/ReviewAnimationView$1;
.super Ljava/lang/Object;
.source "ReviewAnimationView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/ReviewAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/ReviewAnimationView;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/ReviewAnimationView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/ReviewAnimationView$1;->this$0:Lcom/android/camera/widget/ReviewAnimationView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    const-string v0, "ReviewAnimationView"

    const-string v1, "surfaceChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 7

    const-string v0, "ReviewAnimationView"

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/widget/ReviewAnimationView$1;->this$0:Lcom/android/camera/widget/ReviewAnimationView;

    #getter for: Lcom/android/camera/widget/ReviewAnimationView;->m_AnimationThread:Lcom/android/camera/widget/ReviewAnimationThread;
    invoke-static {v0}, Lcom/android/camera/widget/ReviewAnimationView;->access$000(Lcom/android/camera/widget/ReviewAnimationView;)Lcom/android/camera/widget/ReviewAnimationThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/ReviewAnimationView$1;->this$0:Lcom/android/camera/widget/ReviewAnimationView;

    #getter for: Lcom/android/camera/widget/ReviewAnimationView;->m_AnimationThread:Lcom/android/camera/widget/ReviewAnimationThread;
    invoke-static {v0}, Lcom/android/camera/widget/ReviewAnimationView;->access$000(Lcom/android/camera/widget/ReviewAnimationView;)Lcom/android/camera/widget/ReviewAnimationThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/widget/ReviewAnimationThread;->exit()V

    :cond_0
    iget-object v6, p0, Lcom/android/camera/widget/ReviewAnimationView$1;->this$0:Lcom/android/camera/widget/ReviewAnimationView;

    new-instance v0, Lcom/android/camera/widget/ReviewAnimationThread;

    iget-object v1, p0, Lcom/android/camera/widget/ReviewAnimationView$1;->this$0:Lcom/android/camera/widget/ReviewAnimationView;

    invoke-virtual {v1}, Lcom/android/camera/widget/ReviewAnimationView;->getWidth()I

    move-result v2

    iget-object v1, p0, Lcom/android/camera/widget/ReviewAnimationView$1;->this$0:Lcom/android/camera/widget/ReviewAnimationView;

    invoke-virtual {v1}, Lcom/android/camera/widget/ReviewAnimationView;->getHeight()I

    move-result v3

    iget-object v1, p0, Lcom/android/camera/widget/ReviewAnimationView$1;->this$0:Lcom/android/camera/widget/ReviewAnimationView;

    #getter for: Lcom/android/camera/widget/ReviewAnimationView;->m_TargetCenterPoint:Landroid/graphics/Point;
    invoke-static {v1}, Lcom/android/camera/widget/ReviewAnimationView;->access$100(Lcom/android/camera/widget/ReviewAnimationView;)Landroid/graphics/Point;

    move-result-object v1

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/camera/widget/ReviewAnimationView$1;->this$0:Lcom/android/camera/widget/ReviewAnimationView;

    #getter for: Lcom/android/camera/widget/ReviewAnimationView;->m_TargetCenterPoint:Landroid/graphics/Point;
    invoke-static {v1}, Lcom/android/camera/widget/ReviewAnimationView;->access$100(Lcom/android/camera/widget/ReviewAnimationView;)Landroid/graphics/Point;

    move-result-object v1

    iget v5, v1, Landroid/graphics/Point;->y:I

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/widget/ReviewAnimationThread;-><init>(Landroid/view/SurfaceHolder;IIII)V

    #setter for: Lcom/android/camera/widget/ReviewAnimationView;->m_AnimationThread:Lcom/android/camera/widget/ReviewAnimationThread;
    invoke-static {v6, v0}, Lcom/android/camera/widget/ReviewAnimationView;->access$002(Lcom/android/camera/widget/ReviewAnimationView;Lcom/android/camera/widget/ReviewAnimationThread;)Lcom/android/camera/widget/ReviewAnimationThread;

    iget-object v0, p0, Lcom/android/camera/widget/ReviewAnimationView$1;->this$0:Lcom/android/camera/widget/ReviewAnimationView;

    #getter for: Lcom/android/camera/widget/ReviewAnimationView;->m_AnimationThread:Lcom/android/camera/widget/ReviewAnimationThread;
    invoke-static {v0}, Lcom/android/camera/widget/ReviewAnimationView;->access$000(Lcom/android/camera/widget/ReviewAnimationView;)Lcom/android/camera/widget/ReviewAnimationThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/widget/ReviewAnimationThread;->start()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string v0, "ReviewAnimationView"

    const-string v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/widget/ReviewAnimationView$1;->this$0:Lcom/android/camera/widget/ReviewAnimationView;

    #getter for: Lcom/android/camera/widget/ReviewAnimationView;->m_AnimationThread:Lcom/android/camera/widget/ReviewAnimationThread;
    invoke-static {v0}, Lcom/android/camera/widget/ReviewAnimationView;->access$000(Lcom/android/camera/widget/ReviewAnimationView;)Lcom/android/camera/widget/ReviewAnimationThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/ReviewAnimationView$1;->this$0:Lcom/android/camera/widget/ReviewAnimationView;

    #getter for: Lcom/android/camera/widget/ReviewAnimationView;->m_AnimationThread:Lcom/android/camera/widget/ReviewAnimationThread;
    invoke-static {v0}, Lcom/android/camera/widget/ReviewAnimationView;->access$000(Lcom/android/camera/widget/ReviewAnimationView;)Lcom/android/camera/widget/ReviewAnimationThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/widget/ReviewAnimationThread;->exit()V

    iget-object v0, p0, Lcom/android/camera/widget/ReviewAnimationView$1;->this$0:Lcom/android/camera/widget/ReviewAnimationView;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/widget/ReviewAnimationView;->m_AnimationThread:Lcom/android/camera/widget/ReviewAnimationThread;
    invoke-static {v0, v1}, Lcom/android/camera/widget/ReviewAnimationView;->access$002(Lcom/android/camera/widget/ReviewAnimationView;Lcom/android/camera/widget/ReviewAnimationThread;)Lcom/android/camera/widget/ReviewAnimationThread;

    :cond_0
    return-void
.end method
