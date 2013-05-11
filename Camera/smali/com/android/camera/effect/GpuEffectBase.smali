.class public abstract Lcom/android/camera/effect/GpuEffectBase;
.super Lcom/android/camera/effect/EffectBase;
.source "GpuEffectBase.java"


# instance fields
.field private final m_ColorEffectName:Ljava/lang/String;

.field private final m_EffectInfo:Lcom/android/camera/effect/GpuEffectInfo;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;)V
    .locals 2

    const-string v0, "none"

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/camera/effect/GpuEffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;Ljava/lang/String;Lcom/android/camera/effect/GpuEffectInfo;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;Lcom/android/camera/effect/GpuEffectInfo;)V
    .locals 1

    const-string v0, "none"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/camera/effect/GpuEffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;Ljava/lang/String;Lcom/android/camera/effect/GpuEffectInfo;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;Ljava/lang/String;Lcom/android/camera/effect/GpuEffectInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/EffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;)V

    iput-object p3, p0, Lcom/android/camera/effect/GpuEffectBase;->m_ColorEffectName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/camera/effect/GpuEffectBase;->m_EffectInfo:Lcom/android/camera/effect/GpuEffectInfo;

    return-void
.end method


# virtual methods
.method protected applyEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/effect/GpuEffectBase;->getEffectController()Lcom/android/camera/effect/IEffectController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/camera/effect/GpuEffectBase;->m_ColorEffectName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/effect/IEffectController;->setColorEffect(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/camera/effect/GpuEffectBase;->getAppliedGpuEffectInfo()Lcom/android/camera/effect/GpuEffectInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/IEffectController;->setGpuEffect(Lcom/android/camera/effect/GpuEffectInfo;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/IEffectController;->setGpuEffect(Lcom/android/camera/effect/GpuEffectInfo;)V

    goto :goto_0
.end method

.method protected cancelEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 0

    return-void
.end method

.method protected getAppliedGpuEffectInfo()Lcom/android/camera/effect/GpuEffectInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/GpuEffectBase;->m_EffectInfo:Lcom/android/camera/effect/GpuEffectInfo;

    return-object v0
.end method

.method public getCapabilities()I
    .locals 2

    const/16 v0, 0x2a

    const v1, 0x7fffffd5

    return v1
.end method

.method protected prepareApplyEffect(Lcom/android/camera/effect/EffectBase;I)V
    .locals 0

    if-eq p1, p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/effect/GpuEffectBase;->resetParametersOverride()V

    :cond_0
    return-void
.end method

.method protected final setGpuEffectParameters(Lcom/android/camera/effect/GpuEffectParameters;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string v2, "parameters"

    invoke-static {v2}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/effect/GpuEffectBase;->isApplied()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/effect/GpuEffectBase;->getEffectController()Lcom/android/camera/effect/IEffectController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/IEffectController;->setGpuEffectParameters(Lcom/android/camera/effect/GpuEffectParameters;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "setGpuEffectParameters() - No effect controller"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "setGpuEffectParameters() - Effect is not applied"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
