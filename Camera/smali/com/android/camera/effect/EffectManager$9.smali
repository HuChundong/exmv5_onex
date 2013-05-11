.class Lcom/android/camera/effect/EffectManager$9;
.super Ljava/lang/Object;
.source "EffectManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/EffectManager;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/EffectManager;

.field final synthetic val$captureFailedEventHandler:Lcom/android/camera/event/EventHandler;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/event/EventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/EffectManager$9;->this$0:Lcom/android/camera/effect/EffectManager;

    iput-object p2, p0, Lcom/android/camera/effect/EffectManager$9;->val$captureFailedEventHandler:Lcom/android/camera/event/EventHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/effect/EffectManager$9;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/effect/EffectManager;->access$1100(Lcom/android/camera/effect/EffectManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Setup event handlers for camera thread"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/effect/EffectManager$9;->this$0:Lcom/android/camera/effect/EffectManager;

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectManager;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->captureFailedEvent:Lcom/android/camera/event/Event;

    iget-object v1, p0, Lcom/android/camera/effect/EffectManager$9;->val$captureFailedEventHandler:Lcom/android/camera/event/EventHandler;

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    return-void
.end method
