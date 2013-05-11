.class public final Lcom/android/camera/location/LocationManagerProxyBuilder;
.super Lcom/android/camera/component/CameraThreadComponentBuilder;
.source "LocationManagerProxyBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/component/CameraThreadComponentBuilder",
        "<",
        "Lcom/android/camera/location/LocationManagerProxy;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Location Manager Proxy (Camera Thread)"

    invoke-direct {p0, v0}, Lcom/android/camera/component/CameraThreadComponentBuilder;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createComponent(Lcom/android/camera/CameraThread;)Lcom/android/camera/component/Component;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/location/LocationManagerProxyBuilder;->createComponent(Lcom/android/camera/CameraThread;)Lcom/android/camera/location/LocationManagerProxy;

    move-result-object v0

    return-object v0
.end method

.method public createComponent(Lcom/android/camera/CameraThread;)Lcom/android/camera/location/LocationManagerProxy;
    .locals 1

    new-instance v0, Lcom/android/camera/location/LocationManagerProxy;

    invoke-direct {v0, p1}, Lcom/android/camera/location/LocationManagerProxy;-><init>(Lcom/android/camera/CameraThread;)V

    return-object v0
.end method
