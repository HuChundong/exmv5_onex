.class Lcom/android/camera/HTCCamera$29;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/HTCCamera;->notifyCameraThreadBlocked(Lcom/android/camera/CameraThreadBlockReason;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCCamera;

.field final synthetic val$blockReason:Lcom/android/camera/CameraThreadBlockReason;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraThreadBlockReason;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCamera$29;->this$0:Lcom/android/camera/HTCCamera;

    iput-object p2, p0, Lcom/android/camera/HTCCamera$29;->val$blockReason:Lcom/android/camera/CameraThreadBlockReason;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/HTCCamera$29;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, p0, Lcom/android/camera/HTCCamera$29;->val$blockReason:Lcom/android/camera/CameraThreadBlockReason;

    #calls: Lcom/android/camera/HTCCamera;->onCameraThreadBlocked(Lcom/android/camera/CameraThreadBlockReason;)V
    invoke-static {v0, v1}, Lcom/android/camera/HTCCamera;->access$3800(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraThreadBlockReason;)V

    return-void
.end method
