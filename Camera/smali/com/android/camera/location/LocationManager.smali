.class final Lcom/android/camera/location/LocationManager;
.super Lcom/android/camera/location/ILocationManager;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/location/LocationManager$8;,
        Lcom/android/camera/location/LocationManager$LocationListener;
    }
.end annotation


# static fields
.field static final NAME:Ljava/lang/String; = "Location Manager"


# instance fields
.field private final m_LocationListeners:[Lcom/android/camera/location/LocationManager$LocationListener;

.field private m_Proxy:Lcom/android/camera/location/LocationManagerProxy;

.field private m_SysLocationManager:Landroid/location/LocationManager;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "Location Manager"

    invoke-direct {p0, v0, v3, p1, v3}, Lcom/android/camera/location/ILocationManager;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Z)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/location/LocationManager$LocationListener;

    new-instance v1, Lcom/android/camera/location/LocationManager$LocationListener;

    const-string v2, "gps"

    invoke-direct {v1, p0, v2}, Lcom/android/camera/location/LocationManager$LocationListener;-><init>(Lcom/android/camera/location/LocationManager;Ljava/lang/String;)V

    aput-object v1, v0, v3

    const/4 v1, 0x1

    new-instance v2, Lcom/android/camera/location/LocationManager$LocationListener;

    const-string v3, "network"

    invoke-direct {v2, p0, v3}, Lcom/android/camera/location/LocationManager$LocationListener;-><init>(Lcom/android/camera/location/LocationManager;Ljava/lang/String;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/location/LocationManager;->m_LocationListeners:[Lcom/android/camera/location/LocationManager$LocationListener;

    invoke-virtual {p0}, Lcom/android/camera/location/LocationManager;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->isGeoTaggingEnabled:Lcom/android/camera/property/Property;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->enableLogs(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/location/LocationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/location/LocationManager;->updateLocation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/location/LocationManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/location/LocationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/location/LocationManager;->onGeoTaggingEnabled()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/location/LocationManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/location/LocationManager;)Lcom/android/camera/CameraSettings;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/location/LocationManager;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/location/LocationManager;)Lcom/android/camera/CameraSettings;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/location/LocationManager;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/location/LocationManager;)Lcom/android/camera/CameraSettings;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/location/LocationManager;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/location/LocationManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/location/LocationManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/location/LocationManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/location/LocationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/location/LocationManager;->startLocationUpdate()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/location/LocationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/location/LocationManager;->stopLocationUpdate()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/location/LocationManager;)Lcom/android/camera/CameraSettings;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/location/LocationManager;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/location/LocationManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/location/LocationManager;->checkLocationSettings()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/location/LocationManager;)Lcom/android/camera/CameraSettings;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/location/LocationManager;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    return-object v0
.end method

.method private checkLocationSettings()Z
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/location/LocationManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    const-string v4, "location"

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "gps"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    :goto_0
    return v2

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "checkLocationSetting() - Error"

    invoke-static {v3, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private linkToProxy()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/camera/location/LocationManager;->getState()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/camera/location/LocationManager;->m_Proxy:Lcom/android/camera/location/LocationManagerProxy;

    if-eqz v0, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const-class v0, Lcom/android/camera/location/LocationManagerProxy;

    invoke-virtual {p0, v0}, Lcom/android/camera/location/LocationManager;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/location/LocationManagerProxy;

    iput-object v0, p0, Lcom/android/camera/location/LocationManager;->m_Proxy:Lcom/android/camera/location/LocationManagerProxy;

    iget-object v0, p0, Lcom/android/camera/location/LocationManager;->m_Proxy:Lcom/android/camera/location/LocationManagerProxy;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private onGeoTaggingEnabled()V
    .locals 3

    invoke-direct {p0}, Lcom/android/camera/location/LocationManager;->checkLocationSettings()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/location/LocationManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->isResettingToDefault:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/location/LocationManager;->showGpsDialog()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/location/LocationManager;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->isGeoTaggingEnabled:Lcom/android/camera/property/Property;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/location/LocationManager;->startLocationUpdate()V

    invoke-virtual {p0}, Lcom/android/camera/location/LocationManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->isResettingToDefault:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/camera/IToastManager;

    invoke-virtual {p0, v1}, Lcom/android/camera/location/LocationManager;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IToastManager;

    if-eqz v0, :cond_3

    const v1, 0x7f0a012b

    invoke-virtual {v0, v1}, Lcom/android/camera/IToastManager;->showToast(I)Lcom/android/camera/Handle;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onGeoTaggingEnabled() - No IToastManager interface"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showGpsDialog()V
    .locals 8

    new-instance v3, Lcom/android/camera/Reference;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/android/camera/Reference;-><init>(Ljava/lang/Object;)V

    new-instance v5, Lcom/android/camera/location/LocationManager$5;

    invoke-direct {v5, p0, v3}, Lcom/android/camera/location/LocationManager$5;-><init>(Lcom/android/camera/location/LocationManager;Lcom/android/camera/Reference;)V

    new-instance v4, Lcom/android/camera/location/LocationManager$6;

    invoke-direct {v4, p0}, Lcom/android/camera/location/LocationManager$6;-><init>(Lcom/android/camera/location/LocationManager;)V

    new-instance v2, Lcom/android/camera/location/LocationManager$7;

    invoke-direct {v2, p0, v3}, Lcom/android/camera/location/LocationManager$7;-><init>(Lcom/android/camera/location/LocationManager;Lcom/android/camera/Reference;)V

    new-instance v6, Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/camera/location/LocationManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0a01e2

    invoke-virtual {v6, v7}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0a01e3

    invoke-virtual {v6, v7}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x2040218

    invoke-virtual {v6, v7, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v6

    const/high16 v7, 0x104

    invoke-virtual {v6, v7, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v0

    const-class v6, Lcom/android/camera/IRotateDialogManager;

    invoke-virtual {p0, v6}, Lcom/android/camera/location/LocationManager;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IRotateDialogManager;

    if-eqz v1, :cond_0

    const/4 v6, 0x1

    invoke-virtual {v1, v0, v2, v6}, Lcom/android/camera/IRotateDialogManager;->showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;Z)Lcom/android/camera/Handle;

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v7, "resetToDefault() - Cannot find IRotateDialogManager interface"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startLocationUpdate()V
    .locals 8

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "startLocationUpdate()"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/location/LocationManager;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v0

    sget-object v2, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "startLocationUpdate() - Camera mode is not Photo"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/location/LocationManager;->stopLocationUpdate()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/location/LocationManager;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->isGeoTaggingEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "startLocationUpdate() - Geo-tagging is disabled"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/location/LocationManager;->stopLocationUpdate()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/location/LocationManager;->m_SysLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "startLocationUpdate() - Location update is already started"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/location/LocationManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "startLocationUpdate() - Activity is paused, return"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/location/LocationManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    const-string v2, "location"

    invoke-virtual {v0, v2}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/camera/location/LocationManager;->m_SysLocationManager:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/android/camera/location/LocationManager;->m_SysLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "startLocationUpdate() - Cannot get system location manager"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "startLocationUpdate() - Cannot get system location manager"

    invoke-static {v0, v2, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_5
    const/4 v7, 0x0

    :goto_1
    iget-object v0, p0, Lcom/android/camera/location/LocationManager;->m_LocationListeners:[Lcom/android/camera/location/LocationManager$LocationListener;

    array-length v0, v0

    if-ge v7, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/location/LocationManager;->m_LocationListeners:[Lcom/android/camera/location/LocationManager$LocationListener;

    aget-object v5, v0, v7

    invoke-virtual {v5}, Lcom/android/camera/location/LocationManager$LocationListener;->getProviderName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "startLocationUpdate() - Setup location listener for provider \'"

    const-string v3, "\'"

    invoke-static {v0, v2, v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :try_start_1
    iget-object v0, p0, Lcom/android/camera/location/LocationManager;->m_SysLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/location/LocationManager;->m_SysLocationManager:Landroid/location/LocationManager;

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startLocationUpdate() - Provider \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is disabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v6

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startLocationUpdate() - Cannot setup listener for provider \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private stopLocationUpdate()V
    .locals 4

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "stopLocationUpdate()"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/location/LocationManager;->m_SysLocationManager:Landroid/location/LocationManager;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "stopLocationUpdate() - Location update is already stopped"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/camera/location/LocationManager;->m_LocationListeners:[Lcom/android/camera/location/LocationManager$LocationListener;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/location/LocationManager;->m_LocationListeners:[Lcom/android/camera/location/LocationManager$LocationListener;

    aget-object v1, v2, v0

    iget-object v2, p0, Lcom/android/camera/location/LocationManager;->m_SysLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    invoke-virtual {v1}, Lcom/android/camera/location/LocationManager$LocationListener;->reset()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/location/LocationManager;->m_SysLocationManager:Landroid/location/LocationManager;

    invoke-direct {p0}, Lcom/android/camera/location/LocationManager;->updateLocation()V

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method private updateLocation()V
    .locals 8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/camera/location/LocationManager;->m_LocationListeners:[Lcom/android/camera/location/LocationManager$LocationListener;

    array-length v0, v0

    if-ge v7, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/location/LocationManager;->m_LocationListeners:[Lcom/android/camera/location/LocationManager$LocationListener;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lcom/android/camera/location/LocationManager$LocationListener;->getLatestLocation()Landroid/location/Location;

    move-result-object v6

    if-eqz v6, :cond_2

    move-object v5, v6

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "updateLocation() - New location : "

    invoke-static {v0, v1, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/location/ILocationManager;->location:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/camera/location/LocationManager;->linkToProxy()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/location/LocationManager;->m_Proxy:Lcom/android/camera/location/LocationManagerProxy;

    const/16 v2, 0x2711

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/location/LocationManager;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/location/LocationManager;->stopLocationUpdate()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/location/LocationManager;->m_Proxy:Lcom/android/camera/location/LocationManagerProxy;

    invoke-super {p0}, Lcom/android/camera/location/ILocationManager;->deinitializeOverride()V

    return-void
.end method

.method protected initializeOverride()V
    .locals 6

    const/4 v5, 0x1

    invoke-super {p0}, Lcom/android/camera/location/ILocationManager;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/location/LocationManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/location/LocationManager$1;

    invoke-direct {v2, p0}, Lcom/android/camera/location/LocationManager$1;-><init>(Lcom/android/camera/location/LocationManager;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/location/LocationManager$2;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/location/LocationManager$2;-><init>(Lcom/android/camera/location/LocationManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/camera/location/LocationManager;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->isGeoTaggingEnabled:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/location/LocationManager$3;

    invoke-direct {v2, p0}, Lcom/android/camera/location/LocationManager$3;-><init>(Lcom/android/camera/location/LocationManager;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/location/LocationManager$4;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/location/LocationManager$4;-><init>(Lcom/android/camera/location/LocationManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/camera/location/LocationManager;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->isGeoTaggingEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/location/LocationManager;->checkLocationSettings()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/location/LocationManager;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->isGeoTaggingEnabled:Lcom/android/camera/property/Property;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
