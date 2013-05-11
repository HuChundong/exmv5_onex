.class public Lcom/android/camera/menu/SettingsMenu;
.super Lcom/android/camera/menu/MenuListView;
.source "SettingsMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/menu/SettingsMenu$3;
    }
.end annotation


# static fields
.field public static final ITEM_ID_AUTO_FOCUS:I = 0x33

.field public static final ITEM_ID_AUTO_UPLOAD:I = 0x32

.field public static final ITEM_ID_CAMERA_EFFECTS:I = 0x1

.field public static final ITEM_ID_CAMERA_TYPE_FRONT:I = 0x15

.field public static final ITEM_ID_CAMERA_TYPE_MAIN:I = 0x14

.field public static final ITEM_ID_CAPTURE_MODE_GROUP:I = 0xd

.field public static final ITEM_ID_CAPTURE_MODE_HDR:I = 0xc

.field public static final ITEM_ID_CAPTURE_MODE_NORMAL:I = 0xa

.field public static final ITEM_ID_CAPTURE_MODE_PANORAMA:I = 0xb

.field public static final ITEM_ID_CONTINUOUS_AUTO_FOCUS:I = 0x21

.field public static final ITEM_ID_CONTINUOUS_CAPTURE:I = 0x2f

.field public static final ITEM_ID_FACE_DETECTION:I = 0x1f

.field public static final ITEM_ID_GEO_TAGGING:I = 0x24

.field public static final ITEM_ID_OBJECT_TRACKING:I = 0x1e

.field public static final ITEM_ID_RECORD_WITH_AUDIO:I = 0x2e

.field public static final ITEM_ID_RESET_TO_DEFAULT:I = 0x3c

.field public static final ITEM_ID_SHUTTER_SOUND:I = 0x28

.field public static final ITEM_ID_SLOW_MOTION:I = 0x2d

.field public static final ITEM_ID_SMILE_CAPTURE:I = 0x20

.field public static final ITEM_ID_TAP_TO_CAPTURE:I = 0x30

.field public static final ITEM_ID_TAP_TO_CAPTURE_FRONT:I = 0x31

.field public static final ITEM_ID_WIDE_RATIO_PHOTO:I = 0x22

.field private static final TAG:Ljava/lang/String; = "SettingsMenu"


# instance fields
.field private m_AntibandingItem:Lcom/android/camera/menu/MenuItem;

.field private m_AudioFocusItem:Lcom/android/camera/menu/MenuItem;

.field private m_AudioQualityItem:Lcom/android/camera/menu/MenuItem;

.field private m_AutoFiveShotsItem:Lcom/android/camera/menu/MenuItem;

.field private m_AutoFocusItem:Lcom/android/camera/menu/MenuItem;

.field private m_AutoUploadItem:Lcom/android/camera/menu/MenuItem;

.field private m_CAFItem:Lcom/android/camera/menu/MenuItem;

.field private m_CameraActivity:Lcom/android/camera/HTCCamera;

.field private m_CameraResolutionItem:Lcom/android/camera/menu/MenuItem;

.field private m_CameraTypeItem:Lcom/android/camera/menu/MenuItem;

.field private m_CaptureModeItem:Lcom/android/camera/menu/MenuItem;

.field private m_ContinuousAutoFocusItems:[Lcom/android/camera/menu/MenuItem;

.field private m_ContinuousBurstAutoReviewItem:Lcom/android/camera/menu/MenuItem;

.field private m_ContinuousBurstItem:Lcom/android/camera/menu/MenuItem;

.field private m_ContinuousBurstLimitedItem:Lcom/android/camera/menu/MenuItem;

.field private m_DateStampItem:Lcom/android/camera/menu/MenuItem;

.field private m_EffectManager:Lcom/android/camera/effect/IEffectManager;

.field private m_FaceDetectionItem:Lcom/android/camera/menu/MenuItem;

.field private m_FileNameItem:Lcom/android/camera/menu/MenuItem;

.field private m_FrameRateItem:Lcom/android/camera/menu/MenuItem;

.field private m_FrontFaceBeautifierMenuItem:Lcom/android/camera/menu/MenuItem;

.field private m_FrontWhiteBalanceItem:Lcom/android/camera/menu/MenuItem;

.field private m_HookVolItem:Lcom/android/camera/menu/MenuItem;

.field private m_ImageAdjustmentItem:Lcom/android/camera/menu/MenuItem;

.field private m_ImageQualityItem:Lcom/android/camera/menu/ImageQualityMenuItem;

.field private m_IsItemInitialized:Z

.field private m_IsoItem:Lcom/android/camera/menu/MenuItem;

.field private m_Items:[Lcom/android/camera/menu/MenuItem;

.field private m_LocationStampItem:Lcom/android/camera/menu/MenuItem;

.field private m_MainWhiteBalanceItem:Lcom/android/camera/menu/MenuItem;

.field private m_MenuBarTransItem:Lcom/android/camera/menu/MenuItem;

.field private m_ObjectTrackingItem:Lcom/android/camera/menu/MenuItem;

.field private m_RecordWithAudioItem:Lcom/android/camera/menu/MenuItem;

.field private m_ReviewDurationItem:Lcom/android/camera/menu/MenuItem;

.field private m_SaveMirrorImageItem:Lcom/android/camera/menu/MenuItem;

.field private m_SelfTimerItem:Lcom/android/camera/menu/SelfTimerMenuItem;

.field private m_Settings:Lcom/android/camera/Settings;

.field private m_ShutterSoundItem:Lcom/android/camera/menu/MenuItem;

.field private m_SlowMotionItem:Lcom/android/camera/menu/MenuItem;

.field private m_SmileCaptureItem:Lcom/android/camera/menu/MenuItem;

.field private m_StereoRecordingItem:Lcom/android/camera/menu/MenuItem;

.field private m_StorageLocationItem:Lcom/android/camera/menu/MenuItem;

.field private m_TapToCaptureFrontItem:Lcom/android/camera/menu/MenuItem;

.field private m_TapToCaptureItem:Lcom/android/camera/menu/MenuItem;

.field private m_VideoFormatItem:Lcom/android/camera/menu/MenuItem;

.field private m_VideoQualityItem:Lcom/android/camera/menu/MenuItem;

.field private m_VideoStabilizationItem:Lcom/android/camera/menu/MenuItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/camera/menu/MenuListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/menu/MenuItem;

    iput-object v0, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousAutoFocusItems:[Lcom/android/camera/menu/MenuItem;

    instance-of v0, p1, Lcom/android/camera/HTCCamera;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/camera/HTCCamera;

    iput-object p1, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v0, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/android/camera/effect/IEffectManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/IEffectManager;

    iput-object v0, p0, Lcom/android/camera/menu/SettingsMenu;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    iget-object v0, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/menu/SettingsMenu;->m_Settings:Lcom/android/camera/Settings;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method static synthetic access$000(Lcom/android/camera/menu/SettingsMenu;)Lcom/android/camera/HTCCamera;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    return-object v0
.end method

.method private resetToDefault()V
    .locals 6

    new-instance v3, Lcom/android/camera/menu/SettingsMenu$1;

    invoke-direct {v3, p0}, Lcom/android/camera/menu/SettingsMenu$1;-><init>(Lcom/android/camera/menu/SettingsMenu;)V

    new-instance v2, Lcom/android/camera/menu/SettingsMenu$2;

    invoke-direct {v2, p0}, Lcom/android/camera/menu/SettingsMenu$2;-><init>(Lcom/android/camera/menu/SettingsMenu;)V

    new-instance v4, Lcom/htc/dialog/HtcAlertDialog$Builder;

    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-direct {v4, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0a00b7

    invoke-virtual {v4, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a012c

    invoke-virtual {v4, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x20401f2

    invoke-virtual {v4, v5, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x20401f3

    invoke-virtual {v4, v5, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v0

    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v4

    const-class v5, Lcom/android/camera/IRotateDialogManager;

    invoke-virtual {v4, v5}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IRotateDialogManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/camera/IRotateDialogManager;->showDialog(Landroid/app/Dialog;)Lcom/android/camera/Handle;

    :goto_0
    return-void

    :cond_0
    const-string v4, "SettingsMenu"

    const-string v5, "resetToDefault() - Cannot find IRotateDialogManager interface"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showTransMenuBarToast()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/android/camera/IToastManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IToastManager;

    if-eqz v0, :cond_0

    const v1, 0x7f0a027a

    invoke-virtual {v0, v1}, Lcom/android/camera/IToastManager;->showToast(I)Lcom/android/camera/Handle;

    :cond_0
    return-void
.end method

.method private updateAutoFocusRelatedItem()V
    .locals 7

    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    iget-object v3, v3, Lcom/android/camera/effect/IEffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/effect/EffectBase;

    move-object v1, v3

    :goto_0
    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_AutoFocusItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_AutoFocusItem:Lcom/android/camera/menu/MenuItem;

    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/CameraType;

    invoke-virtual {v3}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    :cond_0
    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_CAFItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_CAFItem:Lcom/android/camera/menu/MenuItem;

    iget-object v3, v2, Lcom/android/camera/CameraSettings;->supportCAF:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sput-boolean v3, Lcom/android/camera/DisplayDevice;->SUPPORT_CAF:Z

    iget-object v3, v2, Lcom/android/camera/CameraSettings;->canAutoFocus:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    :cond_1
    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_FaceDetectionItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v4, Lcom/android/camera/DisplayDevice$CaptureButton;->HWKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-eq v3, v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_FaceDetectionItem:Lcom/android/camera/menu/MenuItem;

    iget-object v3, v2, Lcom/android/camera/CameraSettings;->canAutoFocus:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    :cond_2
    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_FaceDetectionItem:Lcom/android/camera/menu/MenuItem;

    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/CameraType;

    invoke-virtual {v3}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    :cond_3
    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_SmileCaptureItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_FaceDetectionItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v3, :cond_7

    iget-object v3, v2, Lcom/android/camera/CameraSettings;->isFaceDetectionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_FaceDetectionItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v3}, Lcom/android/camera/menu/MenuItem;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->selfTimerInterval:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/Duration;

    invoke-virtual {v3}, Lcom/android/camera/Duration;->getSeconds()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    instance-of v3, v1, Lcom/android/camera/effect/PanoramaScene;

    if-nez v3, :cond_6

    instance-of v3, v1, Lcom/android/camera/effect/SmartShotScene;

    if-nez v3, :cond_6

    const/4 v0, 0x1

    :goto_1
    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_SmileCaptureItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v3, v0}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_SmileCaptureItem:Lcom/android/camera/menu/MenuItem;

    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/CameraType;

    invoke-virtual {v3}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    :cond_4
    return-void

    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateAutoUploadItem()V
    .locals 5

    iget-object v2, p0, Lcom/android/camera/menu/SettingsMenu;->m_AutoUploadItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/menu/SettingsMenu;->m_Settings:Lcom/android/camera/Settings;

    const-string v3, "pref_auto_upload"

    const-string v4, "Off"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Off"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/camera/menu/SettingsMenu;->m_AutoUploadItem:Lcom/android/camera/menu/MenuItem;

    const v3, 0x7f0a00b6

    invoke-virtual {v2, v3}, Lcom/android/camera/menu/MenuItem;->setSummary(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/camera/menu/SettingsMenu;->m_Settings:Lcom/android/camera/Settings;

    const-string v3, "pref_auto_upload_label"

    invoke-virtual {v2, v3}, Lcom/android/camera/Settings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/menu/SettingsMenu;->m_AutoUploadItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v2, v1}, Lcom/android/camera/menu/MenuItem;->setSummary(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final updateCameraTypeItem()V
    .locals 7

    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraTypeItem:Lcom/android/camera/menu/MenuItem;

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v6, Lcom/android/camera/menu/SettingsMenu$3;->$SwitchMap$com$android$camera$CameraType:[I

    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/CameraType;

    invoke-virtual {v5}, Lcom/android/camera/CameraType;->ordinal()I

    move-result v5

    aget v5, v6, v5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v1, 0x14

    const v4, 0x7f0a00c7

    :goto_1
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraTypeItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v5}, Lcom/android/camera/menu/MenuItem;->getItems()[Lcom/android/camera/menu/MenuItem;

    move-result-object v3

    const/4 v0, 0x0

    :goto_2
    array-length v5, v3

    if-ge v0, v5, :cond_2

    aget-object v2, v3, v0

    invoke-virtual {v2}, Lcom/android/camera/menu/MenuItem;->getId()I

    move-result v5

    if-ne v5, v1, :cond_1

    const/4 v5, 0x1

    :goto_3
    invoke-virtual {v2, v5}, Lcom/android/camera/menu/MenuItem;->setChecked(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_1
    const/16 v1, 0x15

    const v4, 0x7f0a00c8

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_3

    :cond_2
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraTypeItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v5, v4}, Lcom/android/camera/menu/MenuItem;->setSummary(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateContinuousCaptureItem()V
    .locals 12

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    iget-object v4, v4, Lcom/android/camera/effect/IEffectManager;->currentEffect:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    iget-object v4, v4, Lcom/android/camera/effect/IEffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/EffectBase;

    :goto_0
    instance-of v4, v0, Lcom/android/camera/effect/NoneEffect;

    if-nez v4, :cond_4

    move v2, v5

    :goto_1
    if-eqz v1, :cond_5

    instance-of v4, v1, Lcom/android/camera/effect/AutoScene;

    if-nez v4, :cond_5

    instance-of v4, v1, Lcom/android/camera/effect/SmartSceneDetectorScene;

    if-nez v4, :cond_5

    move v3, v5

    :goto_2
    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v4, :cond_0

    iget-object v7, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstItem:Lcom/android/camera/menu/MenuItem;

    if-nez v2, :cond_6

    if-nez v3, :cond_6

    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->selfTimerInterval:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/Duration;

    invoke-virtual {v4}, Lcom/android/camera/Duration;->getSeconds()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-nez v4, :cond_6

    :goto_3
    invoke-virtual {v7, v5}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstItem:Lcom/android/camera/menu/MenuItem;

    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/CameraType;

    invoke-virtual {v4}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v4

    invoke-virtual {v5, v4}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstItem:Lcom/android/camera/menu/MenuItem;

    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/CameraSettings;->isContinuousBurstEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_7

    const v4, 0x7f0a0068

    :goto_4
    invoke-virtual {v5, v4}, Lcom/android/camera/menu/MenuItem;->setSummary(I)V

    :cond_0
    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstLimitedItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstLimitedItem:Lcom/android/camera/menu/MenuItem;

    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/CameraSettings;->isContinuousBurstEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v5, v4}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    :cond_1
    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstAutoReviewItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstAutoReviewItem:Lcom/android/camera/menu/MenuItem;

    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/CameraSettings;->isContinuousBurstEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v5, v4}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_4
    move v2, v6

    goto/16 :goto_1

    :cond_5
    move v3, v6

    goto/16 :goto_2

    :cond_6
    move v5, v6

    goto :goto_3

    :cond_7
    const v4, 0x7f0a0069

    goto :goto_4
.end method

.method private updateDisabledItems()V
    .locals 13

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v8}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    iget-object v8, v8, Lcom/android/camera/effect/IEffectManager;->currentEffect:Lcom/android/camera/property/Property;

    invoke-virtual {v8}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/effect/EffectBase;

    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    iget-object v8, v8, Lcom/android/camera/effect/IEffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v8}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/effect/EffectBase;

    :goto_0
    move-object v4, v3

    if-eqz v4, :cond_0

    instance-of v8, v4, Lcom/android/camera/effect/AutoScene;

    if-eqz v8, :cond_1

    :cond_0
    move-object v4, v2

    :cond_1
    if-eqz v4, :cond_14

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectBase;->getDisabledImageSettings()I

    move-result v5

    :goto_1
    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_AutoFiveShotsItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v8, :cond_2

    iget-object v11, p0, Lcom/android/camera/menu/SettingsMenu;->m_AutoFiveShotsItem:Lcom/android/camera/menu/MenuItem;

    iget-object v8, v7, Lcom/android/camera/CameraSettings;->isObjectTrackingEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v8}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v11, v8}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    iget-object v11, p0, Lcom/android/camera/menu/SettingsMenu;->m_AutoFiveShotsItem:Lcom/android/camera/menu/MenuItem;

    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v8, v8, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v8}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/CameraType;

    invoke-virtual {v8}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v8

    invoke-virtual {v11, v8}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    :cond_2
    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_VideoStabilizationItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v8, :cond_3

    iget-object v11, p0, Lcom/android/camera/menu/SettingsMenu;->m_VideoStabilizationItem:Lcom/android/camera/menu/MenuItem;

    iget-object v8, v7, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v8}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_15

    move v8, v10

    :goto_2
    invoke-virtual {v11, v8}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v8}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v1

    iget-object v11, p0, Lcom/android/camera/menu/SettingsMenu;->m_VideoStabilizationItem:Lcom/android/camera/menu/MenuItem;

    if-nez v1, :cond_16

    move v8, v9

    :goto_3
    invoke-virtual {v11, v8}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    :cond_3
    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_RecordWithAudioItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v8, :cond_4

    iget-object v11, p0, Lcom/android/camera/menu/SettingsMenu;->m_RecordWithAudioItem:Lcom/android/camera/menu/MenuItem;

    iget-object v8, v7, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v8}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_17

    move v8, v10

    :goto_4
    invoke-virtual {v11, v8}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    :cond_4
    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_StereoRecordingItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v8, :cond_5

    iget-object v11, p0, Lcom/android/camera/menu/SettingsMenu;->m_StereoRecordingItem:Lcom/android/camera/menu/MenuItem;

    iget-object v8, v7, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v8}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_18

    iget-object v8, v7, Lcom/android/camera/CameraSettings;->recordWithAudio:Lcom/android/camera/property/Property;

    invoke-virtual {v8}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_18

    move v8, v10

    :goto_5
    invoke-virtual {v11, v8}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    :cond_5
    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_AudioFocusItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v8, :cond_6

    iget-object v11, p0, Lcom/android/camera/menu/SettingsMenu;->m_AudioFocusItem:Lcom/android/camera/menu/MenuItem;

    iget-object v8, v7, Lcom/android/camera/CameraSettings;->recordWithAudio:Lcom/android/camera/property/Property;

    invoke-virtual {v8}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_21

    move v8, v10

    :goto_6
    invoke-virtual {v11, v8}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    :cond_6
    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_IsoItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v8, :cond_7

    iget-object v11, p0, Lcom/android/camera/menu/SettingsMenu;->m_IsoItem:Lcom/android/camera/menu/MenuItem;

    and-int/lit8 v8, v5, 0x4

    if-nez v8, :cond_19

    move v8, v10

    :goto_7
    invoke-virtual {v11, v8}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    iget-object v11, p0, Lcom/android/camera/menu/SettingsMenu;->m_IsoItem:Lcom/android/camera/menu/MenuItem;

    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v8, v8, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v8}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/CameraType;

    invoke-virtual {v8}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v8

    invoke-virtual {v11, v8}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    :cond_7
    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_StorageLocationItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_StorageLocationItem:Lcom/android/camera/menu/MenuItem;

    sget-object v11, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v11}, Lcom/android/camera/io/StorageSlot;->getState()Ljava/lang/String;

    move-result-object v11

    const-string v12, "mounted"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    invoke-virtual {v8, v11}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    :cond_8
    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v8, v8, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v8}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/CameraType;

    invoke-virtual {v8}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v6

    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_MainWhiteBalanceItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v8, :cond_9

    iget-object v11, p0, Lcom/android/camera/menu/SettingsMenu;->m_MainWhiteBalanceItem:Lcom/android/camera/menu/MenuItem;

    and-int/lit8 v8, v5, 0x20

    if-nez v8, :cond_1a

    move v8, v10

    :goto_8
    invoke-virtual {v11, v8}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_MainWhiteBalanceItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v8, v6}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    :cond_9
    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_FrontWhiteBalanceItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v8, :cond_a

    iget-object v11, p0, Lcom/android/camera/menu/SettingsMenu;->m_FrontWhiteBalanceItem:Lcom/android/camera/menu/MenuItem;

    and-int/lit8 v8, v5, 0x20

    if-nez v8, :cond_1b

    move v8, v10

    :goto_9
    invoke-virtual {v11, v8}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    iget-object v11, p0, Lcom/android/camera/menu/SettingsMenu;->m_FrontWhiteBalanceItem:Lcom/android/camera/menu/MenuItem;

    if-nez v6, :cond_1c

    move v8, v10

    :goto_a
    invoke-virtual {v11, v8}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    :cond_a
    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_TapToCaptureItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_TapToCaptureItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v8, v6}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    :cond_b
    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_TapToCaptureFrontItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v8, :cond_c

    iget-object v11, p0, Lcom/android/camera/menu/SettingsMenu;->m_TapToCaptureFrontItem:Lcom/android/camera/menu/MenuItem;

    if-nez v6, :cond_1d

    move v8, v10

    :goto_b
    invoke-virtual {v11, v8}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    :cond_c
    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_FrontFaceBeautifierMenuItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v8, :cond_d

    iget-object v11, p0, Lcom/android/camera/menu/SettingsMenu;->m_FrontFaceBeautifierMenuItem:Lcom/android/camera/menu/MenuItem;

    if-nez v6, :cond_1e

    move v8, v10

    :goto_c
    invoke-virtual {v11, v8}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    :cond_d
    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_ImageAdjustmentItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v8, :cond_e

    iget-object v11, p0, Lcom/android/camera/menu/SettingsMenu;->m_ImageAdjustmentItem:Lcom/android/camera/menu/MenuItem;

    sget v8, Lcom/android/camera/ImageSettings;->SETTING_IMAGE_PROPERTIES:I

    and-int/2addr v8, v5

    if-nez v8, :cond_1f

    move v8, v10

    :goto_d
    invoke-virtual {v11, v8}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    :cond_e
    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_ObjectTrackingItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v8, :cond_f

    iget-object v11, p0, Lcom/android/camera/menu/SettingsMenu;->m_ObjectTrackingItem:Lcom/android/camera/menu/MenuItem;

    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v8, v8, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v8}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/CameraType;

    invoke-virtual {v8}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v8

    invoke-virtual {v11, v8}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    :cond_f
    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_SelfTimerItem:Lcom/android/camera/menu/SelfTimerMenuItem;

    if-eqz v8, :cond_10

    iget-object v11, p0, Lcom/android/camera/menu/SettingsMenu;->m_SelfTimerItem:Lcom/android/camera/menu/SelfTimerMenuItem;

    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v8, v8, Lcom/android/camera/HTCCamera;->isSelfTimerDisabled:Lcom/android/camera/property/Property;

    invoke-virtual {v8}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_20

    :goto_e
    invoke-virtual {v11, v10}, Lcom/android/camera/menu/SelfTimerMenuItem;->setEnabled(Z)V

    :cond_10
    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_ReviewDurationItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_ReviewDurationItem:Lcom/android/camera/menu/MenuItem;

    iget-object v9, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v9}, Lcom/android/camera/HTCCamera;->isActionScreenEnabled()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    :cond_11
    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_SaveMirrorImageItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v8, :cond_12

    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v8, v8, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v8}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/CameraType;

    invoke-virtual {v8}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v0

    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_SaveMirrorImageItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v8, v0}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    :cond_12
    return-void

    :cond_13
    const/4 v2, 0x0

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_14
    move v5, v9

    goto/16 :goto_1

    :cond_15
    move v8, v9

    goto/16 :goto_2

    :cond_16
    invoke-virtual {v1}, Lcom/android/camera/CameraController;->isVideoStabilizationSupported()Z

    move-result v8

    goto/16 :goto_3

    :cond_17
    move v8, v9

    goto/16 :goto_4

    :cond_18
    move v8, v9

    goto/16 :goto_5

    :cond_19
    move v8, v9

    goto/16 :goto_7

    :cond_1a
    move v8, v9

    goto/16 :goto_8

    :cond_1b
    move v8, v9

    goto/16 :goto_9

    :cond_1c
    move v8, v9

    goto/16 :goto_a

    :cond_1d
    move v8, v9

    goto/16 :goto_b

    :cond_1e
    move v8, v9

    goto/16 :goto_c

    :cond_1f
    move v8, v9

    goto/16 :goto_d

    :cond_20
    move v10, v9

    goto :goto_e

    :cond_21
    move v10, v9

    goto/16 :goto_6
.end method


# virtual methods
.method public initializeMenuItems()V
    .locals 17

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_IsItemInitialized:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_IsItemInitialized:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/menu/SettingsMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/SettingsMenu;->m_Settings:Lcom/android/camera/Settings;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    iget-boolean v1, v0, Lcom/android/camera/CameraStartMode;->supportsPhotoMode:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/camera/menu/SelfTimerMenuItem;

    const v4, 0x7f0a00bd

    invoke-direct {v1, v2, v4}, Lcom/android/camera/menu/SelfTimerMenuItem;-><init>(Lcom/android/camera/HTCCamera;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_SelfTimerItem:Lcom/android/camera/menu/SelfTimerMenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_SelfTimerItem:Lcom/android/camera/menu/SelfTimerMenuItem;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object/from16 v0, v16

    iget-boolean v1, v0, Lcom/android/camera/CameraStartMode;->supportsPhotoMode:Z

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/camera/menu/ResolutionMenuItem;

    sget-object v4, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    const v5, 0x7f0a00cd

    invoke-direct {v1, v2, v4, v5}, Lcom/android/camera/menu/ResolutionMenuItem;-><init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraMode;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_CameraResolutionItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_CameraResolutionItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object/from16 v0, v16

    iget-boolean v1, v0, Lcom/android/camera/CameraStartMode;->supportsVideoMode:Z

    if-eqz v1, :cond_3

    new-instance v1, Lcom/android/camera/menu/ResolutionMenuItem;

    sget-object v4, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    const v5, 0x7f0a00cc

    invoke-direct {v1, v2, v4, v5}, Lcom/android/camera/menu/ResolutionMenuItem;-><init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraMode;I)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object/from16 v0, v16

    iget-boolean v1, v0, Lcom/android/camera/CameraStartMode;->isServiceMode:Z

    if-nez v1, :cond_4

    new-instance v1, Lcom/android/camera/menu/ListPreferenceMenuItem;

    const-string v4, "pref_camera_review_duration"

    const v5, 0x7f0a008e

    const v6, 0x7f070001

    const/high16 v7, 0x7f07

    const-string v8, "0s"

    invoke-direct/range {v1 .. v8}, Lcom/android/camera/menu/ListPreferenceMenuItem;-><init>(Landroid/content/Context;Lcom/android/camera/Settings;Ljava/lang/String;IIILjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ReviewDurationItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ReviewDurationItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v1, Lcom/android/camera/menu/ImageAdjustmentMenuItem;

    const v4, 0x7f0a00c9

    invoke-direct {v1, v2, v4}, Lcom/android/camera/menu/ImageAdjustmentMenuItem;-><init>(Lcom/android/camera/HTCCamera;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ImageAdjustmentItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ImageAdjustmentItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/menu/CameraIsoMenuItem;

    const v4, 0x7f0a00ce

    invoke-direct {v1, v2, v4}, Lcom/android/camera/menu/CameraIsoMenuItem;-><init>(Lcom/android/camera/HTCCamera;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_IsoItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_IsoItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    iget-boolean v1, v1, Lcom/android/camera/CameraType;->isSupported:Z

    if-eqz v1, :cond_5

    new-instance v1, Lcom/android/camera/menu/WhiteBalanceMenuItem;

    sget-object v4, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    const v5, 0x7f0a00ca

    invoke-direct {v1, v2, v4, v5}, Lcom/android/camera/menu/WhiteBalanceMenuItem;-><init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_MainWhiteBalanceItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_MainWhiteBalanceItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    sget-object v1, Lcom/android/camera/CameraType;->Front:Lcom/android/camera/CameraType;

    iget-boolean v1, v1, Lcom/android/camera/CameraType;->isSupported:Z

    if-eqz v1, :cond_6

    new-instance v1, Lcom/android/camera/menu/WhiteBalanceMenuItem;

    sget-object v4, Lcom/android/camera/CameraType;->Front:Lcom/android/camera/CameraType;

    const v5, 0x7f0a00ca

    invoke-direct {v1, v2, v4, v5}, Lcom/android/camera/menu/WhiteBalanceMenuItem;-><init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_FrontWhiteBalanceItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_FrontWhiteBalanceItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-static {}, Lcom/android/camera/io/StorageSlot;->hasUniqueStorageSlot()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->isStorageSlotLocked()Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Lcom/android/camera/menu/CameraStorageLocationMenuItem;

    const v4, 0x7f0a00a1

    invoke-direct {v1, v2, v4}, Lcom/android/camera/menu/CameraStorageLocationMenuItem;-><init>(Lcom/android/camera/HTCCamera;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_StorageLocationItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_StorageLocationItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-static {v1}, Lcom/android/camera/component/ContinuousBurstController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v9

    if-eqz v9, :cond_8

    new-instance v1, Lcom/android/camera/menu/MenuItem;

    const v4, 0x7f0a00d4

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Lcom/android/camera/menu/MenuItem;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    new-instance v11, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v1, "pref_continuous_burst"

    const v4, 0x7f0a00d4

    const/4 v5, 0x1

    invoke-direct {v11, v3, v1, v4, v5}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    const/16 v1, 0x2f

    invoke-virtual {v11, v1}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_continuous_burst_limit"

    const v5, 0x7f0a00d5

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstLimitedItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstLimitedItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_continuous_burst_auto_review"

    const v5, 0x7f0a00d6

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstAutoReviewItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstAutoReviewItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v1, v13}, Lcom/android/camera/menu/MenuItem;->setItems(Ljava/util/List;)V

    :cond_8
    move-object/from16 v0, v16

    iget-boolean v1, v0, Lcom/android/camera/CameraStartMode;->supportsPhotoMode:Z

    if-eqz v1, :cond_c

    new-instance v10, Lcom/android/camera/menu/MenuItem;

    const v1, 0x7f0a00cf

    const/4 v4, 0x0

    invoke-direct {v10, v1, v4}, Lcom/android/camera/menu/MenuItem;-><init>(II)V

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->hasAutoFocus()Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_camera_auto_focus"

    const v5, 0x7f0a00a9

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_AutoFocusItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_AutoFocusItem:Lcom/android/camera/menu/MenuItem;

    const/16 v4, 0x33

    invoke-virtual {v1, v4}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_AutoFocusItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF_hw()Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_camera_caf"

    const v5, 0x7f0a00d7

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_CAFItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_CAFItem:Lcom/android/camera/menu/MenuItem;

    const/16 v4, 0x3e

    invoke-virtual {v1, v4}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_CAFItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_camera_tap_capture"

    const v5, 0x7f0a00aa

    const/4 v6, 0x0

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_TapToCaptureItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_TapToCaptureItem:Lcom/android/camera/menu/MenuItem;

    const/16 v4, 0x30

    invoke-virtual {v1, v4}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_TapToCaptureItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_camera_tap_capture_front"

    const v5, 0x7f0a00aa

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_TapToCaptureFrontItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_TapToCaptureFrontItem:Lcom/android/camera/menu/MenuItem;

    const/16 v4, 0x31

    invoke-virtual {v1, v4}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_TapToCaptureFrontItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_face_detection"

    const v5, 0x7f0a00d2

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_FaceDetectionItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_FaceDetectionItem:Lcom/android/camera/menu/MenuItem;

    const/16 v4, 0x1f

    invoke-virtual {v1, v4}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_FaceDetectionItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/FeatureConfig;->isFrontCameraFaceBeautifierSupported()Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_face_beautifier_front"

    const v5, 0x7f0a00e0

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_FrontFaceBeautifierMenuItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_FrontFaceBeautifierMenuItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_smile_capture"

    const v5, 0x7f0a00d3

    const/4 v6, 0x0

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_SmileCaptureItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_SmileCaptureItem:Lcom/android/camera/menu/MenuItem;

    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_SmileCaptureItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v1, "pref_camera_geo_tagging"

    const v4, 0x7f0a00dd

    const/4 v5, 0x1

    invoke-direct {v11, v3, v1, v4, v5}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    const/16 v1, 0x24

    invoke-virtual {v11, v1}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportRAWChip()Z

    move-result v1

    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_post_processing"

    const v5, 0x7f0a00de

    const/4 v6, 0x0

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_zsl_cam_mode"

    const v5, 0x7f0a027c

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSaveMirrorImage()Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_save_mirror_image"

    const v5, 0x7f0a00df

    const/4 v6, 0x0

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_SaveMirrorImageItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_SaveMirrorImageItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-virtual {v10, v13}, Lcom/android/camera/menu/MenuItem;->setItems(Ljava/util/List;)V

    :cond_c
    move-object/from16 v0, v16

    iget-boolean v1, v0, Lcom/android/camera/CameraStartMode;->supportsVideoMode:Z

    if-eqz v1, :cond_e

    new-instance v10, Lcom/android/camera/menu/MenuItem;

    const v1, 0x7f0a00e1

    const/4 v4, 0x0

    invoke-direct {v10, v1, v4}, Lcom/android/camera/menu/MenuItem;-><init>(II)V

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_video_stabilization"

    const v5, 0x7f0a00e2

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_VideoStabilizationItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_VideoStabilizationItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_camera_record_with_audio"

    const v5, 0x7f0a00e4

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_RecordWithAudioItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_RecordWithAudioItem:Lcom/android/camera/menu/MenuItem;

    const/16 v4, 0x2e

    invoke-virtual {v1, v4}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_RecordWithAudioItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportStereoRecord()Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_stereo_recording"

    const v5, 0x7f0a00e5

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_StereoRecordingItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_StereoRecordingItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_audio_focus"

    const v5, 0x7f0a027d

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_AudioFocusItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_AudioFocusItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10, v13}, Lcom/android/camera/menu/MenuItem;->setItems(Ljava/util/List;)V

    :cond_e
    move-object/from16 v0, v16

    iget-boolean v1, v0, Lcom/android/camera/CameraStartMode;->supportsPhotoMode:Z

    if-eqz v1, :cond_f

    new-instance v10, Lcom/android/camera/menu/MenuItem;

    const v1, 0x7f0a0276

    const/4 v4, 0x0

    invoke-direct {v10, v1, v4}, Lcom/android/camera/menu/MenuItem;-><init>(II)V

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_stamp_date"

    const v5, 0x7f0a0277

    const/4 v6, 0x0

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_DateStampItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_DateStampItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_stamp_location"

    const v5, 0x7f0a0278

    const/4 v6, 0x0

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_LocationStampItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_LocationStampItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10, v13}, Lcom/android/camera/menu/MenuItem;->setItems(Ljava/util/List;)V

    :cond_f
    new-instance v10, Lcom/android/camera/menu/MenuItem;

    const v1, 0x7f0a00e6

    const/4 v4, 0x0

    invoke-direct {v10, v1, v4}, Lcom/android/camera/menu/MenuItem;-><init>(II)V

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    sget-object v1, Lcom/android/camera/CameraStartMode;->ContactsPhoto:Lcom/android/camera/CameraStartMode;

    move-object/from16 v0, v16

    if-eq v0, v1, :cond_10

    sget-object v1, Lcom/android/camera/CameraStartMode;->SquarePhoto:Lcom/android/camera/CameraStartMode;

    move-object/from16 v0, v16

    if-eq v0, v1, :cond_10

    move-object/from16 v0, v16

    iget-boolean v1, v0, Lcom/android/camera/CameraStartMode;->supportsPhotoMode:Z

    if-eqz v1, :cond_10

    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_grid"

    const v5, 0x7f0a00e8

    const/4 v6, 0x0

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceSutterSound()Z

    move-result v1

    if-nez v1, :cond_11

    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_play_shutter_sound"

    const v5, 0x7f0a00e7

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ShutterSoundItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ShutterSoundItem:Lcom/android/camera/menu/MenuItem;

    const/16 v4, 0x28

    invoke-virtual {v1, v4}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ShutterSoundItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_menu_bar_transparence"

    const v5, 0x7f0a0279

    const/4 v6, 0x0

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_MenuBarTransItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_MenuBarTransItem:Lcom/android/camera/menu/MenuItem;

    const/16 v4, 0x3d

    invoke-virtual {v1, v4}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    move-object/from16 v0, p0

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10, v13}, Lcom/android/camera/menu/MenuItem;->setItems(Ljava/util/List;)V

    invoke-virtual {v10}, Lcom/android/camera/menu/MenuItem;->getItems()[Lcom/android/camera/menu/MenuItem;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_12

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportAutoUpload()Z

    move-result v1

    if-eqz v1, :cond_14

    new-instance v1, Lcom/android/camera/menu/MenuItem;

    const v4, 0x7f0a00e9

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Lcom/android/camera/menu/MenuItem;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_AutoUploadItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_AutoUploadItem:Lcom/android/camera/menu/MenuItem;

    const/16 v4, 0x32

    invoke-virtual {v1, v4}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_AutoUploadItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "pref_auto_upload"

    const-string v4, "Off"

    invoke-virtual {v3, v1, v4}, Lcom/android/camera/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_13

    const-string v1, ""

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "null"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "Off"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_AutoUploadItem:Lcom/android/camera/menu/MenuItem;

    const v4, 0x7f0a00b6

    invoke-virtual {v1, v4}, Lcom/android/camera/menu/MenuItem;->setSummary(I)V

    :cond_14
    :goto_1
    move-object/from16 v0, v16

    iget-boolean v1, v0, Lcom/android/camera/CameraStartMode;->supportsPhotoMode:Z

    if-eqz v1, :cond_15

    new-instance v1, Lcom/android/camera/menu/ImageQualityMenuItem;

    const v4, 0x7f0a0266

    invoke-direct {v1, v2, v4}, Lcom/android/camera/menu/ImageQualityMenuItem;-><init>(Lcom/android/camera/HTCCamera;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ImageQualityItem:Lcom/android/camera/menu/ImageQualityMenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ImageQualityItem:Lcom/android/camera/menu/ImageQualityMenuItem;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/menu/CameraAntibandingMenuItem;

    const v4, 0x7f0a027b

    invoke-direct {v1, v2, v4}, Lcom/android/camera/menu/CameraAntibandingMenuItem;-><init>(Lcom/android/camera/HTCCamera;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_AntibandingItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_AntibandingItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    move-object/from16 v0, v16

    iget-boolean v1, v0, Lcom/android/camera/CameraStartMode;->supportsVideoMode:Z

    if-eqz v1, :cond_16

    new-instance v1, Lcom/android/camera/menu/CameraVideoQualityMenuItem;

    const v4, 0x7f0a0268

    invoke-direct {v1, v2, v4}, Lcom/android/camera/menu/CameraVideoQualityMenuItem;-><init>(Lcom/android/camera/HTCCamera;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_VideoQualityItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_VideoQualityItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/menu/CameraAudioQualityMenuItem;

    const v4, 0x7f0a0269

    invoke-direct {v1, v2, v4}, Lcom/android/camera/menu/CameraAudioQualityMenuItem;-><init>(Lcom/android/camera/HTCCamera;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_AudioQualityItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_AudioQualityItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/menu/CameraFrameRateMenuItem;

    const v4, 0x7f0a0275

    invoke-direct {v1, v2, v4}, Lcom/android/camera/menu/CameraFrameRateMenuItem;-><init>(Lcom/android/camera/HTCCamera;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_FrameRateItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_FrameRateItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/menu/VideoFormatMenuItem;

    const v4, 0x7f0a008f

    invoke-direct {v1, v2, v4}, Lcom/android/camera/menu/VideoFormatMenuItem;-><init>(Lcom/android/camera/HTCCamera;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_VideoFormatItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_VideoFormatItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/menu/FileNameMenuItem;

    const v4, 0x7f0a027e

    invoke-direct {v1, v2, v4}, Lcom/android/camera/menu/FileNameMenuItem;-><init>(Lcom/android/camera/HTCCamera;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_FileNameItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_FileNameItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    new-instance v1, Lcom/android/camera/menu/HookVolMenuItem;

    const v4, 0x7f0a026a

    invoke-direct {v1, v2, v4}, Lcom/android/camera/menu/HookVolMenuItem;-><init>(Lcom/android/camera/HTCCamera;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_HookVolItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_HookVolItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/android/camera/menu/MenuItem;

    const v1, 0x7f0a00ea

    const/4 v4, 0x0

    invoke-direct {v10, v1, v4}, Lcom/android/camera/menu/MenuItem;-><init>(II)V

    const/16 v1, 0x3c

    invoke-virtual {v10, v1}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_Items:[Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_Items:[Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_Items:[Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/SettingsMenu;->setItems([Lcom/android/camera/menu/MenuItem;)V

    goto/16 :goto_0

    :cond_17
    const-string v1, "pref_auto_upload_label"

    invoke-virtual {v3, v1}, Lcom/android/camera/Settings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_AutoUploadItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v1, v15}, Lcom/android/camera/menu/MenuItem;->setSummary(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected onMenuItemClicked(Lcom/android/camera/menu/MenuItem;II)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    sparse-switch p3, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/menu/MenuListView;->onMenuItemClicked(Lcom/android/camera/menu/MenuItem;II)V

    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->updateAutoFocusRelatedItem()V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    invoke-virtual {v1}, Lcom/android/camera/AutoUploader;->ShowAutoUploadSetting()V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousAutoFocusItems:[Lcom/android/camera/menu/MenuItem;

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousAutoFocusItems:[Lcom/android/camera/menu/MenuItem;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/camera/menu/MenuItem;->updateContent()V

    :cond_1
    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousAutoFocusItems:[Lcom/android/camera/menu/MenuItem;

    aget-object v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousAutoFocusItems:[Lcom/android/camera/menu/MenuItem;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/android/camera/menu/MenuItem;->updateContent()V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->restartPreview()Z

    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_SmileCaptureItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/camera/menu/SettingsMenu;->m_SmileCaptureItem:Lcom/android/camera/menu/MenuItem;

    iget-object v1, v0, Lcom/android/camera/CameraSettings;->isFaceDetectionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->restartPreview()Z

    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_AutoFiveShotsItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/camera/menu/SettingsMenu;->m_AutoFiveShotsItem:Lcom/android/camera/menu/MenuItem;

    iget-object v1, v0, Lcom/android/camera/CameraSettings;->isObjectTrackingEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    goto :goto_0

    :sswitch_5
    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->updateDisabledItems()V

    goto :goto_0

    :sswitch_6
    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->resetToDefault()V

    goto :goto_0

    :sswitch_7
    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_ShutterSoundItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_ShutterSoundItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v1}, Lcom/android/camera/menu/MenuItem;->updateContent()V

    goto :goto_0

    :sswitch_8
    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->updateDisabledItems()V

    goto :goto_0

    :sswitch_9
    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->updateContinuousCaptureItem()V

    goto :goto_0

    :sswitch_a
    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->showTransMenuBarToast()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1e -> :sswitch_4
        0x1f -> :sswitch_3
        0x21 -> :sswitch_2
        0x28 -> :sswitch_7
        0x2d -> :sswitch_8
        0x2e -> :sswitch_5
        0x2f -> :sswitch_9
        0x32 -> :sswitch_1
        0x33 -> :sswitch_0
        0x3c -> :sswitch_6
        0x3d -> :sswitch_a
        0x3e -> :sswitch_0
    .end sparse-switch
.end method

.method public final setCaptureModeItemVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/menu/SettingsMenu;->m_CaptureModeItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/menu/SettingsMenu;->m_CaptureModeItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v0, p1}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    :cond_0
    return-void
.end method

.method public final setSlowMotionItemVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/menu/SettingsMenu;->m_SlowMotionItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/menu/SettingsMenu;->m_SlowMotionItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v0, p1}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    :cond_0
    return-void
.end method

.method public updateItemContents()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/menu/SettingsMenu;->beginUpdate()V

    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->updateAutoFocusRelatedItem()V

    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->updateCameraTypeItem()V

    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->updateContinuousCaptureItem()V

    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->updateDisabledItems()V

    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->updateAutoUploadItem()V

    invoke-super {p0}, Lcom/android/camera/menu/MenuListView;->updateItemContents()V

    invoke-virtual {p0}, Lcom/android/camera/menu/SettingsMenu;->endUpdate()V

    return-void
.end method
