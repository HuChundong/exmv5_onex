.class Lcom/android/camera/debug/CameraThreadMonitor$1;
.super Ljava/lang/Object;
.source "CameraThreadMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/debug/CameraThreadMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/debug/CameraThreadMonitor;


# direct methods
.method constructor <init>(Lcom/android/camera/debug/CameraThreadMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/debug/CameraThreadMonitor$1;->this$0:Lcom/android/camera/debug/CameraThreadMonitor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/debug/CameraThreadMonitor$1;->this$0:Lcom/android/camera/debug/CameraThreadMonitor;

    iget-object v1, p0, Lcom/android/camera/debug/CameraThreadMonitor$1;->this$0:Lcom/android/camera/debug/CameraThreadMonitor;

    const/16 v2, 0x2712

    #calls: Lcom/android/camera/debug/CameraThreadMonitor;->sendMessage(Lcom/android/camera/component/Component;I)Z
    invoke-static {v0, v1, v2}, Lcom/android/camera/debug/CameraThreadMonitor;->access$000(Lcom/android/camera/debug/CameraThreadMonitor;Lcom/android/camera/component/Component;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/debug/CameraThreadMonitor$1;->this$0:Lcom/android/camera/debug/CameraThreadMonitor;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/debug/CameraThreadMonitor;->access$100(Lcom/android/camera/debug/CameraThreadMonitor;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot send response back"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
