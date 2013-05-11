.class public final Lcom/android/camera/effect/EffectControlUIBuilder;
.super Lcom/android/camera/component/UIComponentBuilder;
.source "EffectControlUIBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/component/UIComponentBuilder",
        "<",
        "Lcom/android/camera/effect/EffectControlUI;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Effect Control UI"

    invoke-direct {p0, v0}, Lcom/android/camera/component/UIComponentBuilder;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/Component;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/EffectControlUIBuilder;->createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/effect/EffectControlUI;

    move-result-object v0

    return-object v0
.end method

.method public createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/effect/EffectControlUI;
    .locals 1

    new-instance v0, Lcom/android/camera/effect/EffectControlUI;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/EffectControlUI;-><init>(Lcom/android/camera/HTCCamera;)V

    return-object v0
.end method
