.class public Lcom/htc/Weather/SoundEffect;
.super Ljava/lang/Object;
.source "SoundEffect.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# static fields
#the value of this static final field might be set in the static constructor
.field public static final LOG_FLAG:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "WeatherSound"

.field private static final MSG_FADEOUT:I = 0x1

.field private static final MSG_RELEASE:I = 0x2

.field private static final MSG_START:I = 0x0

.field public static SETTING_KEY_SYNC_SOUND:Ljava/lang/String; = null

.field private static final STATE_FADEOUT:I = 0xc

.field private static final STATE_INIT:I = 0xa

.field private static final STATE_PLAYING:I = 0xb

.field private static final STATE_STOP:I = 0xd

.field private static final mMapToWeatherSound:[I

.field private static pathRaw:[I


# instance fields
.field private conditionId:I

.field private isNeedStart:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mRes:Landroid/content/res/Resources;

.field private mbSoundOn:Z

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/Weather/SoundEffect;->LOG_FLAG:Z

    .line 27
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/Weather/SoundEffect;->pathRaw:[I

    .line 31
    const/16 v0, 0x37

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/Weather/SoundEffect;->mMapToWeatherSound:[I

    .line 39
    const-string v0, "com.htc.Weather.SoundsMap"

    sput-object v0, Lcom/htc/Weather/SoundEffect;->SETTING_KEY_SYNC_SOUND:Ljava/lang/String;

    return-void

    .line 27
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x3t 0x5t
        0x1t 0x0t 0x3t 0x5t
        0x2t 0x0t 0x3t 0x5t
        0x3t 0x0t 0x3t 0x5t
        0x4t 0x0t 0x3t 0x5t
        0x5t 0x0t 0x3t 0x5t
        0x7t 0x0t 0x3t 0x5t
        0x8t 0x0t 0x3t 0x5t
        0x6t 0x0t 0x3t 0x5t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 31
    :array_1
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/Weather/SoundEffect;->mbSoundOn:Z

    .line 50
    const/16 v1, 0xa

    iput v1, p0, Lcom/htc/Weather/SoundEffect;->state:I

    .line 51
    iput-boolean v2, p0, Lcom/htc/Weather/SoundEffect;->isNeedStart:Z

    .line 52
    iput v2, p0, Lcom/htc/Weather/SoundEffect;->conditionId:I

    .line 180
    new-instance v1, Lcom/htc/Weather/SoundEffect$1;

    invoke-direct {v1, p0}, Lcom/htc/Weather/SoundEffect$1;-><init>(Lcom/htc/Weather/SoundEffect;)V

    iput-object v1, p0, Lcom/htc/Weather/SoundEffect;->mHandler:Landroid/os/Handler;

    .line 55
    iput-object p1, p0, Lcom/htc/Weather/SoundEffect;->mContext:Landroid/content/Context;

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/htc/Weather/SoundEffect;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.htc.weather.res"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/Weather/SoundEffect;->mRes:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v1, Lcom/htc/Weather/SoundEffect;->LOG_FLAG:Z

    if-eqz v1, :cond_0

    const-string v1, "WeatherSound"

    const-string v2, "create resource failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/Weather/SoundEffect;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/htc/Weather/SoundEffect;->state:I

    return v0
.end method

.method static synthetic access$002(Lcom/htc/Weather/SoundEffect;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/htc/Weather/SoundEffect;->state:I

    return p1
.end method

.method static synthetic access$100(Lcom/htc/Weather/SoundEffect;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/htc/Weather/SoundEffect;->start()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/Weather/SoundEffect;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/Weather/SoundEffect;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/htc/Weather/SoundEffect;->setVolume(F)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/Weather/SoundEffect;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/Weather/SoundEffect;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/htc/Weather/SoundEffect;->forceReleaseMediaPlayer()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/Weather/SoundEffect;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/htc/Weather/SoundEffect;->checkNeedRestart()V

    return-void
.end method

.method private checkNeedRestart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 233
    iget-boolean v0, p0, Lcom/htc/Weather/SoundEffect;->isNeedStart:Z

    if-eqz v0, :cond_1

    .line 234
    sget-boolean v0, Lcom/htc/Weather/SoundEffect;->LOG_FLAG:Z

    if-eqz v0, :cond_0

    const-string v0, "WeatherSound"

    const-string v1, "isNeedStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 236
    iput-boolean v2, p0, Lcom/htc/Weather/SoundEffect;->isNeedStart:Z

    .line 238
    :cond_1
    return-void
.end method

.method private disableBeatsEffect(Z)V
    .locals 3
    .parameter "off"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/htc/Weather/SoundEffect;->mAudioManager:Landroid/media/AudioManager;

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    .line 302
    if-eqz p1, :cond_3

    .line 303
    sget-boolean v0, Lcom/htc/Weather/SoundEffect;->LOG_FLAG:Z

    if-eqz v0, :cond_1

    const-string v0, "WeatherSound"

    const-string v1, "set effect icon off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0x384

    const-string v2, "HtcSpecificAP"

    invoke-interface {v0, v1, v2}, Landroid/media/HtcIfAudioManager;->setGlobalEffect(ILjava/lang/String;)V

    .line 312
    :cond_2
    :goto_0
    return-void

    .line 307
    :cond_3
    sget-boolean v0, Lcom/htc/Weather/SoundEffect;->LOG_FLAG:Z

    if-eqz v0, :cond_4

    const-string v0, "WeatherSound"

    const-string v1, "set effect icon back"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_4
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0x320

    const-string v2, "HtcSpecificAP"

    invoke-interface {v0, v1, v2}, Landroid/media/HtcIfAudioManager;->setGlobalEffect(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private forceReleaseMediaPlayer()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 271
    sget-boolean v1, Lcom/htc/Weather/SoundEffect;->LOG_FLAG:Z

    if-eqz v1, :cond_0

    const-string v1, "WeatherSound"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceReleaseMediaPlayer()  - state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/Weather/SoundEffect;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_0
    const/16 v1, 0xd

    iput v1, p0, Lcom/htc/Weather/SoundEffect;->state:I

    .line 274
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/Weather/SoundEffect;->disableBeatsEffect(Z)V

    .line 276
    iget-object v1, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 278
    :try_start_0
    iget-object v1, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    iget-object v1, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 283
    iget-object v1, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 284
    iput-object v4, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 287
    :cond_1
    :goto_0
    return-void

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "WeatherSound"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceReleaseMediaPlayer() - Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    iget-object v1, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 283
    iget-object v1, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 284
    iput-object v4, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    goto :goto_0

    .line 282
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    .line 283
    iget-object v2, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 284
    iput-object v4, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    throw v1
.end method

.method private setVolume(F)V
    .locals 1
    .parameter "vol"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 229
    :cond_0
    return-void
.end method

.method private start()V
    .locals 7

    .prologue
    const/16 v6, 0xd

    .line 84
    sget-boolean v3, Lcom/htc/Weather/SoundEffect;->LOG_FLAG:Z

    if-eqz v3, :cond_0

    const-string v3, "WeatherSound"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start: state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/Weather/SoundEffect;->state:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    iget-boolean v3, p0, Lcom/htc/Weather/SoundEffect;->mbSoundOn:Z

    if-nez v3, :cond_2

    .line 87
    iput v6, p0, Lcom/htc/Weather/SoundEffect;->state:I

    .line 137
    :cond_1
    :goto_0
    return-void

    .line 91
    :cond_2
    iget v3, p0, Lcom/htc/Weather/SoundEffect;->conditionId:I

    const/16 v4, 0x37

    if-ge v3, v4, :cond_a

    iget v3, p0, Lcom/htc/Weather/SoundEffect;->conditionId:I

    if-lez v3, :cond_a

    .line 93
    iget-object v3, p0, Lcom/htc/Weather/SoundEffect;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/htc/Weather/SoundEffect;->mAudioManager:Landroid/media/AudioManager;

    .line 96
    iget-object v3, p0, Lcom/htc/Weather/SoundEffect;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 97
    sget-boolean v3, Lcom/htc/Weather/SoundEffect;->LOG_FLAG:Z

    if-eqz v3, :cond_3

    const-string v3, "WeatherSound"

    const-string v4, "mAudioManager.isSpeakerphoneOn()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_3
    iput v6, p0, Lcom/htc/Weather/SoundEffect;->state:I

    goto :goto_0

    .line 102
    :cond_4
    iget-object v3, p0, Lcom/htc/Weather/SoundEffect;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 103
    sget-boolean v3, Lcom/htc/Weather/SoundEffect;->LOG_FLAG:Z

    if-eqz v3, :cond_5

    const-string v3, "WeatherSound"

    const-string v4, "mAudioManager.isMusicActive()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_5
    iput v6, p0, Lcom/htc/Weather/SoundEffect;->state:I

    goto :goto_0

    .line 108
    :cond_6
    sget-object v3, Lcom/htc/Weather/SoundEffect;->mMapToWeatherSound:[I

    iget v4, p0, Lcom/htc/Weather/SoundEffect;->conditionId:I

    aget v1, v3, v4

    .line 109
    .local v1, map:I
    const/16 v3, 0x9

    if-ne v1, v3, :cond_8

    .line 110
    sget-boolean v3, Lcom/htc/Weather/SoundEffect;->LOG_FLAG:Z

    if-eqz v3, :cond_7

    const-string v3, "WeatherSound"

    const-string v4, "map == 9"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_7
    iput v6, p0, Lcom/htc/Weather/SoundEffect;->state:I

    goto :goto_0

    .line 115
    :cond_8
    sget-object v3, Lcom/htc/Weather/SoundEffect;->pathRaw:[I

    aget v2, v3, v1

    .line 117
    .local v2, rawPath:I
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 118
    iget-object v3, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 119
    iget-object v3, p0, Lcom/htc/Weather/SoundEffect;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v2}, Lcom/htc/Weather/SoundEffect;->createPlayerbyRes(Landroid/content/Context;I)V

    .line 120
    iget-object v3, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 122
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/htc/Weather/SoundEffect;->disableBeatsEffect(Z)V

    .line 124
    sget-boolean v3, Lcom/htc/Weather/SoundEffect;->LOG_FLAG:Z

    if-eqz v3, :cond_9

    const-string v3, "WeatherSound"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMediaPlayer.start();"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/Weather/SoundEffect;->conditionId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_9
    :try_start_0
    iget-object v3, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v3, "WeatherSound"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can\'t start media: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iput v6, p0, Lcom/htc/Weather/SoundEffect;->state:I

    .line 130
    invoke-direct {p0}, Lcom/htc/Weather/SoundEffect;->forceReleaseMediaPlayer()V

    goto/16 :goto_0

    .line 133
    .end local v0           #e:Ljava/lang/IllegalStateException;
    .end local v1           #map:I
    .end local v2           #rawPath:I
    :cond_a
    iput v6, p0, Lcom/htc/Weather/SoundEffect;->state:I

    .line 134
    sget-boolean v3, Lcom/htc/Weather/SoundEffect;->LOG_FLAG:Z

    if-eqz v3, :cond_1

    const-string v3, "WeatherSound"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "illegal conditionId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/Weather/SoundEffect;->conditionId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/Weather/SoundEffect;->state:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public createPlayerbyRes(Landroid/content/Context;I)V
    .locals 8
    .parameter "context"
    .parameter "resid"

    .prologue
    .line 144
    sget-boolean v0, Lcom/htc/Weather/SoundEffect;->LOG_FLAG:Z

    if-eqz v0, :cond_0

    const-string v0, "WeatherSound"

    const-string v1, "create in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect;->mRes:Landroid/content/res/Resources;

    if-nez v0, :cond_2

    .line 147
    sget-boolean v0, Lcom/htc/Weather/SoundEffect;->LOG_FLAG:Z

    if-eqz v0, :cond_1

    .line 148
    const-string v0, "WeatherSound"

    const-string v1, "resource is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_1
    :goto_0
    return-void

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 153
    .local v6, afd:Landroid/content/res/AssetFileDescriptor;
    if-nez v6, :cond_4

    .line 154
    sget-boolean v0, Lcom/htc/Weather/SoundEffect;->LOG_FLAG:Z

    if-eqz v0, :cond_1

    .line 155
    const-string v0, "WeatherSound"

    const-string v1, "descriptor is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 163
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v7

    .line 164
    .local v7, ex:Ljava/io/IOException;
    sget-boolean v0, Lcom/htc/Weather/SoundEffect;->LOG_FLAG:Z

    if-eqz v0, :cond_3

    const-string v0, "WeatherSound"

    const-string v1, "create failed:"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    .end local v7           #ex:Ljava/io/IOException;
    :cond_3
    :goto_1
    sget-boolean v0, Lcom/htc/Weather/SoundEffect;->LOG_FLAG:Z

    if-eqz v0, :cond_1

    const-string v0, "WeatherSound"

    const-string v1, "create out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 160
    .restart local v6       #afd:Landroid/content/res/AssetFileDescriptor;
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 161
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 162
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 166
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    :catch_1
    move-exception v7

    .line 167
    .local v7, ex:Ljava/lang/IllegalArgumentException;
    sget-boolean v0, Lcom/htc/Weather/SoundEffect;->LOG_FLAG:Z

    if-eqz v0, :cond_3

    const-string v0, "WeatherSound"

    const-string v1, "create failed:"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 169
    .end local v7           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v7

    .line 170
    .local v7, ex:Ljava/lang/SecurityException;
    sget-boolean v0, Lcom/htc/Weather/SoundEffect;->LOG_FLAG:Z

    if-eqz v0, :cond_3

    const-string v0, "WeatherSound"

    const-string v1, "create failed:"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 172
    .end local v7           #ex:Ljava/lang/SecurityException;
    :catch_3
    move-exception v7

    .line 173
    .local v7, ex:Ljava/lang/IllegalStateException;
    sget-boolean v0, Lcom/htc/Weather/SoundEffect;->LOG_FLAG:Z

    if-eqz v0, :cond_3

    const-string v0, "WeatherSound"

    const-string v1, "IllegalStateException"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mp"

    .prologue
    .line 257
    sget-boolean v0, Lcom/htc/Weather/SoundEffect;->LOG_FLAG:Z

    if-eqz v0, :cond_0

    const-string v0, "WeatherSound"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCompletion: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/Weather/SoundEffect;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_0
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/Weather/SoundEffect;->state:I

    .line 260
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/Weather/SoundEffect;->disableBeatsEffect(Z)V

    .line 262
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 263
    sget-boolean v0, Lcom/htc/Weather/SoundEffect;->LOG_FLAG:Z

    if-eqz v0, :cond_1

    const-string v0, "WeatherSound"

    const-string v1, "mMediaPlayer onCompletion"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 266
    invoke-direct {p0}, Lcom/htc/Weather/SoundEffect;->checkNeedRestart()V

    .line 268
    :cond_2
    return-void
.end method

.method public releaseMediaPalyer()V
    .locals 3

    .prologue
    .line 241
    sget-boolean v0, Lcom/htc/Weather/SoundEffect;->LOG_FLAG:Z

    if-eqz v0, :cond_0

    const-string v0, "WeatherSound"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseMediaPalyer(): state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/Weather/SoundEffect;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 243
    sget-boolean v0, Lcom/htc/Weather/SoundEffect;->LOG_FLAG:Z

    if-eqz v0, :cond_1

    const-string v0, "WeatherSound"

    const-string v1, "releaseMediaPalyer() - MSG_FADEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 250
    :goto_0
    return-void

    .line 247
    :cond_2
    sget-boolean v0, Lcom/htc/Weather/SoundEffect;->LOG_FLAG:Z

    if-eqz v0, :cond_3

    const-string v0, "WeatherSound"

    const-string v1, "releaseMediaPalyer() - MSG_RELEASE"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_3
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setSoundOn(Z)V
    .locals 0
    .parameter "sound"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/htc/Weather/SoundEffect;->mbSoundOn:Z

    .line 65
    return-void
.end method

.method public startMediaPlayer(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 69
    iput p1, p0, Lcom/htc/Weather/SoundEffect;->conditionId:I

    .line 70
    sget-boolean v0, Lcom/htc/Weather/SoundEffect;->LOG_FLAG:Z

    if-eqz v0, :cond_0

    const-string v0, "WeatherSound"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMediaPlayer: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/Weather/SoundEffect;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    iget v0, p0, Lcom/htc/Weather/SoundEffect;->state:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/htc/Weather/SoundEffect;->state:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    .line 73
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/Weather/SoundEffect;->isNeedStart:Z

    .line 74
    sget-boolean v0, Lcom/htc/Weather/SoundEffect;->LOG_FLAG:Z

    if-eqz v0, :cond_2

    const-string v0, "WeatherSound"

    const-string v1, "startMediaPlayer: FADEOUT/RELEASE NEED TO BE DONE FIRST"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_2
    :goto_0
    return-void

    .line 77
    :cond_3
    iget-object v0, p0, Lcom/htc/Weather/SoundEffect;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
