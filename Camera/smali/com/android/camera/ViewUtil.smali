.class public Lcom/android/camera/ViewUtil;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableImageView(Landroid/widget/ImageView;)V
    .locals 1

    if-eqz p0, :cond_0

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public static disableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setPressed(Z)V

    :cond_1
    return-void
.end method

.method public static disableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/android/camera/ViewUtil;->disableImageView(Landroid/widget/ImageView;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setPressed(Z)V

    :cond_0
    invoke-static {p2}, Lcom/android/camera/ViewUtil;->disableTextView(Landroid/widget/TextView;)V

    return-void
.end method

.method public static disableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/ImageTextView;->setEnabled(Z)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setPressed(Z)V

    :cond_1
    return-void
.end method

.method public static disableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/ImageTextView;->setEnabled(Z)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setPressed(Z)V

    :cond_1
    invoke-static {p2}, Lcom/android/camera/ViewUtil;->disableTextView(Landroid/widget/TextView;)V

    return-void
.end method

.method public static disableMainButton(Lcom/htc/widget/HtcIconButton;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcIconButton;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public static disableTextView(Landroid/widget/TextView;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public static enableImageView(Landroid/widget/ImageView;)V
    .locals 1

    if-eqz p0, :cond_0

    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public static enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;)V
    .locals 1

    if-eqz p0, :cond_0

    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public static enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V
    .locals 1

    invoke-static {p0}, Lcom/android/camera/ViewUtil;->enableImageView(Landroid/widget/ImageView;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    invoke-static {p2}, Lcom/android/camera/ViewUtil;->enableTextView(Landroid/widget/TextView;)V

    return-void
.end method

.method public static enableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/ImageTextView;->setEnabled(Z)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public static enableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/ImageTextView;->setEnabled(Z)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    invoke-static {p2}, Lcom/android/camera/ViewUtil;->enableTextView(Landroid/widget/TextView;)V

    return-void
.end method

.method public static enableMainButton(Lcom/htc/widget/HtcIconButton;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcIconButton;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public static enableTextView(Landroid/widget/TextView;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public static getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public static getHtcInternalResourceId(Ljava/lang/String;)I
    .locals 4

    invoke-static {p0}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "ViewUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internal id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is missed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static refreshButtonEnableStatus(Lcom/htc/widget/HtcIconButton;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcIconButton;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcIconButton;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public static setHeight(Landroid/view/View;I)V
    .locals 1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method

.method public static setMargin(Landroid/view/View;IIII)V
    .locals 2

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method

.method public static setSize(Landroid/view/View;II)V
    .locals 1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method

.method public static setWidth(Landroid/view/View;I)V
    .locals 1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method
