.class public final Lcom/android/camera/effect/BacklightPortraitScene;
.super Lcom/android/camera/effect/SceneEffectBase;
.source "BacklightPortraitScene.java"

# interfaces
.implements Lcom/android/camera/effect/IScene;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 1

    const-string v0, "backlight_portrait"

    invoke-direct {p0, v0, p1}, Lcom/android/camera/effect/SceneEffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;)V

    return-void
.end method


# virtual methods
.method public getCapabilities()I
    .locals 1

    const/16 v0, 0x51

    return v0
.end method
