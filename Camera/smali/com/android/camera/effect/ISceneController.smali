.class public abstract Lcom/android/camera/effect/ISceneController;
.super Lcom/android/camera/component/ServiceCameraComponent;
.source "ISceneController.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;Z)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Z)V

    return-void
.end method


# virtual methods
.method public final setScene(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/effect/ISceneController;->setScene(Ljava/lang/String;Z)V

    return-void
.end method

.method public abstract setScene(Ljava/lang/String;Z)V
.end method
