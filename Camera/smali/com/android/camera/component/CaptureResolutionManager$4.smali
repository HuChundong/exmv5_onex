.class Lcom/android/camera/component/CaptureResolutionManager$4;
.super Ljava/lang/Object;
.source "CaptureResolutionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/CaptureResolutionManager;->restorePhotoResolutionProvider(Lcom/android/camera/Handle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/CaptureResolutionManager;

.field final synthetic val$handle:Lcom/android/camera/Handle;

.field final synthetic val$syncResolution:Z


# direct methods
.method constructor <init>(Lcom/android/camera/component/CaptureResolutionManager;Lcom/android/camera/Handle;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/CaptureResolutionManager$4;->this$0:Lcom/android/camera/component/CaptureResolutionManager;

    iput-object p2, p0, Lcom/android/camera/component/CaptureResolutionManager$4;->val$handle:Lcom/android/camera/Handle;

    iput-boolean p3, p0, Lcom/android/camera/component/CaptureResolutionManager$4;->val$syncResolution:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/component/CaptureResolutionManager$4;->this$0:Lcom/android/camera/component/CaptureResolutionManager;

    iget-object v1, p0, Lcom/android/camera/component/CaptureResolutionManager$4;->val$handle:Lcom/android/camera/Handle;

    iget-boolean v2, p0, Lcom/android/camera/component/CaptureResolutionManager$4;->val$syncResolution:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/component/CaptureResolutionManager;->restorePhotoResolutionProvider(Lcom/android/camera/Handle;Z)V

    return-void
.end method
