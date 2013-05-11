.class Lcom/android/camera/location/LocationManager$1;
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
        "Lcom/android/camera/CameraMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/location/LocationManager;


# direct methods
.method constructor <init>(Lcom/android/camera/location/LocationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/location/LocationManager$1;->this$0:Lcom/android/camera/location/LocationManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/CameraMode;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/CameraMode;",
            ">;)V"
        }
    .end annotation

    sget-object v1, Lcom/android/camera/location/LocationManager$8;->$SwitchMap$com$android$camera$CameraMode:[I

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/CameraMode;

    invoke-virtual {v0}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/location/LocationManager$1;->this$0:Lcom/android/camera/location/LocationManager;

    #calls: Lcom/android/camera/location/LocationManager;->startLocationUpdate()V
    invoke-static {v0}, Lcom/android/camera/location/LocationManager;->access$500(Lcom/android/camera/location/LocationManager;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/location/LocationManager$1;->this$0:Lcom/android/camera/location/LocationManager;

    #calls: Lcom/android/camera/location/LocationManager;->stopLocationUpdate()V
    invoke-static {v0}, Lcom/android/camera/location/LocationManager;->access$600(Lcom/android/camera/location/LocationManager;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
