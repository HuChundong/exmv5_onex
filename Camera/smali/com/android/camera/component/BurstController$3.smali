.class Lcom/android/camera/component/BurstController$3;
.super Ljava/lang/Object;
.source "BurstController.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/BurstController;->takePicture(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CameraController;Landroid/hardware/Camera;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/BurstController;

.field final synthetic val$audioManager:Lcom/android/camera/IAudioManager;


# direct methods
.method constructor <init>(Lcom/android/camera/component/BurstController;Lcom/android/camera/IAudioManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/BurstController$3;->this$0:Lcom/android/camera/component/BurstController;

    iput-object p2, p0, Lcom/android/camera/component/BurstController$3;->val$audioManager:Lcom/android/camera/IAudioManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/component/BurstController$3;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/BurstController;->access$700(Lcom/android/camera/component/BurstController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Burst Mode - Shutter Call-back"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/BurstController$3;->val$audioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/BurstController$3;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/component/BurstController;->m_ShutterSoundHandle:Lcom/android/camera/Handle;
    invoke-static {v0}, Lcom/android/camera/component/BurstController;->access$800(Lcom/android/camera/component/BurstController;)Lcom/android/camera/Handle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/BurstController$3;->val$audioManager:Lcom/android/camera/IAudioManager;

    iget-object v1, p0, Lcom/android/camera/component/BurstController$3;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/component/BurstController;->m_ShutterSoundHandle:Lcom/android/camera/Handle;
    invoke-static {v1}, Lcom/android/camera/component/BurstController;->access$800(Lcom/android/camera/component/BurstController;)Lcom/android/camera/Handle;

    move-result-object v1

    invoke-interface {v0, v1, v2, v2}, Lcom/android/camera/IAudioManager;->playInMemorySound(Lcom/android/camera/Handle;IZ)Lcom/android/camera/Handle;

    :cond_0
    return-void
.end method
