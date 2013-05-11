.class final Lcom/android/camera/component/PanoramaControllerBuilder;
.super Lcom/android/camera/component/CameraThreadComponentBuilder;
.source "PanoramaControllerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/component/CameraThreadComponentBuilder",
        "<",
        "Lcom/android/camera/component/PanoramaController;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const-string v0, "Panorama Controller"

    invoke-direct {p0, v0}, Lcom/android/camera/component/CameraThreadComponentBuilder;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createComponent(Lcom/android/camera/CameraThread;)Lcom/android/camera/component/Component;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/component/PanoramaControllerBuilder;->createComponent(Lcom/android/camera/CameraThread;)Lcom/android/camera/component/PanoramaController;

    move-result-object v0

    return-object v0
.end method

.method public createComponent(Lcom/android/camera/CameraThread;)Lcom/android/camera/component/PanoramaController;
    .locals 1

    new-instance v0, Lcom/android/camera/component/PanoramaController;

    invoke-direct {v0, p1}, Lcom/android/camera/component/PanoramaController;-><init>(Lcom/android/camera/CameraThread;)V

    return-object v0
.end method

.method protected isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    invoke-static {p1}, Lcom/android/camera/component/PanoramaController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v0

    return v0
.end method
