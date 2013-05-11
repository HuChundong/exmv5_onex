.class public final Lcom/android/camera/effect/DistortionEffect;
.super Lcom/android/camera/effect/GpuEffectBase;
.source "DistortionEffect.java"

# interfaces
.implements Lcom/android/camera/effect/IEffect;


# instance fields
.field private m_Center:Landroid/graphics/PointF;

.field private m_Distortion:I


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 2

    const/high16 v1, 0x3f00

    const-string v0, "distortion"

    invoke-direct {p0, v0, p1}, Lcom/android/camera/effect/GpuEffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;)V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/effect/DistortionEffect;->m_Center:Landroid/graphics/PointF;

    return-void
.end method

.method private getCenterParameters(Landroid/graphics/PointF;)Lcom/android/camera/effect/GpuEffectParameters;
    .locals 7

    const/4 v4, 0x0

    new-instance v0, Lcom/android/camera/effect/GpuEffectParameters;

    const-string v1, "GE-param1"

    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    iget v5, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    const/4 v6, 0x1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/effect/GpuEffectParameters;-><init>(Ljava/lang/String;IIIIZ)V

    return-object v0
.end method

.method private getDistortionParameters(I)Lcom/android/camera/effect/GpuEffectParameters;
    .locals 7

    const/4 v3, 0x0

    new-instance v0, Lcom/android/camera/effect/GpuEffectParameters;

    const-string v1, "GE-param0"

    const/4 v6, 0x1

    move v2, p1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/effect/GpuEffectParameters;-><init>(Ljava/lang/String;IIIIZ)V

    return-object v0
.end method


# virtual methods
.method protected getAppliedGpuEffectInfo()Lcom/android/camera/effect/GpuEffectInfo;
    .locals 5

    new-instance v0, Lcom/android/camera/effect/GpuEffectInfo;

    const-string v1, "3_distortion"

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/android/camera/effect/GpuEffectParameters;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/camera/effect/DistortionEffect;->m_Distortion:I

    invoke-direct {p0, v4}, Lcom/android/camera/effect/DistortionEffect;->getDistortionParameters(I)Lcom/android/camera/effect/GpuEffectParameters;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/camera/effect/DistortionEffect;->m_Center:Landroid/graphics/PointF;

    invoke-direct {p0, v4}, Lcom/android/camera/effect/DistortionEffect;->getCenterParameters(Landroid/graphics/PointF;)Lcom/android/camera/effect/GpuEffectParameters;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/camera/effect/GpuEffectInfo;-><init>(Ljava/lang/String;[Lcom/android/camera/effect/GpuEffectParameters;)V

    return-object v0
.end method

.method public getCenter()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/DistortionEffect;->m_Center:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getDistortion()I
    .locals 1

    iget v0, p0, Lcom/android/camera/effect/DistortionEffect;->m_Distortion:I

    return v0
.end method

.method protected resetParametersOverride()V
    .locals 3

    const/4 v2, 0x0

    const/high16 v1, 0x3f00

    invoke-virtual {p0}, Lcom/android/camera/effect/DistortionEffect;->isApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/DistortionEffect;->setCenter(Landroid/graphics/PointF;)V

    invoke-virtual {p0, v2}, Lcom/android/camera/effect/DistortionEffect;->setDistortion(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/DistortionEffect;->m_Center:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    iput v2, p0, Lcom/android/camera/effect/DistortionEffect;->m_Distortion:I

    goto :goto_0
.end method

.method public setCenter(Landroid/graphics/PointF;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/DistortionEffect;->m_Center:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    invoke-virtual {p0}, Lcom/android/camera/effect/DistortionEffect;->isApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/effect/DistortionEffect;->getCenterParameters(Landroid/graphics/PointF;)Lcom/android/camera/effect/GpuEffectParameters;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/DistortionEffect;->setGpuEffectParameters(Lcom/android/camera/effect/GpuEffectParameters;)Z

    :cond_0
    return-void
.end method

.method public setDistortion(I)V
    .locals 1

    iput p1, p0, Lcom/android/camera/effect/DistortionEffect;->m_Distortion:I

    invoke-virtual {p0}, Lcom/android/camera/effect/DistortionEffect;->isApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/effect/DistortionEffect;->getDistortionParameters(I)Lcom/android/camera/effect/GpuEffectParameters;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/DistortionEffect;->setGpuEffectParameters(Lcom/android/camera/effect/GpuEffectParameters;)Z

    :cond_0
    return-void
.end method
