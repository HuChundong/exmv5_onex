.class Lcom/android/camera/component/CaptureResolutionManager$7;
.super Ljava/lang/Object;
.source "CaptureResolutionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/CaptureResolutionManager;->setVideoResolution(Lcom/android/camera/Resolution;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/CaptureResolutionManager;

.field final synthetic val$resolution:Lcom/android/camera/Resolution;


# direct methods
.method constructor <init>(Lcom/android/camera/component/CaptureResolutionManager;Lcom/android/camera/Resolution;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/CaptureResolutionManager$7;->this$0:Lcom/android/camera/component/CaptureResolutionManager;

    iput-object p2, p0, Lcom/android/camera/component/CaptureResolutionManager$7;->val$resolution:Lcom/android/camera/Resolution;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/CaptureResolutionManager$7;->this$0:Lcom/android/camera/component/CaptureResolutionManager;

    iget-object v1, p0, Lcom/android/camera/component/CaptureResolutionManager$7;->val$resolution:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/CaptureResolutionManager;->setVideoResolution(Lcom/android/camera/Resolution;)V

    return-void
.end method
