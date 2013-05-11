.class public final Lcom/android/camera/effect/VignetteEffect;
.super Lcom/android/camera/effect/GpuEffectBase;
.source "VignetteEffect.java"

# interfaces
.implements Lcom/android/camera/effect/IEffect;


# static fields
.field private static final DEFAULT_RADIUS:I


# instance fields
.field private m_Radius:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget v0, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    int-to-double v0, v0

    const-wide v2, 0x400199999999999aL

    div-double/2addr v0, v2

    const-wide v2, 0x3fe6666666666666L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lcom/android/camera/effect/VignetteEffect;->DEFAULT_RADIUS:I

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 1

    const-string v0, "vignette"

    invoke-direct {p0, v0, p1}, Lcom/android/camera/effect/GpuEffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;)V

    sget v0, Lcom/android/camera/effect/VignetteEffect;->DEFAULT_RADIUS:I

    iput v0, p0, Lcom/android/camera/effect/VignetteEffect;->m_Radius:I

    return-void
.end method

.method private getRadiusParameters(I)Lcom/android/camera/effect/GpuEffectParameters;
    .locals 7

    new-instance v0, Lcom/android/camera/effect/GpuEffectParameters;

    const-string v1, "GE-param1"

    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_CENTER_X:I

    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_CENTER_Y:I

    sget v4, Lcom/android/camera/DisplayDevice;->SCREEN_CENTER_X:I

    add-int/2addr v4, p1

    sget v5, Lcom/android/camera/DisplayDevice;->SCREEN_CENTER_Y:I

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/effect/GpuEffectParameters;-><init>(Ljava/lang/String;IIIIZ)V

    return-object v0
.end method


# virtual methods
.method protected getAppliedGpuEffectInfo()Lcom/android/camera/effect/GpuEffectInfo;
    .locals 10

    const/4 v6, 0x1

    const/4 v3, 0x0

    new-instance v7, Lcom/android/camera/effect/GpuEffectInfo;

    const-string v8, "4_spotlight"

    const/4 v0, 0x2

    new-array v9, v0, [Lcom/android/camera/effect/GpuEffectParameters;

    new-instance v0, Lcom/android/camera/effect/GpuEffectParameters;

    const-string v1, "GE-param0"

    const/16 v2, 0x46

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/effect/GpuEffectParameters;-><init>(Ljava/lang/String;IIIIZ)V

    aput-object v0, v9, v3

    iget v0, p0, Lcom/android/camera/effect/VignetteEffect;->m_Radius:I

    invoke-direct {p0, v0}, Lcom/android/camera/effect/VignetteEffect;->getRadiusParameters(I)Lcom/android/camera/effect/GpuEffectParameters;

    move-result-object v0

    aput-object v0, v9, v6

    invoke-direct {v7, v8, v9}, Lcom/android/camera/effect/GpuEffectInfo;-><init>(Ljava/lang/String;[Lcom/android/camera/effect/GpuEffectParameters;)V

    return-object v7
.end method

.method public getAppliedImageSettings()Lcom/android/camera/ImageSettings;
    .locals 2

    invoke-super {p0}, Lcom/android/camera/effect/GpuEffectBase;->getAppliedImageSettings()Lcom/android/camera/ImageSettings;

    move-result-object v0

    const v1, 0x3e2b020c

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/ImageSettings;->brightness:Ljava/lang/Float;

    const v1, 0x3ecccccd

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/ImageSettings;->contrast:Ljava/lang/Float;

    const v1, 0x3f19999a

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/ImageSettings;->saturation:Ljava/lang/Float;

    return-object v0
.end method

.method public getRadius()I
    .locals 1

    iget v0, p0, Lcom/android/camera/effect/VignetteEffect;->m_Radius:I

    return v0
.end method

.method protected resetParametersOverride()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/effect/VignetteEffect;->isApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/camera/effect/VignetteEffect;->DEFAULT_RADIUS:I

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/VignetteEffect;->setRadius(I)V

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/android/camera/effect/VignetteEffect;->DEFAULT_RADIUS:I

    iput v0, p0, Lcom/android/camera/effect/VignetteEffect;->m_Radius:I

    goto :goto_0
.end method

.method public setRadius(I)V
    .locals 1

    iput p1, p0, Lcom/android/camera/effect/VignetteEffect;->m_Radius:I

    invoke-virtual {p0}, Lcom/android/camera/effect/VignetteEffect;->isApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/effect/VignetteEffect;->getRadiusParameters(I)Lcom/android/camera/effect/GpuEffectParameters;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/VignetteEffect;->setGpuEffectParameters(Lcom/android/camera/effect/GpuEffectParameters;)Z

    :cond_0
    return-void
.end method
