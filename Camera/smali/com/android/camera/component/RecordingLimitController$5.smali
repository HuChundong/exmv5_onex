.class Lcom/android/camera/component/RecordingLimitController$5;
.super Ljava/lang/Object;
.source "RecordingLimitController.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/RecordingLimitController;->initializeOverride()V
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
        "Lcom/android/camera/OneValueEventArgs",
        "<",
        "Lcom/android/camera/io/StorageSlot;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/RecordingLimitController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/RecordingLimitController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/RecordingLimitController$5;->this$0:Lcom/android/camera/component/RecordingLimitController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/OneValueEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Lcom/android/camera/io/StorageSlot;",
            ">;>;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Lcom/android/camera/io/StorageSlot;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/component/RecordingLimitController$5;->this$0:Lcom/android/camera/component/RecordingLimitController;

    new-instance v1, Lcom/android/camera/component/RecordingLimitController$5$1;

    invoke-direct {v1, p0, p3}, Lcom/android/camera/component/RecordingLimitController$5$1;-><init>(Lcom/android/camera/component/RecordingLimitController$5;Lcom/android/camera/OneValueEventArgs;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/component/RecordingLimitController;->invokeAsync(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0

    check-cast p3, Lcom/android/camera/OneValueEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/component/RecordingLimitController$5;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/OneValueEventArgs;)V

    return-void
.end method
