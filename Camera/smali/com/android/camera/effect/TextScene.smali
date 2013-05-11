.class public Lcom/android/camera/effect/TextScene;
.super Lcom/android/camera/effect/SceneEffectBase;
.source "TextScene.java"

# interfaces
.implements Lcom/android/camera/effect/IScene;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 1

    const-string v0, "text"

    invoke-direct {p0, v0, p1}, Lcom/android/camera/effect/SceneEffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;)V

    return-void
.end method
