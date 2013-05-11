.class Lcom/android/camera/component/RecordingLimitController$6;
.super Ljava/lang/Object;
.source "RecordingLimitController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/RecordingLimitController;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/RecordingLimitController;

.field final synthetic val$cameraActivity:Lcom/android/camera/HTCCamera;

.field final synthetic val$pausingHandler:Lcom/android/camera/event/EventHandler;

.field final synthetic val$storageUnmountedHandler:Lcom/android/camera/event/EventHandler;


# direct methods
.method constructor <init>(Lcom/android/camera/component/RecordingLimitController;Lcom/android/camera/HTCCamera;Lcom/android/camera/event/EventHandler;Lcom/android/camera/event/EventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/RecordingLimitController$6;->this$0:Lcom/android/camera/component/RecordingLimitController;

    iput-object p2, p0, Lcom/android/camera/component/RecordingLimitController$6;->val$cameraActivity:Lcom/android/camera/HTCCamera;

    iput-object p3, p0, Lcom/android/camera/component/RecordingLimitController$6;->val$pausingHandler:Lcom/android/camera/event/EventHandler;

    iput-object p4, p0, Lcom/android/camera/component/RecordingLimitController$6;->val$storageUnmountedHandler:Lcom/android/camera/event/EventHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/RecordingLimitController$6;->val$cameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->pausingEvent:Lcom/android/camera/event/Event;

    iget-object v1, p0, Lcom/android/camera/component/RecordingLimitController$6;->val$pausingHandler:Lcom/android/camera/event/EventHandler;

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v0, p0, Lcom/android/camera/component/RecordingLimitController$6;->val$cameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->resumingEvent:Lcom/android/camera/event/Event;

    iget-object v1, p0, Lcom/android/camera/component/RecordingLimitController$6;->val$pausingHandler:Lcom/android/camera/event/EventHandler;

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v0, p0, Lcom/android/camera/component/RecordingLimitController$6;->val$cameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->storageUnmountedEvent:Lcom/android/camera/event/Event;

    iget-object v1, p0, Lcom/android/camera/component/RecordingLimitController$6;->val$storageUnmountedHandler:Lcom/android/camera/event/EventHandler;

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    return-void
.end method
