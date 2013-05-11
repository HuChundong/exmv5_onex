.class public final Lcom/android/camera/effect/SolarizeEffectFactory;
.super Lcom/android/camera/effect/ColorEffectFactory;
.source "SolarizeEffectFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/effect/ColorEffectFactory",
        "<",
        "Lcom/android/camera/effect/SolarizeEffect;",
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

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/SolarizeEffectFactory;->createEffect(Lcom/android/camera/HTCCamera;)Lcom/android/camera/effect/SolarizeEffect;

    move-result-object v0

    return-object v0
.end method

.method public final createEffect(Lcom/android/camera/HTCCamera;)Lcom/android/camera/effect/SolarizeEffect;
    .locals 1

    new-instance v0, Lcom/android/camera/effect/SolarizeEffect;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/SolarizeEffect;-><init>(Lcom/android/camera/HTCCamera;)V

    return-object v0
.end method
