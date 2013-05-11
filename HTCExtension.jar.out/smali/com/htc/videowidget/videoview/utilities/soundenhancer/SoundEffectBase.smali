.class public abstract Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;
.super Ljava/lang/Object;
.source "SoundEffectBase.java"


# static fields
.field protected static final PREF_KEY_LOCAL:Ljava/lang/String; = "local"

.field protected static final PREF_SOUND:Ljava/lang/String; = "soundeffect_pref"

.field protected static final TAG:Ljava/lang/String; = "SoundEffect"


# instance fields
.field private mBassBoost:Landroid/media/audiofx/BassBoost;

.field private mContext:Landroid/content/Context;

.field private mCurrentEffect:I

.field private mCurrentState:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

.field private mDefaultHtcEnhancerEffect:I

.field private mLastUserSelectEffect:I

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mTempGlobelEffect:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "context"
    .parameter "mediaPlayer"

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mCurrentEffect:I

    .line 29
    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mLastUserSelectEffect:I

    .line 30
    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mTempGlobelEffect:I

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mDefaultHtcEnhancerEffect:I

    .line 37
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;->NOT_INIT:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mCurrentState:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    .line 46
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 48
    return-void
.end method

.method private getGlobeSoundEffect()I
    .locals 5

    .prologue
    .line 106
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 107
    .local v0, am:Landroid/media/AudioManager;
    move-object v2, v0

    .line 108
    .local v2, ifam:Landroid/media/HtcIfAudioManager;
    invoke-interface {v2}, Landroid/media/HtcIfAudioManager;->getGlobalEffect()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 114
    .end local v0           #am:Landroid/media/AudioManager;
    .end local v2           #ifam:Landroid/media/HtcIfAudioManager;
    :goto_0
    return v3

    .line 110
    :catch_0
    move-exception v1

    .line 112
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "SoundEffect"

    const-string v4, "Exception in getGlobeSoundEffect()"

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    const/16 v3, 0x320

    goto :goto_0
.end method

.method public static getNotSupportToastString(Landroid/content/Context;Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;Z)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "state"
    .parameter "isUserTrigger"

    .prologue
    .line 363
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 373
    :goto_0
    return-object v0

    .line 364
    :cond_0
    const/4 v0, 0x0

    .line 365
    .local v0, s:Ljava/lang/String;
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;->SPEAKER:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    if-ne p1, v1, :cond_2

    .line 366
    const v1, 0x2040395

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 372
    :cond_1
    :goto_1
    const-string v1, "SoundEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNotSupportToastString(), return"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 367
    :cond_2
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;->HDMI:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    if-ne p1, v1, :cond_3

    .line 368
    const v1, 0x2040255

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 369
    :cond_3
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;->BEATS_PILL:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    if-ne p1, v1, :cond_1

    if-eqz p2, :cond_1

    .line 370
    const v1, 0x204039a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private setGlobeSoundEffect(I)V
    .locals 5
    .parameter "effect"

    .prologue
    .line 90
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 91
    .local v0, am:Landroid/media/AudioManager;
    move-object v2, v0

    .line 92
    .local v2, ifam:Landroid/media/HtcIfAudioManager;
    const-string v3, "VIDEOVIEW_SOUND_ENHANCER"

    invoke-interface {v2, p1, v3}, Landroid/media/HtcIfAudioManager;->setGlobalEffect(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v0           #am:Landroid/media/AudioManager;
    .end local v2           #ifam:Landroid/media/HtcIfAudioManager;
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v1

    .line 96
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "SoundEffect"

    const-string v4, "Exception in setGlobeSoundEffect()"

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public autoUpdateSoundEffect(Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;)V
    .locals 6
    .parameter "state"

    .prologue
    .line 285
    const-string v3, "SoundEffect"

    const-string v4, "autoUpdateSoundEffect()"

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->getCurrentEffect()I

    move-result v0

    .line 288
    .local v0, currentEffect:I
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->getLastUserSelectEffect()I

    move-result v1

    .line 289
    .local v1, lastUserEffect:I
    invoke-virtual {p0, v1, p1}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mappingSoundEffect(ILcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;)I

    move-result v2

    .line 290
    .local v2, newEffect:I
    const-string v3, "SoundEffect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "autoUpdateSoundEffect(), currentEffect = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant;->getSoundEffectString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v3, "SoundEffect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "autoUpdateSoundEffect(), lastUserEffect = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant;->getSoundEffectString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v3, "SoundEffect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "autoUpdateSoundEffect(), newEffect = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant;->getSoundEffectString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    if-eq v2, v0, :cond_0

    .line 296
    invoke-virtual {p0, v2}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->setSoundEffect(I)V

    .line 298
    :cond_0
    return-void
.end method

.method public beatsStateChangeFromOutside()V
    .locals 0

    .prologue
    .line 281
    return-void
.end method

.method public deinit()V
    .locals 4

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "soundeffect_pref"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 333
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "local"

    iget v2, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mLastUserSelectEffect:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 334
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 336
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->setSoundEffectEnabled(Z)V

    .line 337
    iget v1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mTempGlobelEffect:I

    invoke-direct {p0, v1}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->setGlobeSoundEffect(I)V

    .line 339
    const-string v1, "SoundEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deinit(), mTempGlobelEffect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mTempGlobelEffect:I

    invoke-static {v3}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant;->getSoundEffectString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string v1, "SoundEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deinit(), mLastUserSelectEffect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mLastUserSelectEffect:I

    invoke-static {v3}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant;->getSoundEffectString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v1, "SoundEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deinit(), mCurrentEffect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mCurrentEffect:I

    invoke-static {v3}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant;->getSoundEffectString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentEffect()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mCurrentEffect:I

    return v0
.end method

.method public getCurrentState()Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mCurrentState:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    return-object v0
.end method

.method protected getDefaultHecEnhancer()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mDefaultHtcEnhancerEffect:I

    return v0
.end method

.method public getEffectToastString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 417
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 433
    :goto_0
    return-object v0

    .line 419
    :cond_0
    const/4 v0, 0x0

    .line 420
    .local v0, s:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->getLastUserSelectEffect()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 430
    :pswitch_0
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mContext:Landroid/content/Context;

    const v2, 0x2040254

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 423
    :pswitch_1
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mContext:Landroid/content/Context;

    const v2, 0x2040252

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 424
    goto :goto_0

    .line 427
    :pswitch_2
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mContext:Landroid/content/Context;

    const v2, 0x2040253

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 428
    goto :goto_0

    .line 420
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getLastUserSelectEffect()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mLastUserSelectEffect:I

    return v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->readLastSoundEffectFromPref(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mLastUserSelectEffect:I

    .line 303
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->getGlobeSoundEffect()I

    move-result v0

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mTempGlobelEffect:I

    .line 304
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->updateSoundEffectStatus(Landroid/content/Context;)Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mCurrentState:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    .line 306
    iget v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mLastUserSelectEffect:I

    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mCurrentState:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    invoke-virtual {p0, v0, v1}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mappingSoundEffect(ILcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->setCurrentEffect(I)V

    .line 307
    iget v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mCurrentEffect:I

    invoke-virtual {p0, v0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->setSoundEffect(I)V

    .line 309
    const-string v0, "SoundEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init(), mTempGlobelEffect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mTempGlobelEffect:I

    invoke-static {v2}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant;->getSoundEffectString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v0, "SoundEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init(), mLastUserSelectEffect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mLastUserSelectEffect:I

    invoke-static {v2}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant;->getSoundEffectString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v0, "SoundEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init(), mCurrentEffect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mCurrentEffect:I

    invoke-static {v2}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant;->getSoundEffectString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method public isStateChange()Z
    .locals 6

    .prologue
    .line 378
    const/4 v2, 0x0

    .line 379
    .local v2, result:Z
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->updateSoundEffectStatus(Landroid/content/Context;)Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    move-result-object v0

    .line 380
    .local v0, newState:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->getCurrentState()Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    move-result-object v1

    .line 381
    .local v1, oldState:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;
    if-ne v0, v1, :cond_0

    .line 382
    const/4 v2, 0x0

    .line 394
    :goto_0
    const-string v3, "SoundEffect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isStateChange(), old = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", new = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    return v2

    .line 385
    :cond_0
    sget-object v3, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;->NOT_INIT:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    if-ne v1, v3, :cond_1

    .line 387
    const/4 v2, 0x0

    .line 388
    const-string v3, "SoundEffect"

    const-string v4, "isStateChange(), soundeffect is not init yet"

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :goto_1
    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mCurrentState:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    goto :goto_0

    .line 391
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method protected abstract mappingSoundEffect(ILcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;)I
.end method

.method protected readLastSoundEffectFromPref(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 319
    :try_start_0
    const-string v3, "soundeffect_pref"

    const/4 v4, 0x2

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 320
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v3, "local"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 324
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :goto_0
    return v2

    .line 322
    :catch_0
    move-exception v0

    .line 324
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setCurrentEffect(I)V
    .locals 3
    .parameter "effect"

    .prologue
    .line 68
    const-string v0, "SoundEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set mCurrentEffect to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant;->getSoundEffectString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iput p1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mCurrentEffect:I

    .line 70
    return-void
.end method

.method public setDefaultHtcEnhancer(I)V
    .locals 0
    .parameter "effect"

    .prologue
    .line 74
    iput p1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mDefaultHtcEnhancerEffect:I

    .line 75
    return-void
.end method

.method public setLastUserSelectEffect(I)V
    .locals 3
    .parameter "effect"

    .prologue
    .line 57
    const-string v0, "SoundEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set mLastUserSelectEffect to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant;->getSoundEffectString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iput p1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mLastUserSelectEffect:I

    .line 59
    return-void
.end method

.method public setSoundEffect(I)V
    .locals 3
    .parameter "effect"

    .prologue
    .line 205
    const-string v0, "SoundEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSoundEffect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant;->getSoundEffectString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    packed-switch p1, :pswitch_data_0

    .line 231
    :goto_0
    invoke-virtual {p0, p1}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->setCurrentEffect(I)V

    .line 232
    :goto_1
    return-void

    .line 210
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->setSoundEffectStyleToNoEffect()V

    .line 211
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->setSoundEffectStyleToSRS()V

    goto :goto_0

    .line 214
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->setSoundEffectStyleToNoEffect()V

    .line 215
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->setSoundEffectStyleToHTC51()V

    goto :goto_0

    .line 218
    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->setSoundEffectEnabled(Z)V

    .line 219
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->getGlobeSoundEffect()I

    move-result v0

    const/16 v1, 0x384

    if-eq v0, v1, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->setSoundEffectToBeats()V

    goto :goto_0

    .line 222
    :cond_0
    const-string v0, "SoundEffect"

    const-string v1, "ignore set effect to Beats, because it\'s Beats now."

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->setSoundEffectStyleToNoEffect()V

    goto :goto_0

    .line 228
    :pswitch_4
    iget v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mDefaultHtcEnhancerEffect:I

    invoke-virtual {p0, v0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->setSoundEffect(I)V

    goto :goto_1

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected setSoundEffectEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 180
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mBassBoost:Landroid/media/audiofx/BassBoost;

    if-eqz v1, :cond_0

    .line 184
    if-eqz p1, :cond_1

    .line 186
    :try_start_0
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mBassBoost:Landroid/media/audiofx/BassBoost;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/audiofx/BassBoost;->setEnabled(Z)I

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mBassBoost:Landroid/media/audiofx/BassBoost;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/audiofx/BassBoost;->setEnabled(Z)I

    .line 191
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mBassBoost:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v1}, Landroid/media/audiofx/BassBoost;->release()V

    .line 192
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mBassBoost:Landroid/media/audiofx/BassBoost;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 197
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "SoundEffect"

    const-string v2, "IllegalStateException: setSoundEffectEnabled"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method protected setSoundEffectStyleToHTC51()V
    .locals 5

    .prologue
    .line 151
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_0

    .line 153
    const-string v2, "SoundEffect"

    const-string v3, "setSoundEffectStyleToHTC51 fail"

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :goto_0
    return-void

    .line 156
    :cond_0
    const-string v2, "SoundEffect"

    const-string v3, "setSoundEffectStyleToHTC51"

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 160
    .local v0, AudioMan:Landroid/media/AudioManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "srsfx_sidechain="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",trumedia,/system/etc/soundimage/srsfx_trumedia_51.cfg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 161
    new-instance v2, Landroid/media/audiofx/BassBoost;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/media/audiofx/BassBoost;-><init>(II)V

    iput-object v2, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mBassBoost:Landroid/media/audiofx/BassBoost;

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "srsfx_sidechain="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 163
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->setSoundEffectEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    .end local v0           #AudioMan:Landroid/media/AudioManager;
    :catch_0
    move-exception v1

    .line 167
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "SoundEffect"

    const-string v3, "Exception: setSoundEffectStyleToHTC51"

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected setSoundEffectStyleToNoEffect()V
    .locals 2

    .prologue
    .line 120
    const-string v0, "SoundEffect"

    const-string v1, "setSoundEffectStyleToNoEffect()"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->setSoundEffectEnabled(Z)V

    .line 122
    const/16 v0, 0x320

    invoke-direct {p0, v0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->setGlobeSoundEffect(I)V

    .line 123
    return-void
.end method

.method protected setSoundEffectStyleToSRS()V
    .locals 5

    .prologue
    .line 127
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_0

    .line 129
    const-string v2, "SoundEffect"

    const-string v3, "setSoundEffectStyleToSRS fail"

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :goto_0
    return-void

    .line 135
    :cond_0
    :try_start_0
    const-string v2, "SoundEffect"

    const-string v3, "setSoundEffectStyleToSRS"

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 137
    .local v0, AudioMan:Landroid/media/AudioManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "srsfx_sidechain="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",trumedia,/system/etc/soundimage/srsfx_trumedia_movie.cfg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 138
    new-instance v2, Landroid/media/audiofx/BassBoost;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/media/audiofx/BassBoost;-><init>(II)V

    iput-object v2, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mBassBoost:Landroid/media/audiofx/BassBoost;

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "srsfx_sidechain="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 140
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->setSoundEffectEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    .end local v0           #AudioMan:Landroid/media/AudioManager;
    :catch_0
    move-exception v1

    .line 144
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "SoundEffect"

    const-string v3, "Exception: setSoundEffectStyleToSRS"

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected setSoundEffectToBeats()V
    .locals 2

    .prologue
    .line 174
    const-string v0, "SoundEffect"

    const-string v1, "setSoundEffectToBeats"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const/16 v0, 0x384

    invoke-direct {p0, v0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->setGlobeSoundEffect(I)V

    .line 176
    return-void
.end method

.method public updateSoundEffectStatus(Landroid/content/Context;)Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;
    .locals 7
    .parameter "context"

    .prologue
    .line 239
    sget-object v3, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;->NOT_INIT:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    .line 240
    .local v3, state:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;
    invoke-static {p1}, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->isHeadsetPlugged(Landroid/content/Context;)Z

    move-result v1

    .line 241
    .local v1, headsetState:Z
    invoke-static {p1}, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->isBluetoothDeviceConnect(Landroid/content/Context;)Z

    move-result v0

    .line 243
    .local v0, btState:Z
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 245
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->getLastConnectDevice()I

    move-result v2

    .line 246
    .local v2, lastConnect:I
    if-nez v2, :cond_0

    .line 247
    sget-object v3, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;->HEADSET:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    .line 274
    .end local v2           #lastConnect:I
    :goto_0
    const-string v4, "SoundEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[updateSoundEffectStatus] to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return-object v3

    .line 250
    .restart local v2       #lastConnect:I
    :cond_0
    invoke-static {p1}, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->isBeatsPillConnect(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 251
    sget-object v3, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;->BEATS_PILL:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    goto :goto_0

    .line 253
    :cond_1
    sget-object v3, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;->BT_HEADSET:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    goto :goto_0

    .line 256
    .end local v2           #lastConnect:I
    :cond_2
    if-eqz v1, :cond_3

    .line 258
    sget-object v3, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;->HEADSET:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    goto :goto_0

    .line 260
    :cond_3
    if-eqz v0, :cond_5

    .line 262
    invoke-static {p1}, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->isBeatsPillConnect(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 263
    sget-object v3, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;->BEATS_PILL:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    goto :goto_0

    .line 265
    :cond_4
    sget-object v3, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;->BT_HEADSET:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    goto :goto_0

    .line 267
    :cond_5
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/HdmiHelper;->isHDMIConnected()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 269
    sget-object v3, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;->HDMI:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    goto :goto_0

    .line 272
    :cond_6
    sget-object v3, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;->SPEAKER:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    goto :goto_0
.end method
