.class final Lcom/android/camera/component/PowerWarningControllerBuilder;
.super Lcom/android/camera/component/CameraThreadComponentBuilder;
.source "PowerWarningControllerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/component/CameraThreadComponentBuilder",
        "<",
        "Lcom/android/camera/component/PowerWarningController;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    const-string v0, "PowerWarning Controller"

    sget-object v1, Lcom/android/camera/component/ComponentCategory;->Realtime:Lcom/android/camera/component/ComponentCategory;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/CameraThreadComponentBuilder;-><init>(Ljava/lang/String;Lcom/android/camera/component/ComponentCategory;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createComponent(Lcom/android/camera/CameraThread;)Lcom/android/camera/component/Component;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/component/PowerWarningControllerBuilder;->createComponent(Lcom/android/camera/CameraThread;)Lcom/android/camera/component/PowerWarningController;

    move-result-object v0

    return-object v0
.end method

.method public createComponent(Lcom/android/camera/CameraThread;)Lcom/android/camera/component/PowerWarningController;
    .locals 1

    new-instance v0, Lcom/android/camera/component/PowerWarningController;

    invoke-direct {v0, p1}, Lcom/android/camera/component/PowerWarningController;-><init>(Lcom/android/camera/CameraThread;)V

    return-object v0
.end method

.method protected isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    invoke-static {p1}, Lcom/android/camera/component/PowerWarningController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v0

    return v0
.end method
