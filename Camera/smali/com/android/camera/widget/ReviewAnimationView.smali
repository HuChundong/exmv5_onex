.class public final Lcom/android/camera/widget/ReviewAnimationView;
.super Landroid/view/SurfaceView;
.source "ReviewAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/ReviewAnimationView$AnimationCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ReviewAnimationView"


# instance fields
.field private m_AnimationThread:Lcom/android/camera/widget/ReviewAnimationThread;

.field private final m_TargetCenterPoint:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    const v2, 0x7f0b007a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const v3, 0x7f0b007b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/android/camera/widget/ReviewAnimationView;->m_TargetCenterPoint:Landroid/graphics/Point;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/ReviewAnimationView;->setZOrderMediaOverlay(Z)V

    invoke-virtual {p0}, Lcom/android/camera/widget/ReviewAnimationView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    new-instance v2, Lcom/android/camera/widget/ReviewAnimationView$1;

    invoke-direct {v2, p0}, Lcom/android/camera/widget/ReviewAnimationView$1;-><init>(Lcom/android/camera/widget/ReviewAnimationView;)V

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/widget/ReviewAnimationView;)Lcom/android/camera/widget/ReviewAnimationThread;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/ReviewAnimationView;->m_AnimationThread:Lcom/android/camera/widget/ReviewAnimationThread;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/widget/ReviewAnimationView;Lcom/android/camera/widget/ReviewAnimationThread;)Lcom/android/camera/widget/ReviewAnimationThread;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/ReviewAnimationView;->m_AnimationThread:Lcom/android/camera/widget/ReviewAnimationThread;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/widget/ReviewAnimationView;)Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/ReviewAnimationView;->m_TargetCenterPoint:Landroid/graphics/Point;

    return-object v0
.end method


# virtual methods
.method public setReviewImage(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/widget/ReviewAnimationView;->m_AnimationThread:Lcom/android/camera/widget/ReviewAnimationThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/ReviewAnimationView;->m_AnimationThread:Lcom/android/camera/widget/ReviewAnimationThread;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/ReviewAnimationThread;->setReviewImage(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "ReviewAnimationView"

    const-string v1, "No animation thread to set review image"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startReviewAnimation(D)I
    .locals 2

    iget-object v0, p0, Lcom/android/camera/widget/ReviewAnimationView;->m_AnimationThread:Lcom/android/camera/widget/ReviewAnimationThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/ReviewAnimationView;->m_AnimationThread:Lcom/android/camera/widget/ReviewAnimationThread;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/widget/ReviewAnimationThread;->startReviewAnimation(D)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "ReviewAnimationView"

    const-string v1, "No animation thread to start review animation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopReviewAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/widget/ReviewAnimationView;->m_AnimationThread:Lcom/android/camera/widget/ReviewAnimationThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/ReviewAnimationView;->m_AnimationThread:Lcom/android/camera/widget/ReviewAnimationThread;

    invoke-virtual {v0}, Lcom/android/camera/widget/ReviewAnimationThread;->stopReviewAnimation()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "ReviewAnimationView"

    const-string v1, "No animation thread to stop review animation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
