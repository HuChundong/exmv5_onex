.class public Lcom/android/camera/menu/CameraStorageLocationMenuItem;
.super Lcom/android/camera/menu/ListPreferenceMenuItem;
.source "CameraStorageLocationMenuItem.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;I)V
    .locals 8

    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    const-string v3, "pref_camera_storage_location"

    const v5, 0x7f070024

    const v6, 0x7f070023

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/menu/ListPreferenceMenuItem;-><init>(Landroid/content/Context;Lcom/android/camera/Settings;Ljava/lang/String;IIILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected checkSubItemVisibility(Lcom/android/camera/menu/MenuItem;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
