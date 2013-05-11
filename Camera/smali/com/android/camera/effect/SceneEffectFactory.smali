.class public abstract Lcom/android/camera/effect/SceneEffectFactory;
.super Lcom/android/camera/effect/EffectFactory;
.source "SceneEffectFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TEffect:",
        "Lcom/android/camera/effect/SceneEffectBase;",
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
.method public isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportScene()Z

    move-result v0

    return v0
.end method
