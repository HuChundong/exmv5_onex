.class Lcom/android/camera/effect/EffectManager$8;
.super Ljava/lang/Object;
.source "EffectManager.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/EffectManager;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/event/EventHandler",
        "<",
        "Lcom/android/camera/CaptureEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/EffectManager;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/EffectManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/EffectManager$8;->this$0:Lcom/android/camera/effect/EffectManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/CaptureEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/CaptureEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/CaptureEventArgs;",
            ")V"
        }
    .end annotation

    iget-object v0, p3, Lcom/android/camera/CaptureEventArgs;->failedReason:Lcom/android/camera/CaptureFailedReason;

    sget-object v1, Lcom/android/camera/CaptureFailedReason;->DriverFail:Lcom/android/camera/CaptureFailedReason;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/EffectManager$8;->this$0:Lcom/android/camera/effect/EffectManager;

    new-instance v1, Lcom/android/camera/effect/EffectManager$8$1;

    invoke-direct {v1, p0}, Lcom/android/camera/effect/EffectManager$8$1;-><init>(Lcom/android/camera/effect/EffectManager$8;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectManager;->invokeAsync(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0

    check-cast p3, Lcom/android/camera/CaptureEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/effect/EffectManager$8;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/CaptureEventArgs;)V

    return-void
.end method
