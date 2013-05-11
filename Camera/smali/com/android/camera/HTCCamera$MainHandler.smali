.class Lcom/android/camera/HTCCamera$MainHandler;
.super Landroid/os/Handler;
.source "HTCCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/HTCCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainHandler"
.end annotation


# instance fields
.field private mCameraActivity:Lcom/android/camera/HTCCamera;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/camera/HTCCamera$MainHandler;->mCameraActivity:Lcom/android/camera/HTCCamera;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/camera/HTCCamera$MainHandler;->mCameraActivity:Lcom/android/camera/HTCCamera;

    if-nez v1, :cond_0

    const-string v1, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Main handler is released, drop message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v1, p0, Lcom/android/camera/HTCCamera$MainHandler;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/android/camera/HTCCamera;->countDownSelfTimer(II)V
    invoke-static {v1, v2, v3}, Lcom/android/camera/HTCCamera;->access$700(Lcom/android/camera/HTCCamera;II)V

    goto :goto_0

    :sswitch_1
    const-string v1, "HTCCamera"

    const-string v2, "UIHandler Message - ENABLE_SENSOR_FOCUS start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera$MainHandler;->mCameraActivity:Lcom/android/camera/HTCCamera;

    #setter for: Lcom/android/camera/HTCCamera;->mEnableSensorFocus:Z
    invoke-static {v1, v4}, Lcom/android/camera/HTCCamera;->access$802(Lcom/android/camera/HTCCamera;Z)Z

    const-string v1, "HTCCamera"

    const-string v2, "UIHandler Message - ENABLE_SENSOR_FOCUS end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    const-string v1, "HTCCamera"

    const-string v2, "UIHandler Message - SCREEN_SAVE start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera$MainHandler;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->deactivate()V

    const-string v1, "HTCCamera"

    const-string v2, "UIHandler Message - SCREEN_SAVE end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    const-string v1, "HTCCamera"

    const-string v2, "UIHandler Message - ENABLE_GARBAGE_COLLECTION start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "HTCCamera"

    const-string v2, "UIHandler Message - ENABLE_GARBAGE_COLLECTION end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/android/camera/HTCCamera$MainHandler;->mCameraActivity:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->onCameraThreadRunning()V
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$900(Lcom/android/camera/HTCCamera;)V

    goto :goto_0

    :sswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/camera/HTCCamera$MainHandler;->mCameraActivity:Lcom/android/camera/HTCCamera;

    aget-object v1, v0, v5

    check-cast v1, Lcom/android/camera/CaptureHandle;

    aget-object v2, v0, v4

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    #calls: Lcom/android/camera/HTCCamera;->completeCapture(Lcom/android/camera/CaptureHandle;J)V
    invoke-static {v3, v1, v4, v5}, Lcom/android/camera/HTCCamera;->access$1000(Lcom/android/camera/HTCCamera;Lcom/android/camera/CaptureHandle;J)V

    goto :goto_0

    :sswitch_6
    iget-object v1, p0, Lcom/android/camera/HTCCamera$MainHandler;->mCameraActivity:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->leaveQuickLaunchState()V
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$1100(Lcom/android/camera/HTCCamera;)V

    goto :goto_0

    :sswitch_7
    iget-object v1, p0, Lcom/android/camera/HTCCamera$MainHandler;->mCameraActivity:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->showFocusEnd()V
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$1200(Lcom/android/camera/HTCCamera;)V

    goto :goto_0

    :sswitch_8
    const-string v1, "HTCCamera"

    const-string v2, "MSG_TOUCH_FOCUS - trigger focus"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/HTCCamera$MainHandler;->mCameraActivity:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mTouchFocusDisabledCounter:I
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$1300(Lcom/android/camera/HTCCamera;)I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v2, p0, Lcom/android/camera/HTCCamera$MainHandler;->mCameraActivity:Lcom/android/camera/HTCCamera;

    aget-object v1, v0, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v1, v0, v4

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/HTCCamera;->takeFocus(II)V

    goto/16 :goto_0

    :cond_1
    const-string v1, "HTCCamera"

    const-string v2, "MSG_TOUCH_FOCUS - Will not take focus due to Touch Focus is disabled."

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x1e -> :sswitch_1
        0x24 -> :sswitch_2
        0x38 -> :sswitch_3
        0x53 -> :sswitch_7
        0x2776 -> :sswitch_4
        0x277a -> :sswitch_5
        0x277b -> :sswitch_6
        0x27d8 -> :sswitch_9
        0x283c -> :sswitch_8
    .end sparse-switch
.end method

.method public final release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/HTCCamera$MainHandler;->mCameraActivity:Lcom/android/camera/HTCCamera;

    return-void
.end method
