.class Lcom/android/camera/location/LocationManager$3;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/location/LocationManager;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/property/PropertyChangedCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/location/LocationManager;


# direct methods
.method constructor <init>(Lcom/android/camera/location/LocationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/location/LocationManager$3;->this$0:Lcom/android/camera/location/LocationManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/location/LocationManager$3;->this$0:Lcom/android/camera/location/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/location/LocationManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/location/LocationManager$3;->this$0:Lcom/android/camera/location/LocationManager;

    #calls: Lcom/android/camera/location/LocationManager;->onGeoTaggingEnabled()V
    invoke-static {v0}, Lcom/android/camera/location/LocationManager;->access$1000(Lcom/android/camera/location/LocationManager;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/location/LocationManager$3;->this$0:Lcom/android/camera/location/LocationManager;

    #calls: Lcom/android/camera/location/LocationManager;->stopLocationUpdate()V
    invoke-static {v0}, Lcom/android/camera/location/LocationManager;->access$600(Lcom/android/camera/location/LocationManager;)V

    goto :goto_0
.end method
