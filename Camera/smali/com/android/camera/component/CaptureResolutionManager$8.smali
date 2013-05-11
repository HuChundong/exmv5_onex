.class Lcom/android/camera/component/CaptureResolutionManager$8;
.super Ljava/lang/Object;
.source "CaptureResolutionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/CaptureResolutionManager;->updateResolutions(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/CaptureResolutionManager;


# direct methods
.method constructor <init>(Lcom/android/camera/component/CaptureResolutionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/CaptureResolutionManager$8;->this$0:Lcom/android/camera/component/CaptureResolutionManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/CaptureResolutionManager$8;->this$0:Lcom/android/camera/component/CaptureResolutionManager;

    invoke-virtual {v0}, Lcom/android/camera/component/CaptureResolutionManager;->updateResolutions()V

    return-void
.end method
