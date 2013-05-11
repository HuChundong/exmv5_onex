.class Lcom/android/camera/component/IndicatorsUI$21;
.super Ljava/lang/Object;
.source "IndicatorsUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/IndicatorsUI;->showRemainingCounter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/IndicatorsUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/IndicatorsUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/IndicatorsUI$21;->this$0:Lcom/android/camera/component/IndicatorsUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI$21;->this$0:Lcom/android/camera/component/IndicatorsUI;

    invoke-virtual {v0}, Lcom/android/camera/component/IndicatorsUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v6

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI$21;->this$0:Lcom/android/camera/component/IndicatorsUI;

    invoke-virtual {v0}, Lcom/android/camera/component/IndicatorsUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v7

    sget-object v1, Lcom/android/camera/component/IndicatorsUI$22;->$SwitchMap$com$android$camera$io$StorageState:[I

    iget-object v0, v7, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/io/StorageState;

    invoke-virtual {v0}, Lcom/android/camera/io/StorageState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v12

    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    iget-boolean v0, v12, Lcom/android/camera/CameraStartMode;->supportsPhotoMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->calculatePicturesRemaining()J

    move-result-wide v8

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-ltz v0, :cond_0

    sget-object v0, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    const/16 v1, 0xa

    invoke-static {v8, v9, v1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-boolean v0, v12, Lcom/android/camera/CameraStartMode;->supportsVideoMode:Z

    if-eqz v0, :cond_1

    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraStartMode;->MmsVideo:Lcom/android/camera/CameraStartMode;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI$21;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/IndicatorsUI;->access$2000(Lcom/android/camera/component/IndicatorsUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Request from MMS, not need to update free length"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI$21;->this$0:Lcom/android/camera/component/IndicatorsUI;

    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI$21;->this$0:Lcom/android/camera/component/IndicatorsUI;

    const/4 v2, 0x1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/IndicatorsUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraStartMode;->NotesVideo:Lcom/android/camera/CameraStartMode;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI$21;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/IndicatorsUI;->access$2100(Lcom/android/camera/component/IndicatorsUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Request from Notes, not need to update free length"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI$21;->this$0:Lcom/android/camera/component/IndicatorsUI;

    const-class v1, Lcom/android/camera/IRecordingLimitController;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/IndicatorsUI;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/IRecordingLimitController;

    if-eqz v11, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI$21;->this$0:Lcom/android/camera/component/IndicatorsUI;

    invoke-virtual {v0}, Lcom/android/camera/component/IndicatorsUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getPendingFileSize()J

    move-result-wide v0

    invoke-virtual {v11, v0, v1}, Lcom/android/camera/IRecordingLimitController;->getRemainingRecordingDuration(J)Lcom/android/camera/Duration;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/Duration;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI$21;->this$0:Lcom/android/camera/component/IndicatorsUI;

    invoke-virtual {v10}, Lcom/android/camera/Duration;->getSeconds()J

    move-result-wide v13

    #calls: Lcom/android/camera/component/IndicatorsUI;->convertToRemainingTimeString(J)Ljava/lang/String;
    invoke-static {v1, v13, v14}, Lcom/android/camera/component/IndicatorsUI;->access$2200(Lcom/android/camera/component/IndicatorsUI;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
