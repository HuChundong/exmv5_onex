.class Lcom/android/camera/location/LocationManager$6;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/location/LocationManager;->showGpsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/location/LocationManager;


# direct methods
.method constructor <init>(Lcom/android/camera/location/LocationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/location/LocationManager$6;->this$0:Lcom/android/camera/location/LocationManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/location/LocationManager$6;->this$0:Lcom/android/camera/location/LocationManager;

    #calls: Lcom/android/camera/location/LocationManager;->getSettings()Lcom/android/camera/CameraSettings;
    invoke-static {v0}, Lcom/android/camera/location/LocationManager;->access$1300(Lcom/android/camera/location/LocationManager;)Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->isGeoTaggingEnabled:Lcom/android/camera/property/Property;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
