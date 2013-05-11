.class public abstract Lcom/android/camera/effect/EffectFactory;
.super Ljava/lang/Object;
.source "EffectFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TEffect:",
        "Lcom/android/camera/effect/EffectBase;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createEffect(Lcom/android/camera/HTCCamera;)Lcom/android/camera/effect/EffectBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/HTCCamera;",
            ")TTEffect;"
        }
    .end annotation
.end method

.method public abstract isSupported(Lcom/android/camera/HTCCamera;)Z
.end method
