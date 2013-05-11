.class public Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;
.super Ljava/lang/Object;
.source "HtcVolumePreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/preference/HtcVolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeekBarVolumizer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$SeekBarVolumizerBroadcastReceiver;,
        Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$AudioFocusChangeListener;
    }
.end annotation


# static fields
.field private static final MUSIC_MUTE_ACTION:Ljava/lang/String; = "com.htc.view.music_mute"

.field private static final MUSIC_MUTE_EXTRA_NEW_STATE:Ljava/lang/String; = "new_state"

.field private static final MUSIC_MUTE_PERMISSIONS:Ljava/lang/String; = "com.htc.view.intent.category.MUTE_MUSIC"

.field private static final VIBRATE_DURATION:I = 0x12c


# instance fields
.field private LOG_FLAG:Z

.field private LOG_TAG:Ljava/lang/String;

.field private mAudioFocusListener:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$AudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mDelayUpdateHandler:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field mIdleHandele:Landroid/os/MessageQueue$IdleHandler;

.field private mLastProgress:I

.field private mOriginalRingerMode:I

.field private mOriginalStreamMuteState:Z

.field private mOriginalStreamVolume:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingtone:Landroid/media/Ringtone;

.field private mRingtoneCleanup:Z

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mVolumeBeforeMute:I

.field private mVolumeObserver:Landroid/database/ContentObserver;

.field private mdefaultUri:Landroid/net/Uri;

.field private resolver:Landroid/content/ContentResolver;

.field private sStreamType:I

.field private setLastaudiobleVolumeOnly:Z

.field final synthetic this$0:Lcom/htc/preference/HtcVolumePreference;


# direct methods
.method public constructor <init>(Lcom/htc/preference/HtcVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter "seekBar"
    .parameter "streamType"

    .prologue
    .line 442
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;-><init>(Lcom/htc/preference/HtcVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V

    .line 443
    return-void
.end method

.method public constructor <init>(Lcom/htc/preference/HtcVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V
    .locals 4
    .parameter
    .parameter "context"
    .parameter "seekBar"
    .parameter "streamType"
    .parameter "defaultUri"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 445
    iput-object p1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->this$0:Lcom/htc/preference/HtcVolumePreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput-boolean v2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_FLAG:Z

    .line 279
    const-string v1, "SeekBarVolumizer"

    iput-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    .line 282
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 289
    iput-boolean v2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->setLastaudiobleVolumeOnly:Z

    .line 294
    iput-boolean v2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mRingtoneCleanup:Z

    .line 296
    iput v3, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 298
    iput v3, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 389
    new-instance v1, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$SeekBarVolumizerBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$SeekBarVolumizerBroadcastReceiver;-><init>(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;Lcom/htc/preference/HtcVolumePreference$1;)V

    iput-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 421
    new-instance v1, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$1;

    invoke-direct {v1, p0}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$1;-><init>(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)V

    iput-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mDelayUpdateHandler:Landroid/os/Handler;

    .line 430
    new-instance v1, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$2;

    iget-object v2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$2;-><init>(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    .line 514
    new-instance v1, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$3;

    invoke-direct {v1, p0}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$3;-><init>(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)V

    iput-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mIdleHandele:Landroid/os/MessageQueue$IdleHandler;

    .line 446
    iput-object p2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    .line 447
    const-string v1, "audio"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    .line 448
    iput p4, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    .line 449
    iput-object p3, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    .line 451
    invoke-direct {p0, p3, p5}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->initSeekBar(Landroid/widget/SeekBar;Landroid/net/Uri;)V

    .line 454
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->resolver:Landroid/content/ContentResolver;

    .line 460
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 462
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 464
    return-void
.end method

.method private abandonAudioFocus()V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioFocusListener:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$AudioFocusChangeListener;

    if-eqz v0, :cond_3

    .line 375
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioFocusListener:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$AudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 376
    iget-boolean v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_FLAG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    const-string v1, "failed to abandon audio focus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioFocusListener:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$AudioFocusChangeListener;

    .line 385
    :cond_1
    :goto_1
    return-void

    .line 378
    :cond_2
    iget-boolean v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_FLAG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    const-string v1, "abandon audio focus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 383
    :cond_3
    iget-boolean v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_FLAG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mAudioMgr or mAudioFocusListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_FLAG:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mdefaultUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mRingtoneCleanup:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;Landroid/media/Ringtone;)Landroid/media/Ringtone;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 276
    iput-object p1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mDelayUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 276
    iget v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    return v0
.end method

.method static synthetic access$602(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 276
    iput p1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    return p1
.end method

.method static synthetic access$700(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 276
    iget v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method private initSeekBar(Landroid/widget/SeekBar;Landroid/net/Uri;)V
    .locals 8
    .parameter "seekBar"
    .parameter "defaultUri"

    .prologue
    const/4 v7, 0x5

    const/4 v3, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 471
    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 473
    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    iput v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mOriginalRingerMode:I

    .line 474
    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mOriginalStreamMuteState:Z

    .line 477
    iget v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mOriginalRingerMode:I

    if-eq v1, v5, :cond_3

    iget v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    if-eq v1, v5, :cond_0

    iget v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    if-ne v1, v7, :cond_3

    .line 479
    :cond_0
    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v4, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_last_audible"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 481
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->setLastaudiobleVolumeOnly:Z

    .line 491
    :goto_0
    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 492
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 494
    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v3, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v6, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 498
    if-nez p2, :cond_1

    .line 499
    iget v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    if-ne v1, v5, :cond_5

    .line 500
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 508
    :cond_1
    :goto_1
    iput-object p2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mdefaultUri:Landroid/net/Uri;

    .line 509
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 510
    .local v0, msgQueue:Landroid/os/MessageQueue;
    if-eqz v0, :cond_2

    .line 511
    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mIdleHandele:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 512
    :cond_2
    return-void

    .line 484
    .end local v0           #msgQueue:Landroid/os/MessageQueue;
    :cond_3
    iget-boolean v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mOriginalStreamMuteState:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    if-ne v1, v3, :cond_4

    .line 485
    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    goto :goto_0

    .line 487
    :cond_4
    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    goto :goto_0

    .line 501
    :cond_5
    iget v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    if-ne v1, v7, :cond_6

    .line 502
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_1

    .line 504
    :cond_6
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_1
.end method

.method private requestAudioFocus()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 353
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_3

    .line 354
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioFocusListener:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$AudioFocusChangeListener;

    if-nez v0, :cond_1

    .line 355
    new-instance v0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$AudioFocusChangeListener;

    invoke-direct {v0, p0, v4}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$AudioFocusChangeListener;-><init>(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;Lcom/htc/preference/HtcVolumePreference$1;)V

    iput-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioFocusListener:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$AudioFocusChangeListener;

    .line 360
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioFocusListener:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$AudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 362
    iget-boolean v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_FLAG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    const-string v1, "failed to request audio focus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_0
    iput-object v4, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioFocusListener:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$AudioFocusChangeListener;

    .line 371
    :cond_1
    :goto_0
    return-void

    .line 366
    :cond_2
    iget-boolean v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_FLAG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    const-string v1, "obtain audio focus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 369
    :cond_3
    iget-boolean v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_FLAG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mAudioMgr is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sample()V
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->this$0:Lcom/htc/preference/HtcVolumePreference;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcVolumePreference;->onSampleStarting(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)V

    .line 696
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 698
    :cond_0
    return-void
.end method


# virtual methods
.method public changeVolumeBy(I)V
    .locals 1
    .parameter "amount"

    .prologue
    .line 721
    invoke-direct {p0}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->requestAudioFocus()V

    .line 723
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 725
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->updateSlientSetting(I)V

    .line 727
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 728
    invoke-direct {p0}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sample()V

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    .line 731
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 732
    return-void
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public muteVolume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 735
    iget v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    if-eq v0, v2, :cond_0

    .line 736
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 737
    invoke-direct {p0}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sample()V

    .line 738
    iget v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    .line 739
    iput v2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 746
    :goto_0
    return-void

    .line 741
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 742
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 743
    invoke-virtual {p0}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->stopSample()V

    .line 744
    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 602
    invoke-static {}, Lcom/htc/preference/HtcVolumePreference;->access$1500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged progress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_0
    if-nez p3, :cond_1

    .line 626
    :goto_0
    return-void

    .line 611
    :cond_1
    invoke-virtual {p0, p2}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->updateSlientSetting(I)V

    .line 616
    invoke-direct {p0}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->requestAudioFocus()V

    .line 619
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    .line 620
    invoke-direct {p0}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sample()V

    .line 623
    :cond_2
    invoke-virtual {p0, p2}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Lcom/htc/preference/HtcVolumePreference$VolumeStore;)V
    .locals 2
    .parameter "volumeStore"

    .prologue
    const/4 v1, -0x1

    .line 756
    iget v0, p1, Lcom/htc/preference/HtcVolumePreference$VolumeStore;->volume:I

    if-eq v0, v1, :cond_0

    .line 757
    iget v0, p1, Lcom/htc/preference/HtcVolumePreference$VolumeStore;->originalVolume:I

    iput v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 758
    iget v0, p1, Lcom/htc/preference/HtcVolumePreference$VolumeStore;->volume:I

    iput v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 759
    iget v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    .line 764
    iput v1, p1, Lcom/htc/preference/HtcVolumePreference$VolumeStore;->volume:I

    .line 766
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Lcom/htc/preference/HtcVolumePreference$VolumeStore;)V
    .locals 1
    .parameter "volumeStore"

    .prologue
    .line 748
    iget v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mLastProgress:I

    if-ltz v0, :cond_0

    .line 749
    iget v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mLastProgress:I

    iput v0, p1, Lcom/htc/preference/HtcVolumePreference$VolumeStore;->volume:I

    .line 750
    iget v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    iput v0, p1, Lcom/htc/preference/HtcVolumePreference$VolumeStore;->originalVolume:I

    .line 752
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 645
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 652
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 654
    invoke-direct {p0}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->requestAudioFocus()V

    .line 656
    invoke-direct {p0}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sample()V

    .line 660
    :cond_0
    return-void
.end method

.method postSetVolume(I)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 631
    invoke-static {}, Lcom/htc/preference/HtcVolumePreference;->access$1500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postSetVolume progress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_0
    iput p1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 636
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 637
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 638
    return-void
.end method

.method public revertVolume()V
    .locals 5

    .prologue
    const/4 v3, 0x5

    const/4 v4, 0x0

    .line 561
    iget v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->this$0:Lcom/htc/preference/HtcVolumePreference;

    #getter for: Lcom/htc/preference/HtcVolumePreference;->mVoiceCapable:Z
    invoke-static {v1}, Lcom/htc/preference/HtcVolumePreference;->access$1400(Lcom/htc/preference/HtcVolumePreference;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 567
    :cond_0
    iget v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    if-eqz v1, :cond_1

    .line 568
    iget-boolean v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->setLastaudiobleVolumeOnly:Z

    if-eqz v1, :cond_3

    .line 569
    const-string v1, "VolumePreference"

    const-string v2, "adjustLastaudiobleIndex only"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    iget v3, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->setStreamLastaudibleIndex(II)V

    .line 571
    iput-boolean v4, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->setLastaudiobleVolumeOnly:Z

    .line 578
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mOriginalRingerMode:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 594
    :cond_2
    :goto_1
    return-void

    .line 573
    :cond_3
    const-string v1, "VolumePreference"

    const-string v2, "forceSetStreamVolume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    iget v3, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 580
    :cond_4
    iget v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    if-eq v1, v3, :cond_5

    .line 581
    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    iget v3, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 583
    :cond_5
    iget v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mOriginalStreamMuteState:Z

    if-eqz v1, :cond_2

    .line 584
    const-string v1, "VolumePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "revert music mute, mOriginalStreamVolume:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.view.music_mute"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 586
    .local v0, data:Landroid/content/Intent;
    const-string v1, "new_state"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 587
    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 588
    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    const-string v2, "com.htc.view.intent.category.MUTE_MUSIC"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 667
    iget v2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    if-ne v2, v6, :cond_2

    iget-object v2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->this$0:Lcom/htc/preference/HtcVolumePreference;

    #getter for: Lcom/htc/preference/HtcVolumePreference;->mVoiceCapable:Z
    invoke-static {v2}, Lcom/htc/preference/HtcVolumePreference;->access$1400(Lcom/htc/preference/HtcVolumePreference;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 669
    :cond_0
    iget v2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mLastProgress:I

    if-eqz v2, :cond_1

    .line 670
    iget-object v2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    iget v4, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 692
    :cond_1
    :goto_0
    return-void

    .line 674
    :cond_2
    iget v2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    if-ne v2, v4, :cond_3

    .line 676
    iget-object v2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    .line 677
    .local v1, isMute:Z
    if-eqz v1, :cond_3

    iget v2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mLastProgress:I

    if-eqz v2, :cond_3

    .line 678
    const-string v2, "VolumePreference"

    const-string v3, "unmute  music stream"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.view.music_mute"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 680
    .local v0, data:Landroid/content/Intent;
    const-string v2, "new_state"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 681
    iget-object v2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_3

    .line 682
    iget-object v2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    const-string v3, "com.htc.view.intent.category.MUTE_MUSIC"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 686
    .end local v0           #data:Landroid/content/Intent;
    .end local v1           #isMute:Z
    :cond_3
    iget v2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    if-eq v2, v6, :cond_1

    .line 687
    iget-object v2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    iget v4, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 545
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mRingtoneCleanup:Z

    .line 546
    invoke-direct {p0}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->abandonAudioFocus()V

    .line 547
    monitor-enter p0

    .line 548
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->stopSample()V

    .line 549
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 551
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 555
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 557
    return-void

    .line 549
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public stopSample()V
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 704
    :cond_0
    return-void
.end method

.method public updateSlientSetting(I)V
    .locals 8
    .parameter "VolumeSetting"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    .line 774
    const/4 v0, 0x3

    .line 777
    .local v0, RINGER_MODE_OUTDOOR:I
    invoke-static {}, Lcom/htc/preference/HtcVolumePreference;->access$1500()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 778
    iget-object v3, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSlientSetting VolumeSetting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sStreamType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :cond_0
    iget v3, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    if-eq v3, v6, :cond_3

    iget v3, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    if-ne v3, v7, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->this$0:Lcom/htc/preference/HtcVolumePreference;

    #getter for: Lcom/htc/preference/HtcVolumePreference;->mVoiceCapable:Z
    invoke-static {v3}, Lcom/htc/preference/HtcVolumePreference;->access$1400(Lcom/htc/preference/HtcVolumePreference;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 848
    :cond_2
    :goto_0
    return-void

    .line 783
    :cond_3
    iget-object v3, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 786
    .local v1, currentSlientSetting:I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 807
    :pswitch_0
    if-lez p1, :cond_5

    .line 812
    iget-object v3, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v6}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 788
    :pswitch_1
    if-nez p1, :cond_4

    .line 793
    iget-object v3, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 797
    :cond_4
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xd8

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 801
    iget-object v3, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v7}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 816
    :cond_5
    iget-object v3, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    const-string v4, "vibrator"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 817
    .local v2, vibrator:Landroid/os/Vibrator;
    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    .line 823
    iget-object v3, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 827
    .end local v2           #vibrator:Landroid/os/Vibrator;
    :pswitch_2
    if-lez p1, :cond_2

    .line 832
    iget-object v3, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v6}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 838
    :pswitch_3
    iget-object v3, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    if-ge p1, v3, :cond_2

    .line 841
    iget-object v3, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v6}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 786
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
