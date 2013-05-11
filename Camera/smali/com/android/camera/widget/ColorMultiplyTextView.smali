.class public Lcom/android/camera/widget/ColorMultiplyTextView;
.super Landroid/widget/TextView;
.source "ColorMultiplyTextView.java"


# instance fields
.field private m_ApplyColorMultiplication:Z

.field private m_OriginalColors:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final applyColorMultiplication(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/widget/ColorMultiplyTextView;->m_ApplyColorMultiplication:Z

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/widget/ColorMultiplyTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/ColorMultiplyTextView;->m_OriginalColors:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/android/camera/widget/ColorMultiplyTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/widget/ColorMultiplyRenderer;->getOverlayColor(Landroid/content/Context;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/android/camera/widget/ColorMultiplyTextView;->m_ApplyColorMultiplication:Z

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/camera/widget/ColorMultiplyTextView;->m_OriginalColors:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/ColorMultiplyTextView;->m_OriginalColors:Landroid/content/res/ColorStateList;

    invoke-super {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/widget/ColorMultiplyTextView;->m_ApplyColorMultiplication:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/android/camera/widget/ColorMultiplyTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/ColorMultiplyTextView;->m_OriginalColors:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/android/camera/widget/ColorMultiplyTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/widget/ColorMultiplyRenderer;->getOverlayColor(Landroid/content/Context;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/widget/ColorMultiplyTextView;->m_ApplyColorMultiplication:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/camera/widget/ColorMultiplyTextView;->m_OriginalColors:Landroid/content/res/ColorStateList;

    goto :goto_0
.end method
