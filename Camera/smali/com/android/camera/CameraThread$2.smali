.class Lcom/android/camera/CameraThread$2;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/CameraThread$2;->this$0:Lcom/android/camera/CameraThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeout(Lcom/android/camera/Handle;Ljava/lang/String;JJLjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/CameraThread$2;->this$0:Lcom/android/camera/CameraThread;

    const-string v1, "JPEG"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->handleCommonCallbackTimeout(Ljava/lang/String;)V

    return-void
.end method
