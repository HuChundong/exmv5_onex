.class public final Lcom/android/camera/component/SensorFocusControllerBuilder;
.super Lcom/android/camera/component/UIComponentBuilder;
.source "SensorFocusControllerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/component/UIComponentBuilder",
        "<",
        "Lcom/android/camera/component/SensorFocusController;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const-string v0, "Sensor-Focus Controller"

    invoke-direct {p0, v0}, Lcom/android/camera/component/UIComponentBuilder;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/Component;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/component/SensorFocusControllerBuilder;->createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/SensorFocusController;

    move-result-object v0

    return-object v0
.end method

.method public createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/SensorFocusController;
    .locals 1

    new-instance v0, Lcom/android/camera/component/SensorFocusController;

    invoke-direct {v0, p1}, Lcom/android/camera/component/SensorFocusController;-><init>(Lcom/android/camera/HTCCamera;)V

    return-object v0
.end method

.method protected isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSensorFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->hasAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
