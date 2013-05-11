.class public Lcom/android/camera/rotate/RotateImageButton;
.super Landroid/widget/ImageButton;
.source "RotateImageButton.java"


# instance fields
.field private mDefindedOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/rotate/RotateImageButton;->mDefindedOrientation:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/rotate/RotateImageButton;->mDefindedOrientation:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/rotate/RotateImageButton;->mDefindedOrientation:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    iget v2, p0, Lcom/android/camera/rotate/RotateImageButton;->mDefindedOrientation:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v1, p0, Lcom/android/camera/rotate/RotateImageButton;->mDefindedOrientation:I

    :goto_0
    sget-object v2, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    iget v2, v2, Lcom/android/camera/rotate/UIRotation;->surfaceRotation:I

    sub-int v2, v1, v2

    mul-int/lit8 v0, v2, 0x5a

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateImageButton;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateImageButton;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateImageButton;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Lcom/android/camera/HTCCamera;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateImageButton;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/UIRotation;

    iget v1, v2, Lcom/android/camera/rotate/UIRotation;->surfaceRotation:I

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    iget v1, v2, Lcom/android/camera/rotate/UIRotation;->surfaceRotation:I

    goto :goto_0
.end method

.method public setDefinedOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/rotate/RotateImageButton;->mDefindedOrientation:I

    return-void
.end method
