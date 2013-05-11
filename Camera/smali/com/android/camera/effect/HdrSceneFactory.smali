.class public final Lcom/android/camera/effect/HdrSceneFactory;
.super Lcom/android/camera/effect/EffectFactory;
.source "HdrSceneFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/effect/EffectFactory",
        "<",
        "Lcom/android/camera/effect/HdrScene;",
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

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/HdrSceneFactory;->createEffect(Lcom/android/camera/HTCCamera;)Lcom/android/camera/effect/HdrScene;

    move-result-object v0

    return-object v0
.end method

.method public createEffect(Lcom/android/camera/HTCCamera;)Lcom/android/camera/effect/HdrScene;
    .locals 1

    new-instance v0, Lcom/android/camera/effect/HdrScene;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/HdrScene;-><init>(Lcom/android/camera/HTCCamera;)V

    return-object v0
.end method

.method public isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    invoke-static {p1}, Lcom/android/camera/component/HdrController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v0

    return v0
.end method
