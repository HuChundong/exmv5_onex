.class public final Lcom/android/camera/component/RecordingTimerUIBuilder;
.super Lcom/android/camera/component/UIComponentBuilder;
.source "RecordingTimerUIBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/component/UIComponentBuilder",
        "<",
        "Lcom/android/camera/component/RecordingTimerUI;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 1

    const-string v0, "Recording Timer"

    invoke-direct {p0, v0}, Lcom/android/camera/component/UIComponentBuilder;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/Component;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/component/RecordingTimerUIBuilder;->createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/RecordingTimerUI;

    move-result-object v0

    return-object v0
.end method

.method public createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/RecordingTimerUI;
    .locals 1

    new-instance v0, Lcom/android/camera/component/RecordingTimerUI;

    invoke-direct {v0, p1}, Lcom/android/camera/component/RecordingTimerUI;-><init>(Lcom/android/camera/HTCCamera;)V

    return-object v0
.end method

.method protected isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
