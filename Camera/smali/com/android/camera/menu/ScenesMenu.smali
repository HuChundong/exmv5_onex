.class public Lcom/android/camera/menu/ScenesMenu;
.super Lcom/android/camera/menu/MenuListView;
.source "ScenesMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/menu/ScenesMenu$SubItem_UserScenes;,
        Lcom/android/camera/menu/ScenesMenu$UserScenesHeaderBarItem;,
        Lcom/android/camera/menu/ScenesMenu$SubItem;
    }
.end annotation


# static fields
.field public static final ITEM_ID_USER_SCENES_EXPAND_MENU_HEADER:I = 0x64


# instance fields
.field private m_CameraActivity:Lcom/android/camera/HTCCamera;

.field private m_Items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/menu/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_Items_UserScenes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/menu/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_Settings:Lcom/android/camera/Settings;

.field private m_UserScenesExpandMenuItem:Lcom/android/camera/menu/MenuItem;

.field private m_UserScenesHeaderBarItem:Lcom/android/camera/menu/ScenesMenu$UserScenesHeaderBarItem;

.field private m_lastSceneInSceneSelect:Lcom/android/camera/effect/EffectBase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/menu/MenuListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/menu/ScenesMenu;->m_Items:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/menu/ScenesMenu;->m_Items_UserScenes:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/menu/ScenesMenu;->m_lastSceneInSceneSelect:Lcom/android/camera/effect/EffectBase;

    instance-of v0, p1, Lcom/android/camera/HTCCamera;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/camera/HTCCamera;

    iput-object p1, p0, Lcom/android/camera/menu/ScenesMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v0, p0, Lcom/android/camera/menu/ScenesMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/menu/ScenesMenu;->m_Settings:Lcom/android/camera/Settings;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method static synthetic access$000(Lcom/android/camera/effect/EffectBase;)[Ljava/lang/Integer;
    .locals 1

    invoke-static {p0}, Lcom/android/camera/menu/ScenesMenu;->getIconAndText(Lcom/android/camera/effect/EffectBase;)[Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/menu/ScenesMenu;)Lcom/android/camera/HTCCamera;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/menu/ScenesMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/menu/ScenesMenu;)Lcom/android/camera/effect/EffectBase;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/menu/ScenesMenu;->m_lastSceneInSceneSelect:Lcom/android/camera/effect/EffectBase;

    return-object v0
.end method

.method private static getIconAndText(Lcom/android/camera/effect/EffectBase;)[Ljava/lang/Integer;
    .locals 6

    const/4 v5, 0x0

    const v4, 0x7f0200a8

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    instance-of v0, p0, Lcom/android/camera/effect/AutoScene;

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Integer;

    const v1, 0x20800a2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0a021a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p0, Lcom/android/camera/effect/SmartSceneDetectorScene;

    if-eqz v0, :cond_1

    new-array v0, v1, [Ljava/lang/Integer;

    const v1, 0x7f0200af

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0a0219

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/android/camera/effect/PortraitScene;

    if-eqz v0, :cond_2

    new-array v0, v1, [Ljava/lang/Integer;

    const-string v1, "com.htc.R.drawable.icon_btn_people_dark"

    invoke-static {v1}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0a021b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/android/camera/effect/LandscapeScene;

    if-eqz v0, :cond_3

    new-array v0, v1, [Ljava/lang/Integer;

    const v1, 0x7f0200a9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0a021c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lcom/android/camera/effect/SmartShotScene;

    if-eqz v0, :cond_4

    new-array v0, v1, [Ljava/lang/Integer;

    const v1, 0x7f0200a7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0a00bb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0

    :cond_4
    instance-of v0, p0, Lcom/android/camera/effect/ActionScene;

    if-eqz v0, :cond_5

    new-array v0, v1, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0a0223

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0

    :cond_5
    instance-of v0, p0, Lcom/android/camera/effect/BurstScene;

    if-eqz v0, :cond_6

    new-array v0, v1, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0a021e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    goto/16 :goto_0

    :cond_6
    instance-of v0, p0, Lcom/android/camera/effect/ContinuousBurstScene;

    if-eqz v0, :cond_7

    new-array v0, v1, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0a021f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    goto/16 :goto_0

    :cond_7
    instance-of v0, p0, Lcom/android/camera/effect/PanoramaScene;

    if-eqz v0, :cond_8

    new-array v0, v1, [Ljava/lang/Integer;

    const v1, 0x7f0200ad

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0a00c1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    goto/16 :goto_0

    :cond_8
    instance-of v0, p0, Lcom/android/camera/effect/HdrScene;

    if-eqz v0, :cond_9

    new-array v0, v1, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0a00c2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    goto/16 :goto_0

    :cond_9
    instance-of v0, p0, Lcom/android/camera/effect/TextScene;

    if-eqz v0, :cond_a

    new-array v0, v1, [Ljava/lang/Integer;

    const v1, 0x7f0200b0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0a0222

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    goto/16 :goto_0

    :cond_a
    instance-of v0, p0, Lcom/android/camera/effect/CloseUpScene;

    if-eqz v0, :cond_b

    new-array v0, v1, [Ljava/lang/Integer;

    const v1, 0x7f0200aa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0a0224

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    goto/16 :goto_0

    :cond_b
    instance-of v0, p0, Lcom/android/camera/effect/BacklightScene;

    if-eqz v0, :cond_c

    new-array v0, v1, [Ljava/lang/Integer;

    const v1, 0x7f0200a3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0a0225

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    goto/16 :goto_0

    :cond_c
    instance-of v0, p0, Lcom/android/camera/effect/LowlightScene;

    if-eqz v0, :cond_d

    new-array v0, v1, [Ljava/lang/Integer;

    const v1, 0x7f0200ab

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0a022a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    goto/16 :goto_0

    :cond_d
    new-array v0, v1, [Ljava/lang/Integer;

    aput-object v5, v0, v2

    aput-object v5, v0, v3

    goto/16 :goto_0
.end method

.method private updateCameraSceneItem()V
    .locals 23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v22

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFastFrameRecording()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Lcom/android/camera/menu/SeparatorMenuItem;

    const v3, 0x7f0a00c4

    invoke-direct {v2, v3}, Lcom/android/camera/menu/SeparatorMenuItem;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_Settings:Lcom/android/camera/Settings;

    const-string v4, "pref_fast_fps"

    const v5, 0x7f0a00b9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IIIZ)V

    const v3, 0x7f0200ae

    invoke-virtual {v2, v3}, Lcom/android/camera/menu/MenuItem;->setIcon(I)V

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;->setChecked(Z)V

    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/android/camera/CameraStartMode;->supportsVideoMode:Z

    invoke-virtual {v2, v3}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/camera/menu/SeparatorMenuItem;

    const v3, 0x7f0a00c3

    invoke-direct {v2, v3}, Lcom/android/camera/menu/SeparatorMenuItem;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v3

    const-class v4, Lcom/android/camera/effect/IEffectManager;

    invoke-virtual {v3, v4}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/effect/IEffectManager;

    if-eqz v11, :cond_3

    iget-object v3, v11, Lcom/android/camera/effect/IEffectManager;->sceneList:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    if-nez v20, :cond_1

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    :goto_0
    new-instance v3, Lcom/android/camera/menu/ScenesMenu$UserScenesHeaderBarItem;

    const v4, 0x7f0a0217

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/camera/menu/ScenesMenu$UserScenesHeaderBarItem;-><init>(Lcom/android/camera/menu/ScenesMenu;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_UserScenesHeaderBarItem:Lcom/android/camera/menu/ScenesMenu$UserScenesHeaderBarItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_Items:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/menu/ScenesMenu;->m_UserScenesHeaderBarItem:Lcom/android/camera/menu/ScenesMenu$UserScenesHeaderBarItem;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/camera/menu/MenuItem;

    invoke-direct {v3}, Lcom/android/camera/menu/MenuItem;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_UserScenesExpandMenuItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_UserScenesExpandMenuItem:Lcom/android/camera/menu/MenuItem;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_UserScenesExpandMenuItem:Lcom/android/camera/menu/MenuItem;

    const v4, 0x7f0a0218

    invoke-virtual {v3, v4}, Lcom/android/camera/menu/MenuItem;->setTitle(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_Items:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/menu/ScenesMenu;->m_UserScenesExpandMenuItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_Items_UserScenes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v13, 0x0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v9

    :goto_1
    if-ge v13, v9, :cond_5

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/camera/effect/EffectBase;

    move-object/from16 v0, v19

    instance-of v3, v0, Lcom/android/camera/effect/SmartSceneDetectorScene;

    if-nez v3, :cond_2

    move-object/from16 v0, v19

    instance-of v3, v0, Lcom/android/camera/effect/AutoScene;

    if-nez v3, :cond_2

    move-object/from16 v0, v19

    instance-of v3, v0, Lcom/android/camera/effect/PortraitScene;

    if-nez v3, :cond_2

    move-object/from16 v0, v19

    instance-of v3, v0, Lcom/android/camera/effect/LandscapeScene;

    if-nez v3, :cond_2

    move-object/from16 v0, v19

    instance-of v3, v0, Lcom/android/camera/effect/LowlightScene;

    if-nez v3, :cond_2

    move-object/from16 v0, v19

    instance-of v3, v0, Lcom/android/camera/effect/NightPortraitScene;

    if-nez v3, :cond_2

    move-object/from16 v0, v19

    instance-of v3, v0, Lcom/android/camera/effect/BacklightScene;

    if-nez v3, :cond_2

    move-object/from16 v0, v19

    instance-of v3, v0, Lcom/android/camera/effect/BacklightPortraitScene;

    if-nez v3, :cond_2

    move-object/from16 v0, v19

    instance-of v3, v0, Lcom/android/camera/effect/CloseUpScene;

    if-nez v3, :cond_2

    move-object/from16 v0, v19

    instance-of v3, v0, Lcom/android/camera/effect/SnowScene;

    if-nez v3, :cond_2

    move-object/from16 v0, v19

    instance-of v3, v0, Lcom/android/camera/effect/TextScene;

    if-eqz v3, :cond_4

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_Items_UserScenes:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/camera/menu/ScenesMenu$SubItem_UserScenes;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Lcom/android/camera/menu/ScenesMenu$SubItem_UserScenes;-><init>(Lcom/android/camera/menu/ScenesMenu;Lcom/android/camera/effect/EffectBase;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_3
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_Items:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/camera/menu/ScenesMenu$SubItem;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Lcom/android/camera/menu/ScenesMenu$SubItem;-><init>(Lcom/android/camera/menu/ScenesMenu;Lcom/android/camera/effect/EffectBase;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_UserScenesExpandMenuItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/menu/ScenesMenu;->m_Items_UserScenes:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/android/camera/menu/MenuItem;->setItems(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_Items:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/camera/menu/ScenesMenu;->setItems(Ljava/util/List;)V

    if-eqz v11, :cond_6

    iget-object v3, v11, Lcom/android/camera/effect/IEffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/effect/EffectBase;

    move-object v10, v3

    :goto_3
    const/4 v15, 0x0

    const/16 v21, -0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_Items_UserScenes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v13, v3, -0x1

    :goto_4
    if-ltz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_Items_UserScenes:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/camera/menu/ScenesMenu$SubItem_UserScenes;

    if-nez v3, :cond_7

    :goto_5
    add-int/lit8 v13, v13, -0x1

    goto :goto_4

    :cond_6
    const/4 v10, 0x0

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_Items_UserScenes:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/camera/menu/ScenesMenu$SubItem_UserScenes;

    #getter for: Lcom/android/camera/menu/ScenesMenu$SubItem_UserScenes;->scene:Lcom/android/camera/effect/EffectBase;
    invoke-static/range {v17 .. v17}, Lcom/android/camera/menu/ScenesMenu$SubItem_UserScenes;->access$300(Lcom/android/camera/menu/ScenesMenu$SubItem_UserScenes;)Lcom/android/camera/effect/EffectBase;

    move-result-object v3

    if-eq v3, v10, :cond_8

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/camera/menu/ScenesMenu$SubItem_UserScenes;->setChecked(Z)V

    goto :goto_5

    :cond_8
    const/4 v15, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/camera/menu/ScenesMenu$SubItem_UserScenes;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_UserScenesHeaderBarItem:Lcom/android/camera/menu/ScenesMenu$UserScenesHeaderBarItem;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/camera/menu/ScenesMenu$UserScenesHeaderBarItem;->setChecked(Z)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/camera/menu/ScenesMenu;->m_lastSceneInSceneSelect:Lcom/android/camera/effect/EffectBase;

    goto :goto_5

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_lastSceneInSceneSelect:Lcom/android/camera/effect/EffectBase;

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_lastSceneInSceneSelect:Lcom/android/camera/effect/EffectBase;

    invoke-static {v3}, Lcom/android/camera/menu/ScenesMenu;->getIconAndText(Lcom/android/camera/effect/EffectBase;)[Ljava/lang/Integer;

    move-result-object v14

    const/4 v3, 0x0

    aget-object v3, v14, v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_UserScenesHeaderBarItem:Lcom/android/camera/menu/ScenesMenu$UserScenesHeaderBarItem;

    const/4 v4, 0x0

    aget-object v4, v14, v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/menu/ScenesMenu$UserScenesHeaderBarItem;->setIcon(I)V

    :cond_a
    const/4 v3, 0x1

    aget-object v3, v14, v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_UserScenesHeaderBarItem:Lcom/android/camera/menu/ScenesMenu$UserScenesHeaderBarItem;

    const/4 v4, 0x1

    aget-object v4, v14, v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/menu/ScenesMenu$UserScenesHeaderBarItem;->setSummary(I)V

    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v13, v3, -0x1

    :goto_7
    if-ltz v13, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/camera/menu/ScenesMenu$SubItem;

    if-nez v3, :cond_d

    :goto_8
    add-int/lit8 v13, v13, -0x1

    goto :goto_7

    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_UserScenesHeaderBarItem:Lcom/android/camera/menu/ScenesMenu$UserScenesHeaderBarItem;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/menu/ScenesMenu;->m_lastSceneInSceneSelect:Lcom/android/camera/effect/EffectBase;

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/menu/ScenesMenu$UserScenesHeaderBarItem;->setSummary(Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_UserScenesHeaderBarItem:Lcom/android/camera/menu/ScenesMenu$UserScenesHeaderBarItem;

    const-string v4, "com.htc.R.drawable.icon_btn_auto_dark"

    invoke-static {v4}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/menu/ScenesMenu$UserScenesHeaderBarItem;->setIcon(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_UserScenesHeaderBarItem:Lcom/android/camera/menu/ScenesMenu$UserScenesHeaderBarItem;

    const-string v4, " "

    invoke-virtual {v3, v4}, Lcom/android/camera/menu/ScenesMenu$UserScenesHeaderBarItem;->setSummary(Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/camera/menu/ScenesMenu$SubItem;

    #getter for: Lcom/android/camera/menu/ScenesMenu$SubItem;->scene:Lcom/android/camera/effect/EffectBase;
    invoke-static/range {v16 .. v16}, Lcom/android/camera/menu/ScenesMenu$SubItem;->access$400(Lcom/android/camera/menu/ScenesMenu$SubItem;)Lcom/android/camera/effect/EffectBase;

    move-result-object v3

    if-eq v3, v10, :cond_e

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/camera/menu/ScenesMenu$SubItem;->setChecked(Z)V

    goto :goto_8

    :cond_e
    move/from16 v21, v13

    const/4 v15, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/camera/menu/ScenesMenu$SubItem;->setChecked(Z)V

    goto :goto_8

    :cond_f
    if-nez v15, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_Items_UserScenes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_Items_UserScenes:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/menu/ScenesMenu$SubItem_UserScenes;

    #getter for: Lcom/android/camera/menu/ScenesMenu$SubItem_UserScenes;->scene:Lcom/android/camera/effect/EffectBase;
    invoke-static {v3}, Lcom/android/camera/menu/ScenesMenu$SubItem_UserScenes;->access$300(Lcom/android/camera/menu/ScenesMenu$SubItem_UserScenes;)Lcom/android/camera/effect/EffectBase;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/ScenesMenu;->m_Items_UserScenes:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/menu/MenuItem;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/camera/menu/MenuItem;->setChecked(Z)V

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/menu/ScenesMenu;->getFirstVisiblePosition()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/menu/ScenesMenu;->getLastVisiblePosition()I

    move-result v18

    if-ltz v21, :cond_12

    sub-int v3, v18, v12

    const/4 v4, 0x1

    if-le v3, v4, :cond_12

    move/from16 v0, v21

    if-le v0, v12, :cond_11

    move/from16 v0, v21

    move/from16 v1, v18

    if-lt v0, v1, :cond_12

    :cond_11
    const/4 v3, 0x0

    add-int/lit8 v4, v21, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/camera/menu/ScenesMenu;->setSelection(I)V

    :cond_12
    return-void
.end method


# virtual methods
.method protected onMenuItemClicked(Lcom/android/camera/menu/MenuItem;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/menu/MenuListView;->onMenuItemClicked(Lcom/android/camera/menu/MenuItem;II)V

    return-void
.end method

.method public updateItemContents()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/menu/ScenesMenu;->beginUpdate()V

    invoke-direct {p0}, Lcom/android/camera/menu/ScenesMenu;->updateCameraSceneItem()V

    invoke-super {p0}, Lcom/android/camera/menu/MenuListView;->updateItemContents()V

    invoke-virtual {p0}, Lcom/android/camera/menu/ScenesMenu;->endUpdate()V

    return-void
.end method
