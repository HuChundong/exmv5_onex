.class Lcom/android/camera/CameraThread$14;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraThread;->checkStorageState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraThread;

.field final synthetic val$checkSize:Z


# direct methods
.method constructor <init>(Lcom/android/camera/CameraThread;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/CameraThread$14;->this$0:Lcom/android/camera/CameraThread;

    iput-boolean p2, p0, Lcom/android/camera/CameraThread$14;->val$checkSize:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/CameraThread$14;->this$0:Lcom/android/camera/CameraThread;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/camera/CameraThread$14;->val$checkSize:Z

    iget-object v3, p0, Lcom/android/camera/CameraThread$14;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->getPendingFileSize()J

    move-result-wide v3

    #calls: Lcom/android/camera/CameraThread;->checkStorageStateInternal(Lcom/android/camera/io/StorageState;ZJ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/CameraThread;->access$1900(Lcom/android/camera/CameraThread;Lcom/android/camera/io/StorageState;ZJ)V

    return-void
.end method
