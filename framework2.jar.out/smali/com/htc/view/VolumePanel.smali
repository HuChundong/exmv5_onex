.class public Lcom/htc/view/VolumePanel;
.super Landroid/os/Handler;
.source "VolumePanel.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/view/VolumePanel$SoundPoolHelp;,
        Lcom/htc/view/VolumePanel$SoundID;,
        Lcom/htc/view/VolumePanel$StreamControl;,
        Lcom/htc/view/VolumePanel$StreamResources;
    }
.end annotation


# static fields
.field private static final BEEP_DURATION:I = 0x96

#the value of this static final field might be set in the static constructor
.field private static final Debug_volporting:Z = false

.field private static final FREE_DELAY:I = 0x927c0

#the value of this static final field might be set in the static constructor
.field private static final ICS_LAYOUT_COLOR_BG_DEBUG:Z = false

#the value of this static final field might be set in the static constructor
.field private static final ICS_LAYOUT_COLOR_DEBUG:Z = false

.field private static final INTENT_ACTION_MY_CONFIGURAGE_CHANGE:Ljava/lang/String; = "com.htc.view.intent.action.debug_configuagechange"

.field private static final INTENT_ENTER_HOME:Ljava/lang/String; = null

.field private static LOGD:Z = false

.field private static final MAX_VOLUME:I = 0x64

.field private static final MSG_FREE_RESOURCES:I = 0x1

.field private static final MSG_MUSIC_MUTE_OFF:I = 0xd

.field private static final MSG_MUSIC_MUTE_ON:I = 0xc

.field private static final MSG_MUTE_CHANGED:I = 0x7

.field private static final MSG_PLAY_SOUND:I = 0x2

.field private static final MSG_REMOTE_VOLUME_CHANGED:I = 0x8

.field private static final MSG_REMOTE_VOLUME_UPDATE_IF_SHOWN:I = 0x9

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x6

.field private static final MSG_SLIDER_VISIBILITY_CHANGED:I = 0xa

.field private static final MSG_STOP_SOUNDS:I = 0x3

.field private static final MSG_TIMEOUT:I = 0x5

.field private static final MSG_UPDATE_ROTAETE:I = 0xb

.field private static final MSG_VIBRATE:I = 0x4

.field private static final MSG_VOLUME_CHANGED:I = 0x0

.field private static final MUSIC_MUTE_ACTION:Ljava/lang/String; = "com.htc.view.music_mute"

.field private static final MUSIC_MUTE_EXTRA_NEW_STATE:Ljava/lang/String; = "new_state"

.field private static final MUSIC_MUTE_PERMISSIONS:Ljava/lang/String; = "com.htc.view.intent.category.MUTE_MUSIC"

.field public static final PLAY_SOUND_DELAY:I = 0x0

.field public static final PLAY_SOUND_DELAY_4_SAME_VOLUME:I = 0x96

.field private static SCREEN_MODE_ILANDSCAPE:I = 0x0

.field private static SCREEN_MODE_IPORTRAIT:I = 0x0

.field private static SCREEN_MODE_LANDSCAPE:I = 0x0

.field private static SCREEN_MODE_PORTRAIT:I = 0x0

.field private static final STREAMS:[Lcom/htc/view/VolumePanel$StreamResources; = null

.field private static final STREAM_DUMMY:I = -0x2

.field private static final STREAM_MASTER:I = -0x64

.field private static final TAG:Ljava/lang/String; = "VolumePanel"

.field private static final TIMEOUT_DELAY:I = 0xbb8

.field public static final VIBRATE_DELAY:I = 0x12c

.field private static final VIBRATE_DURATION:I = 0x12c

.field private static last_stream_index:I

.field private static last_stream_type:I

.field private static final mNewStyle:Z


# instance fields
.field final RINGER_MODE_OUTDOOR:I

.field private isRotate:Z

.field private mActiveStreamType:I

.field private mAudioManager:Landroid/media/AudioManager;

.field protected mAudioService:Landroid/media/AudioService;

.field protected mContext:Landroid/content/Context;

.field private final mDialog:Landroid/app/Dialog;

.field private final mDivider:Landroid/view/View;

.field mIconWidth:I

.field mLastFlags:I

.field private final mMoreButton:Landroid/view/View;

.field private mNewSkinPackage:Ljava/lang/String;

.field private final mPanel:Landroid/view/ViewGroup;

.field private mRes:Landroid/content/res/Resources;

.field private final mRetryDelay:I

.field private final mRetryDuratinons:I

.field private mRetryTimes:I

.field private mRingIsSilent:Z

.field mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

.field private mScreenWidth:I

.field private mShowCombinedVolumes:Z

.field private mSkinRes:Landroid/content/res/Resources;

.field private final mSliderGroup:Landroid/view/ViewGroup;

.field private mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

.field private mStreamControls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/view/VolumePanel$StreamControl;",
            ">;"
        }
    .end annotation
.end field

.field private mToneGenerators:[Landroid/media/ToneGenerator;

.field private mVibrator:Landroid/os/Vibrator;

.field private final mView:Landroid/view/View;

.field private mVoiceCapable:Z

.field m_HtcDimension_m1:I

.field m_HtcDimension_m2:I

.field m_HtcDimension_m3:I

.field m_HtcDimension_m4:I

.field private needRotate:Z

.field private panel_orientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 96
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    .line 148
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const v3, 0x407f5c29

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/htc/view/VolumePanel;->mNewStyle:Z

    .line 175
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const v3, 0x408fae14

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    const-string v0, "com.htc.intent.action.NOTIFY_ENTER_HOME"

    :goto_1
    sput-object v0, Lcom/htc/view/VolumePanel;->INTENT_ENTER_HOME:Ljava/lang/String;

    .line 373
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/htc/view/VolumePanel$StreamResources;

    sget-object v3, Lcom/htc/view/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v3, v0, v2

    sget-object v3, Lcom/htc/view/VolumePanel$StreamResources;->RingerStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v3, v0, v1

    sget-object v3, Lcom/htc/view/VolumePanel$StreamResources;->VoiceStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v3, v0, v6

    sget-object v3, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v3, v0, v7

    const/4 v3, 0x4

    sget-object v4, Lcom/htc/view/VolumePanel$StreamResources;->NotificationStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v4, v0, v3

    const/4 v3, 0x5

    sget-object v4, Lcom/htc/view/VolumePanel$StreamResources;->AlarmStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v4, v0, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/htc/view/VolumePanel$StreamResources;->MasterStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v4, v0, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/htc/view/VolumePanel$StreamResources;->RemoteStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v4, v0, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/htc/view/VolumePanel$StreamResources;->SystemStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v4, v0, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/htc/view/VolumePanel$StreamResources;->DtmfStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v4, v0, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/htc/view/VolumePanel$StreamResources;->DummyStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v4, v0, v3

    sput-object v0, Lcom/htc/view/VolumePanel;->STREAMS:[Lcom/htc/view/VolumePanel$StreamResources;

    .line 404
    sput v2, Lcom/htc/view/VolumePanel;->SCREEN_MODE_PORTRAIT:I

    .line 405
    sput v1, Lcom/htc/view/VolumePanel;->SCREEN_MODE_LANDSCAPE:I

    .line 406
    sput v6, Lcom/htc/view/VolumePanel;->SCREEN_MODE_IPORTRAIT:I

    .line 407
    sput v7, Lcom/htc/view/VolumePanel;->SCREEN_MODE_ILANDSCAPE:I

    .line 545
    const-string v0, "volPorting"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/htc/view/VolumePanel;->Debug_volporting:Z

    .line 546
    const-string v0, "volLayoutD"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/htc/view/VolumePanel;->ICS_LAYOUT_COLOR_DEBUG:Z

    .line 547
    const-string v0, "volLayoutBGD"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/htc/view/VolumePanel;->ICS_LAYOUT_COLOR_BG_DEBUG:Z

    .line 1391
    sput v5, Lcom/htc/view/VolumePanel;->last_stream_type:I

    .line 1392
    sput v5, Lcom/htc/view/VolumePanel;->last_stream_index:I

    return-void

    :cond_0
    move v0, v2

    .line 148
    goto :goto_0

    .line 175
    :cond_1
    const-string v0, "android.intent.action.NOTIFY_ENTER_HOME"

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioService;)V
    .locals 19
    .parameter "context"
    .parameter "volumeService"

    .prologue
    .line 604
    invoke-direct/range {p0 .. p0}, Landroid/os/Handler;-><init>()V

    .line 165
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    .line 169
    const/4 v14, 0x3

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/view/VolumePanel;->RINGER_MODE_OUTDOOR:I

    .line 408
    sget v14, Lcom/htc/view/VolumePanel;->SCREEN_MODE_PORTRAIT:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/view/VolumePanel;->panel_orientation:I

    .line 409
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/view/VolumePanel;->isRotate:Z

    .line 410
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/view/VolumePanel;->needRotate:Z

    .line 416
    const/16 v14, 0x32

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/view/VolumePanel;->mRetryDelay:I

    .line 417
    const/16 v14, 0x3e8

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/view/VolumePanel;->mRetryDuratinons:I

    .line 418
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/view/VolumePanel;->mRetryTimes:I

    .line 419
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/view/VolumePanel;->mScreenWidth:I

    .line 542
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/view/VolumePanel;->mRes:Landroid/content/res/Resources;

    .line 543
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/view/VolumePanel;->mSkinRes:Landroid/content/res/Resources;

    .line 544
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    .line 599
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/view/VolumePanel;->mIconWidth:I

    .line 600
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    .line 601
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    .line 602
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m3:I

    .line 603
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m4:I

    .line 1317
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/view/VolumePanel;->mLastFlags:I

    .line 605
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    .line 606
    const-string v14, "audio"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    .line 607
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    .line 611
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x111000a

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    .line 614
    .local v10, useMasterVolume:Z
    if-eqz v10, :cond_1

    .line 615
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    sget-object v14, Lcom/htc/view/VolumePanel;->STREAMS:[Lcom/htc/view/VolumePanel$StreamResources;

    array-length v14, v14

    if-ge v4, v14, :cond_1

    .line 616
    sget-object v14, Lcom/htc/view/VolumePanel;->STREAMS:[Lcom/htc/view/VolumePanel$StreamResources;

    aget-object v9, v14, v4

    .line 617
    .local v9, streamRes:Lcom/htc/view/VolumePanel$StreamResources;
    iget v14, v9, Lcom/htc/view/VolumePanel$StreamResources;->streamType:I

    const/16 v15, -0x64

    if-ne v14, v15, :cond_0

    const/4 v14, 0x1

    :goto_1
    iput-boolean v14, v9, Lcom/htc/view/VolumePanel$StreamResources;->show:Z

    .line 615
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 617
    :cond_0
    const/4 v14, 0x0

    goto :goto_1

    .line 621
    .end local v4           #i:I
    .end local v9           #streamRes:Lcom/htc/view/VolumePanel$StreamResources;
    :cond_1
    const-string v14, "layout_inflater"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 624
    .local v5, inflater:Landroid/view/LayoutInflater;
    sget-boolean v14, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v14, :cond_2

    .line 626
    const-string v14, "VolumePanel"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "VolumePanel initial in HTC sense = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_2
    const v14, 0x403001b

    const/4 v15, 0x0

    invoke-virtual {v5, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/htc/view/VolumePanel;->mView:Landroid/view/View;

    .line 630
    .local v11, view:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/view/VolumePanel;->mView:Landroid/view/View;

    new-instance v15, Lcom/htc/view/VolumePanel$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/htc/view/VolumePanel$1;-><init>(Lcom/htc/view/VolumePanel;)V

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 636
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/view/VolumePanel;->mView:Landroid/view/View;

    const v15, 0x1020018

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RotateRelativeLayout;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    .line 637
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/view/VolumePanel;->mView:Landroid/view/View;

    const v15, 0x411002b

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    .line 639
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 640
    .local v2, dm:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string v15, "window"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/WindowManager;

    .line 641
    .local v13, wm:Landroid/view/WindowManager;
    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    invoke-virtual {v14, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 642
    const-string v14, "VolumePanel"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "dm.widthPixels: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " dm.heightPixels "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/view/VolumePanel;->mView:Landroid/view/View;

    const v15, 0x411002c

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    .line 647
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/view/VolumePanel;->mView:Landroid/view/View;

    const v15, 0x411002e

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    .line 648
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/view/VolumePanel;->mView:Landroid/view/View;

    const v15, 0x411002d

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/view/VolumePanel;->mDivider:Landroid/view/View;

    .line 650
    sget-boolean v14, Lcom/htc/view/VolumePanel;->mNewStyle:Z

    if-eqz v14, :cond_3

    .line 651
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/view/VolumePanel;->initSense40Panelayout(Landroid/util/DisplayMetrics;)Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 675
    :goto_2
    new-instance v14, Lcom/htc/view/VolumePanel$2;

    const v15, 0x10302f5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1, v15}, Lcom/htc/view/VolumePanel$2;-><init>(Lcom/htc/view/VolumePanel;Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    .line 684
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    const-string v15, "Volume control"

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 685
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 686
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    new-instance v15, Lcom/htc/view/VolumePanel$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/htc/view/VolumePanel$3;-><init>(Lcom/htc/view/VolumePanel;)V

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 694
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    .line 695
    .local v12, window:Landroid/view/Window;
    sget-boolean v14, Lcom/htc/view/VolumePanel;->mNewStyle:Z

    if-nez v14, :cond_5

    .line 696
    const/16 v14, 0x30

    invoke-virtual {v12, v14}, Landroid/view/Window;->setGravity(I)V

    .line 699
    :goto_3
    invoke-virtual {v12}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 700
    .local v6, lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v14, 0x0

    iput-object v14, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 703
    sget-boolean v14, Lcom/htc/view/VolumePanel;->mNewStyle:Z

    if-nez v14, :cond_6

    .line 704
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x105004a

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v14

    iput v14, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 706
    const/4 v14, -0x2

    iput v14, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 710
    :goto_4
    const/16 v14, 0x7e4

    iput v14, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 712
    const/4 v14, -0x2

    iput v14, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 713
    iget v14, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v14, v14, -0x5

    iput v14, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 714
    iget v14, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v14, v14, -0x3

    iput v14, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 715
    invoke-virtual {v12, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 716
    const v14, 0x40028

    invoke-virtual {v12, v14}, Landroid/view/Window;->addFlags(I)V

    .line 719
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v14

    new-array v14, v14, [Landroid/media/ToneGenerator;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    .line 720
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v14

    new-array v14, v14, [Lcom/htc/view/VolumePanel$SoundPoolHelp;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    .line 721
    const-string v14, "vibrator"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Vibrator;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    .line 723
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1110028

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/view/VolumePanel;->mVoiceCapable:Z

    .line 724
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/view/VolumePanel;->mVoiceCapable:Z

    if-nez v14, :cond_7

    if-nez v10, :cond_7

    const/4 v14, 0x1

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/view/VolumePanel;->mShowCombinedVolumes:Z

    .line 726
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/view/VolumePanel;->mShowCombinedVolumes:Z

    if-nez v14, :cond_8

    .line 727
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 728
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/view/VolumePanel;->mDivider:Landroid/view/View;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 732
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/htc/view/VolumePanel;->listenToRingerMode()V

    .line 733
    invoke-virtual/range {p0 .. p0}, Lcom/htc/view/VolumePanel;->resetPenelRotation()V

    .line 734
    invoke-direct/range {p0 .. p0}, Lcom/htc/view/VolumePanel;->listenToMusicMuteRequest()V

    .line 735
    return-void

    .line 654
    .end local v6           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v12           #window:Landroid/view/Window;
    :cond_3
    iget v14, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v15, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v14, v15, :cond_4

    iget v7, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 657
    .local v7, panelWidth:I
    :goto_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 658
    .local v8, param:Landroid/view/ViewGroup$LayoutParams;
    iput v7, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 659
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v14, v8}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 660
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const-string v16, "popup_full_dark"

    const-string v17, "drawable"

    const-string v18, "com.htc"

    invoke-virtual/range {v15 .. v18}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 662
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/view/VolumePanel;->mDivider:Landroid/view/View;

    check-cast v14, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const-string v16, "common_divider"

    const-string v17, "drawable"

    const-string v18, "com.htc"

    invoke-virtual/range {v15 .. v18}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 663
    :catch_0
    move-exception v3

    .line 664
    .local v3, ex:Landroid/content/res/Resources$NotFoundException;
    const-string v14, "VolumePanel"

    const-string v15, "common_divider not found"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 654
    .end local v3           #ex:Landroid/content/res/Resources$NotFoundException;
    .end local v7           #panelWidth:I
    .end local v8           #param:Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_7

    .line 698
    .restart local v12       #window:Landroid/view/Window;
    :cond_5
    const/16 v14, 0x11

    invoke-virtual {v12, v14}, Landroid/view/Window;->setGravity(I)V

    goto/16 :goto_3

    .line 708
    .restart local v6       #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_6
    iget v14, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v14, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    goto/16 :goto_4

    .line 724
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_5

    .line 730
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 91
    sget-boolean v0, Lcom/htc/view/VolumePanel;->mNewStyle:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/view/VolumePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->resetTimeout()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/view/VolumePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->forceTimeout()V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 91
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/view/VolumePanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    return v0
.end method

.method static synthetic access$402(Lcom/htc/view/VolumePanel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput p1, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    return p1
.end method

.method static synthetic access$500(Lcom/htc/view/VolumePanel;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/htc/view/VolumePanel;->INTENT_ENTER_HOME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/view/VolumePanel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/htc/view/VolumePanel;->isRotate:Z

    return v0
.end method

.method private addOtherVolumes()V
    .locals 5

    .prologue
    .line 1194
    iget-boolean v3, p0, Lcom/htc/view/VolumePanel;->mShowCombinedVolumes:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 1207
    :cond_0
    return-void

    .line 1196
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lcom/htc/view/VolumePanel;->STREAMS:[Lcom/htc/view/VolumePanel$StreamResources;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 1198
    sget-object v3, Lcom/htc/view/VolumePanel;->STREAMS:[Lcom/htc/view/VolumePanel$StreamResources;

    aget-object v3, v3, v0

    iget v2, v3, Lcom/htc/view/VolumePanel$StreamResources;->streamType:I

    .line 1199
    .local v2, streamType:I
    sget-object v3, Lcom/htc/view/VolumePanel;->STREAMS:[Lcom/htc/view/VolumePanel$StreamResources;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lcom/htc/view/VolumePanel$StreamResources;->show:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    if-ne v2, v3, :cond_3

    .line 1196
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1202
    :cond_3
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/view/VolumePanel$StreamControl;

    .line 1203
    .local v1, sc:Lcom/htc/view/VolumePanel$StreamControl;
    iget-object v3, v1, Lcom/htc/view/VolumePanel$StreamControl;->line_divider:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1204
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v4, v1, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1205
    invoke-direct {p0, v1}, Lcom/htc/view/VolumePanel;->updateSlider(Lcom/htc/view/VolumePanel$StreamControl;)V

    goto :goto_1
.end method

.method private ceateToneGenerator(I)Lcom/htc/view/VolumePanel$SoundPoolHelp;
    .locals 13
    .parameter "streamType"

    .prologue
    const/4 v1, 0x5

    const/4 v0, 0x2

    .line 1825
    monitor-enter p0

    .line 1826
    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_3

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/view/VolumePanel;->mVoiceCapable:Z

    if-nez v0, :cond_3

    .line 1827
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1828
    .local v2, listSrcFile:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x7

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "/system/media/audio/ui/Volume-1.mp3"

    aput-object v1, v9, v0

    const/4 v0, 0x1

    const-string v1, "/system/media/audio/ui/Volume-2.mp3"

    aput-object v1, v9, v0

    const/4 v0, 0x2

    const-string v1, "/system/media/audio/ui/Volume-3.mp3"

    aput-object v1, v9, v0

    const/4 v0, 0x3

    const-string v1, "/system/media/audio/ui/Volume-4.mp3"

    aput-object v1, v9, v0

    const/4 v0, 0x4

    const-string v1, "/system/media/audio/ui/Volume-5.mp3"

    aput-object v1, v9, v0

    const/4 v0, 0x5

    const-string v1, "/system/media/audio/ui/Volume-6.mp3"

    aput-object v1, v9, v0

    const/4 v0, 0x6

    const-string v1, "/system/media/audio/ui/Volume-7.mp3"

    aput-object v1, v9, v0

    .line 1837
    .local v9, effectSound:[Ljava/lang/String;
    const/4 v0, 0x7

    new-array v10, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "/system/media/audio/ui/Volume-1.aac"

    aput-object v1, v10, v0

    const/4 v0, 0x1

    const-string v1, "/system/media/audio/ui/Volume-2.aac"

    aput-object v1, v10, v0

    const/4 v0, 0x2

    const-string v1, "/system/media/audio/ui/Volume-3.aac"

    aput-object v1, v10, v0

    const/4 v0, 0x3

    const-string v1, "/system/media/audio/ui/Volume-4.aac"

    aput-object v1, v10, v0

    const/4 v0, 0x4

    const-string v1, "/system/media/audio/ui/Volume-5.aac"

    aput-object v1, v10, v0

    const/4 v0, 0x5

    const-string v1, "/system/media/audio/ui/Volume-6.aac"

    aput-object v1, v10, v0

    const/4 v0, 0x6

    const-string v1, "/system/media/audio/ui/Volume-7.aac"

    aput-object v1, v10, v0

    .line 1846
    .local v10, effectSound1:[Ljava/lang/String;
    const-string v0, "VolumePanel"

    const-string v1, "prepare sound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    new-instance v11, Ljava/io/File;

    const/4 v0, 0x0

    aget-object v0, v10, v0

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1848
    .local v11, fileChk:Ljava/io/File;
    sget-boolean v0, Lcom/htc/view/VolumePanel;->mNewStyle:Z

    if-eqz v0, :cond_1

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1849
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    array-length v0, v9

    if-ge v12, v0, :cond_2

    .line 1850
    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare sound"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v10, v12

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    aget-object v0, v10, v12

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1849
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1854
    .end local v12           #i:I
    :cond_1
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_1
    array-length v0, v9

    if-ge v12, v0, :cond_2

    .line 1855
    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare sound"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v9, v12

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    aget-object v0, v9, v12

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1854
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1860
    :cond_2
    iget-object v6, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    new-instance v0, Lcom/htc/view/VolumePanel$SoundPoolHelp;

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/view/VolumePanel$SoundPoolHelp;-><init>(Lcom/htc/view/VolumePanel;Ljava/util/List;III)V

    aput-object v0, v6, p1

    monitor-exit p0

    move-object v3, v0

    .line 1863
    .end local v2           #listSrcFile:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v9           #effectSound:[Ljava/lang/String;
    .end local v10           #effectSound1:[Ljava/lang/String;
    .end local v11           #fileChk:Ljava/io/File;
    .end local v12           #i:I
    :goto_2
    return-object v3

    :cond_3
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    new-instance v3, Lcom/htc/view/VolumePanel$SoundPoolHelp;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v4, p0

    move v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/htc/view/VolumePanel$SoundPoolHelp;-><init>(Lcom/htc/view/VolumePanel;Ljava/util/List;III)V

    aput-object v3, v0, p1

    monitor-exit p0

    goto :goto_2

    .line 1867
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private collapse()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1301
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1302
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1303
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1304
    .local v0, count:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1305
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1304
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1307
    :cond_0
    return-void
.end method

.method private createSliders()V
    .locals 23

    .prologue
    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "mode_ringer_streams_affected"

    const/16 v20, 0x24

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 975
    .local v15, silentableStreams:I
    or-int/lit8 v15, v15, 0x8

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/view/VolumePanel;->mRes:Landroid/content/res/Resources;

    .line 979
    invoke-direct/range {p0 .. p0}, Lcom/htc/view/VolumePanel;->getSkinPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    .line 980
    invoke-direct/range {p0 .. p0}, Lcom/htc/view/VolumePanel;->setSkinRes()V

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "layout_inflater"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 984
    .local v7, inflater:Landroid/view/LayoutInflater;
    new-instance v18, Ljava/util/HashMap;

    sget-object v19, Lcom/htc/view/VolumePanel;->STREAMS:[Lcom/htc/view/VolumePanel$StreamResources;

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 987
    .local v13, res:Landroid/content/res/Resources;
    const/4 v9, 0x0

    .line 988
    .local v9, list_primary_m:F
    const/4 v8, 0x0

    .line 990
    .local v8, list_item_primary_text:I
    :try_start_0
    sget-boolean v18, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v18, :cond_0

    .line 991
    const-string v18, "VolumePanel"

    const-string v19, ">>LOAD font size (list_primary_m) "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :cond_0
    const-string v18, "list_primary_m"

    const-string v19, "dimen"

    const-string v20, "com.htc"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v13, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    .line 993
    const-string v18, "list_primary"

    const-string v19, "color"

    const-string v20, "com.htc"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v13, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 994
    sget-boolean v18, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v18, :cond_1

    .line 995
    const-string v18, "VolumePanel"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "font size (list_primary_m): "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1002
    :cond_1
    :goto_0
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    sget-object v18, Lcom/htc/view/VolumePanel;->STREAMS:[Lcom/htc/view/VolumePanel$StreamResources;

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_17

    .line 1003
    sget-object v18, Lcom/htc/view/VolumePanel;->STREAMS:[Lcom/htc/view/VolumePanel$StreamResources;

    aget-object v16, v18, v6

    .line 1004
    .local v16, streamRes:Lcom/htc/view/VolumePanel$StreamResources;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->streamType:I

    move/from16 v17, v0

    .line 1005
    .local v17, streamType:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/view/VolumePanel;->mVoiceCapable:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    sget-object v18, Lcom/htc/view/VolumePanel$StreamResources;->NotificationStream:Lcom/htc/view/VolumePanel$StreamResources;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 1006
    sget-object v16, Lcom/htc/view/VolumePanel$StreamResources;->RingerStream:Lcom/htc/view/VolumePanel$StreamResources;

    .line 1008
    :cond_2
    new-instance v14, Lcom/htc/view/VolumePanel$StreamControl;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v14, v0, v1}, Lcom/htc/view/VolumePanel$StreamControl;-><init>(Lcom/htc/view/VolumePanel;Lcom/htc/view/VolumePanel$1;)V

    .line 1009
    .local v14, sc:Lcom/htc/view/VolumePanel$StreamControl;
    move/from16 v0, v17

    iput v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    .line 1010
    sget-boolean v18, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v18, :cond_3

    .line 1011
    const-string v18, "VolumePanel"

    const-string v19, ">>inflater.inflate volume_adjust_item"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    :cond_3
    const v18, 0x403001c

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/view/ViewGroup;

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    .line 1013
    sget-boolean v18, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v18, :cond_4

    .line 1014
    const-string v18, "VolumePanel"

    const-string v19, "<<inflater.inflate volume_adjust_item"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    :cond_4
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 1018
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    const v19, 0x411002d

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->divider:Landroid/widget/ImageView;

    .line 1019
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->divider:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1021
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    const v19, 0x411002f

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->line_divider:Landroid/widget/ImageView;

    .line 1022
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->line_divider:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1023
    sget-boolean v18, Lcom/htc/view/VolumePanel;->ICS_LAYOUT_COLOR_DEBUG:Z

    if-eqz v18, :cond_5

    .line 1024
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->line_divider:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, -0x100

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 1026
    :cond_5
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    const v19, 0x4110030

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    .line 1027
    const/16 v18, 0x1

    iget v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    move/from16 v19, v0

    shl-int v18, v18, v19

    and-int v18, v18, v15

    if-eqz v18, :cond_6

    .line 1028
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1030
    :cond_6
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1031
    sget-boolean v18, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v18, :cond_7

    .line 1032
    const-string v18, "VolumePanel"

    const-string v19, "ico setBackgroundColor"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :cond_7
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const v19, 0x106000d

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 1034
    sget-boolean v18, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v18, :cond_8

    .line 1035
    const-string v18, "VolumePanel"

    const-string v19, "ico setContentDescription"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    :cond_8
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->descRes:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1037
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcResName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->iconRes:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/htc/view/VolumePanel;->getHtcSenseRes(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    iput v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->iconRes:I

    .line 1038
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcMuteResName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->iconMuteRes:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/htc/view/VolumePanel;->getHtcSenseRes(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    iput v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 1039
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->iconVibrateRes:I

    .line 1040
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->iconOutDoorRes:I

    .line 1041
    sget-boolean v18, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v18, :cond_9

    .line 1042
    const-string v18, "VolumePanel"

    const-string v19, "ico setImageResource"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    :cond_9
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    iget v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->iconRes:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1045
    sget-boolean v18, Lcom/htc/view/VolumePanel;->ICS_LAYOUT_COLOR_DEBUG:Z

    if-eqz v18, :cond_a

    .line 1046
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const v19, -0xff0001

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 1050
    :cond_a
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    const v19, 0x4110010

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    .line 1051
    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->descRes:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->desTextRes:I

    .line 1052
    sget-boolean v18, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v18, :cond_b

    .line 1053
    const-string v18, "VolumePanel"

    const-string v19, "set text"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :cond_b
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->descRes:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(I)V

    .line 1055
    sget-boolean v18, Lcom/htc/view/VolumePanel;->ICS_LAYOUT_COLOR_DEBUG:Z

    if-eqz v18, :cond_c

    .line 1056
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/high16 v19, -0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1058
    :cond_c
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    const v19, 0x4110031

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/SeekBar;

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    .line 1059
    sget-boolean v18, Lcom/htc/view/VolumePanel;->ICS_LAYOUT_COLOR_DEBUG:Z

    if-eqz v18, :cond_d

    .line 1060
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    const/16 v19, -0x100

    invoke-virtual/range {v18 .. v19}, Landroid/widget/SeekBar;->setBackgroundColor(I)V

    .line 1061
    :cond_d
    sget-boolean v18, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v18, :cond_e

    .line 1062
    const-string v18, "VolumePanel"

    const-string v19, "getVolumeThumb"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/htc/view/VolumePanel;->getVolumeThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1064
    .local v4, dwThum:Landroid/graphics/drawable/Drawable;
    sget-boolean v18, Lcom/htc/view/VolumePanel;->mNewStyle:Z

    if-eqz v18, :cond_14

    .line 1068
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 1069
    .local v11, param:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->mIconWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1070
    const/16 v18, -0x2

    move/from16 v0, v18

    iput v0, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1071
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1072
    const-string v18, "VolumePanel"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "set icon width="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1078
    if-eqz v13, :cond_10

    .line 1080
    sget-boolean v18, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v18, :cond_f

    .line 1081
    const-string v18, "VolumePanel"

    const-string v19, "setTextSize"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    :cond_f
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1083
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1085
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const v19, 0x3dcccccd

    const/high16 v20, 0x3f80

    const/high16 v21, 0x3f80

    const/16 v22, -0x1

    invoke-virtual/range {v18 .. v22}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1088
    :cond_10
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1089
    .local v10, m_param:Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m3:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    move/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1090
    sget-boolean v18, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v18, :cond_11

    .line 1091
    const-string v18, "VolumePanel"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "volumeStreamText.setMargins "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    :cond_11
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1094
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .end local v10           #m_param:Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1095
    .restart local v10       #m_param:Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1096
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m3:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m3:I

    move/from16 v22, v0

    invoke-virtual/range {v18 .. v22}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 1097
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->divider:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .end local v10           #m_param:Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1098
    .restart local v10       #m_param:Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m3:I

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m3:I

    move/from16 v21, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1100
    :try_start_1
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->divider:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const-string v20, "common_div"

    const-string v21, "drawable"

    const-string v22, "com.htc"

    invoke-virtual/range {v19 .. v22}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1101
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->line_divider:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const-string v20, "common_list_divider"

    const-string v21, "drawable"

    const-string v22, "com.htc"

    invoke-virtual/range {v19 .. v22}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1115
    .end local v10           #m_param:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v11           #param:Landroid/view/ViewGroup$LayoutParams;
    :goto_2
    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_12

    if-nez v17, :cond_15

    :cond_12
    const/4 v12, 0x1

    .line 1117
    .local v12, plusOne:I
    :goto_3
    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_13

    .line 1118
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/view/VolumePanel;->getStreamMaxVolume(I)I

    move-result v19

    add-int v19, v19, v12

    invoke-virtual/range {v18 .. v19}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1119
    :cond_13
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1120
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 1123
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/htc/view/VolumePanel;->getVolumeProgressDrawable(Landroid/widget/SeekBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1124
    if-eqz v4, :cond_16

    .line 1125
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 1130
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 997
    .end local v4           #dwThum:Landroid/graphics/drawable/Drawable;
    .end local v6           #i:I
    .end local v12           #plusOne:I
    .end local v14           #sc:Lcom/htc/view/VolumePanel$StreamControl;
    .end local v16           #streamRes:Lcom/htc/view/VolumePanel$StreamResources;
    .end local v17           #streamType:I
    :catch_0
    move-exception v5

    .line 998
    .local v5, ex:Landroid/content/res/Resources$NotFoundException;
    const-string v18, "VolumePanel"

    const-string v19, "fail to get font stytle"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    const/high16 v9, 0x41d0

    .line 1000
    const v8, 0x424140

    goto/16 :goto_0

    .line 1102
    .end local v5           #ex:Landroid/content/res/Resources$NotFoundException;
    .restart local v4       #dwThum:Landroid/graphics/drawable/Drawable;
    .restart local v6       #i:I
    .restart local v10       #m_param:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v11       #param:Landroid/view/ViewGroup$LayoutParams;
    .restart local v14       #sc:Lcom/htc/view/VolumePanel$StreamControl;
    .restart local v16       #streamRes:Lcom/htc/view/VolumePanel$StreamResources;
    .restart local v17       #streamType:I
    :catch_1
    move-exception v5

    .line 1103
    .restart local v5       #ex:Landroid/content/res/Resources$NotFoundException;
    const-string v18, "VolumePanel"

    const-string v19, "sc.line_divider:common_list_divider not found"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1107
    .end local v5           #ex:Landroid/content/res/Resources$NotFoundException;
    .end local v10           #m_param:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v11           #param:Landroid/view/ViewGroup$LayoutParams;
    :cond_14
    :try_start_2
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->divider:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const-string v20, "zzz_common_review_divider"

    const-string v21, "drawable"

    const-string v22, "android"

    invoke-virtual/range {v19 .. v22}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1108
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->line_divider:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const-string v20, "zzz_common_review_divider"

    const-string v21, "drawable"

    const-string v22, "android"

    invoke-virtual/range {v19 .. v22}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 1109
    :catch_2
    move-exception v5

    .line 1110
    .restart local v5       #ex:Landroid/content/res/Resources$NotFoundException;
    const-string v18, "VolumePanel"

    const-string v19, "sc.line_divider:zzz_common_review_divider not found"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1115
    .end local v5           #ex:Landroid/content/res/Resources$NotFoundException;
    :cond_15
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 1127
    .restart local v12       #plusOne:I
    :cond_16
    const-string v18, "VolumePanel"

    const-string v19, "Seek bar HTC Thumb load fail"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1132
    .end local v4           #dwThum:Landroid/graphics/drawable/Drawable;
    .end local v12           #plusOne:I
    .end local v14           #sc:Lcom/htc/view/VolumePanel$StreamControl;
    .end local v16           #streamRes:Lcom/htc/view/VolumePanel$StreamResources;
    .end local v17           #streamType:I
    :cond_17
    return-void
.end method

.method private expand()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 1292
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1293
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1294
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1293
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1296
    :cond_0
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1297
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1298
    return-void
.end method

.method private forceTimeout()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 2125
    const-string v0, "VolumePanel"

    const-string v1, "forceTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    invoke-virtual {p0, v2}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 2127
    invoke-virtual {p0, v2}, Lcom/htc/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->sendMessage(Landroid/os/Message;)Z

    .line 2128
    return-void
.end method

.method private getGenerator(I)Lcom/htc/view/VolumePanel$SoundPoolHelp;
    .locals 1
    .parameter "streamType"

    .prologue
    .line 1871
    monitor-enter p0

    .line 1872
    :try_start_0
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    aget-object v0, v0, p1

    monitor-exit p0

    return-object v0

    .line 1874
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getHtcSenseRes(Ljava/lang/String;I)I
    .locals 5
    .parameter "htcResName"
    .parameter "defResId"

    .prologue
    .line 954
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 965
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 956
    .restart local p2
    :cond_1
    :try_start_0
    sget-boolean v2, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_2

    .line 957
    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>getHtcSenseRes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :cond_2
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "drawable"

    const-string v4, "com.htc.framework"

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 959
    .local v1, resId:I
    sget-boolean v2, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_3

    .line 960
    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<getHtcSenseRes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 962
    :cond_3
    if-eqz v1, :cond_0

    move p2, v1

    goto :goto_0

    .line 963
    .end local v1           #resId:I
    :catch_0
    move-exception v0

    .line 964
    .local v0, npeException:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method private getOrCreateSoundPool(I)Lcom/htc/view/VolumePanel$SoundPoolHelp;
    .locals 1
    .parameter "streamType"

    .prologue
    .line 1814
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    .line 1819
    :goto_0
    return-object v0

    .line 1815
    :cond_0
    monitor-enter p0

    .line 1816
    :try_start_0
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    .line 1817
    invoke-direct {p0, p1}, Lcom/htc/view/VolumePanel;->ceateToneGenerator(I)Lcom/htc/view/VolumePanel$SoundPoolHelp;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 1821
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1819
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    aget-object v0, v0, p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;
    .locals 4
    .parameter "streamType"

    .prologue
    .line 1798
    monitor-enter p0

    .line 1799
    :try_start_0
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1801
    :try_start_1
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    new-instance v2, Landroid/media/ToneGenerator;

    const/16 v3, 0x64

    invoke-direct {v2, p1, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    aput-object v2, v1, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1809
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1

    monitor-exit p0

    return-object v1

    .line 1802
    :catch_0
    move-exception v0

    .line 1803
    .local v0, e:Ljava/lang/RuntimeException;
    sget-boolean v1, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    .line 1804
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToneGenerator constructor failed with RuntimeException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1810
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getSkinDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "drawableName"
    .parameter "drawableID"

    .prologue
    .line 573
    const/4 v0, 0x0

    .line 575
    .local v0, d:Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mSkinRes:Landroid/content/res/Resources;

    if-nez v2, :cond_1

    .line 577
    :cond_0
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 585
    :goto_0
    return-object v0

    .line 580
    :cond_1
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mSkinRes:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mSkinRes:Landroid/content/res/Resources;

    const-string v4, "drawable"

    iget-object v5, p0, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 582
    :catch_0
    move-exception v1

    .line 583
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const-string v2, "VolumePanel"

    const-string v3, "progress_horizontal or seek_thumb resource not found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSkinPackageName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 551
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 553
    .local v0, am:Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 554
    .local v1, config:Landroid/content/res/Configuration;
    iget-object v3, v1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    .end local v1           #config:Landroid/content/res/Configuration;
    :goto_0
    return-object v3

    .line 555
    :catch_0
    move-exception v2

    .line 556
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 558
    const-string v3, ""

    goto :goto_0
.end method

.method private getStreamMaxVolume(I)I
    .locals 4
    .parameter "streamType"

    .prologue
    .line 919
    const/4 v0, 0x0

    .line 920
    .local v0, max:I
    const/16 v1, -0x64

    if-ne p1, v1, :cond_1

    .line 921
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMasterMaxVolume()I

    move-result v0

    .line 927
    :goto_0
    sget-boolean v1, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    .line 928
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStreamMaxVolume ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    :cond_0
    return v0

    .line 922
    :cond_1
    const/16 v1, -0xc8

    if-ne p1, v1, :cond_2

    .line 923
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v1}, Landroid/media/AudioService;->getRemoteStreamMaxVolume()I

    move-result v0

    goto :goto_0

    .line 925
    :cond_2
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method private getStreamVolume(I)I
    .locals 1
    .parameter "streamType"

    .prologue
    .line 934
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 935
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterVolume()I

    move-result v0

    .line 939
    :goto_0
    return v0

    .line 936
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 937
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRemoteStreamVolume()I

    move-result v0

    goto :goto_0

    .line 939
    :cond_1
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method private getVolumeProgressDrawable(Landroid/widget/SeekBar;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "seekBar"

    .prologue
    .line 1136
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 1137
    .local v1, layer:Landroid/graphics/drawable/LayerDrawable;
    iget-object v5, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "common_progress_empty"

    const-string v7, "drawable"

    const-string v8, "com.htc"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1138
    .local v3, progress_empty:I
    iget-object v5, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "common_progress_full"

    const-string v7, "drawable"

    const-string v8, "com.htc"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1141
    .local v4, progress_full:I
    const-string v5, "common_progress_empty"

    invoke-direct {p0, v5, v3}, Lcom/htc/view/VolumePanel;->getSkinDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1142
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/ClipDrawable;

    const-string v5, "common_progress_full"

    invoke-direct {p0, v5, v4}, Lcom/htc/view/VolumePanel;->getSkinDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x3

    const/4 v7, 0x1

    invoke-direct {v2, v5, v6, v7}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 1143
    .local v2, progress:Landroid/graphics/drawable/ClipDrawable;
    const/high16 v5, 0x102

    invoke-virtual {v1, v5, v0}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 1144
    const v5, 0x102000d

    invoke-virtual {v1, v5, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 1146
    return-object v1
.end method

.method private getVolumeThumb()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 1151
    const/4 v1, 0x0

    .line 1152
    .local v1, progress_button:I
    sget-boolean v3, Lcom/htc/view/VolumePanel;->mNewStyle:Z

    if-eqz v3, :cond_0

    const-string v2, "common_progress_button"

    .line 1153
    .local v2, strThumbDrawableName:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "drawable"

    const-string v5, "com.htc"

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1155
    :try_start_0
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1158
    :goto_1
    return-object v3

    .line 1152
    .end local v2           #strThumbDrawableName:Ljava/lang/String;
    :cond_0
    const-string v2, "common_music_progress_button"

    goto :goto_0

    .line 1156
    .restart local v2       #strThumbDrawableName:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1157
    .local v0, ex:Landroid/content/res/Resources$NotFoundException;
    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "assets not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private initSense40Panelayout(Landroid/util/DisplayMetrics;)Landroid/util/DisplayMetrics;
    .locals 13
    .parameter "dm"

    .prologue
    const/4 v12, 0x0

    .line 739
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 742
    .local v4, res:Landroid/content/res/Resources;
    :try_start_0
    const-string v7, "margin_l"

    const-string v8, "dimen"

    const-string v9, "com.htc"

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    .line 743
    const-string v7, "margin_m"

    const-string v8, "dimen"

    const-string v9, "com.htc"

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    .line 744
    const-string v7, "margin_s"

    const-string v8, "dimen"

    const-string v9, "com.htc"

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m3:I

    .line 745
    const-string v7, "margin_xs"

    const-string v8, "dimen"

    const-string v9, "com.htc"

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m4:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    :goto_0
    sget-boolean v7, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v7, :cond_0

    .line 762
    const-string v7, "VolumePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "m1="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ,m2="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " m3="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m3:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " m4="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m4:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_0
    const/4 v6, 0x0

    .line 765
    .local v6, screenWidth:I
    const/4 v5, 0x0

    .line 766
    .local v5, screenHeight:I
    const/4 v0, 0x0

    .line 767
    .local v0, FootBarHeight:I
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtcTabletDevice()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 768
    const/16 v0, 0x30

    .line 771
    :cond_1
    iget v7, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v7, v8, :cond_6

    iget v7, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int v6, v7, v0

    .line 773
    :goto_1
    iget v7, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v7, v8, :cond_7

    iget v5, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 776
    :goto_2
    sget-boolean v7, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v7, :cond_2

    .line 777
    const-string v7, "VolumePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dm.widthPixels="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ,dm.heightPixels="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    const-string v7, "VolumePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "screenWidth="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ,screenHeight="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :cond_2
    iput v6, p0, Lcom/htc/view/VolumePanel;->mScreenWidth:I

    .line 781
    const/4 v2, 0x0

    .line 782
    .local v2, panelWidth:I
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtcTabletDevice()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 783
    int-to-double v7, v6

    const-wide v9, 0x3fb1eb851eb851ecL

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, p0, Lcom/htc/view/VolumePanel;->mIconWidth:I

    .line 784
    int-to-double v7, v6

    const-wide v9, 0x3fe3333333333333L

    mul-double/2addr v7, v9

    double-to-int v7, v7

    sub-int v2, v5, v7

    .line 791
    :goto_3
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 792
    .local v3, param:Landroid/view/ViewGroup$LayoutParams;
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 793
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 796
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 797
    const/4 v7, -0x2

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 799
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v7, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 800
    sget-boolean v7, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v7, :cond_3

    .line 802
    const-string v7, "VolumePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "changed panelWidth="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    const-string v7, "VolumePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mIconWidths="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/view/VolumePanel;->mIconWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :cond_3
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v7, v12, v12, v12, v12}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 806
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "popup_full_bright"

    const-string v10, "drawable"

    const-string v11, "com.htc"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 809
    sget-boolean v7, Lcom/htc/view/VolumePanel;->ICS_LAYOUT_COLOR_BG_DEBUG:Z

    if-nez v7, :cond_9

    .line 812
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "popup_full_bright"

    const-string v10, "drawable"

    const-string v11, "com.htc"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 813
    const-string v7, "VolumePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "padding left="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    const-string v7, "VolumePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "padding top="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    const-string v7, "VolumePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "padding right="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const-string v7, "VolumePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "padding bottom="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :goto_4
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtcTabletDevice()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 826
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget v8, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    iget v9, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    iget v10, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    iget v11, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    iget v12, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    sub-int/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 832
    :goto_5
    :try_start_1
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mDivider:Landroid/view/View;

    check-cast v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "common_div"

    const-string v10, "drawable"

    const-string v11, "com.htc"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 836
    :goto_6
    sget-boolean v7, Lcom/htc/view/VolumePanel;->ICS_LAYOUT_COLOR_DEBUG:Z

    if-eqz v7, :cond_4

    .line 839
    :cond_4
    iput v6, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 840
    iput v5, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 841
    return-object p1

    .line 746
    .end local v0           #FootBarHeight:I
    .end local v2           #panelWidth:I
    .end local v3           #param:Landroid/view/ViewGroup$LayoutParams;
    .end local v5           #screenHeight:I
    .end local v6           #screenWidth:I
    :catch_0
    move-exception v1

    .line 748
    .local v1, ex:Landroid/content/res/Resources$NotFoundException;
    const-string v7, "VolumePanel"

    const-string v8, "##################getDimension(res.getIdentifier(\"margin_l\") fail"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtcTabletDevice()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 750
    iput v12, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    .line 751
    iput v12, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    .line 752
    iput v12, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m3:I

    .line 753
    iput v12, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m4:I

    goto/16 :goto_0

    .line 755
    :cond_5
    const/16 v7, 0x16

    iput v7, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    .line 756
    const/16 v7, 0x10

    iput v7, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    .line 757
    const/16 v7, 0xa

    iput v7, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m3:I

    .line 758
    const/16 v7, 0x9

    iput v7, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m4:I

    goto/16 :goto_0

    .line 771
    .end local v1           #ex:Landroid/content/res/Resources$NotFoundException;
    .restart local v0       #FootBarHeight:I
    .restart local v5       #screenHeight:I
    .restart local v6       #screenWidth:I
    :cond_6
    iget v6, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto/16 :goto_1

    .line 773
    :cond_7
    iget v7, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int v5, v7, v0

    goto/16 :goto_2

    .line 786
    .restart local v2       #panelWidth:I
    :cond_8
    div-int/lit8 v7, v6, 0x6

    iput v7, p0, Lcom/htc/view/VolumePanel;->mIconWidth:I

    .line 787
    iget v7, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m4:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v2, v6, v7

    goto/16 :goto_3

    .line 819
    .restart local v3       #param:Landroid/view/ViewGroup$LayoutParams;
    :cond_9
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 820
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v7, v12, v12, v12, v12}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto/16 :goto_4

    .line 828
    :cond_a
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget v8, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    iget v9, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m3:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    iget v10, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m3:I

    sub-int/2addr v9, v10

    invoke-virtual {v7, v12, v8, v12, v9}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_5

    .line 833
    :catch_1
    move-exception v1

    .line 834
    .restart local v1       #ex:Landroid/content/res/Resources$NotFoundException;
    const-string v7, "VolumePanel"

    const-string v8, "mDivider:common_div not found"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method private isExpanded()Z
    .locals 1

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMuted(I)Z
    .locals 1
    .parameter "streamType"

    .prologue
    .line 909
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 910
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMasterMute()Z

    move-result v0

    .line 914
    :goto_0
    return v0

    .line 911
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_2

    .line 912
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRemoteStreamVolume()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 914
    :cond_2
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    goto :goto_0
.end method

.method private listenToMusicMuteRequest()V
    .locals 5

    .prologue
    .line 881
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 882
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.view.music_mute"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 883
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/htc/view/VolumePanel$5;

    invoke-direct {v2, p0}, Lcom/htc/view/VolumePanel$5;-><init>(Lcom/htc/view/VolumePanel;)V

    const-string v3, "com.htc.view.intent.category.MUTE_MUSIC"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 906
    return-void
.end method

.method private listenToRingerMode()V
    .locals 3

    .prologue
    .line 845
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 846
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 847
    sget-object v1, Lcom/htc/view/VolumePanel;->INTENT_ENTER_HOME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 848
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 849
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    .line 850
    const-string v1, "com.htc.view.intent.action.debug_configuagechange"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 852
    :cond_0
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/htc/view/VolumePanel$4;

    invoke-direct {v2, p0}, Lcom/htc/view/VolumePanel$4;-><init>(Lcom/htc/view/VolumePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 878
    return-void
.end method

.method private postUpdatePanelRotation()V
    .locals 1

    .prologue
    const/16 v0, 0xb

    .line 1941
    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 1942
    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->sendMessage(Landroid/os/Message;)Z

    .line 1943
    return-void
.end method

.method private reorderSliders(I)V
    .locals 4
    .parameter "activeStreamType"

    .prologue
    .line 1164
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1165
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 1191
    :goto_0
    return-void

    .line 1167
    :cond_0
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/view/VolumePanel$StreamControl;

    .line 1168
    .local v0, active:Lcom/htc/view/VolumePanel$StreamControl;
    if-nez v0, :cond_1

    .line 1170
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown stream type! : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #active:Lcom/htc/view/VolumePanel$StreamControl;
    check-cast v0, Lcom/htc/view/VolumePanel$StreamControl;

    .line 1172
    .restart local v0       #active:Lcom/htc/view/VolumePanel$StreamControl;
    if-eqz v0, :cond_1

    .line 1173
    iput p1, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    .line 1174
    iget-object v1, v0, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v3, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1175
    const/4 p1, -0x2

    .line 1179
    :cond_1
    if-nez v0, :cond_2

    .line 1180
    const-string v1, "VolumePanel"

    const-string v2, "fail to get dummpy stream type! - "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    .line 1190
    :goto_1
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->addOtherVolumes()V

    goto :goto_0

    .line 1183
    :cond_2
    iget-object v1, v0, Lcom/htc/view/VolumePanel$StreamControl;->line_divider:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1184
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v2, v0, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1185
    iput p1, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    .line 1186
    iget-object v1, v0, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1187
    invoke-direct {p0, v0}, Lcom/htc/view/VolumePanel;->updateSlider(Lcom/htc/view/VolumePanel$StreamControl;)V

    goto :goto_1
.end method

.method private resetTimeout()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 2119
    const-string v0, "VolumePanel"

    const-string v1, "resetTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    invoke-virtual {p0, v2}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 2121
    invoke-virtual {p0, v2}, Lcom/htc/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2122
    return-void
.end method

.method private setMusicIcon(II)V
    .locals 5
    .parameter "resId"
    .parameter "resMuteId"

    .prologue
    .line 1885
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1886
    :try_start_1
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 1887
    monitor-exit p0

    .line 1902
    :cond_0
    :goto_0
    return-void

    .line 1888
    :cond_1
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/view/VolumePanel$StreamControl;

    .line 1889
    .local v2, sc:Lcom/htc/view/VolumePanel$StreamControl;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1891
    if-eqz v2, :cond_0

    .line 1892
    :try_start_2
    iget v3, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v3}, Lcom/htc/view/VolumePanel;->getStreamVolume(I)I

    move-result v0

    .line 1893
    .local v0, index:I
    iput p1, v2, Lcom/htc/view/VolumePanel$StreamControl;->iconRes:I

    .line 1894
    iput p2, v2, Lcom/htc/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 1895
    iget-object v4, v2, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v3, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v3}, Lcom/htc/view/VolumePanel;->isMuted(I)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v0, :cond_3

    :cond_2
    iget v3, v2, Lcom/htc/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1899
    .end local v0           #index:I
    .end local v2           #sc:Lcom/htc/view/VolumePanel$StreamControl;
    :catch_0
    move-exception v1

    .line 1900
    .local v1, npeException:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1889
    .end local v1           #npeException:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3

    .line 1895
    .restart local v0       #index:I
    .restart local v2       #sc:Lcom/htc/view/VolumePanel$StreamControl;
    :cond_3
    iget v3, v2, Lcom/htc/view/VolumePanel$StreamControl;->iconRes:I
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method

.method private setMusicMute(Z)V
    .locals 4
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 2082
    if-eqz p1, :cond_0

    .line 2084
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 2095
    :goto_0
    return-void

    .line 2088
    :cond_0
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 2089
    invoke-direct {p0, v3}, Lcom/htc/view/VolumePanel;->getStreamVolume(I)I

    move-result v0

    .line 2090
    .local v0, volume:I
    if-nez v0, :cond_1

    .line 2091
    const/4 v0, 0x1

    .line 2093
    :cond_1
    invoke-direct {p0, v3, v0, v2}, Lcom/htc/view/VolumePanel;->setStreamVolume(III)V

    goto :goto_0
.end method

.method private setSkinRes()V
    .locals 4

    .prologue
    .line 562
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 563
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/view/VolumePanel;->mSkinRes:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 566
    :catch_0
    move-exception v0

    .line 567
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No skin package matches with the given name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setStreamVolume(III)V
    .locals 1
    .parameter "streamType"
    .parameter "index"
    .parameter "flags"

    .prologue
    .line 944
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 945
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p2, p3}, Landroid/media/AudioManager;->setMasterVolume(II)V

    .line 951
    :goto_0
    return-void

    .line 946
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 947
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0, p2}, Landroid/media/AudioService;->setRemoteStreamVolume(I)V

    goto :goto_0

    .line 949
    :cond_1
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method private updateSlider(Lcom/htc/view/VolumePanel$StreamControl;)V
    .locals 8
    .parameter "sc"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 1211
    iget-object v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v3}, Lcom/htc/view/VolumePanel;->getStreamVolume(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1212
    iget v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v2}, Lcom/htc/view/VolumePanel;->isMuted(I)Z

    move-result v0

    .line 1214
    .local v0, muted:Z
    iget v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-eq v2, v5, :cond_1

    iget v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    iget v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-ne v2, v6, :cond_7

    :cond_0
    iget-boolean v2, p0, Lcom/htc/view/VolumePanel;->mVoiceCapable:Z

    if-nez v2, :cond_7

    :cond_1
    if-eqz v0, :cond_7

    .line 1216
    iget v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-ne v2, v5, :cond_6

    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-ne v2, v6, :cond_6

    .line 1218
    iget-object v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1226
    :goto_0
    iget v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 1227
    iget-object v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v3}, Lcom/htc/view/VolumePanel;->getStreamVolume(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1256
    :cond_2
    iget-object v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    iget v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1257
    iget v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-ne v2, v5, :cond_5

    .line 1258
    sget-boolean v2, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_3

    .line 1259
    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSlider muted = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", RingerMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4}, Landroid/media/AudioService;->getRingerMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    :cond_3
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    .line 1264
    iget v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->iconVibrateRes:I

    if-nez v2, :cond_4

    .line 1265
    sget-object v2, Lcom/htc/view/VolumePanel$StreamResources;->RingerStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget-object v2, v2, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcVibrateName:Ljava/lang/String;

    sget-object v3, Lcom/htc/view/VolumePanel$StreamResources;->RingerStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v3, v3, Lcom/htc/view/VolumePanel$StreamResources;->iconVibrateRes:I

    invoke-direct {p0, v2, v3}, Lcom/htc/view/VolumePanel;->getHtcSenseRes(Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->iconVibrateRes:I

    .line 1267
    :cond_4
    iput v7, p1, Lcom/htc/view/VolumePanel$StreamControl;->iconOutDoorRes:I

    .line 1268
    iget-object v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->iconVibrateRes:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1283
    :cond_5
    :goto_2
    return-void

    .line 1221
    :cond_6
    iget-object v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v2, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 1224
    :cond_7
    iget-object v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    .line 1256
    :cond_8
    iget v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_1

    .line 1271
    :cond_9
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v2}, Landroid/media/AudioService;->getRingerMode()I

    move-result v1

    .line 1272
    .local v1, ringerMode:I
    if-ne v1, v6, :cond_5

    .line 1273
    iget v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->iconOutDoorRes:I

    if-nez v2, :cond_a

    .line 1274
    sget-object v2, Lcom/htc/view/VolumePanel$StreamResources;->RingerStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget-object v2, v2, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcOutdoorName:Ljava/lang/String;

    sget-object v3, Lcom/htc/view/VolumePanel$StreamResources;->RingerStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v3, v3, Lcom/htc/view/VolumePanel$StreamResources;->iconOutDoorRes:I

    invoke-direct {p0, v2, v3}, Lcom/htc/view/VolumePanel;->getHtcSenseRes(Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->iconOutDoorRes:I

    .line 1276
    :cond_a
    iget-object v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->iconOutDoorRes:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method private updateStates()V
    .locals 4

    .prologue
    .line 1310
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1311
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1312
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/view/VolumePanel$StreamControl;

    .line 1313
    .local v2, sc:Lcom/htc/view/VolumePanel$StreamControl;
    invoke-direct {p0, v2}, Lcom/htc/view/VolumePanel;->updateSlider(Lcom/htc/view/VolumePanel$StreamControl;)V

    .line 1311
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1315
    .end local v2           #sc:Lcom/htc/view/VolumePanel$StreamControl;
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 2001
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2079
    :cond_0
    :goto_0
    return-void

    .line 2004
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/view/VolumePanel;->onVolumeChanged(II)V

    goto :goto_0

    .line 2009
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/view/VolumePanel;->onMuteChanged(II)V

    goto :goto_0

    .line 2014
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/view/VolumePanel;->onFreeResources()V

    goto :goto_0

    .line 2019
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/view/VolumePanel;->onStopSounds()V

    goto :goto_0

    .line 2024
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/view/VolumePanel;->onPlaySound(II)V

    goto :goto_0

    .line 2029
    :pswitch_5
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_1

    .line 2030
    const-string v0, "VolumePanel"

    const-string v1, ">>MSG_VIBRATE onVibrate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    :cond_1
    invoke-virtual {p0}, Lcom/htc/view/VolumePanel;->onVibrate()V

    .line 2032
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    .line 2033
    const-string v0, "VolumePanel"

    const-string v1, "<<MSG_VIBRATE onVibrate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2038
    :pswitch_6
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_2

    const-string v0, "VolumePanel"

    const-string v1, "MSG_TIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    :cond_2
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2040
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_3

    const-string v0, "VolumePanel"

    const-string v1, "mDialog.dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    :cond_3
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2042
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    goto :goto_0

    .line 2047
    :pswitch_7
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2048
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->updateStates()V

    goto :goto_0

    .line 2054
    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/view/VolumePanel;->onRemoteVolumeChanged(II)V

    goto :goto_0

    .line 2059
    :pswitch_9
    invoke-virtual {p0}, Lcom/htc/view/VolumePanel;->onRemoteVolumeUpdateIfShown()V

    goto/16 :goto_0

    .line 2063
    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/view/VolumePanel;->onSliderVisibilityChanged(II)V

    goto/16 :goto_0

    .line 2067
    :pswitch_b
    invoke-virtual {p0}, Lcom/htc/view/VolumePanel;->updatePanelRotation()V

    goto/16 :goto_0

    .line 2071
    :pswitch_c
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/view/VolumePanel;->setMusicMute(Z)V

    goto/16 :goto_0

    .line 2075
    :pswitch_d
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/view/VolumePanel;->setMusicMute(Z)V

    goto/16 :goto_0

    .line 2001
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method protected internalPlaySound(IIZ)V
    .locals 4
    .parameter "streamType"
    .parameter "nInsex"
    .parameter "bCreatePlayer"

    .prologue
    .line 1678
    monitor-enter p0

    .line 1679
    const/4 v1, 0x0

    .line 1680
    .local v1, soundPoolHelp:Lcom/htc/view/VolumePanel$SoundPoolHelp;
    if-eqz p3, :cond_0

    .line 1681
    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/view/VolumePanel;->getOrCreateSoundPool(I)Lcom/htc/view/VolumePanel$SoundPoolHelp;

    move-result-object v1

    .line 1684
    :goto_0
    if-nez v1, :cond_1

    .line 1685
    const-string v2, "VolumePanel"

    const-string v3, "soundPoolHelp released abort retry"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    monitor-exit p0

    .line 1690
    :goto_1
    return-void

    .line 1683
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/view/VolumePanel;->getGenerator(I)Lcom/htc/view/VolumePanel$SoundPoolHelp;

    move-result-object v1

    goto :goto_0

    .line 1689
    :cond_1
    invoke-virtual {v1, p2}, Lcom/htc/view/VolumePanel$SoundPoolHelp;->fnplay(I)I

    move-result v0

    .line 1690
    .local v0, nRet:I
    monitor-exit p0

    goto :goto_1

    .line 1694
    .end local v0           #nRet:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const/4 v10, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2241
    iget-object v6, p0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    if-ne p1, v6, :cond_2

    .line 2242
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->expand()V

    .line 2343
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->resetTimeout()V

    .line 2344
    :cond_1
    return-void

    .line 2243
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/htc/view/VolumePanel$StreamControl;

    if-eqz v6, :cond_0

    .line 2244
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/view/VolumePanel$StreamControl;

    .line 2247
    .local v2, sc:Lcom/htc/view/VolumePanel$StreamControl;
    iget v6, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-eq v6, v10, :cond_1

    .line 2253
    iget v6, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-ne v6, v4, :cond_8

    .line 2255
    sget-boolean v5, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v5, :cond_3

    .line 2256
    const-string v5, "VolumePanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onClick sc.seekbarView.getProgress() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getProgress()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    :cond_3
    iget-object v5, v2, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    if-nez v5, :cond_6

    .line 2259
    iget-object v5, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v6, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v5, v6, v8}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 2260
    iget v5, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v5}, Lcom/htc/view/VolumePanel;->getStreamVolume(I)I

    move-result v3

    .line 2261
    .local v3, volume:I
    if-nez v3, :cond_4

    const/4 v3, 0x1

    .line 2262
    :cond_4
    iget-object v5, v2, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v5, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2263
    iget v5, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v5, v3, v8}, Lcom/htc/view/VolumePanel;->setStreamVolume(III)V

    .line 2270
    .end local v3           #volume:I
    :goto_1
    iget-object v5, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v4}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v4

    and-int/lit16 v4, v4, 0x380

    if-eqz v4, :cond_7

    .line 2274
    sget-object v4, Lcom/htc/view/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget-object v4, v4, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcResName:Ljava/lang/String;

    sget-object v5, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v5, v5, Lcom/htc/view/VolumePanel$StreamResources;->iconRes:I

    invoke-direct {p0, v4, v5}, Lcom/htc/view/VolumePanel;->getHtcSenseRes(Ljava/lang/String;I)I

    move-result v4

    sget-object v5, Lcom/htc/view/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget-object v5, v5, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcMuteResName:Ljava/lang/String;

    sget-object v6, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v6, v6, Lcom/htc/view/VolumePanel$StreamResources;->iconMuteRes:I

    invoke-direct {p0, v5, v6}, Lcom/htc/view/VolumePanel;->getHtcSenseRes(Ljava/lang/String;I)I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/htc/view/VolumePanel;->setMusicIcon(II)V

    .line 2341
    :cond_5
    :goto_2
    iget-boolean v4, p0, Lcom/htc/view/VolumePanel;->mShowCombinedVolumes:Z

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->isExpanded()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->expand()V

    goto/16 :goto_0

    .line 2267
    :cond_6
    iget-object v5, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v6, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v5, v6, v9}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 2268
    iget-object v5, v2, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    .line 2280
    :cond_7
    sget-object v4, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget-object v4, v4, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcResName:Ljava/lang/String;

    sget-object v5, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v5, v5, Lcom/htc/view/VolumePanel$StreamResources;->iconRes:I

    invoke-direct {p0, v4, v5}, Lcom/htc/view/VolumePanel;->getHtcSenseRes(Ljava/lang/String;I)I

    move-result v4

    sget-object v5, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget-object v5, v5, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcMuteResName:Ljava/lang/String;

    sget-object v6, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v6, v6, Lcom/htc/view/VolumePanel$StreamResources;->iconMuteRes:I

    invoke-direct {p0, v5, v6}, Lcom/htc/view/VolumePanel;->getHtcSenseRes(Ljava/lang/String;I)I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/htc/view/VolumePanel;->setMusicIcon(II)V

    goto :goto_2

    .line 2292
    :cond_8
    iget-object v6, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 2293
    .local v1, ringerMode:I
    const/4 v0, 0x2

    .line 2294
    .local v0, newRingMode:I
    packed-switch v1, :pswitch_data_0

    .line 2309
    const-string v4, "VolumePanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknow sound profile:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2310
    const/4 v0, 0x2

    .line 2314
    :goto_3
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 2315
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-ne v4, v5, :cond_a

    iget v4, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v4}, Lcom/htc/view/VolumePanel;->getStreamVolume(I)I

    move-result v4

    if-nez v4, :cond_a

    .line 2317
    iget-object v4, v2, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v4, v9}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2318
    iget v4, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v4, v9, v8}, Lcom/htc/view/VolumePanel;->setStreamVolume(III)V

    goto :goto_2

    .line 2296
    :pswitch_0
    const/4 v0, 0x1

    .line 2297
    goto :goto_3

    .line 2299
    :pswitch_1
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0xd8

    if-ne v6, v7, :cond_9

    move v0, v4

    .line 2301
    :goto_4
    goto :goto_3

    :cond_9
    move v0, v5

    .line 2299
    goto :goto_4

    .line 2303
    :pswitch_2
    const/4 v0, 0x2

    .line 2304
    goto :goto_3

    .line 2306
    :pswitch_3
    const/4 v0, 0x0

    .line 2307
    goto :goto_3

    .line 2320
    :cond_a
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-ne v4, v9, :cond_5

    .line 2322
    invoke-virtual {p0, v10}, Lcom/htc/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x12c

    invoke-virtual {p0, v4, v5, v6}, Lcom/htc/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 2294
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onFreeResources()V
    .locals 3

    .prologue
    .line 1930
    monitor-enter p0

    .line 1931
    :try_start_0
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 1932
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 1933
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/view/VolumePanel$SoundPoolHelp;->release()V

    .line 1935
    :cond_0
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 1931
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1937
    :cond_1
    monitor-exit p0

    .line 1938
    return-void

    .line 1937
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onMuteChanged(II)V
    .locals 5
    .parameter "streamType"
    .parameter "flags"

    .prologue
    .line 1463
    sget-boolean v2, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMuteChanged(streamType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", flags: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    :cond_0
    const/4 v1, 0x0

    .line 1466
    .local v1, sc:Lcom/htc/view/VolumePanel$StreamControl;
    monitor-enter p0

    .line 1467
    :try_start_0
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 1468
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->createSliders()V

    .line 1470
    :cond_1
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/htc/view/VolumePanel$StreamControl;

    move-object v1, v0

    .line 1471
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1472
    if-eqz v1, :cond_2

    .line 1473
    iget-object v3, v1, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v2, v1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v2}, Lcom/htc/view/VolumePanel;->isMuted(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, v1, Lcom/htc/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1476
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/htc/view/VolumePanel;->onVolumeChanged(II)V

    .line 1477
    return-void

    .line 1471
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1473
    :cond_3
    iget v2, v1, Lcom/htc/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_0
.end method

.method protected onPlaySound(II)V
    .locals 5
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v4, 0x3

    .line 1652
    sget-boolean v1, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    .line 1653
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPlaySound(streamType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    :cond_0
    invoke-virtual {p0, v4}, Lcom/htc/view/VolumePanel;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1657
    invoke-virtual {p0, v4}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 1659
    invoke-virtual {p0}, Lcom/htc/view/VolumePanel;->onStopSounds()V

    .line 1663
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/view/VolumePanel;->getStreamVolume(I)I

    move-result v0

    .line 1664
    .local v0, index:I
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/view/VolumePanel;->mRetryTimes:I

    .line 1665
    if-lez v0, :cond_2

    .line 1669
    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lcom/htc/view/VolumePanel;->internalPlaySound(IIZ)V

    .line 1671
    :cond_2
    sget-boolean v1, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_3

    .line 1672
    const-string v1, "VolumePanel"

    const-string v2, "--onPlaySound(streamType: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    :cond_3
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 2132
    sget-boolean v2, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_0

    .line 2134
    const-string v3, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onProgressChanged progress = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " sStreamType = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/view/VolumePanel$StreamControl;

    iget v2, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    const-string v3, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onProgressChanged streamVolume = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/view/VolumePanel$StreamControl;

    iget v2, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v2}, Lcom/htc/view/VolumePanel;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    :cond_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 2139
    .local v1, tag:Ljava/lang/Object;
    if-eqz p3, :cond_3

    instance-of v2, v1, Lcom/htc/view/VolumePanel$StreamControl;

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 2140
    check-cast v0, Lcom/htc/view/VolumePanel$StreamControl;

    .line 2142
    .local v0, sc:Lcom/htc/view/VolumePanel$StreamControl;
    iget v2, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v2}, Lcom/htc/view/VolumePanel;->getStreamVolume(I)I

    move-result v2

    if-eq v2, p2, :cond_3

    .line 2145
    iget v2, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 2147
    iget v2, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v2}, Lcom/htc/view/VolumePanel;->getStreamVolume(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 2149
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v3, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v2, v3, v6}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 2154
    :cond_1
    iget v2, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x1

    invoke-direct {p0, v2, p2, v3}, Lcom/htc/view/VolumePanel;->setStreamVolume(III)V

    .line 2155
    iget v2, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-eq v2, v5, :cond_2

    iget v2, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/htc/view/VolumePanel;->mVoiceCapable:Z

    if-nez v2, :cond_3

    .line 2159
    :cond_2
    invoke-virtual {p0, v5}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 2160
    iget v2, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {p0, v5, v2, v6}, Lcom/htc/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/htc/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2165
    .end local v0           #sc:Lcom/htc/view/VolumePanel$StreamControl;
    :cond_3
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->resetTimeout()V

    .line 2166
    const-string v2, "VolumePanel"

    const-string v3, "--onProgressChanged progress  "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    return-void
.end method

.method protected onRemoteVolumeChanged(II)V
    .locals 6
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/16 v3, -0xc8

    .line 1728
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRemoteVolumeChanged(stream:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    :cond_0
    monitor-enter p0

    .line 1730
    :try_start_0
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 1731
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->createSliders()V

    .line 1733
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1734
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1735
    :cond_2
    monitor-enter p0

    .line 1736
    :try_start_1
    iget v0, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    if-eq v0, v3, :cond_3

    .line 1737
    const/16 v0, -0xc8

    invoke-direct {p0, v0}, Lcom/htc/view/VolumePanel;->reorderSliders(I)V

    .line 1739
    :cond_3
    const/16 v0, -0xc8

    invoke-virtual {p0, v0, p2}, Lcom/htc/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 1740
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1745
    :cond_4
    :goto_0
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_5

    .line 1746
    invoke-virtual {p0, v4}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 1747
    invoke-virtual {p0, v4, p1, p2}, Lcom/htc/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1750
    :cond_5
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_6

    .line 1751
    invoke-virtual {p0, v4}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 1752
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 1753
    invoke-virtual {p0}, Lcom/htc/view/VolumePanel;->onStopSounds()V

    .line 1756
    :cond_6
    invoke-virtual {p0, v5}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 1757
    invoke-virtual {p0, v5}, Lcom/htc/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0x927c0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1759
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->resetTimeout()V

    .line 1760
    return-void

    .line 1733
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1740
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 1742
    :cond_7
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_4

    const-string v0, "VolumePanel"

    const-string v1, "not calling onShowVolumeChanged(), no FLAG_SHOW_UI or no UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onRemoteVolumeUpdateIfShown()V
    .locals 3

    .prologue
    const/16 v2, -0xc8

    .line 1763
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    const-string v1, "onRemoteVolumeUpdateIfShown()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    :cond_0
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 1767
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/htc/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 1769
    :cond_1
    return-void
.end method

.method protected onShowVolumeChanged(II)V
    .locals 14
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v13, 0x2

    const/16 v12, -0xc8

    const/4 v11, 0x3

    .line 1484
    invoke-direct {p0, p1}, Lcom/htc/view/VolumePanel;->getStreamVolume(I)I

    move-result v3

    .line 1487
    .local v3, index:I
    iget-object v8, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v8, p1}, Landroid/media/AudioService;->isStreamMute(I)Z

    move-result v8

    if-eqz v8, :cond_2

    if-eq p1, v13, :cond_1

    const/4 v8, 0x5

    if-eq p1, v8, :cond_0

    if-ne p1, v11, :cond_2

    :cond_0
    iget-boolean v8, p0, Lcom/htc/view/VolumePanel;->mVoiceCapable:Z

    if-nez v8, :cond_2

    .line 1488
    :cond_1
    const/4 v3, 0x0

    .line 1493
    :cond_2
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/view/VolumePanel;->mRingIsSilent:Z

    .line 1495
    sget-boolean v8, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v8, :cond_3

    .line 1496
    const-string v8, "VolumePanel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onShowVolumeChanged(streamType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", flags: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "), index: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    :cond_3
    invoke-direct {p0, p1}, Lcom/htc/view/VolumePanel;->getStreamMaxVolume(I)I

    move-result v5

    .line 1503
    .local v5, max:I
    sget-boolean v8, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v8, :cond_4

    .line 1504
    const-string v8, "VolumePanel"

    const-string v9, "++onShowVolumeChanged update by streamType"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    :cond_4
    if-eq p1, v13, :cond_5

    if-eq p1, v11, :cond_5

    iget-boolean v8, p0, Lcom/htc/view/VolumePanel;->isRotate:Z

    if-eqz v8, :cond_5

    .line 1507
    invoke-virtual {p0}, Lcom/htc/view/VolumePanel;->resetPenelRotation()V

    .line 1509
    :cond_5
    sparse-switch p1, :sswitch_data_0

    .line 1580
    :cond_6
    :goto_0
    :sswitch_0
    sget-boolean v8, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v8, :cond_7

    .line 1581
    const-string v8, "VolumePanel"

    const-string v9, "++onShowVolumeChanged update progress"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    :cond_7
    const/4 v6, 0x0

    .line 1584
    .local v6, sc:Lcom/htc/view/VolumePanel$StreamControl;
    monitor-enter p0

    .line 1585
    :try_start_0
    iget-object v8, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v8, :cond_a

    .line 1586
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1648
    :cond_8
    :goto_1
    return-void

    .line 1512
    .end local v6           #sc:Lcom/htc/view/VolumePanel$StreamControl;
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/view/VolumePanel;->updatePanelRotation()V

    goto :goto_0

    .line 1518
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/view/VolumePanel;->updatePanelRotation()V

    .line 1520
    iget-object v8, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8, v11}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v8

    and-int/lit16 v8, v8, 0x380

    if-eqz v8, :cond_9

    .line 1524
    sget-object v8, Lcom/htc/view/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget-object v8, v8, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcResName:Ljava/lang/String;

    sget-object v9, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v9, v9, Lcom/htc/view/VolumePanel$StreamResources;->iconRes:I

    invoke-direct {p0, v8, v9}, Lcom/htc/view/VolumePanel;->getHtcSenseRes(Ljava/lang/String;I)I

    move-result v8

    sget-object v9, Lcom/htc/view/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget-object v9, v9, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcMuteResName:Ljava/lang/String;

    sget-object v10, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v10, v10, Lcom/htc/view/VolumePanel$StreamResources;->iconMuteRes:I

    invoke-direct {p0, v9, v10}, Lcom/htc/view/VolumePanel;->getHtcSenseRes(Ljava/lang/String;I)I

    move-result v9

    invoke-direct {p0, v8, v9}, Lcom/htc/view/VolumePanel;->setMusicIcon(II)V

    goto :goto_0

    .line 1530
    :cond_9
    sget-object v8, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget-object v8, v8, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcResName:Ljava/lang/String;

    sget-object v9, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v9, v9, Lcom/htc/view/VolumePanel$StreamResources;->iconRes:I

    invoke-direct {p0, v8, v9}, Lcom/htc/view/VolumePanel;->getHtcSenseRes(Ljava/lang/String;I)I

    move-result v8

    sget-object v9, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget-object v9, v9, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcMuteResName:Ljava/lang/String;

    sget-object v10, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v10, v10, Lcom/htc/view/VolumePanel$StreamResources;->iconMuteRes:I

    invoke-direct {p0, v9, v10}, Lcom/htc/view/VolumePanel;->getHtcSenseRes(Ljava/lang/String;I)I

    move-result v9

    invoke-direct {p0, v8, v9}, Lcom/htc/view/VolumePanel;->setMusicIcon(II)V

    goto :goto_0

    .line 1545
    :sswitch_3
    add-int/lit8 v3, v3, 0x1

    .line 1546
    add-int/lit8 v5, v5, 0x1

    .line 1547
    goto :goto_0

    .line 1569
    :sswitch_4
    add-int/lit8 v3, v3, 0x1

    .line 1570
    add-int/lit8 v5, v5, 0x1

    .line 1571
    goto :goto_0

    .line 1575
    :sswitch_5
    sget-boolean v8, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v8, :cond_6

    const-string v8, "VolumePanel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "showing remote volume "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " over "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1587
    .restart local v6       #sc:Lcom/htc/view/VolumePanel$StreamControl;
    :cond_a
    :try_start_1
    iget-object v8, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/htc/view/VolumePanel$StreamControl;

    move-object v6, v0

    .line 1588
    if-nez v6, :cond_b

    .line 1590
    iget-object v8, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    iget v9, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/view/VolumePanel$StreamControl;

    .line 1591
    .local v1, active:Lcom/htc/view/VolumePanel$StreamControl;
    if-eqz v1, :cond_b

    iget v8, v1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-ne v8, p1, :cond_b

    .line 1592
    move-object v6, v1

    .line 1595
    .end local v1           #active:Lcom/htc/view/VolumePanel$StreamControl;
    :cond_b
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1596
    if-eqz v6, :cond_10

    .line 1597
    iget-object v8, v6, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    .line 1598
    .local v2, curMax:I
    sget-boolean v8, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v8, :cond_c

    .line 1599
    const-string v8, "VolumePanel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Seekbar current max:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    :cond_c
    if-eq v2, v5, :cond_e

    .line 1602
    sget-boolean v8, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v8, :cond_d

    .line 1603
    const-string v8, "VolumePanel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "set process max :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    :cond_d
    iget-object v8, v6, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v8, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1607
    :cond_e
    sget-boolean v8, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v8, :cond_f

    .line 1608
    const-string v8, "VolumePanel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "set process index :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    :cond_f
    iget-object v8, v6, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v8, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1613
    .end local v2           #curMax:I
    :cond_10
    sget-boolean v8, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v8, :cond_11

    .line 1614
    const-string v8, "VolumePanel"

    const-string v9, "--onShowVolumeChanged update progress"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    :cond_11
    iget-object v8, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    .line 1617
    .local v4, isShowing:Z
    sget-boolean v8, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v8, :cond_12

    .line 1618
    const-string v8, "VolumePanel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mDialog, isShowing:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ,"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    :cond_12
    if-nez v4, :cond_15

    .line 1621
    sget-boolean v8, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v8, :cond_13

    .line 1622
    const-string v8, "VolumePanel"

    const-string v9, "++onShowVolumeChanged dialog show"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    :cond_13
    if-ne p1, v12, :cond_17

    const/4 v7, -0x1

    .line 1626
    .local v7, stream:I
    :goto_2
    iget-object v8, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8, v7}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 1627
    iget-object v8, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v9, p0, Lcom/htc/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1629
    iget-boolean v8, p0, Lcom/htc/view/VolumePanel;->mShowCombinedVolumes:Z

    if-eqz v8, :cond_14

    .line 1630
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->collapse()V

    .line 1632
    :cond_14
    iget-object v8, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 1633
    sget-boolean v8, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v8, :cond_15

    .line 1634
    const-string v8, "VolumePanel"

    const-string v9, "--onShowVolumeChanged dialog show"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    .end local v7           #stream:I
    :cond_15
    if-eq p1, v12, :cond_16

    and-int/lit8 v8, p2, 0x10

    if-eqz v8, :cond_16

    iget-object v8, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v8, p1}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v8

    if-eqz v8, :cond_16

    iget-object v8, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_16

    .line 1643
    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Lcom/htc/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v9, 0x12c

    invoke-virtual {p0, v8, v9, v10}, Lcom/htc/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1645
    :cond_16
    sget-boolean v8, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v8, :cond_8

    .line 1646
    const-string v8, "VolumePanel"

    const-string v9, "--onShowVolumeChanged"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1595
    .end local v4           #isShowing:Z
    :catchall_0
    move-exception v8

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .restart local v4       #isShowing:Z
    :cond_17
    move v7, p1

    .line 1624
    goto :goto_2

    .line 1509
    nop

    :sswitch_data_0
    .sparse-switch
        -0xc8 -> :sswitch_5
        0x0 -> :sswitch_3
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_4
    .end sparse-switch
.end method

.method protected declared-synchronized onSliderVisibilityChanged(II)V
    .locals 6
    .parameter "streamType"
    .parameter "visible"

    .prologue
    const/4 v1, 0x1

    .line 1780
    monitor-enter p0

    :try_start_0
    sget-boolean v3, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSliderVisibilityChanged(stream="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", visi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    :cond_0
    if-ne p2, v1, :cond_2

    .line 1782
    .local v1, isVisible:Z
    :goto_0
    sget-object v3, Lcom/htc/view/VolumePanel;->STREAMS:[Lcom/htc/view/VolumePanel$StreamResources;

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_1

    .line 1783
    sget-object v3, Lcom/htc/view/VolumePanel;->STREAMS:[Lcom/htc/view/VolumePanel$StreamResources;

    aget-object v2, v3, v0

    .line 1784
    .local v2, streamRes:Lcom/htc/view/VolumePanel$StreamResources;
    iget v3, v2, Lcom/htc/view/VolumePanel$StreamResources;->streamType:I

    if-ne v3, p1, :cond_3

    .line 1785
    iput-boolean v1, v2, Lcom/htc/view/VolumePanel$StreamResources;->show:Z

    .line 1786
    if-nez v1, :cond_1

    iget v3, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    if-ne v3, p1, :cond_1

    .line 1787
    const/4 v3, -0x1

    iput v3, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1792
    .end local v2           #streamRes:Lcom/htc/view/VolumePanel$StreamResources;
    :cond_1
    monitor-exit p0

    return-void

    .line 1781
    .end local v0           #i:I
    .end local v1           #isVisible:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1782
    .restart local v0       #i:I
    .restart local v1       #isVisible:Z
    .restart local v2       #streamRes:Lcom/htc/view/VolumePanel$StreamResources;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1780
    .end local v0           #i:I
    .end local v1           #isVisible:Z
    .end local v2           #streamRes:Lcom/htc/view/VolumePanel$StreamResources;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 2217
    return-void
.end method

.method protected onStopSounds()V
    .locals 4

    .prologue
    .line 1700
    monitor-enter p0

    .line 1701
    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 1702
    .local v1, numStreamTypes:I
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 1703
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    aget-object v2, v3, v0

    .line 1704
    .local v2, soundPoolHelp:Lcom/htc/view/VolumePanel$SoundPoolHelp;
    if-eqz v2, :cond_0

    .line 1705
    invoke-virtual {v2}, Lcom/htc/view/VolumePanel$SoundPoolHelp;->fnstop()V

    .line 1702
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1708
    .end local v2           #soundPoolHelp:Lcom/htc/view/VolumePanel$SoundPoolHelp;
    :cond_1
    monitor-exit p0

    .line 1709
    return-void

    .line 1708
    .end local v0           #i:I
    .end local v1           #numStreamTypes:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    const/16 v3, -0xc8

    .line 2220
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 2221
    .local v1, tag:Ljava/lang/Object;
    instance-of v2, v1, Lcom/htc/view/VolumePanel$StreamControl;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 2222
    check-cast v0, Lcom/htc/view/VolumePanel$StreamControl;

    .line 2227
    .local v0, sc:Lcom/htc/view/VolumePanel$StreamControl;
    iget v2, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-ne v2, v3, :cond_1

    .line 2228
    invoke-direct {p0, v3}, Lcom/htc/view/VolumePanel;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2238
    .end local v0           #sc:Lcom/htc/view/VolumePanel$StreamControl;
    :cond_0
    :goto_0
    return-void

    .line 2231
    .restart local v0       #sc:Lcom/htc/view/VolumePanel$StreamControl;
    :cond_1
    iget v2, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-nez v2, :cond_0

    .line 2232
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    if-nez v2, :cond_0

    .line 2233
    iget-object v2, v0, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method

.method protected onVibrate()V
    .locals 3

    .prologue
    .line 1714
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1722
    :cond_0
    :goto_0
    return-void

    .line 1717
    :cond_1
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_2

    .line 1718
    const-string v0, "VolumePanel"

    const-string v1, ">>mVibrator.vibrate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    :cond_2
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1720
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    .line 1721
    const-string v0, "VolumePanel"

    const-string v1, "<<mVibrator.vibrate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onVolumeChanged(II)V
    .locals 11
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, -0x1

    .line 1395
    sget-boolean v5, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v5, :cond_0

    const-string v5, "VolumePanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onVolumeChanged(streamType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", flags: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    :cond_0
    monitor-enter p0

    .line 1397
    :try_start_0
    iget-object v5, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v5, :cond_1

    .line 1398
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->createSliders()V

    .line 1400
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1401
    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_7

    .line 1402
    monitor-enter p0

    .line 1403
    :try_start_1
    iget-object v5, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v5, :cond_3

    .line 1404
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1459
    :cond_2
    :goto_0
    return-void

    .line 1400
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 1406
    :cond_3
    const/4 v1, -0x1

    .line 1407
    .local v1, activeStreamTypeInternal:I
    :try_start_3
    iget v5, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    const/4 v6, -0x2

    if-eq v5, v6, :cond_b

    .line 1408
    iget v1, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    .line 1417
    :cond_4
    :goto_1
    iget v5, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    if-eq v5, v8, :cond_5

    if-eq v1, p1, :cond_6

    .line 1419
    :cond_5
    invoke-direct {p0, p1}, Lcom/htc/view/VolumePanel;->reorderSliders(I)V

    .line 1421
    :cond_6
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1422
    iget v5, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    if-eq v5, v8, :cond_c

    .line 1423
    invoke-virtual {p0, p1, p2}, Lcom/htc/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 1429
    .end local v1           #activeStreamTypeInternal:I
    :cond_7
    :goto_2
    and-int/lit8 v5, p2, 0x4

    if-eqz v5, :cond_9

    .line 1432
    const/4 v4, 0x0

    .line 1433
    .local v4, playSoundDelay:I
    invoke-direct {p0, p1}, Lcom/htc/view/VolumePanel;->getStreamVolume(I)I

    move-result v2

    .line 1436
    .local v2, index:I
    sget v5, Lcom/htc/view/VolumePanel;->last_stream_type:I

    if-ne v5, p1, :cond_8

    sget v5, Lcom/htc/view/VolumePanel;->last_stream_index:I

    if-ne v5, v2, :cond_8

    .line 1438
    invoke-direct {p0, p1}, Lcom/htc/view/VolumePanel;->getStreamMaxVolume(I)I

    move-result v3

    .line 1439
    .local v3, max:I
    if-ne v2, v3, :cond_8

    .line 1440
    const/16 v4, 0x96

    .line 1442
    .end local v3           #max:I
    :cond_8
    sput p1, Lcom/htc/view/VolumePanel;->last_stream_type:I

    .line 1443
    sput v2, Lcom/htc/view/VolumePanel;->last_stream_index:I

    .line 1444
    invoke-virtual {p0, v9}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 1445
    invoke-virtual {p0, v9, p1, p2}, Lcom/htc/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    int-to-long v6, v4

    invoke-virtual {p0, v5, v6, v7}, Lcom/htc/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1448
    .end local v2           #index:I
    .end local v4           #playSoundDelay:I
    :cond_9
    and-int/lit8 v5, p2, 0x8

    if-eqz v5, :cond_a

    .line 1449
    invoke-virtual {p0, v9}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 1450
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 1451
    invoke-virtual {p0}, Lcom/htc/view/VolumePanel;->onStopSounds()V

    .line 1454
    :cond_a
    invoke-virtual {p0, v10}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 1455
    invoke-virtual {p0, v10}, Lcom/htc/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/32 v6, 0x927c0

    invoke-virtual {p0, v5, v6, v7}, Lcom/htc/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1457
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->resetTimeout()V

    .line 1458
    sget-boolean v5, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v5, :cond_2

    const-string v5, "VolumePanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--onVolumeChanged(streamType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", flags: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1410
    .restart local v1       #activeStreamTypeInternal:I
    :cond_b
    :try_start_4
    iget v5, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    if-eq v5, v8, :cond_4

    .line 1411
    iget-object v5, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    iget v6, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/view/VolumePanel$StreamControl;

    .line 1412
    .local v0, active:Lcom/htc/view/VolumePanel$StreamControl;
    if-eqz v0, :cond_4

    .line 1413
    iget v1, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    goto/16 :goto_1

    .line 1421
    .end local v0           #active:Lcom/htc/view/VolumePanel$StreamControl;
    .end local v1           #activeStreamTypeInternal:I
    :catchall_1
    move-exception v5

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .line 1425
    .restart local v1       #activeStreamTypeInternal:I
    :cond_c
    const-string v5, "VolumePanel"

    const-string v6, "onVolumeChanged unknown mActiveStreamType"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public postHasNewRemotePlaybackInfo()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 1365
    invoke-virtual {p0, v1}, Lcom/htc/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1369
    :goto_0
    return-void

    .line 1368
    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postMasterMuteChanged(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 1383
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Lcom/htc/view/VolumePanel;->postMuteChanged(II)V

    .line 1384
    return-void
.end method

.method public postMasterVolumeChanged(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 1372
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Lcom/htc/view/VolumePanel;->postVolumeChanged(II)V

    .line 1373
    return-void
.end method

.method public postMuteChanged(II)V
    .locals 1
    .parameter "streamType"
    .parameter "flags"

    .prologue
    .line 1376
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1380
    :goto_0
    return-void

    .line 1378
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 1379
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postRemoteSliderVisibility(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 1349
    const/16 v1, 0xa

    const/16 v2, -0xc8

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v2, v0}, Lcom/htc/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1351
    return-void

    .line 1349
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postRemoteVolumeChanged(II)V
    .locals 2
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/16 v1, 0x8

    .line 1342
    invoke-virtual {p0, v1}, Lcom/htc/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1346
    :goto_0
    return-void

    .line 1344
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 1345
    invoke-virtual {p0, v1, p1, p2}, Lcom/htc/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postVolumeChanged(II)V
    .locals 4
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v3, 0x0

    .line 1319
    if-nez p2, :cond_1

    .line 1320
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVolumeChanged(streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") --drop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    :cond_0
    :goto_0
    return-void

    .line 1326
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1327
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_2

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postVolumeChanged(streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")  still processing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    :cond_2
    iget v0, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    if-ne p1, v0, :cond_3

    iget v0, p0, Lcom/htc/view/VolumePanel;->mLastFlags:I

    if-eq v0, p2, :cond_0

    .line 1331
    :cond_3
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_4

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "++postVolumeChanged(streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 1336
    invoke-virtual {p0, v3, p1, p2}, Lcom/htc/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1337
    iput p2, p0, Lcom/htc/view/VolumePanel;->mLastFlags:I

    .line 1338
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--postVolumeChanged(streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected resetPenelRotation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2099
    sget-boolean v2, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_0

    .line 2100
    const-string v2, "VolumePanel"

    const-string v3, "resetPenelRotation"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    :cond_0
    iput-boolean v4, p0, Lcom/htc/view/VolumePanel;->isRotate:Z

    .line 2103
    iput-boolean v4, p0, Lcom/htc/view/VolumePanel;->needRotate:Z

    .line 2104
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    if-nez v2, :cond_1

    .line 2116
    :goto_0
    return-void

    .line 2106
    :cond_1
    sget v2, Lcom/htc/view/VolumePanel;->SCREEN_MODE_PORTRAIT:I

    iput v2, p0, Lcom/htc/view/VolumePanel;->panel_orientation:I

    .line 2107
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    sget v3, Lcom/htc/view/VolumePanel;->SCREEN_MODE_PORTRAIT:I

    invoke-virtual {v2, v3}, Landroid/widget/RotateRelativeLayout;->setRotation(I)V

    .line 2108
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RotateRelativeLayout;->setGravity(I)V

    .line 2109
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 2110
    .local v1, window:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2111
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget v2, p0, Lcom/htc/view/VolumePanel;->mScreenWidth:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2112
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2113
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2114
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->forceTimeout()V

    goto :goto_0
.end method

.method public resetProgressBar(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 590
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    .line 591
    const-string v0, "VolumePanel"

    const-string v1, "resetProgressBar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_0
    monitor-enter p0

    .line 593
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    .line 594
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->forceTimeout()V

    .line 596
    return-void

    .line 594
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setVolumePanelOrientation(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 1907
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    .line 1908
    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolumePanelOrientation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    :cond_0
    iget v0, p0, Lcom/htc/view/VolumePanel;->panel_orientation:I

    if-ne v0, p1, :cond_2

    .line 1911
    const-string v0, "VolumePanel"

    const-string v1, "setVolumePanelOrientation --orientation not change --skip"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    :cond_1
    :goto_0
    return-void

    .line 1917
    :cond_2
    sget v0, Lcom/htc/view/VolumePanel;->SCREEN_MODE_PORTRAIT:I

    if-eq p1, v0, :cond_3

    sget v0, Lcom/htc/view/VolumePanel;->SCREEN_MODE_IPORTRAIT:I

    if-eq p1, v0, :cond_3

    sget v0, Lcom/htc/view/VolumePanel;->SCREEN_MODE_LANDSCAPE:I

    if-eq p1, v0, :cond_3

    sget v0, Lcom/htc/view/VolumePanel;->SCREEN_MODE_ILANDSCAPE:I

    if-ne p1, v0, :cond_1

    .line 1921
    :cond_3
    iput p1, p0, Lcom/htc/view/VolumePanel;->panel_orientation:I

    .line 1922
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/view/VolumePanel;->needRotate:Z

    .line 1923
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->forceTimeout()V

    goto :goto_0
.end method

.method protected updatePanelRotation()V
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x1

    const/4 v5, -0x2

    .line 1947
    iget-boolean v2, p0, Lcom/htc/view/VolumePanel;->needRotate:Z

    if-nez v2, :cond_1

    .line 1997
    :cond_0
    :goto_0
    return-void

    .line 1949
    :cond_1
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    if-eqz v2, :cond_0

    .line 1952
    sget-boolean v2, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_2

    .line 1953
    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePanelRotation"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/view/VolumePanel;->panel_orientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    :cond_2
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1960
    .local v1, window:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1962
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget v2, p0, Lcom/htc/view/VolumePanel;->panel_orientation:I

    sget v3, Lcom/htc/view/VolumePanel;->SCREEN_MODE_PORTRAIT:I

    if-ne v2, v3, :cond_4

    .line 1964
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    iget v3, p0, Lcom/htc/view/VolumePanel;->panel_orientation:I

    invoke-virtual {v2, v3}, Landroid/widget/RotateRelativeLayout;->setRotation(I)V

    .line 1965
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    invoke-virtual {v2, v6}, Landroid/widget/RotateRelativeLayout;->setGravity(I)V

    .line 1966
    iget v2, p0, Lcom/htc/view/VolumePanel;->mScreenWidth:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1967
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1993
    :cond_3
    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1994
    iput-boolean v6, p0, Lcom/htc/view/VolumePanel;->isRotate:Z

    .line 1995
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/view/VolumePanel;->needRotate:Z

    goto :goto_0

    .line 1969
    :cond_4
    iget v2, p0, Lcom/htc/view/VolumePanel;->panel_orientation:I

    sget v3, Lcom/htc/view/VolumePanel;->SCREEN_MODE_LANDSCAPE:I

    if-ne v2, v3, :cond_5

    .line 1971
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    sget v3, Lcom/htc/view/VolumePanel;->SCREEN_MODE_ILANDSCAPE:I

    invoke-virtual {v2, v3}, Landroid/widget/RotateRelativeLayout;->setRotation(I)V

    .line 1972
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    invoke-virtual {v2, v7}, Landroid/widget/RotateRelativeLayout;->setGravity(I)V

    .line 1973
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1974
    iget v2, p0, Lcom/htc/view/VolumePanel;->mScreenWidth:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1

    .line 1976
    :cond_5
    iget v2, p0, Lcom/htc/view/VolumePanel;->panel_orientation:I

    sget v3, Lcom/htc/view/VolumePanel;->SCREEN_MODE_IPORTRAIT:I

    if-ne v2, v3, :cond_6

    .line 1978
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    iget v3, p0, Lcom/htc/view/VolumePanel;->panel_orientation:I

    invoke-virtual {v2, v3}, Landroid/widget/RotateRelativeLayout;->setRotation(I)V

    .line 1979
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    invoke-virtual {v2, v6}, Landroid/widget/RotateRelativeLayout;->setGravity(I)V

    .line 1980
    iget v2, p0, Lcom/htc/view/VolumePanel;->mScreenWidth:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1981
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1

    .line 1983
    :cond_6
    iget v2, p0, Lcom/htc/view/VolumePanel;->panel_orientation:I

    sget v3, Lcom/htc/view/VolumePanel;->SCREEN_MODE_ILANDSCAPE:I

    if-ne v2, v3, :cond_3

    .line 1985
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    sget v3, Lcom/htc/view/VolumePanel;->SCREEN_MODE_LANDSCAPE:I

    invoke-virtual {v2, v3}, Landroid/widget/RotateRelativeLayout;->setRotation(I)V

    .line 1986
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    invoke-virtual {v2, v7}, Landroid/widget/RotateRelativeLayout;->setGravity(I)V

    .line 1987
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1988
    iget v2, p0, Lcom/htc/view/VolumePanel;->mScreenWidth:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1
.end method

.method public updateSlientSetting(II)V
    .locals 5
    .parameter "VolumeSetting"
    .parameter "sStreamType"

    .prologue
    const/4 v4, 0x2

    .line 2173
    sget-boolean v1, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSlientSetting VolumeSetting = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sStreamType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    :cond_0
    if-eq p2, v4, :cond_3

    const/4 v1, 0x5

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/htc/view/VolumePanel;->mVoiceCapable:Z

    if-eqz v1, :cond_3

    .line 2213
    :cond_2
    :goto_0
    return-void

    .line 2184
    :cond_3
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 2185
    .local v0, currentSlientSetting:I
    sget-boolean v1, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_4

    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSlientSetting currentSlientSetting = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    :cond_4
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2196
    :pswitch_0
    if-lez p1, :cond_5

    .line 2198
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 2190
    :pswitch_1
    if-nez p1, :cond_2

    .line 2192
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 2202
    :cond_5
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 2203
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 2207
    :pswitch_2
    if-lez p1, :cond_2

    .line 2209
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 2187
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
