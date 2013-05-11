.class Lcom/android/camera/location/LocationManager$5;
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

.field final synthetic val$isOKClicked:Lcom/android/camera/Reference;


# direct methods
.method constructor <init>(Lcom/android/camera/location/LocationManager;Lcom/android/camera/Reference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/location/LocationManager$5;->this$0:Lcom/android/camera/location/LocationManager;

    iput-object p2, p0, Lcom/android/camera/location/LocationManager$5;->val$isOKClicked:Lcom/android/camera/Reference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v2, p0, Lcom/android/camera/location/LocationManager$5;->val$isOKClicked:Lcom/android/camera/Reference;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/android/camera/Reference;->target:Ljava/lang/Object;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/location/LocationManager$5;->this$0:Lcom/android/camera/location/LocationManager;

    invoke-virtual {v2}, Lcom/android/camera/location/LocationManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/android/camera/location/LocationManager$5;->this$0:Lcom/android/camera/location/LocationManager;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/location/LocationManager;->access$1100(Lcom/android/camera/location/LocationManager;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "showGpsDialog() - Cannot start location settings"

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/android/camera/location/LocationManager$5;->this$0:Lcom/android/camera/location/LocationManager;

    #calls: Lcom/android/camera/location/LocationManager;->getSettings()Lcom/android/camera/CameraSettings;
    invoke-static {v2}, Lcom/android/camera/location/LocationManager;->access$1200(Lcom/android/camera/location/LocationManager;)Lcom/android/camera/CameraSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->isGeoTaggingEnabled:Lcom/android/camera/property/Property;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0
.end method
