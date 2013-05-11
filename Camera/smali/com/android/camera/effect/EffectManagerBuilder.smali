.class public final Lcom/android/camera/effect/EffectManagerBuilder;
.super Lcom/android/camera/component/UIComponentBuilder;
.source "EffectManagerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/component/UIComponentBuilder",
        "<",
        "Lcom/android/camera/effect/EffectManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "Effect Manager"

    sget-object v1, Lcom/android/camera/component/ComponentCategory;->Realtime:Lcom/android/camera/component/ComponentCategory;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/UIComponentBuilder;-><init>(Ljava/lang/String;Lcom/android/camera/component/ComponentCategory;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/Component;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/EffectManagerBuilder;->createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/effect/EffectManager;

    move-result-object v0

    return-object v0
.end method

.method public createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/effect/EffectManager;
    .locals 1

    new-instance v0, Lcom/android/camera/effect/EffectManager;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/EffectManager;-><init>(Lcom/android/camera/HTCCamera;)V

    return-object v0
.end method
