.class final Lcom/android/camera/component/ObjectTrackingControllerBuilder;
.super Lcom/android/camera/component/CameraThreadComponentBuilder;
.source "ObjectTrackingControllerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/component/CameraThreadComponentBuilder",
        "<",
        "Lcom/android/camera/component/ObjectTrackingController;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const-string v0, "Object Tracking Controller"

    invoke-direct {p0, v0}, Lcom/android/camera/component/CameraThreadComponentBuilder;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createComponent(Lcom/android/camera/CameraThread;)Lcom/android/camera/component/Component;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/component/ObjectTrackingControllerBuilder;->createComponent(Lcom/android/camera/CameraThread;)Lcom/android/camera/component/ObjectTrackingController;

    move-result-object v0

    return-object v0
.end method

.method public createComponent(Lcom/android/camera/CameraThread;)Lcom/android/camera/component/ObjectTrackingController;
    .locals 1

    new-instance v0, Lcom/android/camera/component/ObjectTrackingController;

    invoke-direct {v0, p1}, Lcom/android/camera/component/ObjectTrackingController;-><init>(Lcom/android/camera/CameraThread;)V

    return-object v0
.end method
