.class public Lcom/android/camera/rotate/DisplayRotateRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "DisplayRotateRelativeLayout.java"


# instance fields
.field private m_Rotation:Lcom/android/camera/rotate/UIRotation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    iput-object v0, p0, Lcom/android/camera/rotate/DisplayRotateRelativeLayout;->m_Rotation:Lcom/android/camera/rotate/UIRotation;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v1, p0, Lcom/android/camera/rotate/DisplayRotateRelativeLayout;->m_Rotation:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v1}, Lcom/android/camera/rotate/UIRotation;->getSurfaceDegrees()I

    move-result v1

    sget-object v2, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v2}, Lcom/android/camera/rotate/UIRotation;->getSurfaceDegrees()I

    move-result v2

    sub-int v0, v1, v2

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/android/camera/rotate/DisplayRotateRelativeLayout;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/camera/rotate/DisplayRotateRelativeLayout;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final setRotation(Lcom/android/camera/rotate/UIRotation;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/rotate/DisplayRotateRelativeLayout;->m_Rotation:Lcom/android/camera/rotate/UIRotation;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lcom/android/camera/rotate/DisplayRotateRelativeLayout;->m_Rotation:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {p0}, Lcom/android/camera/rotate/DisplayRotateRelativeLayout;->invalidate()V

    :cond_1
    return-void
.end method
