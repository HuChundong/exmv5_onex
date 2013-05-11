.class public Lcom/android/camera/effect/GrayscaleEffectFactory;
.super Lcom/android/camera/effect/ColorEffectFactory;
.source "GrayscaleEffectFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/effect/ColorEffectFactory",
        "<",
        "Lcom/android/camera/effect/GrayscaleEffect;",
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

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/GrayscaleEffectFactory;->createEffect(Lcom/android/camera/HTCCamera;)Lcom/android/camera/effect/GrayscaleEffect;

    move-result-object v0

    return-object v0
.end method

.method public final createEffect(Lcom/android/camera/HTCCamera;)Lcom/android/camera/effect/GrayscaleEffect;
    .locals 1

    new-instance v0, Lcom/android/camera/effect/GrayscaleEffect;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/GrayscaleEffect;-><init>(Lcom/android/camera/HTCCamera;)V

    return-object v0
.end method
