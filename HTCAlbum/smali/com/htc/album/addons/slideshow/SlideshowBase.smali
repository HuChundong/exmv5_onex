.class public abstract Lcom/htc/album/addons/slideshow/SlideshowBase;
.super Lcom/htc/album/modules/ui/ControlBarHostActivity;
.source "SlideshowBase.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/addons/slideshow/SlideshowBase$SlideShowAudioFocusChangeListener;,
        Lcom/htc/album/addons/slideshow/SlideshowBase$TemplateBroadcastReceiver;,
        Lcom/htc/album/addons/slideshow/SlideshowBase$ControlButtonPrev;,
        Lcom/htc/album/addons/slideshow/SlideshowBase$ControlButtonNext;
    }
.end annotation


# static fields
.field protected static final AUTO_HIDE_CONTROLBAR_INTERVAK:I = 0xdac

.field protected static final AUTO_HIDE_CONTROLBAR_INTERVAL:I = 0xdac

#the value of this static final field might be set in the static constructor
.field protected static final DEBUG:Z = false

.field protected static final DEFAULT_SLIDESHOW_INTERVAL:I = 0x3

.field protected static final DEFAULT_TRANSITION_INTERVAL:I = 0x320

.field protected static final DIRECTION_BACKWARD:Z = false

.field protected static final DIRECTION_FORWARD:Z = true

.field protected static final FOOT_BAR_SLIDESHOW:I = 0xde

.field protected static final HEADER_BAR_SLIDESHOW:I = 0x6f

.field protected static final LOG_TAG:Ljava/lang/String; = null

.field protected static final MSG_HIDE_CMD_BAR:I = 0x20

.field private static final MSG_HOOKKEY_DOUBLE_CLICK_CHECK:I = 0x4

.field protected static final MSG_SHOW_CMD_BAR:I = 0x10

.field protected static final ORIENTATION_ACTUAL_STR:Ljava/lang/String; = "1"

.field protected static final ORIENTATION_BESTFIT:I = 0x0

.field protected static final SLIDESHOW_ERROR_DIALOG:I = 0x1b669

.field protected static final SLIDESHOW_MUSIC_DIALOG:I = 0x36870

.field protected static final SPECIFY_DIRECTION:Z = true

.field private static final TIMEOUT_HOOKKEY_DOUBLE_CLICK_CHECK:I = 0x1f4

#the value of this static final field might be set in the static constructor
.field protected static final TRANSITION_DEFAULT:I = 0x0

.field public static final mMusicPickerRequestCode:I = 0x18605


# instance fields
.field protected final MUSIC_STATE_PAUSE:I

.field protected final MUSIC_STATE_PLAYING:I

.field protected final MUSIC_STATE_STOP:I

.field protected mAudioFocusListener:Lcom/htc/album/addons/slideshow/SlideshowBase$SlideShowAudioFocusChangeListener;

.field protected mAudioMgr:Landroid/media/AudioManager;

.field protected mBackupIsPlayingFlag:Z

.field protected mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mBucketId:Ljava/lang/String;

.field protected mCurDirection:Z

.field protected mCurFolderBucketId:Ljava/lang/String;

.field protected mCurFolderIndicator:Ljava/lang/String;

.field protected mCurFolderName:Ljava/lang/String;

.field protected mCurMode:Ljava/lang/String;

.field protected mCurMoveNext:Z

.field protected mCurTransitionAnimIndex:I

.field protected mCurrentPosition:I

.field protected mEnableMusic:Z

.field protected mEnterPosition:I

.field protected mFittingOrientation:I

.field protected mFolderType:Ljava/lang/String;

.field protected final mHandler:Landroid/os/Handler;

.field protected mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

.field protected mIsControlShowing:Z

.field protected mIsHeadsetHook:Z

.field protected mIsPlaying:Z

.field protected mIsSettingShown:Z

.field protected mMediaPlayer:Landroid/media/MediaPlayer;

.field protected mMusicState:I

.field protected mNoUpdateControlBar:Z

.field protected mPosted:Z

.field protected mRepeat:Z

.field protected mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

.field protected mSettingsInterval:I

.field protected mShuffleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

.field protected mSlideshowInterval:I

.field protected mStopAndLeave:Z

.field protected mTransitionAnimIndex:I

.field protected mUriMusic:Landroid/net/Uri;

.field protected mWasControlShowing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/htc/album/addons/slideshow/SlideshowBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    .line 66
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    sput-boolean v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->DEBUG:Z

    .line 71
    sget v0, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->TRANSITION_DEFAULT:I

    sput v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->TRANSITION_DEFAULT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 160
    invoke-direct {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;-><init>()V

    .line 96
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mPosted:Z

    .line 97
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsPlaying:Z

    .line 98
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mStopAndLeave:Z

    .line 101
    const-string v0, "album_mode"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurMode:Ljava/lang/String;

    .line 102
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderBucketId:Ljava/lang/String;

    .line 103
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    .line 104
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderIndicator:Ljava/lang/String;

    .line 110
    iput v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    .line 111
    iput v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mEnterPosition:I

    .line 113
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFolderType:Ljava/lang/String;

    .line 122
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsSettingShown:Z

    .line 123
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBackupIsPlayingFlag:Z

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mShuffleList:Ljava/util/ArrayList;

    .line 132
    iput v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mMusicState:I

    .line 133
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mAudioMgr:Landroid/media/AudioManager;

    .line 134
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mAudioFocusListener:Lcom/htc/album/addons/slideshow/SlideshowBase$SlideShowAudioFocusChangeListener;

    .line 135
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsHeadsetHook:Z

    .line 137
    iput v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->MUSIC_STATE_STOP:I

    .line 138
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->MUSIC_STATE_PLAYING:I

    .line 139
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->MUSIC_STATE_PAUSE:I

    .line 142
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mWasControlShowing:Z

    .line 143
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsControlShowing:Z

    .line 144
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mNoUpdateControlBar:Z

    .line 147
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurDirection:Z

    .line 148
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurMoveNext:Z

    .line 149
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurTransitionAnimIndex:I

    .line 153
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    .line 921
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowBase$7;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/SlideshowBase$7;-><init>(Lcom/htc/album/addons/slideshow/SlideshowBase;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mHandler:Landroid/os/Handler;

    .line 161
    return-void
.end method

.method private abandonAudioFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1270
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mAudioMgr:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 1272
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][requestAudioFocus]: Abandon audio focus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mAudioMgr:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mAudioFocusListener:Lcom/htc/album/addons/slideshow/SlideshowBase$SlideShowAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1274
    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mAudioFocusListener:Lcom/htc/album/addons/slideshow/SlideshowBase$SlideShowAudioFocusChangeListener;

    .line 1275
    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mAudioMgr:Landroid/media/AudioManager;

    .line 1277
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "headsetowner"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsHeadsetHook:Z

    .line 1281
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/htc/album/addons/slideshow/SlideshowBase;)Lcom/htc/album/modules/ui/ControlBarManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/addons/slideshow/SlideshowBase;)Lcom/htc/album/modules/ui/ControlBarManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/addons/slideshow/SlideshowBase;)Lcom/htc/album/modules/ui/ControlBarManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/album/addons/slideshow/SlideshowBase;)Lcom/htc/album/modules/ui/ControlBarManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/album/addons/slideshow/SlideshowBase;)Lcom/htc/album/modules/ui/ControlBarManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/album/addons/slideshow/SlideshowBase;)Lcom/htc/album/modules/ui/ControlBarManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    return-object v0
.end method

.method public static launchMusicPicker(Landroid/app/Activity;)V
    .locals 6
    .parameter "activity"

    .prologue
    .line 897
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 898
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.PICK"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 899
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 900
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 901
    const-string v3, "com.htc.music"

    const-string v4, "com.htc.music.MusicPicker"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 902
    const v3, 0x18605

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 919
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 904
    :catch_0
    move-exception v0

    .line 908
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 909
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.PICK"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 910
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 911
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 912
    const v3, 0x18605

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 914
    .end local v2           #intent:Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 916
    .local v1, e2:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]launch music picker fail. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestAudioFocus()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1244
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mAudioMgr:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 1245
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/htc/album/addons/slideshow/SlideshowBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mAudioMgr:Landroid/media/AudioManager;

    .line 1247
    :cond_0
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mAudioMgr:Landroid/media/AudioManager;

    if-eqz v1, :cond_3

    .line 1249
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mAudioFocusListener:Lcom/htc/album/addons/slideshow/SlideshowBase$SlideShowAudioFocusChangeListener;

    if-nez v1, :cond_1

    .line 1251
    new-instance v1, Lcom/htc/album/addons/slideshow/SlideshowBase$SlideShowAudioFocusChangeListener;

    invoke-direct {v1, p0}, Lcom/htc/album/addons/slideshow/SlideshowBase$SlideShowAudioFocusChangeListener;-><init>(Lcom/htc/album/addons/slideshow/SlideshowBase;)V

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mAudioFocusListener:Lcom/htc/album/addons/slideshow/SlideshowBase$SlideShowAudioFocusChangeListener;

    .line 1254
    :cond_1
    sget-object v1, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][requestAudioFocus]: Request audio focus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mAudioMgr:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mAudioFocusListener:Lcom/htc/album/addons/slideshow/SlideshowBase$SlideShowAudioFocusChangeListener;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 1257
    .local v0, ret:I
    if-eq v0, v4, :cond_2

    .line 1259
    sget-object v1, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][requestAudioFocus]: request audio focus fail. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "headsetowner"

    const-string v3, "htcalbum"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1264
    iput-boolean v4, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsHeadsetHook:Z

    .line 1266
    .end local v0           #ret:I
    :cond_3
    return-void
.end method


# virtual methods
.method protected attachMediaController()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 601
    new-instance v2, Lcom/htc/album/addons/slideshow/SlideShowController;

    iget-boolean v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsPlaying:Z

    invoke-direct {v2, p0, v3}, Lcom/htc/album/addons/slideshow/SlideShowController;-><init>(Landroid/app/Activity;Z)V

    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    .line 603
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v2, p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->setControllerEventListener(Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;)V

    .line 605
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {p0, v2}, Lcom/htc/album/addons/slideshow/SlideshowBase;->doAddMediaControllerButtons(Lcom/htc/album/addons/slideshow/SlideShowController;)V

    .line 607
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 610
    .local v0, p:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 611
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 612
    const/4 v2, -0x1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 614
    const v2, 0x7f09006c

    invoke-virtual {p0, v2}, Lcom/htc/album/addons/slideshow/SlideshowBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 617
    .local v1, rootLayout:Landroid/widget/RelativeLayout;
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 619
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/SlideShowController;->show()V

    .line 620
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    new-instance v3, Lcom/htc/album/addons/slideshow/SlideshowBase$ControlButtonNext;

    invoke-direct {v3, p0}, Lcom/htc/album/addons/slideshow/SlideshowBase$ControlButtonNext;-><init>(Lcom/htc/album/addons/slideshow/SlideshowBase;)V

    new-instance v4, Lcom/htc/album/addons/slideshow/SlideshowBase$ControlButtonPrev;

    invoke-direct {v4, p0}, Lcom/htc/album/addons/slideshow/SlideshowBase$ControlButtonPrev;-><init>(Lcom/htc/album/addons/slideshow/SlideshowBase;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/addons/slideshow/SlideShowController;->setPrevNextListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 621
    return-void
.end method

.method public buildShuffleList()V
    .locals 3

    .prologue
    .line 310
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mShuffleList:Ljava/util/ArrayList;

    .line 311
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mShuffleList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    :cond_0
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mShuffleList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 316
    return-void
.end method

.method public destoryMusic()V
    .locals 3

    .prologue
    .line 1218
    sget-boolean v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][destoryMusic] + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 1221
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->abandonAudioFocus()V

    .line 1223
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1224
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1231
    :goto_0
    sget-boolean v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][destoryMusic] - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    :cond_1
    return-void

    .line 1229
    :cond_2
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][stopMusic]mMediaPlayer null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x1

    .line 1288
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1290
    .local v0, keyCode:I
    iget-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mEnableMusic:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsHeadsetHook:Z

    if-nez v2, :cond_2

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 1323
    :cond_1
    :goto_0
    return v1

    .line 1292
    :cond_2
    const/16 v2, 0x4f

    if-ne v0, v2, :cond_5

    .line 1296
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 1297
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "headsetowner"

    const-string v3, "htcalbum"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1298
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1299
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1323
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 1302
    :cond_4
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 1306
    :cond_5
    const/16 v2, 0x55

    if-eq v0, v2, :cond_6

    const/16 v2, 0x3e

    if-ne v0, v2, :cond_7

    .line 1309
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_1

    goto :goto_0

    .line 1315
    :cond_7
    const/16 v2, 0x57

    if-eq v0, v2, :cond_1

    const/16 v2, 0x58

    if-eq v0, v2, :cond_1

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_1

    const/16 v2, 0x59

    if-ne v0, v2, :cond_3

    goto :goto_0
.end method

.method protected doAddFooterButtons(Landroid/content/Context;Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 6
    .parameter "context"
    .parameter "footer"

    .prologue
    const/4 v2, 0x0

    .line 584
    const/16 v3, 0x27

    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Previous_Song_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    move-object v0, p2

    move-object v1, p1

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 585
    const/16 v3, 0x24

    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Pause_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    move-object v0, p2

    move-object v1, p1

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 586
    const/16 v3, 0xf

    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Next_Song_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    move-object v0, p2

    move-object v1, p1

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 587
    return-void
.end method

.method protected doAddMediaControllerButtons(Lcom/htc/album/addons/slideshow/SlideShowController;)V
    .locals 7
    .parameter "controller"

    .prologue
    const/4 v2, 0x0

    .line 647
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 648
    .local v6, context:Landroid/content/Context;
    const/16 v3, 0x27

    invoke-static {v6}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Previous_Song_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    move-object v0, p1

    move-object v1, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/addons/slideshow/SlideShowController;->addButton(Landroid/content/Context;IIII)V

    .line 649
    const/16 v3, 0x24

    invoke-static {v6}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Pause_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    move-object v0, p1

    move-object v1, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/addons/slideshow/SlideShowController;->addButton(Landroid/content/Context;IIII)V

    .line 650
    const/16 v3, 0xf

    invoke-static {v6}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Next_Song_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    move-object v0, p1

    move-object v1, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/addons/slideshow/SlideShowController;->addButton(Landroid/content/Context;IIII)V

    .line 651
    return-void
.end method

.method public enableActionBarUpdate()Z
    .locals 1

    .prologue
    .line 1405
    const/4 v0, 0x1

    return v0
.end method

.method public enableBroadcastReceiver()V
    .locals 3

    .prologue
    .line 971
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 973
    new-instance v1, Lcom/htc/album/addons/slideshow/SlideshowBase$TemplateBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/album/addons/slideshow/SlideshowBase$TemplateBroadcastReceiver;-><init>(Lcom/htc/album/addons/slideshow/SlideshowBase;Lcom/htc/album/addons/slideshow/SlideshowBase$1;)V

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 976
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 977
    .local v0, intentFilter:Landroid/content/IntentFilter;
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->addToMonitorMediaDisconnect(Landroid/content/IntentFilter;)V

    .line 979
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 980
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 981
    const-string v1, "skyer"

    const-string v2, "skyer register broadcast"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->getShuffleIndex(I)I

    move-result v0

    return v0
.end method

.method public getHeaderSubtitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 540
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderIndicator:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderIndicator:Ljava/lang/String;

    .line 547
    :goto_0
    return-object v0

    .line 546
    :cond_0
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][getHeaderTitle]: Get mCurFolderIndicator NG !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string v0, ""

    goto :goto_0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 514
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    .line 521
    :goto_0
    return-object v0

    .line 520
    :cond_0
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][getHeaderTitle]: Get mCurFolderName NG !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string v0, ""

    goto :goto_0
.end method

.method public getShuffleIndex(I)I
    .locals 4
    .parameter "index"

    .prologue
    .line 325
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mShuffleList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 327
    sget-object v1, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][getShuffleIndex]: mShuffleList is null, set index = 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    .end local p1
    :goto_0
    return p1

    .line 331
    .restart local p1
    :cond_0
    const/4 v1, -0x1

    if-le p1, v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_2

    .line 333
    :cond_1
    sget-object v1, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][getShuffleIndex]: request index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", out of list size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 337
    :cond_2
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v2, "slide_show_shuffle_setting"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 339
    .local v0, bShuffle:Z
    if-eqz v0, :cond_3

    .line 341
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    .line 345
    :cond_3
    iget p1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    goto :goto_0
.end method

.method public getTrasitionAnimationID()I
    .locals 5

    .prologue
    .line 165
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v3, "slide_show_transition_setting"

    sget v4, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->TRANSITION_DEFAULT:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, strTransition:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 168
    .local v0, nAnimIndex:I
    return v0
.end method

.method public initControlBarManager()V
    .locals 4

    .prologue
    .line 388
    const v1, 0x7f09003c

    invoke-virtual {p0, v1}, Lcom/htc/album/addons/slideshow/SlideshowBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 390
    .local v0, root:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1, v0}, Lcom/htc/album/modules/ui/ControlBarManager;->attach(Landroid/view/ViewGroup;)V

    .line 392
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/16 v2, 0xde

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/modules/ui/ControlBarManager;->createFooterBar(IZ)V

    .line 394
    return-void
.end method

.method public isLaunchSlideshowFusionFP()Z
    .locals 2

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->getTrasitionAnimationID()I

    move-result v0

    .line 185
    .local v0, nAnimIndex:I
    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 187
    const/4 v1, 0x1

    .line 189
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLaunchSlideshowFusionLS()Z
    .locals 2

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->getTrasitionAnimationID()I

    move-result v0

    .line 175
    .local v0, nAnimIndex:I
    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 177
    const/4 v1, 0x1

    .line 179
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected launchSetting()V
    .locals 3

    .prologue
    .line 843
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 844
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/album/addons/slideshow/AlbumSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 845
    const-string v1, "slideshow_setting_mode"

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurMode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 846
    const v1, 0x180d9

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/addons/slideshow/SlideshowBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 847
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsSettingShown:Z

    .line 848
    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsPlaying:Z

    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mBackupIsPlayingFlag:Z

    .line 849
    return-void
.end method

.method public onActionBarBackPressed()V
    .locals 0

    .prologue
    .line 1400
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onGoBack()V

    .line 1401
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 853
    sget-boolean v3, Lcom/htc/album/addons/slideshow/SlideshowBase;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "][onActivityResult] + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 890
    :cond_1
    :goto_0
    sget-boolean v3, Lcom/htc/album/addons/slideshow/SlideshowBase;->DEBUG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "][onActivityResult] - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    :cond_2
    return-void

    .line 858
    :sswitch_0
    const/4 v3, -0x1

    if-ne v3, p2, :cond_4

    .line 860
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 861
    .local v1, selectSoundUri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 863
    .local v0, csValue:Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 864
    .local v2, strFileName:Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 867
    if-eqz v2, :cond_3

    .line 870
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v4, "slide_show_music_picker_setting"

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 871
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v4, "slide_show_music_enable_setting"

    invoke-virtual {v3, v4, v7}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putBoolean(Ljava/lang/String;Z)Z

    .line 874
    :cond_3
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v4, "slide_show_ask_music_setting"

    invoke-virtual {v3, v4, v6}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putBoolean(Ljava/lang/String;Z)Z

    .line 878
    .end local v0           #csValue:Ljava/lang/CharSequence;
    .end local v1           #selectSoundUri:Landroid/net/Uri;
    .end local v2           #strFileName:Ljava/lang/String;
    :cond_4
    iput-boolean v7, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsPlaying:Z

    goto :goto_0

    .line 881
    :sswitch_1
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v4, "slide_show_music_enable_setting"

    invoke-virtual {v3, v4, v6}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v4, "slide_show_music_picker_setting"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 883
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v4, "slide_show_music_enable_setting"

    invoke-virtual {v3, v4, v6}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putBoolean(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 855
    nop

    :sswitch_data_0
    .sparse-switch
        0x180d9 -> :sswitch_1
        0x18605 -> :sswitch_0
    .end sparse-switch
.end method

.method public onBubbleDismissed()V
    .locals 0

    .prologue
    .line 470
    return-void
.end method

.method public onBubblePopped()V
    .locals 0

    .prologue
    .line 460
    return-void
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 399
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mWasControlShowing:Z

    .line 400
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 427
    :goto_0
    return-void

    .line 403
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->launchSetting()V

    goto :goto_0

    .line 407
    :sswitch_1
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsPlaying:Z

    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onControlbarPause()V

    goto :goto_0

    .line 413
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onControlbarPlay()V

    goto :goto_0

    .line 418
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onControlbarPrevious()V

    goto :goto_0

    .line 421
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onControlbarNext()V

    goto :goto_0

    .line 424
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onGoBack()V

    goto :goto_0

    .line 400
    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_3
        0x13 -> :sswitch_4
        0x23 -> :sswitch_0
        0x24 -> :sswitch_1
        0x27 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onControlbarNext()V
    .locals 0

    .prologue
    .line 838
    return-void
.end method

.method protected onControlbarPause()V
    .locals 1

    .prologue
    .line 444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mWasControlShowing:Z

    .line 445
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onPauseTarget()V

    .line 446
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->invalidateControlBars()V

    .line 450
    :cond_0
    return-void
.end method

.method protected onControlbarPlay()V
    .locals 2

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->onPlayTarget()Z

    .line 432
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->invalidateControlBars()V

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    if-eqz v0, :cond_1

    .line 438
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/SlideShowController;->doPlay(Z)V

    .line 440
    :cond_1
    return-void
.end method

.method protected onControlbarPrevious()V
    .locals 0

    .prologue
    .line 833
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .parameter "id"
    .parameter "args"

    .prologue
    const v8, 0x2040174

    .line 715
    sparse-switch p1, :sswitch_data_0

    .line 827
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v6

    :goto_1
    return-object v6

    .line 718
    :sswitch_0
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0a0023

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0a0024

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 722
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    new-instance v6, Lcom/htc/album/addons/slideshow/SlideshowBase$1;

    invoke-direct {v6, p0}, Lcom/htc/album/addons/slideshow/SlideshowBase$1;-><init>(Lcom/htc/album/addons/slideshow/SlideshowBase;)V

    invoke-virtual {v0, v8, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 730
    new-instance v6, Lcom/htc/album/addons/slideshow/SlideshowBase$2;

    invoke-direct {v6, p0}, Lcom/htc/album/addons/slideshow/SlideshowBase$2;-><init>(Lcom/htc/album/addons/slideshow/SlideshowBase;)V

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 739
    new-instance v6, Lcom/htc/album/addons/slideshow/SlideshowBase$3;

    invoke-direct {v6, p0}, Lcom/htc/album/addons/slideshow/SlideshowBase$3;-><init>(Lcom/htc/album/addons/slideshow/SlideshowBase;)V

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 747
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    goto :goto_1

    .line 749
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    :sswitch_1
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0a0025

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 751
    .restart local v0       #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/htc/album/addons/slideshow/SlideshowBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 752
    .local v2, inflater:Landroid/view/LayoutInflater;
    if-nez v2, :cond_0

    .line 754
    sget-object v6, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum]["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "][onCreateDialog] Can\'t get LayoutInflater"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 758
    :cond_0
    const v6, 0x7f03001d

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 759
    .local v5, view:Landroid/view/View;
    if-nez v5, :cond_1

    .line 761
    sget-object v6, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum]["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "][onCreateDialog] Can\'t get htc_custom_dialog_view layout"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 765
    :cond_1
    const v6, 0x7f090044

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 766
    .local v4, textView:Landroid/widget/TextView;
    if-nez v4, :cond_2

    .line 768
    sget-object v6, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum]["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "][onCreateDialog] Can\'t get ask_text TextView"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 771
    :cond_2
    const v6, 0x7f0a0026

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 773
    const v6, 0x7f090046

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #textView:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 774
    .restart local v4       #textView:Landroid/widget/TextView;
    if-nez v4, :cond_3

    .line 776
    sget-object v6, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum]["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "][onCreateDialog] Can\'t get remind_text TextView"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 779
    :cond_3
    const v6, 0x7f0a0179

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 781
    const v6, 0x7f090045

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcCheckBox;

    .line 782
    .local v1, chkbox:Lcom/htc/widget/HtcCheckBox;
    if-nez v1, :cond_4

    .line 784
    sget-object v6, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum]["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "][onCreateDialog] Can\'t get remind_chkbox HtcCheckBox"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 788
    :cond_4
    new-instance v3, Landroid/widget/ScrollView;

    invoke-direct {v3, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 789
    .local v3, scrollView:Landroid/widget/ScrollView;
    invoke-virtual {v3, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 790
    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 792
    new-instance v6, Lcom/htc/album/addons/slideshow/SlideshowBase$4;

    invoke-direct {v6, p0, v1}, Lcom/htc/album/addons/slideshow/SlideshowBase$4;-><init>(Lcom/htc/album/addons/slideshow/SlideshowBase;Lcom/htc/widget/HtcCheckBox;)V

    invoke-virtual {v0, v8, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 802
    const v6, 0x20401ee

    new-instance v7, Lcom/htc/album/addons/slideshow/SlideshowBase$5;

    invoke-direct {v7, p0, v1}, Lcom/htc/album/addons/slideshow/SlideshowBase$5;-><init>(Lcom/htc/album/addons/slideshow/SlideshowBase;Lcom/htc/widget/HtcCheckBox;)V

    invoke-virtual {v0, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 813
    new-instance v6, Lcom/htc/album/addons/slideshow/SlideshowBase$6;

    invoke-direct {v6, p0}, Lcom/htc/album/addons/slideshow/SlideshowBase$6;-><init>(Lcom/htc/album/addons/slideshow/SlideshowBase;)V

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 822
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    goto/16 :goto_1

    .line 715
    nop

    :sswitch_data_0
    .sparse-switch
        0x1b669 -> :sswitch_0
        0x36870 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 4
    .parameter "id"

    .prologue
    .line 560
    const/4 v2, 0x0

    .line 561
    .local v2, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 562
    .local v0, context:Landroid/content/Context;
    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v2

    .line 564
    invoke-virtual {p0, v0, v2}, Lcom/htc/album/addons/slideshow/SlideshowBase;->doAddFooterButtons(Landroid/content/Context;Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V

    .line 566
    invoke-virtual {v2}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getRootView()Landroid/view/ViewGroup;

    move-result-object v1

    .line 567
    .local v1, footer:Landroid/view/ViewGroup;
    instance-of v3, v1, Lcom/htc/widget/HtcFooter;

    if-eqz v3, :cond_0

    .line 569
    check-cast v1, Lcom/htc/widget/HtcFooter;

    .end local v1           #footer:Landroid/view/ViewGroup;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcFooter;->setTranparentBckground(Z)V

    .line 573
    :cond_0
    return-object v2
.end method

.method public onDLNASupportRange()Z
    .locals 1

    .prologue
    .line 1383
    const/4 v0, 0x1

    return v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 1395
    const/4 v0, 0x1

    return v0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1237
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][onError]: Stop Music, what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extra: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->stopMusic()V

    .line 1239
    const/4 v0, 0x0

    return v0
.end method

.method public onGoBack()V
    .locals 0

    .prologue
    .line 1373
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->finish()V

    .line 1374
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 375
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 382
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 378
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->launchSetting()V

    goto :goto_0

    .line 375
    nop

    :pswitch_data_0
    .packed-switch 0x7f09008e
        :pswitch_0
    .end packed-switch
.end method

.method public onPauseTarget()V
    .locals 0

    .prologue
    .line 1369
    return-void
.end method

.method public onPlayTarget()Z
    .locals 1

    .prologue
    .line 1363
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 352
    invoke-super {p0, p1}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 353
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v1

    sget-object v2, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;->MODE_FULLSCREEN:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setMode(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;)V

    .line 354
    const v1, 0x7f09008e

    const v2, 0x2040178

    invoke-interface {p1, v3, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 355
    .local v0, menuItem:Landroid/view/MenuItem;
    const v1, 0x20800c3

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 356
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 358
    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mNoUpdateControlBar:Z

    if-eqz v1, :cond_0

    .line 360
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mNoUpdateControlBar:Z

    .line 366
    :goto_0
    return v4

    .line 364
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->updateControlBar()V

    goto :goto_0
.end method

.method public onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 2
    .parameter "footer"

    .prologue
    .line 592
    instance-of v1, p1, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;

    if-eqz v1, :cond_0

    .line 594
    check-cast p1, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;

    .end local p1
    const/16 v1, 0x24

    invoke-virtual {p1, v1}, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->findRimButton(I)Lcom/htc/widget/HtcRimButton;

    move-result-object v0

    .line 595
    .local v0, playBtn:Lcom/htc/widget/HtcRimButton;
    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsPlaying:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Pause_Dark_Rest(Landroid/content/Context;)I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setIconResource(I)V

    .line 597
    .end local v0           #playBtn:Lcom/htc/widget/HtcRimButton;
    :cond_0
    return-void

    .line 595
    .restart local v0       #playBtn:Lcom/htc/widget/HtcRimButton;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Play_Dark_Rest(Landroid/content/Context;)I

    move-result v1

    goto :goto_0
.end method

.method public onSettings()V
    .locals 0

    .prologue
    .line 1379
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderIndicator:Ljava/lang/String;

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public pauseMusic()V
    .locals 3

    .prologue
    .line 1183
    sget-boolean v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][pauseMusic] + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 1186
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mMusicState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1188
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->abandonAudioFocus()V

    .line 1189
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 1190
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mMusicState:I

    .line 1197
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][pauseMusic] - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    :cond_2
    return-void

    .line 1194
    :cond_3
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][pauseMusic]mMediaPlayer null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public playMusic()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1133
    sget-boolean v3, Lcom/htc/album/addons/slideshow/SlideshowBase;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "][playMusic] + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    :cond_0
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mEnableMusic:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsPlaying:Z

    if-eqz v3, :cond_4

    .line 1136
    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mMusicState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 1138
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->requestAudioFocus()V

    .line 1140
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 1141
    iput v7, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mMusicState:I

    .line 1143
    sget-boolean v3, Lcom/htc/album/addons/slideshow/SlideshowBase;->DEBUG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "][playMusic]: Pause -> Playing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    :cond_1
    :goto_0
    sget-boolean v3, Lcom/htc/album/addons/slideshow/SlideshowBase;->DEBUG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "][playMusic] - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    :cond_2
    return-void

    .line 1145
    :cond_3
    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mMusicState:I

    if-ne v3, v6, :cond_1

    .line 1147
    const/4 v1, 0x0

    .line 1148
    .local v1, fileA:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    .end local v1           #fileA:Ljava/io/File;
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mUriMusic:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1152
    .restart local v1       #fileA:Ljava/io/File;
    :try_start_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->requestAudioFocus()V

    .line 1154
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V

    .line 1155
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mUriMusic:Landroid/net/Uri;

    invoke-virtual {v3, p0, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1156
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 1157
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 1158
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 1160
    const/4 v3, 0x2

    iput v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mMusicState:I

    .line 1162
    sget-boolean v3, Lcom/htc/album/addons/slideshow/SlideshowBase;->DEBUG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "][playMusic]: Stop -> Playing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1164
    :catch_0
    move-exception v0

    .line 1166
    .local v0, ex:Ljava/io/IOException;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1167
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1168
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1170
    sget-object v3, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "][playMusic]: Play Music Start NG !"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1176
    .end local v0           #ex:Ljava/io/IOException;
    .end local v1           #fileA:Ljava/io/File;
    .end local v2           #s:Ljava/lang/String;
    :cond_4
    sget-object v3, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "][playMusic]mMediaPlayer == null || !mEnableMusic || !mIsPlaying"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 554
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestHeaderBar()Z
    .locals 1

    .prologue
    .line 475
    const/4 v0, 0x0

    return v0
.end method

.method protected retrieveSettings()V
    .locals 12

    .prologue
    const/16 v11, 0x1388

    const/16 v10, 0x9c4

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 194
    sget-boolean v5, Lcom/htc/album/addons/slideshow/SlideshowBase;->DEBUG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum]["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "][retrieveSettings] + "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_0
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v6, "slide_show_duration_setting"

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, interval:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingsInterval:I

    .line 197
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->isLaunchSlideshowFusionLS()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 199
    iget v5, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingsInterval:I

    packed-switch v5, :pswitch_data_0

    .line 211
    :pswitch_0
    iput v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideshowInterval:I

    .line 238
    :goto_0
    sget-boolean v5, Lcom/htc/album/addons/slideshow/SlideshowBase;->DEBUG:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum]["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "][retrieveSettings]mSlideshowInterval = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideshowInterval:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_1
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v6, "slide_show_repeat_setting"

    invoke-virtual {v5, v6, v9}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mRepeat:Z

    .line 243
    sget-boolean v5, Lcom/htc/album/addons/slideshow/SlideshowBase;->DEBUG:Z

    if-eqz v5, :cond_2

    sget-object v5, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum]["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "][retrieveSettings]mRepeat = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mRepeat:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_2
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v6, "slide_show_orientation_setting"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, fit_orientation:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFittingOrientation:I

    .line 247
    sget-boolean v5, Lcom/htc/album/addons/slideshow/SlideshowBase;->DEBUG:Z

    if-eqz v5, :cond_3

    sget-object v5, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum]["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "][retrieveSettings]mFittingOrientation = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mFittingOrientation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_3
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v6, "slide_show_transition_setting"

    sget v7, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->TRANSITION_DEFAULT:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, transition:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mTransitionAnimIndex:I

    .line 251
    sget-boolean v5, Lcom/htc/album/addons/slideshow/SlideshowBase;->DEBUG:Z

    if-eqz v5, :cond_4

    sget-object v5, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum]["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "][retrieveSettings]mTransitionAnimIndex = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mTransitionAnimIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_4
    iget v5, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mTransitionAnimIndex:I

    iget v6, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurTransitionAnimIndex:I

    if-eq v5, v6, :cond_6

    .line 256
    sget-boolean v5, Lcom/htc/album/addons/slideshow/SlideshowBase;->DEBUG:Z

    if-eqz v5, :cond_5

    sget-object v5, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum]["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "][retrieveSettings]: Stop music by Change Transition."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_5
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->stopMusic()V

    .line 263
    :cond_6
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v6, "slide_show_music_enable_setting"

    invoke-virtual {v5, v6, v8}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mEnableMusic:Z

    .line 264
    sget-boolean v5, Lcom/htc/album/addons/slideshow/SlideshowBase;->DEBUG:Z

    if-eqz v5, :cond_7

    sget-object v5, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum]["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "][retrieveSettings]mEnableMusic = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mEnableMusic:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_7
    iget-boolean v5, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mEnableMusic:Z

    if-ne v5, v9, :cond_10

    .line 269
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v6, "slide_show_music_picker_setting"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, strUri:Ljava/lang/String;
    const/4 v4, 0x0

    .line 271
    .local v4, uriTemp:Landroid/net/Uri;
    if-nez v2, :cond_8

    const-string v5, ""

    if-eq v2, v5, :cond_9

    .line 273
    :cond_8
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 276
    :cond_9
    if-nez v4, :cond_d

    .line 278
    iput-boolean v8, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mEnableMusic:Z

    .line 279
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->stopMusic()V

    .line 280
    sget-object v5, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum]["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "][retrieveSettings]: Uri.parse NG !"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .end local v2           #strUri:Ljava/lang/String;
    .end local v4           #uriTemp:Landroid/net/Uri;
    :goto_1
    sget-boolean v5, Lcom/htc/album/addons/slideshow/SlideshowBase;->DEBUG:Z

    if-eqz v5, :cond_a

    sget-object v5, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum]["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "][retrieveSettings] - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :cond_a
    return-void

    .line 202
    .end local v0           #fit_orientation:Ljava/lang/String;
    .end local v3           #transition:Ljava/lang/String;
    :pswitch_1
    iput v11, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideshowInterval:I

    goto/16 :goto_0

    .line 205
    :pswitch_2
    const/16 v5, 0x1964

    iput v5, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideshowInterval:I

    goto/16 :goto_0

    .line 208
    :pswitch_3
    const/16 v5, 0x1f40

    iput v5, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideshowInterval:I

    goto/16 :goto_0

    .line 215
    :cond_b
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->isLaunchSlideshowFusionFP()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 217
    iget v5, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingsInterval:I

    packed-switch v5, :pswitch_data_1

    .line 229
    :pswitch_4
    iput v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideshowInterval:I

    goto/16 :goto_0

    .line 220
    :pswitch_5
    iput v10, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideshowInterval:I

    goto/16 :goto_0

    .line 223
    :pswitch_6
    const/16 v5, 0xdac

    iput v5, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideshowInterval:I

    goto/16 :goto_0

    .line 226
    :pswitch_7
    const/16 v5, 0xfa0

    iput v5, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideshowInterval:I

    goto/16 :goto_0

    .line 235
    :cond_c
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    add-int/lit16 v5, v5, 0x320

    iput v5, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideshowInterval:I

    goto/16 :goto_0

    .line 286
    .restart local v0       #fit_orientation:Ljava/lang/String;
    .restart local v2       #strUri:Ljava/lang/String;
    .restart local v3       #transition:Ljava/lang/String;
    .restart local v4       #uriTemp:Landroid/net/Uri;
    :cond_d
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mUriMusic:Landroid/net/Uri;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mUriMusic:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v5

    if-eqz v5, :cond_f

    .line 289
    :cond_e
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->stopMusic()V

    .line 290
    iput-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mUriMusic:Landroid/net/Uri;

    .line 293
    :cond_f
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->playMusic()V

    goto :goto_1

    .line 299
    .end local v2           #strUri:Ljava/lang/String;
    .end local v4           #uriTemp:Landroid/net/Uri;
    :cond_10
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->stopMusic()V

    goto :goto_1

    .line 199
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 217
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method

.method protected seekNextPlayablePosition(Lcom/htc/opensense2/album/util/ImageManager$IImage;Z)V
    .locals 4
    .parameter "image"
    .parameter "moveNext"

    .prologue
    const/4 v2, 0x1

    .line 1099
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v1

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1101
    :cond_1
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    .line 1105
    .local v0, nNewPosition:I
    :cond_2
    if-eqz p2, :cond_6

    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    .line 1106
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_3

    const/4 v0, 0x0

    .line 1107
    :cond_3
    if-gez v0, :cond_4

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 1108
    :cond_4
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->getShuffleIndex(I)I

    move-result v3

    invoke-interface {v1, v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object p1

    .line 1109
    if-nez p1, :cond_7

    .line 1126
    .end local v0           #nNewPosition:I
    :cond_5
    :goto_1
    return-void

    .line 1105
    .restart local v0       #nNewPosition:I
    :cond_6
    const/4 v1, -0x1

    goto :goto_0

    .line 1111
    :cond_7
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v1, p1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v1

    if-ne v1, v2, :cond_9

    :cond_8
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    if-ne v0, v1, :cond_2

    .line 1113
    :cond_a
    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    goto :goto_1
.end method

.method protected setKeepScreenOn(Z)V
    .locals 2
    .parameter "IsScreenOn"

    .prologue
    const/16 v1, 0x80

    .line 940
    if-eqz p1, :cond_0

    .line 942
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 948
    :goto_0
    return-void

    .line 946
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method protected showControlBar(Z)V
    .locals 1
    .parameter "isShow"

    .prologue
    .line 957
    if-eqz p1, :cond_0

    .line 959
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsControlShowing:Z

    .line 965
    :goto_0
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->updateControlBar()V

    .line 966
    return-void

    .line 963
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsControlShowing:Z

    goto :goto_0
.end method

.method public showErrorDialog()V
    .locals 1

    .prologue
    .line 952
    const v0, 0x1b669

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->showDialog(I)V

    .line 953
    return-void
.end method

.method public stopMusic()V
    .locals 3

    .prologue
    .line 1202
    sget-boolean v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][stopMusic] + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 1205
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->abandonAudioFocus()V

    .line 1206
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1207
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mMusicState:I

    .line 1213
    :goto_0
    sget-boolean v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][stopMusic] - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    :cond_1
    return-void

    .line 1211
    :cond_2
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][stopMusic]mMediaPlayer null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected updateControlBar()V
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 1004
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][updateControlBar] + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsControlShowing:Z

    if-eqz v0, :cond_0

    .line 1008
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowBase$8;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/SlideshowBase$8;-><init>(Lcom/htc/album/addons/slideshow/SlideshowBase;)V

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1093
    :goto_0
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][updateControlBar] - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    return-void

    .line 1040
    :cond_0
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowBase$9;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/SlideshowBase$9;-><init>(Lcom/htc/album/addons/slideshow/SlideshowBase;)V

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1090
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1091
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xdac

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected updatePrevNextButtons()V
    .locals 3

    .prologue
    .line 656
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mRepeat:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    if-gtz v1, :cond_1

    .line 658
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->requestFooterBar()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 660
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/ControlButton;->setEnabled(Z)V

    .line 679
    :goto_0
    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mRepeat:Z

    if-nez v1, :cond_4

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_4

    .line 681
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->requestFooterBar()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 683
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/ControlButton;->setEnabled(Z)V

    .line 706
    :goto_1
    return-void

    .line 664
    :cond_0
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/album/addons/slideshow/SlideShowController;->enablePrevBtn(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 702
    :catch_0
    move-exception v0

    .line 704
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 669
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->requestFooterBar()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 671
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/ControlButton;->setEnabled(Z)V

    goto :goto_0

    .line 675
    :cond_2
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/album/addons/slideshow/SlideShowController;->enablePrevBtn(Z)V

    goto :goto_0

    .line 687
    :cond_3
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/album/addons/slideshow/SlideShowController;->enableNextBtn(Z)V

    goto :goto_1

    .line 692
    :cond_4
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->requestFooterBar()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 694
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/ControlButton;->setEnabled(Z)V

    goto :goto_1

    .line 698
    :cond_5
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/album/addons/slideshow/SlideShowController;->enableNextBtn(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected updateTitlebar(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 480
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_0

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurFolderIndicator:Ljava/lang/String;

    .line 489
    :goto_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_1

    .line 492
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->invalidateControlBars()V

    .line 499
    :goto_1
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 502
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mNoUpdateControlBar:Z

    .line 503
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->invalidateOptionsMenu()V

    .line 509
    :goto_2
    return-void

    .line 486
    :cond_0
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ + LOG_TAG + ][updateTitlebar]: mImageList is null !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 496
    :cond_1
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ + LOG_TAG + ][updateTitlebar]: mControlBarMgr is null !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 507
    :cond_2
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ + LOG_TAG + ][updateTitlebar] mActionBar is null !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
