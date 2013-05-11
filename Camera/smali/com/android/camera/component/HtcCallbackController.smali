.class final Lcom/android/camera/component/HtcCallbackController;
.super Lcom/android/camera/component/CameraThreadComponent;
.source "HtcCallbackController.java"

# interfaces
.implements Lcom/htc/wrap/android/hardware/HtcWrapCamera$HtcIfCallback;


# static fields
.field private static final CALLBACK_BLINK_CHANGED:I = 0x2

.field private static final CALLBACK_HDR_CHANGED:I = 0x6

.field private static final CALLBACK_LOWLIGHT_CHANGED:I = 0x4

.field static final NAME:Ljava/lang/String; = "HTC Call-back Controller"


# instance fields
.field private final isEyeBlinked:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isHdrSuggested:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isLowlight:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    const-string v0, "HTC Call-back Controller"

    invoke-direct {p0, v0, v2, p1}, Lcom/android/camera/component/CameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V

    const-string v0, "HtcCallbackController.IsEyeBlinked"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v3, p0, v1}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/HtcCallbackController;->isEyeBlinked:Lcom/android/camera/property/Property;

    const-string v0, "HtcCallbackController.IsHdrSuggested"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v3, p0, v1}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/HtcCallbackController;->isHdrSuggested:Lcom/android/camera/property/Property;

    const-string v0, "HtcCallbackController.IsLowlight"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v3, p0, v1}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/HtcCallbackController;->isLowlight:Lcom/android/camera/property/Property;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/HtcCallbackController;)Lcom/android/camera/property/Property;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/HtcCallbackController;->isLowlight:Lcom/android/camera/property/Property;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/HtcCallbackController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public OnReceive(IIILandroid/hardware/Camera;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive() - callbackType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", arg1 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", arg2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/component/HtcCallbackController;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive() - Current component state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/component/HtcCallbackController;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/component/HtcCallbackController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->HtcCallbackReceivedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/HtcCallbackEventArgs;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/camera/HtcCallbackEventArgs;-><init>(III)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/camera/component/HtcCallbackController;->isEyeBlinked:Lcom/android/camera/property/Property;

    if-ne p2, v0, :cond_1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :pswitch_2
    iget-object v2, p0, Lcom/android/camera/component/HtcCallbackController;->isHdrSuggested:Lcom/android/camera/property/Property;

    if-ne p2, v0, :cond_2

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_3

    :pswitch_3
    iget-object v2, p0, Lcom/android/camera/component/HtcCallbackController;->isLowlight:Lcom/android/camera/property/Property;

    if-ne p2, v0, :cond_3

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected deinitializeOverride()V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/camera/component/CameraThreadComponent;->deinitializeOverride()V

    return-void
.end method

.method protected initializeOverride()V
    .locals 3

    invoke-super {p0}, Lcom/android/camera/component/CameraThreadComponent;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/component/HtcCallbackController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/HtcCallbackController;->isEyeBlinked:Lcom/android/camera/property/Property;

    iget-object v2, v0, Lcom/android/camera/CameraThread;->isEyeBlinked:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraThread;->bindProperties(Lcom/android/camera/property/Property;Lcom/android/camera/property/Property;)V

    iget-object v1, p0, Lcom/android/camera/component/HtcCallbackController;->isHdrSuggested:Lcom/android/camera/property/Property;

    iget-object v2, v0, Lcom/android/camera/CameraThread;->isHdrSuggested:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraThread;->bindProperties(Lcom/android/camera/property/Property;Lcom/android/camera/property/Property;)V

    iget-object v1, p0, Lcom/android/camera/component/HtcCallbackController;->isLowlight:Lcom/android/camera/property/Property;

    iget-object v2, v0, Lcom/android/camera/CameraThread;->isLowlight:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraThread;->bindProperties(Lcom/android/camera/property/Property;Lcom/android/camera/property/Property;)V

    iget-object v1, v0, Lcom/android/camera/CameraThread;->cameraClosedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/HtcCallbackController$1;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HtcCallbackController$1;-><init>(Lcom/android/camera/component/HtcCallbackController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v1, v0, Lcom/android/camera/CameraThread;->cameraOpenEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/HtcCallbackController$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HtcCallbackController$2;-><init>(Lcom/android/camera/component/HtcCallbackController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    return-void
.end method
