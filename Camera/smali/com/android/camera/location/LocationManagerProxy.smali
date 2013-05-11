.class final Lcom/android/camera/location/LocationManagerProxy;
.super Lcom/android/camera/location/ILocationManager;
.source "LocationManagerProxy.java"


# static fields
.field static final MSG_UPDATE_LOCATION:I = 0x2711

.field static final NAME:Ljava/lang/String; = "Location Manager Proxy (Camera Thread)"


# direct methods
.method constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 3

    const-string v0, "Location Manager Proxy (Camera Thread)"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/location/ILocationManager;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;Z)V

    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/location/ILocationManager;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/location/ILocationManager;->location:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 4

    invoke-super {p0}, Lcom/android/camera/location/ILocationManager;->initializeOverride()V

    const-class v1, Lcom/android/camera/location/LocationManager;

    invoke-virtual {p0, v1}, Lcom/android/camera/location/LocationManagerProxy;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/location/ILocationManager;->location:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/camera/location/ILocationManager;->location:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
