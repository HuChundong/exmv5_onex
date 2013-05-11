.class public final Lcom/android/camera/effect/SplitToningMonoEffect;
.super Lcom/android/camera/effect/GpuEffectBase;
.source "SplitToningMonoEffect.java"

# interfaces
.implements Lcom/android/camera/effect/IEffect;


# instance fields
.field private m_ColorStrength:I


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 1

    const-string v0, "splittoning_mono"

    invoke-direct {p0, v0, p1}, Lcom/android/camera/effect/GpuEffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/effect/SplitToningMonoEffect;->m_ColorStrength:I

    return-void
.end method

.method private getColorStrengthParameters(I)Lcom/android/camera/effect/GpuEffectParameters;
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

    const-string v1, "G_SplitToning_Mono"

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/camera/effect/GpuEffectParameters;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/camera/effect/SplitToningMonoEffect;->m_ColorStrength:I

    invoke-direct {p0, v4}, Lcom/android/camera/effect/SplitToningMonoEffect;->getColorStrengthParameters(I)Lcom/android/camera/effect/GpuEffectParameters;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/camera/effect/GpuEffectInfo;-><init>(Ljava/lang/String;[Lcom/android/camera/effect/GpuEffectParameters;)V

    return-object v0
.end method

.method public getColorStrength()I
    .locals 1

    iget v0, p0, Lcom/android/camera/effect/SplitToningMonoEffect;->m_ColorStrength:I

    return v0
.end method

.method protected resetParametersOverride()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/effect/SplitToningMonoEffect;->isApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/camera/effect/SplitToningMonoEffect;->setColorStrength(I)V

    :goto_0
    return-void

    :cond_0
    iput v1, p0, Lcom/android/camera/effect/SplitToningMonoEffect;->m_ColorStrength:I

    goto :goto_0
.end method

.method public setColorStrength(I)V
    .locals 1

    iput p1, p0, Lcom/android/camera/effect/SplitToningMonoEffect;->m_ColorStrength:I

    invoke-virtual {p0}, Lcom/android/camera/effect/SplitToningMonoEffect;->isApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/effect/SplitToningMonoEffect;->getColorStrengthParameters(I)Lcom/android/camera/effect/GpuEffectParameters;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/SplitToningMonoEffect;->setGpuEffectParameters(Lcom/android/camera/effect/GpuEffectParameters;)Z

    :cond_0
    return-void
.end method
