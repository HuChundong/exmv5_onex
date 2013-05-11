.class public abstract Lcom/android/camera/effect/GpuEffectFactory;
.super Lcom/android/camera/effect/EffectFactory;
.source "GpuEffectFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TEffect:",
        "Lcom/android/camera/effect/GpuEffectBase;",
        ">",
        "Lcom/android/camera/effect/EffectFactory",
        "<TTEffect;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/effect/EffectFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public final isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportGpuEffect()Z

    move-result v0

    return v0
.end method
