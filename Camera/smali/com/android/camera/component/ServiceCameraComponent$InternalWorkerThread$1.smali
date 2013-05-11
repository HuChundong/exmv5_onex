.class Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread$1;
.super Ljava/lang/Object;
.source "ServiceCameraComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;->onEnter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;

.field final synthetic val$owner:Lcom/android/camera/component/ServiceCameraComponent;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;Lcom/android/camera/component/ServiceCameraComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread$1;->this$0:Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;

    iput-object p2, p0, Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread$1;->val$owner:Lcom/android/camera/component/ServiceCameraComponent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread$1;->val$owner:Lcom/android/camera/component/ServiceCameraComponent;

    #calls: Lcom/android/camera/component/ServiceCameraComponent;->notifyWorkerThreadRunning()V
    invoke-static {v0}, Lcom/android/camera/component/ServiceCameraComponent;->access$100(Lcom/android/camera/component/ServiceCameraComponent;)V

    return-void
.end method
