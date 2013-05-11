.class public Lcom/android/camera/menu/CameraIsoMenuItem;
.super Lcom/android/camera/menu/ListPreferenceMenuItem;
.source "CameraIsoMenuItem.java"


# instance fields
.field private final m_CameraActivity:Lcom/android/camera/HTCCamera;

.field private m_EffectManager:Lcom/android/camera/effect/IEffectManager;

.field private final m_ImageSettings:Lcom/android/camera/ImageSettings;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;I)V
    .locals 8

    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    const-string v3, "pref_camera_iso"

    const v5, 0x7f07001c

    const v6, 0x7f07001b

    const-string v7, "auto"

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/menu/ListPreferenceMenuItem;-><init>(Landroid/content/Context;Lcom/android/camera/Settings;Ljava/lang/String;IIILjava/lang/String;)V

    iput-object p1, p0, Lcom/android/camera/menu/CameraIsoMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    new-instance v0, Lcom/android/camera/ImageSettings;

    invoke-direct {v0, p1}, Lcom/android/camera/ImageSettings;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/menu/CameraIsoMenuItem;->m_ImageSettings:Lcom/android/camera/ImageSettings;

    iget-object v0, p0, Lcom/android/camera/menu/CameraIsoMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/android/camera/effect/IEffectManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/IEffectManager;

    iput-object v0, p0, Lcom/android/camera/menu/CameraIsoMenuItem;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    return-void
.end method


# virtual methods
.method protected checkSubItemVisibility(Lcom/android/camera/menu/MenuItem;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "ISO1250"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSubItemClicked(Lcom/android/camera/menu/MenuItem;Ljava/lang/String;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/android/camera/menu/ListPreferenceMenuItem;->onSubItemClicked(Lcom/android/camera/menu/MenuItem;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/menu/CameraIsoMenuItem;->m_ImageSettings:Lcom/android/camera/ImageSettings;

    iput-object p2, v2, Lcom/android/camera/ImageSettings;->iso:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/menu/CameraIsoMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v2

    const-class v3, Lcom/android/camera/IImageSettingsController;

    invoke-virtual {v2, v3}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IImageSettingsController;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/camera/menu/CameraIsoMenuItem;->m_ImageSettings:Lcom/android/camera/ImageSettings;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/IImageSettingsController;->applyImageSettings(Lcom/android/camera/ImageSettings;Z)V

    :cond_0
    const-string v2, "auto"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/menu/CameraIsoMenuItem;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/menu/CameraIsoMenuItem;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    iget-object v2, v2, Lcom/android/camera/effect/IEffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/camera/effect/SmartSceneDetectorScene;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/menu/CameraIsoMenuItem;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    const-class v3, Lcom/android/camera/effect/AutoScene;

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/IEffectManager;->setCurrentScene(Ljava/lang/Class;)Z

    iget-object v2, p0, Lcom/android/camera/menu/CameraIsoMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v2

    const-class v3, Lcom/android/camera/IToastManager;

    invoke-virtual {v2, v3}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IToastManager;

    if-eqz v1, :cond_2

    const v2, 0x7f0a0061

    invoke-virtual {v1, v2}, Lcom/android/camera/IToastManager;->showToast(I)Lcom/android/camera/Handle;

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v2, "CameraIsoMenuItem"

    const-string v3, "onSubItemClicked() - No IToastManager interface"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
