.class Lcom/android/camera/component/ThumbnailUI$1;
.super Ljava/lang/Object;
.source "ThumbnailUI.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/ThumbnailUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ThumbnailUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ThumbnailUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ThumbnailUI$1;->this$0:Lcom/android/camera/component/ThumbnailUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/high16 v2, 0x3f80

    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI$1;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #getter for: Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;
    invoke-static {v1}, Lcom/android/camera/component/ThumbnailUI;->access$000(Lcom/android/camera/component/ThumbnailUI;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI$1;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #getter for: Lcom/android/camera/component/ThumbnailUI;->m_SecondThumbAnimatorListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v1}, Lcom/android/camera/component/ThumbnailUI;->access$100(Lcom/android/camera/component/ThumbnailUI;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI$1;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #setter for: Lcom/android/camera/component/ThumbnailUI;->m_CurrentThumbAnimator:Landroid/view/ViewPropertyAnimator;
    invoke-static {v1, v0}, Lcom/android/camera/component/ThumbnailUI;->access$202(Lcom/android/camera/component/ThumbnailUI;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
