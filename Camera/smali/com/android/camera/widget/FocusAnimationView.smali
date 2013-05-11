.class public final Lcom/android/camera/widget/FocusAnimationView;
.super Landroid/widget/ImageView;
.source "FocusAnimationView.java"


# instance fields
.field private m_FocusAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private m_FocusFail:I

.field private m_FocusSucess:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/widget/FocusAnimationView;->m_FocusAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const v0, 0x7f02002c

    iput v0, p0, Lcom/android/camera/widget/FocusAnimationView;->m_FocusSucess:I

    const v0, 0x7f020029

    iput v0, p0, Lcom/android/camera/widget/FocusAnimationView;->m_FocusFail:I

    return-void
.end method


# virtual methods
.method public showFocusFail()V
    .locals 1

    iget v0, p0, Lcom/android/camera/widget/FocusAnimationView;->m_FocusFail:I

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/FocusAnimationView;->setImageResource(I)V

    return-void
.end method

.method public showFocusSucess()V
    .locals 1

    iget v0, p0, Lcom/android/camera/widget/FocusAnimationView;->m_FocusSucess:I

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/FocusAnimationView;->setImageResource(I)V

    return-void
.end method

.method public startFocus()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/FocusAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0200a1

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/FocusAnimationView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/android/camera/widget/FocusAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/camera/widget/FocusAnimationView;->m_FocusAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v0, p0, Lcom/android/camera/widget/FocusAnimationView;->m_FocusAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/FocusAnimationView;->m_FocusAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/FocusAnimationView;->m_FocusAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->invalidateSelf()V

    iget-object v0, p0, Lcom/android/camera/widget/FocusAnimationView;->m_FocusAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method

.method public stopFocus()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/FocusAnimationView;->m_FocusAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    return-void
.end method
