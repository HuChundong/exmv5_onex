.class Lcom/android/camera/SnapboothThread$6;
.super Ljava/lang/Object;
.source "SnapboothThread.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SnapboothThread;->startPreview(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SnapboothThread;


# direct methods
.method constructor <init>(Lcom/android/camera/SnapboothThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/SnapboothThread$6;->this$0:Lcom/android/camera/SnapboothThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/SnapboothThread$6;->this$0:Lcom/android/camera/SnapboothThread;

    #calls: Lcom/android/camera/SnapboothThread;->onFirstPreviewFrameArrived([B)V
    invoke-static {v0, p1}, Lcom/android/camera/SnapboothThread;->access$1700(Lcom/android/camera/SnapboothThread;[B)V

    return-void
.end method
