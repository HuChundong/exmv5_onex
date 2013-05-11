.class public final Lcom/android/camera/effect/SepiaEffectFactory;
.super Lcom/android/camera/effect/ColorEffectFactory;
.source "SepiaEffectFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/effect/ColorEffectFactory",
        "<",
        "Lcom/android/camera/effect/SepiaEffect;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/effect/ColorEffectFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createEffect(Lcom/android/camera/HTCCamera;)Lcom/android/camera/effect/EffectBase;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/SepiaEffectFactory;->createEffect(Lcom/android/camera/HTCCamera;)Lcom/android/camera/effect/SepiaEffect;

    move-result-object v0

    return-object v0
.end method

.method public final createEffect(Lcom/android/camera/HTCCamera;)Lcom/android/camera/effect/SepiaEffect;
    .locals 1

    new-instance v0, Lcom/android/camera/effect/SepiaEffect;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/SepiaEffect;-><init>(Lcom/android/camera/HTCCamera;)V

    return-object v0
.end method
