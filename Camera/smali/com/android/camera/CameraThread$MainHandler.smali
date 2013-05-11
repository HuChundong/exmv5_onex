.class final Lcom/android/camera/CameraThread$MainHandler;
.super Landroid/os/Handler;
.source "CameraThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MainHandler"
.end annotation


# instance fields
.field private m_CameraThread:Lcom/android/camera/CameraThread;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/camera/CameraThread$MainHandler;->m_CameraThread:Lcom/android/camera/CameraThread;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/camera/CameraThread$MainHandler;->m_CameraThread:Lcom/android/camera/CameraThread;

    if-nez v1, :cond_0

    const-string v1, "CameraThread"

    const-string v2, "handleMessage() - Handler is released"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :sswitch_0
    return-void

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/camera/CameraThread$MainHandler;->m_CameraThread:Lcom/android/camera/CameraThread;

    aget-object v1, v0, v2

    check-cast v1, Lcom/android/camera/Handle;

    aget-object v2, v0, v4

    check-cast v2, Lcom/android/camera/CameraType;

    #calls: Lcom/android/camera/CameraThread;->openCameraInternal(Lcom/android/camera/Handle;Lcom/android/camera/CameraType;)Z
    invoke-static {v3, v1, v2}, Lcom/android/camera/CameraThread;->access$700(Lcom/android/camera/CameraThread;Lcom/android/camera/Handle;Lcom/android/camera/CameraType;)Z

    goto :goto_0

    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/camera/CameraThread$MainHandler;->m_CameraThread:Lcom/android/camera/CameraThread;

    aget-object v1, v0, v2

    check-cast v1, Lcom/android/camera/Handle;

    aget-object v2, v0, v4

    check-cast v2, Lcom/android/camera/CameraType;

    #calls: Lcom/android/camera/CameraThread;->startPreviewInternal(Lcom/android/camera/Handle;Lcom/android/camera/CameraType;)Lcom/android/camera/CameraPreviewStartResult;
    invoke-static {v3, v1, v2}, Lcom/android/camera/CameraThread;->access$500(Lcom/android/camera/CameraThread;Lcom/android/camera/Handle;Lcom/android/camera/CameraType;)Lcom/android/camera/CameraPreviewStartResult;

    goto :goto_0

    :sswitch_3
    iget-object v2, p0, Lcom/android/camera/CameraThread$MainHandler;->m_CameraThread:Lcom/android/camera/CameraThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera/Handle;

    #calls: Lcom/android/camera/CameraThread;->startPreviewDirectlyInternal(Lcom/android/camera/Handle;)Lcom/android/camera/CameraPreviewStartResult;
    invoke-static {v2, v1}, Lcom/android/camera/CameraThread;->access$600(Lcom/android/camera/CameraThread;Lcom/android/camera/Handle;)Lcom/android/camera/CameraPreviewStartResult;

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/android/camera/CameraThread$MainHandler;->m_CameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->closeCamera()V

    goto :goto_0

    :sswitch_5
    iget-object v1, p0, Lcom/android/camera/CameraThread$MainHandler;->m_CameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->exit()V

    goto :goto_0

    :sswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/camera/CameraThread$MainHandler;->m_CameraThread:Lcom/android/camera/CameraThread;

    aget-object v1, v0, v2

    check-cast v1, Lcom/android/camera/CaptureHandle;

    aget-object v2, v0, v4

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    #calls: Lcom/android/camera/CameraThread;->startVideoRecordingInternal(Lcom/android/camera/CaptureHandle;Z)V
    invoke-static {v3, v1, v2}, Lcom/android/camera/CameraThread;->access$800(Lcom/android/camera/CameraThread;Lcom/android/camera/CaptureHandle;Z)V

    goto :goto_0

    :sswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/camera/CameraThread$MainHandler;->m_CameraThread:Lcom/android/camera/CameraThread;

    aget-object v1, v0, v2

    check-cast v1, Lcom/android/camera/CaptureHandle;

    aget-object v2, v0, v4

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v2, 0x2

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    #calls: Lcom/android/camera/CameraThread;->stopVideoRecordingInternal(Lcom/android/camera/CaptureHandle;ZZ)V
    invoke-static {v3, v1, v4, v2}, Lcom/android/camera/CameraThread;->access$900(Lcom/android/camera/CameraThread;Lcom/android/camera/CaptureHandle;ZZ)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v2, p0, Lcom/android/camera/CameraThread$MainHandler;->m_CameraThread:Lcom/android/camera/CameraThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera/FlashMode;

    #calls: Lcom/android/camera/CameraThread;->setFlashModeInternal(Lcom/android/camera/FlashMode;)V
    invoke-static {v2, v1}, Lcom/android/camera/CameraThread;->access$1000(Lcom/android/camera/CameraThread;Lcom/android/camera/FlashMode;)V

    goto/16 :goto_0

    :sswitch_9
    iget-object v2, p0, Lcom/android/camera/CameraThread$MainHandler;->m_CameraThread:Lcom/android/camera/CameraThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    #calls: Lcom/android/camera/CameraThread;->resetZoomInternal(Z)V
    invoke-static {v2, v1}, Lcom/android/camera/CameraThread;->access$1100(Lcom/android/camera/CameraThread;Z)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v1, p0, Lcom/android/camera/CameraThread$MainHandler;->m_CameraThread:Lcom/android/camera/CameraThread;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraThread;->changeZoom(I)V

    goto/16 :goto_0

    :sswitch_b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_1
        0x2711 -> :sswitch_2
        0x2712 -> :sswitch_3
        0x2713 -> :sswitch_4
        0x2718 -> :sswitch_5
        0x2725 -> :sswitch_8
        0x2726 -> :sswitch_0
        0x273d -> :sswitch_6
        0x273e -> :sswitch_7
        0x2740 -> :sswitch_9
        0x2756 -> :sswitch_a
        0x2774 -> :sswitch_b
    .end sparse-switch
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraThread$MainHandler;->m_CameraThread:Lcom/android/camera/CameraThread;

    return-void
.end method
