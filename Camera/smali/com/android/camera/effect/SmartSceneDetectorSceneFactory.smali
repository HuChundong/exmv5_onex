.class public final Lcom/android/camera/effect/SmartSceneDetectorSceneFactory;
.super Lcom/android/camera/effect/EffectFactory;
.source "SmartSceneDetectorSceneFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/effect/EffectFactory",
        "<",
        "Lcom/android/camera/effect/SmartSceneDetectorScene;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/effect/EffectFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createEffect(Lcom/android/camera/HTCCamera;)Lcom/android/camera/effect/EffectBase;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/SmartSceneDetectorSceneFactory;->createEffect(Lcom/android/camera/HTCCamera;)Lcom/android/camera/effect/SmartSceneDetectorScene;

    move-result-object v0

    return-object v0
.end method

.method public createEffect(Lcom/android/camera/HTCCamera;)Lcom/android/camera/effect/SmartSceneDetectorScene;
    .locals 1

    new-instance v0, Lcom/android/camera/effect/SmartSceneDetectorScene;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/SmartSceneDetectorScene;-><init>(Lcom/android/camera/HTCCamera;)V

    return-object v0
.end method

.method public isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
