.class Lcom/android/camera/component/RecordingLimitController$7;
.super Ljava/lang/Object;
.source "RecordingLimitController.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


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
        "Lcom/android/camera/property/PropertyChangedCallback",
        "<",
        "Lcom/android/camera/RecordingState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/RecordingLimitController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/RecordingLimitController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/RecordingLimitController$7;->this$0:Lcom/android/camera/component/RecordingLimitController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/RecordingState;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/RecordingState;",
            ">;)V"
        }
    .end annotation

    const/16 v4, 0x2711

    sget-object v1, Lcom/android/camera/component/RecordingLimitController$8;->$SwitchMap$com$android$camera$RecordingState:[I

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/RecordingState;

    invoke-virtual {v0}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/component/RecordingLimitController$7;->this$0:Lcom/android/camera/component/RecordingLimitController;

    iget-object v0, v0, Lcom/android/camera/IRecordingLimitController;->recordingLimitState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/component/RecordingLimitController$7;->this$0:Lcom/android/camera/component/RecordingLimitController;

    iget-object v1, v1, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/RecordingLimitState;->None:Lcom/android/camera/RecordingLimitState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/component/RecordingLimitController$7;->this$0:Lcom/android/camera/component/RecordingLimitController;

    #calls: Lcom/android/camera/component/RecordingLimitController;->onStartingRecording()V
    invoke-static {v0}, Lcom/android/camera/component/RecordingLimitController;->access$600(Lcom/android/camera/component/RecordingLimitController;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/component/RecordingLimitController$7;->this$0:Lcom/android/camera/component/RecordingLimitController;

    iget-object v0, p0, Lcom/android/camera/component/RecordingLimitController$7;->this$0:Lcom/android/camera/component/RecordingLimitController;

    invoke-virtual {v0}, Lcom/android/camera/component/RecordingLimitController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/io/StorageSlot;

    #setter for: Lcom/android/camera/component/RecordingLimitController;->m_LastVideoStorageSlot:Lcom/android/camera/io/StorageSlot;
    invoke-static {v1, v0}, Lcom/android/camera/component/RecordingLimitController;->access$202(Lcom/android/camera/component/RecordingLimitController;Lcom/android/camera/io/StorageSlot;)Lcom/android/camera/io/StorageSlot;

    iget-object v0, p0, Lcom/android/camera/component/RecordingLimitController$7;->this$0:Lcom/android/camera/component/RecordingLimitController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/RecordingLimitController;->access$700(Lcom/android/camera/component/RecordingLimitController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Check limit state after "

    iget-object v2, p0, Lcom/android/camera/component/RecordingLimitController$7;->this$0:Lcom/android/camera/component/RecordingLimitController;

    #getter for: Lcom/android/camera/component/RecordingLimitController;->m_RecordingLimitStateCheckInterval:J
    invoke-static {v2}, Lcom/android/camera/component/RecordingLimitController;->access$800(Lcom/android/camera/component/RecordingLimitController;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, " ms"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/component/RecordingLimitController$7;->this$0:Lcom/android/camera/component/RecordingLimitController;

    iget-object v1, p0, Lcom/android/camera/component/RecordingLimitController$7;->this$0:Lcom/android/camera/component/RecordingLimitController;

    iget-object v2, p0, Lcom/android/camera/component/RecordingLimitController$7;->this$0:Lcom/android/camera/component/RecordingLimitController;

    #getter for: Lcom/android/camera/component/RecordingLimitController;->m_RecordingLimitStateCheckInterval:J
    invoke-static {v2}, Lcom/android/camera/component/RecordingLimitController;->access$800(Lcom/android/camera/component/RecordingLimitController;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/camera/component/RecordingLimitController;->sendMessage(Lcom/android/camera/component/Component;IJ)Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/component/RecordingLimitController$7;->this$0:Lcom/android/camera/component/RecordingLimitController;

    invoke-virtual {v0, v4}, Lcom/android/camera/component/RecordingLimitController;->removeMessages(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
