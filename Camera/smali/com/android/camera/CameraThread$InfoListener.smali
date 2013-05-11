.class final Lcom/android/camera/CameraThread$InfoListener;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InfoListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraThread;


# direct methods
.method private constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/CameraThread$InfoListener;->this$0:Lcom/android/camera/CameraThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread$InfoListener;-><init>(Lcom/android/camera/CameraThread;)V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/CameraThread$InfoListener;->this$0:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mediaRecorderInfoCallbackEvent:Lcom/android/camera/event/Event;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/camera/MediaRecorderInfoEventArgs;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/camera/MediaRecorderInfoEventArgs;-><init>(Landroid/media/MediaRecorder;II)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    return-void
.end method
