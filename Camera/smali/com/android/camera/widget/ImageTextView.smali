.class public Lcom/android/camera/widget/ImageTextView;
.super Landroid/widget/LinearLayout;
.source "ImageTextView.java"


# instance fields
.field private m_ImageView:Lcom/android/camera/widget/ColorMultiplyImageView;

.field private m_TextView:Lcom/android/camera/widget/ColorMultiplyTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/16 v4, 0x11

    const/4 v3, -0x2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v4}, Lcom/android/camera/widget/ImageTextView;->setGravity(I)V

    new-instance v1, Lcom/android/camera/widget/ColorMultiplyImageView;

    invoke-direct {v1, p1, p2}, Lcom/android/camera/widget/ColorMultiplyImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/camera/widget/ImageTextView;->m_ImageView:Lcom/android/camera/widget/ColorMultiplyImageView;

    iget-object v1, p0, Lcom/android/camera/widget/ImageTextView;->m_ImageView:Lcom/android/camera/widget/ColorMultiplyImageView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/widget/ImageTextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/android/camera/widget/ColorMultiplyTextView;

    invoke-direct {v1, p1, p2}, Lcom/android/camera/widget/ColorMultiplyTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/camera/widget/ImageTextView;->m_TextView:Lcom/android/camera/widget/ColorMultiplyTextView;

    iget-object v1, p0, Lcom/android/camera/widget/ImageTextView;->m_TextView:Lcom/android/camera/widget/ColorMultiplyTextView;

    invoke-virtual {v1, v4}, Lcom/android/camera/widget/ColorMultiplyTextView;->setGravity(I)V

    iget-object v1, p0, Lcom/android/camera/widget/ImageTextView;->m_TextView:Lcom/android/camera/widget/ColorMultiplyTextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/widget/ImageTextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/ImageTextView;->setImageTextPadding(I)V

    return-void
.end method


# virtual methods
.method public final applyColorMultiplication(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_ImageView:Lcom/android/camera/widget/ColorMultiplyImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/ColorMultiplyImageView;->applyColorMultiplication(Z)V

    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_TextView:Lcom/android/camera/widget/ColorMultiplyTextView;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/ColorMultiplyTextView;->applyColorMultiplication(Z)V

    return-void
.end method

.method public final applyImageColorMultiplication(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_ImageView:Lcom/android/camera/widget/ColorMultiplyImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/ColorMultiplyImageView;->applyColorMultiplication(Z)V

    return-void
.end method

.method public final applyTextColorMultiplication(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_TextView:Lcom/android/camera/widget/ColorMultiplyTextView;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/ColorMultiplyTextView;->applyColorMultiplication(Z)V

    return-void
.end method

.method public final getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_ImageView:Lcom/android/camera/widget/ColorMultiplyImageView;

    invoke-virtual {v0}, Lcom/android/camera/widget/ColorMultiplyImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_TextView:Lcom/android/camera/widget/ColorMultiplyTextView;

    invoke-virtual {v0}, Lcom/android/camera/widget/ColorMultiplyTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 4

    const/16 v3, 0xff

    const/16 v2, 0x80

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_ImageView:Lcom/android/camera/widget/ColorMultiplyImageView;

    invoke-virtual {v0, v3}, Lcom/android/camera/widget/ColorMultiplyImageView;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_TextView:Lcom/android/camera/widget/ColorMultiplyTextView;

    iget-object v1, p0, Lcom/android/camera/widget/ImageTextView;->m_TextView:Lcom/android/camera/widget/ColorMultiplyTextView;

    invoke-virtual {v1}, Lcom/android/camera/widget/ColorMultiplyTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/ColorMultiplyTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_ImageView:Lcom/android/camera/widget/ColorMultiplyImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/widget/ColorMultiplyImageView;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_TextView:Lcom/android/camera/widget/ColorMultiplyTextView;

    iget-object v1, p0, Lcom/android/camera/widget/ImageTextView;->m_TextView:Lcom/android/camera/widget/ColorMultiplyTextView;

    invoke-virtual {v1}, Lcom/android/camera/widget/ColorMultiplyTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/ColorMultiplyTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public final setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_ImageView:Lcom/android/camera/widget/ColorMultiplyImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/ColorMultiplyImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/android/camera/widget/ImageTextView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_ImageView:Lcom/android/camera/widget/ColorMultiplyImageView;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/ColorMultiplyImageView;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public final setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_ImageView:Lcom/android/camera/widget/ColorMultiplyImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/ColorMultiplyImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/camera/widget/ImageTextView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_ImageView:Lcom/android/camera/widget/ColorMultiplyImageView;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/ColorMultiplyImageView;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public final setImageResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_ImageView:Lcom/android/camera/widget/ColorMultiplyImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/ColorMultiplyImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/android/camera/widget/ImageTextView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_ImageView:Lcom/android/camera/widget/ColorMultiplyImageView;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/ColorMultiplyImageView;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public setImageTextPadding(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/camera/widget/ImageTextView;->m_TextView:Lcom/android/camera/widget/ColorMultiplyTextView;

    invoke-virtual {v1}, Lcom/android/camera/widget/ColorMultiplyTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/android/camera/widget/ImageTextView;->m_TextView:Lcom/android/camera/widget/ColorMultiplyTextView;

    invoke-virtual {v1}, Lcom/android/camera/widget/ColorMultiplyTextView;->requestLayout()V

    invoke-virtual {p0}, Lcom/android/camera/widget/ImageTextView;->requestLayout()V

    return-void
.end method

.method public final setText(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_TextView:Lcom/android/camera/widget/ColorMultiplyTextView;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/ColorMultiplyTextView;->setText(I)V

    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_TextView:Lcom/android/camera/widget/ColorMultiplyTextView;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/ColorMultiplyTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
