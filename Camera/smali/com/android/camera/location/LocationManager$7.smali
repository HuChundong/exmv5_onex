.class Lcom/android/camera/location/LocationManager$7;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    iput-object p1, p0, Lcom/android/camera/location/LocationManager$7;->this$0:Lcom/android/camera/location/LocationManager;

    iput-object p2, p0, Lcom/android/camera/location/LocationManager$7;->val$isOKClicked:Lcom/android/camera/Reference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/location/LocationManager$7;->val$isOKClicked:Lcom/android/camera/Reference;

    iget-object v0, v0, Lcom/android/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/location/LocationManager$7;->this$0:Lcom/android/camera/location/LocationManager;

    #calls: Lcom/android/camera/location/LocationManager;->getSettings()Lcom/android/camera/CameraSettings;
    invoke-static {v0}, Lcom/android/camera/location/LocationManager;->access$1400(Lcom/android/camera/location/LocationManager;)Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->isGeoTaggingEnabled:Lcom/android/camera/property/Property;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
