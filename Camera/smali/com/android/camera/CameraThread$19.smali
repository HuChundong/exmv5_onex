.class Lcom/android/camera/CameraThread$19;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraThread;->changeMode(Lcom/android/camera/CameraMode;)Lcom/android/camera/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraThread;

.field final synthetic val$handle:Lcom/android/camera/CameraThread$ModeChangeHandle;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$ModeChangeHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/CameraThread$19;->this$0:Lcom/android/camera/CameraThread;

    iput-object p2, p0, Lcom/android/camera/CameraThread$19;->val$handle:Lcom/android/camera/CameraThread$ModeChangeHandle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/CameraThread$19;->this$0:Lcom/android/camera/CameraThread;

    iget-object v1, p0, Lcom/android/camera/CameraThread$19;->val$handle:Lcom/android/camera/CameraThread$ModeChangeHandle;

    #calls: Lcom/android/camera/CameraThread;->changeModeInternal(Lcom/android/camera/CameraThread$ModeChangeHandle;)V
    invoke-static {v0, v1}, Lcom/android/camera/CameraThread;->access$2200(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$ModeChangeHandle;)V

    return-void
.end method
