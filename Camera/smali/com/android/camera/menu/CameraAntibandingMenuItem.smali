.class public Lcom/android/camera/menu/CameraAntibandingMenuItem;
.super Lcom/android/camera/menu/ListPreferenceMenuItem;
.source "CameraAntibandingMenuItem.java"


# instance fields
.field private final m_CameraActivity:Lcom/android/camera/HTCCamera;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;I)V
    .locals 8

    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    const-string v3, "pref_camera_antibanding"

    const v5, 0x7f070030

    const v6, 0x7f07002f

    const-string v7, "auto"

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/menu/ListPreferenceMenuItem;-><init>(Landroid/content/Context;Lcom/android/camera/Settings;Ljava/lang/String;IIILjava/lang/String;)V

    iput-object p1, p0, Lcom/android/camera/menu/CameraAntibandingMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    return-void
.end method


# virtual methods
.method protected checkSubItemVisibility(Lcom/android/camera/menu/MenuItem;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onSubItemClicked(Lcom/android/camera/menu/MenuItem;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/camera/menu/ListPreferenceMenuItem;->onSubItemClicked(Lcom/android/camera/menu/MenuItem;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/menu/CameraAntibandingMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/camera/CameraController;->setAntibanding(Ljava/lang/String;)V

    return-void
.end method
