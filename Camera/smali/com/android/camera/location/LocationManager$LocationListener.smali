.class Lcom/android/camera/location/LocationManager$LocationListener;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationListener"
.end annotation


# instance fields
.field private m_IsValid:Z

.field private m_LatestLocation:Landroid/location/Location;

.field private final m_ProviderName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/camera/location/LocationManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/location/LocationManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/location/LocationManager$LocationListener;->this$0:Lcom/android/camera/location/LocationManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/camera/location/LocationManager$LocationListener;->m_ProviderName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getLatestLocation()Landroid/location/Location;
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/location/LocationManager$LocationListener;->m_IsValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/location/LocationManager$LocationListener;->m_LatestLocation:Landroid/location/Location;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getProviderName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/location/LocationManager$LocationListener;->m_ProviderName:Ljava/lang/String;

    return-object v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/camera/location/LocationManager$LocationListener;->m_LatestLocation:Landroid/location/Location;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/location/LocationManager$LocationListener;->m_IsValid:Z

    iget-object v0, p0, Lcom/android/camera/location/LocationManager$LocationListener;->this$0:Lcom/android/camera/location/LocationManager;

    #calls: Lcom/android/camera/location/LocationManager;->updateLocation()V
    invoke-static {v0}, Lcom/android/camera/location/LocationManager;->access$000(Lcom/android/camera/location/LocationManager;)V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/location/LocationManager$LocationListener;->this$0:Lcom/android/camera/location/LocationManager;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/location/LocationManager;->access$100(Lcom/android/camera/location/LocationManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onProviderDisabled() - Provider \'"

    iget-object v2, p0, Lcom/android/camera/location/LocationManager$LocationListener;->m_ProviderName:Ljava/lang/String;

    const-string v3, "\' is disabled"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/location/LocationManager$LocationListener;->m_IsValid:Z

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/location/LocationManager$LocationListener;->this$0:Lcom/android/camera/location/LocationManager;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/location/LocationManager;->access$200(Lcom/android/camera/location/LocationManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onProviderEnabled() - Provider \'"

    iget-object v2, p0, Lcom/android/camera/location/LocationManager$LocationListener;->m_ProviderName:Ljava/lang/String;

    const-string v3, "\' is enabled"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/location/LocationManager$LocationListener;->m_IsValid:Z

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 4

    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/location/LocationManager$LocationListener;->this$0:Lcom/android/camera/location/LocationManager;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/location/LocationManager;->access$300(Lcom/android/camera/location/LocationManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStatusChanged() - Provider \'"

    iget-object v2, p0, Lcom/android/camera/location/LocationManager$LocationListener;->m_ProviderName:Ljava/lang/String;

    const-string v3, "\' is available"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/location/LocationManager$LocationListener;->m_IsValid:Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/location/LocationManager$LocationListener;->this$0:Lcom/android/camera/location/LocationManager;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/location/LocationManager;->access$400(Lcom/android/camera/location/LocationManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStatusChanged() - Provider \'"

    iget-object v2, p0, Lcom/android/camera/location/LocationManager$LocationListener;->m_ProviderName:Ljava/lang/String;

    const-string v3, "\' is out of service"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/location/LocationManager$LocationListener;->m_IsValid:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/location/LocationManager$LocationListener;->m_LatestLocation:Landroid/location/Location;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/location/LocationManager$LocationListener;->m_IsValid:Z

    return-void
.end method
