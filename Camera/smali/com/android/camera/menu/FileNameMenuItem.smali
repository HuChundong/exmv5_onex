.class public Lcom/android/camera/menu/FileNameMenuItem;
.super Lcom/android/camera/menu/ListPreferenceMenuItem;
.source "FileNameMenuItem.java"


# instance fields
.field private final m_CameraActivity:Lcom/android/camera/HTCCamera;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;I)V
    .locals 8

    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    const-string v3, "pref_camera_file_name"

    const v5, 0x7f070032

    const v6, 0x7f070031

    const-string v7, "default"

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/menu/ListPreferenceMenuItem;-><init>(Landroid/content/Context;Lcom/android/camera/Settings;Ljava/lang/String;IIILjava/lang/String;)V

    iput-object p1, p0, Lcom/android/camera/menu/FileNameMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

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

    iget-object v0, p0, Lcom/android/camera/menu/FileNameMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/DisplayDevice;->setFileNameFormat(Lcom/android/camera/HTCCamera;)V

    return-void
.end method

.method public updateContent()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/menu/MenuItem;->updateContent()V

    iget-object v0, p0, Lcom/android/camera/menu/FileNameMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/DisplayDevice;->setFileNameFormat(Lcom/android/camera/HTCCamera;)V

    return-void
.end method
