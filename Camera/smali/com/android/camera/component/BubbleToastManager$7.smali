.class Lcom/android/camera/component/BubbleToastManager$7;
.super Ljava/lang/Object;
.source "BubbleToastManager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/BubbleToastManager;->onUIRotationChanged(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/BubbleToastManager;

.field final synthetic val$rotation:Lcom/android/camera/rotate/UIRotation;


# direct methods
.method constructor <init>(Lcom/android/camera/component/BubbleToastManager;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/BubbleToastManager$7;->this$0:Lcom/android/camera/component/BubbleToastManager;

    iput-object p2, p0, Lcom/android/camera/component/BubbleToastManager$7;->val$rotation:Lcom/android/camera/rotate/UIRotation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/BubbleToastManager$7;->this$0:Lcom/android/camera/component/BubbleToastManager;

    #getter for: Lcom/android/camera/component/BubbleToastManager;->m_CurrentHandle:Lcom/android/camera/Handle;
    invoke-static {v0}, Lcom/android/camera/component/BubbleToastManager;->access$200(Lcom/android/camera/component/BubbleToastManager;)Lcom/android/camera/Handle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/BubbleToastManager$7;->this$0:Lcom/android/camera/component/BubbleToastManager;

    iget-object v1, p0, Lcom/android/camera/component/BubbleToastManager$7;->val$rotation:Lcom/android/camera/rotate/UIRotation;

    #calls: Lcom/android/camera/component/BubbleToastManager;->updateBubbleToastRotation(Lcom/android/camera/rotate/UIRotation;)V
    invoke-static {v0, v1}, Lcom/android/camera/component/BubbleToastManager;->access$300(Lcom/android/camera/component/BubbleToastManager;Lcom/android/camera/rotate/UIRotation;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/BubbleToastManager$7;->this$0:Lcom/android/camera/component/BubbleToastManager;

    #getter for: Lcom/android/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/camera/component/BubbleToastManager;->access$400(Lcom/android/camera/component/BubbleToastManager;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

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
