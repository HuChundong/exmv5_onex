.class Lcom/android/camera/CameraThread$21;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraThread;->setCaptureRotation(Lcom/android/camera/rotate/UIRotation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraThread;

.field final synthetic val$rotation:Lcom/android/camera/rotate/UIRotation;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraThread;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/CameraThread$21;->this$0:Lcom/android/camera/CameraThread;

    iput-object p2, p0, Lcom/android/camera/CameraThread$21;->val$rotation:Lcom/android/camera/rotate/UIRotation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/CameraThread$21;->this$0:Lcom/android/camera/CameraThread;

    iget-object v1, p0, Lcom/android/camera/CameraThread$21;->val$rotation:Lcom/android/camera/rotate/UIRotation;

    #calls: Lcom/android/camera/CameraThread;->setCaptureRotationInternal(Lcom/android/camera/rotate/UIRotation;)V
    invoke-static {v0, v1}, Lcom/android/camera/CameraThread;->access$2400(Lcom/android/camera/CameraThread;Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method
