.class Lcom/android/camera/component/HandShakeUI$10;
.super Ljava/lang/Object;
.source "HandShakeUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/HandShakeUI;->setupPropertyChangedCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/HandShakeUI;

.field final synthetic val$cameraThread:Lcom/android/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/android/camera/component/HandShakeUI;Lcom/android/camera/CameraThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/HandShakeUI$10;->this$0:Lcom/android/camera/component/HandShakeUI;

    iput-object p2, p0, Lcom/android/camera/component/HandShakeUI$10;->val$cameraThread:Lcom/android/camera/CameraThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/HandShakeUI$10;->val$cameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->isLowlight:Lcom/android/camera/property/Property;

    new-instance v1, Lcom/android/camera/component/HandShakeUI$10$1;

    invoke-direct {v1, p0}, Lcom/android/camera/component/HandShakeUI$10$1;-><init>(Lcom/android/camera/component/HandShakeUI$10;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    return-void
.end method
