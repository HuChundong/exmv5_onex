.class public abstract Lcom/android/camera/IRecordingLimitController;
.super Lcom/android/camera/component/ServiceCameraComponent;
.source "IRecordingLimitController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/IRecordingLimitController$1;
    }
.end annotation


# instance fields
.field public final recordingLimitState:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/RecordingLimitState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;Z)V
    .locals 5

    invoke-direct/range {p0 .. p5}, Lcom/android/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;Z)V

    new-instance v0, Lcom/android/camera/property/Property;

    const-string v1, "IRecordingLimitController.RecordingLimitState"

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/RecordingLimitState;->None:Lcom/android/camera/RecordingLimitState;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/IRecordingLimitController;->recordingLimitState:Lcom/android/camera/property/Property;

    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/camera/component/ServiceCameraComponent;->deinitializeOverride()V

    return-void
.end method

.method public final getRemainingRecordingDuration(J)Lcom/android/camera/Duration;
    .locals 2

    sget-object v0, Lcom/android/camera/IRecordingLimitController$1;->$SwitchMap$com$android$camera$component$CameraCompoment$DependencyThreadType:[I

    invoke-virtual {p0}, Lcom/android/camera/IRecordingLimitController;->getDependencyThreadType()Lcom/android/camera/component/CameraCompoment$DependencyThreadType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/component/CameraCompoment$DependencyThreadType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/IRecordingLimitController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/io/StorageSlot;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/camera/IRecordingLimitController;->getRemainingRecordingDuration(Lcom/android/camera/io/StorageSlot;J)Lcom/android/camera/Duration;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/IRecordingLimitController;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/io/StorageSlot;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/camera/IRecordingLimitController;->getRemainingRecordingDuration(Lcom/android/camera/io/StorageSlot;J)Lcom/android/camera/Duration;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public abstract getRemainingRecordingDuration(Lcom/android/camera/io/StorageSlot;J)Lcom/android/camera/Duration;
.end method
