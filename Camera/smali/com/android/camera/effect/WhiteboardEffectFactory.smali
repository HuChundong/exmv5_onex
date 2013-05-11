.class public final Lcom/android/camera/effect/WhiteboardEffectFactory;
.super Lcom/android/camera/effect/GpuEffectFactory;
.source "WhiteboardEffectFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/effect/GpuEffectFactory",
        "<",
        "Lcom/android/camera/effect/WhiteboardEffect;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/effect/GpuEffectFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createEffect(Lcom/android/camera/HTCCamera;)Lcom/android/camera/effect/EffectBase;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/WhiteboardEffectFactory;->createEffect(Lcom/android/camera/HTCCamera;)Lcom/android/camera/effect/WhiteboardEffect;

    move-result-object v0

    return-object v0
.end method

.method public createEffect(Lcom/android/camera/HTCCamera;)Lcom/android/camera/effect/WhiteboardEffect;
    .locals 1

    new-instance v0, Lcom/android/camera/effect/WhiteboardEffect;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/WhiteboardEffect;-><init>(Lcom/android/camera/HTCCamera;)V

    return-object v0
.end method
