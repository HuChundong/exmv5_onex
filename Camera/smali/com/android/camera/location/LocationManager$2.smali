.class Lcom/android/camera/location/LocationManager$2;
.super Lcom/android/camera/trigger/Trigger;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/location/LocationManager;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/location/LocationManager;


# direct methods
.method constructor <init>(Lcom/android/camera/location/LocationManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/location/LocationManager$2;->this$0:Lcom/android/camera/location/LocationManager;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/location/LocationManager$2;->this$0:Lcom/android/camera/location/LocationManager;

    #calls: Lcom/android/camera/location/LocationManager;->stopLocationUpdate()V
    invoke-static {v0}, Lcom/android/camera/location/LocationManager;->access$600(Lcom/android/camera/location/LocationManager;)V

    return-void
.end method

.method protected onExit()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/location/LocationManager$2;->this$0:Lcom/android/camera/location/LocationManager;

    #calls: Lcom/android/camera/location/LocationManager;->getSettings()Lcom/android/camera/CameraSettings;
    invoke-static {v0}, Lcom/android/camera/location/LocationManager;->access$700(Lcom/android/camera/location/LocationManager;)Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->isGeoTaggingEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/location/LocationManager$2;->this$0:Lcom/android/camera/location/LocationManager;

    #calls: Lcom/android/camera/location/LocationManager;->checkLocationSettings()Z
    invoke-static {v0}, Lcom/android/camera/location/LocationManager;->access$800(Lcom/android/camera/location/LocationManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/location/LocationManager$2;->this$0:Lcom/android/camera/location/LocationManager;

    #calls: Lcom/android/camera/location/LocationManager;->getSettings()Lcom/android/camera/CameraSettings;
    invoke-static {v0}, Lcom/android/camera/location/LocationManager;->access$900(Lcom/android/camera/location/LocationManager;)Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->isGeoTaggingEnabled:Lcom/android/camera/property/Property;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
