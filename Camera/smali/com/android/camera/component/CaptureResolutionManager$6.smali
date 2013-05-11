.class Lcom/android/camera/component/CaptureResolutionManager$6;
.super Ljava/lang/Object;
.source "CaptureResolutionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/CaptureResolutionManager;->setPhotoResolutionProvider(Lcom/android/camera/IPhotoResolutionProvider;Z)Lcom/android/camera/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/CaptureResolutionManager;

.field final synthetic val$handle:Lcom/android/camera/SessionHandle;

.field final synthetic val$provider:Lcom/android/camera/IPhotoResolutionProvider;

.field final synthetic val$syncResolution:Z


# direct methods
.method constructor <init>(Lcom/android/camera/component/CaptureResolutionManager;Lcom/android/camera/SessionHandle;Lcom/android/camera/IPhotoResolutionProvider;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/CaptureResolutionManager$6;->this$0:Lcom/android/camera/component/CaptureResolutionManager;

    iput-object p2, p0, Lcom/android/camera/component/CaptureResolutionManager$6;->val$handle:Lcom/android/camera/SessionHandle;

    iput-object p3, p0, Lcom/android/camera/component/CaptureResolutionManager$6;->val$provider:Lcom/android/camera/IPhotoResolutionProvider;

    iput-boolean p4, p0, Lcom/android/camera/component/CaptureResolutionManager$6;->val$syncResolution:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/component/CaptureResolutionManager$6;->this$0:Lcom/android/camera/component/CaptureResolutionManager;

    iget-object v1, p0, Lcom/android/camera/component/CaptureResolutionManager$6;->val$handle:Lcom/android/camera/SessionHandle;

    iget-object v2, p0, Lcom/android/camera/component/CaptureResolutionManager$6;->val$provider:Lcom/android/camera/IPhotoResolutionProvider;

    iget-boolean v3, p0, Lcom/android/camera/component/CaptureResolutionManager$6;->val$syncResolution:Z

    #calls: Lcom/android/camera/component/CaptureResolutionManager;->setPhotoResolutionProvider(Lcom/android/camera/Handle;Lcom/android/camera/IPhotoResolutionProvider;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/component/CaptureResolutionManager;->access$200(Lcom/android/camera/component/CaptureResolutionManager;Lcom/android/camera/Handle;Lcom/android/camera/IPhotoResolutionProvider;Z)V

    return-void
.end method
