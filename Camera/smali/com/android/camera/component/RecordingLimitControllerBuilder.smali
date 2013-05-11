.class final Lcom/android/camera/component/RecordingLimitControllerBuilder;
.super Lcom/android/camera/component/CameraThreadComponentBuilder;
.source "RecordingLimitControllerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/component/CameraThreadComponentBuilder",
        "<",
        "Lcom/android/camera/component/RecordingLimitController;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    const-string v0, "Recording Limit Controller"

    sget-object v1, Lcom/android/camera/component/ComponentCategory;->Realtime:Lcom/android/camera/component/ComponentCategory;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/CameraThreadComponentBuilder;-><init>(Ljava/lang/String;Lcom/android/camera/component/ComponentCategory;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createComponent(Lcom/android/camera/CameraThread;)Lcom/android/camera/component/Component;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/component/RecordingLimitControllerBuilder;->createComponent(Lcom/android/camera/CameraThread;)Lcom/android/camera/component/RecordingLimitController;

    move-result-object v0

    return-object v0
.end method

.method public createComponent(Lcom/android/camera/CameraThread;)Lcom/android/camera/component/RecordingLimitController;
    .locals 1

    new-instance v0, Lcom/android/camera/component/RecordingLimitController;

    invoke-direct {v0, p1}, Lcom/android/camera/component/RecordingLimitController;-><init>(Lcom/android/camera/CameraThread;)V

    return-object v0
.end method
