.class Lcom/android/camera/effect/EffectController$4;
.super Ljava/lang/Object;
.source "EffectController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/EffectController;->setGpuEffect(Lcom/android/camera/effect/GpuEffectInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/EffectController;

.field final synthetic val$applyImmediately:Z

.field final synthetic val$effectInfo:Lcom/android/camera/effect/GpuEffectInfo;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/EffectController;Lcom/android/camera/effect/GpuEffectInfo;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/EffectController$4;->this$0:Lcom/android/camera/effect/EffectController;

    iput-object p2, p0, Lcom/android/camera/effect/EffectController$4;->val$effectInfo:Lcom/android/camera/effect/GpuEffectInfo;

    iput-boolean p3, p0, Lcom/android/camera/effect/EffectController$4;->val$applyImmediately:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/effect/EffectController$4;->this$0:Lcom/android/camera/effect/EffectController;

    iget-object v1, p0, Lcom/android/camera/effect/EffectController$4;->val$effectInfo:Lcom/android/camera/effect/GpuEffectInfo;

    iget-boolean v2, p0, Lcom/android/camera/effect/EffectController$4;->val$applyImmediately:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/effect/EffectController;->setGpuEffect(Lcom/android/camera/effect/GpuEffectInfo;Z)V

    return-void
.end method
