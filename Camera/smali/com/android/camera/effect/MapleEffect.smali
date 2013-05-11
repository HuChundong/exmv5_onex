.class public final Lcom/android/camera/effect/MapleEffect;
.super Lcom/android/camera/effect/GpuEffectBase;
.source "MapleEffect.java"

# interfaces
.implements Lcom/android/camera/effect/IEffect;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 11

    const/4 v6, 0x1

    const/4 v2, 0x0

    const-string v7, "maple"

    new-instance v8, Lcom/android/camera/effect/GpuEffectInfo;

    const-string v9, "C_Stylized_Maple"

    new-array v10, v6, [Lcom/android/camera/effect/GpuEffectParameters;

    new-instance v0, Lcom/android/camera/effect/GpuEffectParameters;

    const-string v1, "GE-param0"

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/effect/GpuEffectParameters;-><init>(Ljava/lang/String;IIIIZ)V

    aput-object v0, v10, v2

    invoke-direct {v8, v9, v10}, Lcom/android/camera/effect/GpuEffectInfo;-><init>(Ljava/lang/String;[Lcom/android/camera/effect/GpuEffectParameters;)V

    invoke-direct {p0, v7, p1, v8}, Lcom/android/camera/effect/GpuEffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;Lcom/android/camera/effect/GpuEffectInfo;)V

    return-void
.end method
