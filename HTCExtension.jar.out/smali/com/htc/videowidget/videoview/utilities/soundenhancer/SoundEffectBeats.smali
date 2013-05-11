.class Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBeats;
.super Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;
.source "SoundEffectBeats.java"


# static fields
.field public static final SOUND_EFFECT_STYLE_BEAT:I = 0x1

.field public static final SOUND_EFFECT_STYLE_NONBEAT:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "context"
    .parameter "mediaPlayer"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;-><init>(Landroid/content/Context;Landroid/media/MediaPlayer;)V

    .line 24
    return-void
.end method


# virtual methods
.method public beatsStateChangeFromOutside()V
    .locals 7

    .prologue
    .line 86
    const-string v4, "SoundEffect"

    const-string v5, "[beatsStateChangeFromOutside]"

    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBeats;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 90
    .local v0, am:Landroid/media/AudioManager;
    move-object v3, v0

    .line 91
    .local v3, ifam:Landroid/media/HtcIfAudioManager;
    invoke-interface {v3}, Landroid/media/HtcIfAudioManager;->getBeatsState()Z

    move-result v1

    .line 92
    .local v1, beatState:Z
    const-string v4, "SoundEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[beatsStateChangeFromOutside], beatState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 95
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBeats;->setSoundEffectEnabled(Z)V

    .line 96
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBeats;->setCurrentEffect(I)V

    .line 97
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBeats;->setLastUserSelectEffect(I)V

    .line 111
    .end local v0           #am:Landroid/media/AudioManager;
    .end local v1           #beatState:Z
    .end local v3           #ifam:Landroid/media/HtcIfAudioManager;
    :goto_0
    return-void

    .line 101
    .restart local v0       #am:Landroid/media/AudioManager;
    .restart local v1       #beatState:Z
    .restart local v3       #ifam:Landroid/media/HtcIfAudioManager;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBeats;->getDefaultHecEnhancer()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBeats;->setSoundEffect(I)V

    .line 102
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBeats;->getDefaultHecEnhancer()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBeats;->setLastUserSelectEffect(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    .end local v0           #am:Landroid/media/AudioManager;
    .end local v1           #beatState:Z
    .end local v3           #ifam:Landroid/media/HtcIfAudioManager;
    :catch_0
    move-exception v2

    .line 107
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "SoundEffect"

    const-string v5, "Exception in beatsStateChangeFromOutside()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected mappingSoundEffect(ILcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;)I
    .locals 4
    .parameter "currentEffect"
    .parameter "curStatus"

    .prologue
    .line 29
    const-string v1, "SoundEffect"

    const-string v2, "MappingSoundEffect()"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    move v0, p1

    .line 31
    .local v0, newEffect:I
    const-string v1, "SoundEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MappingSoundEffect() currentEffect:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant;->getSoundEffectString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v1, "SoundEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MappingSoundEffect() currentStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;->BEATS_HEADSET:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    if-eq p2, v1, :cond_0

    sget-object v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;->HEADSET:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    if-eq p2, v1, :cond_0

    sget-object v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;->BT_HEADSET:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    if-eq p2, v1, :cond_0

    sget-object v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;->BEATS_BT_HEADSET:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    if-ne p2, v1, :cond_1

    .line 36
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 65
    :goto_0
    const-string v1, "SoundEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MappingSoundEffect() newEffect:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant;->getSoundEffectString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return v0

    .line 39
    :pswitch_0
    move v0, p1

    .line 40
    goto :goto_0

    .line 45
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBeats;->getDefaultHecEnhancer()I

    move-result v0

    goto :goto_0

    .line 49
    :cond_1
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;->BEATS_PILL:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    if-ne p2, v1, :cond_2

    .line 51
    const/4 v0, 0x3

    goto :goto_0

    .line 53
    :cond_2
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;->SPEAKER:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    if-ne p2, v1, :cond_3

    .line 55
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBeats;->getDefaultHecEnhancer()I

    move-result v0

    goto :goto_0

    .line 57
    :cond_3
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;->HDMI:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    if-ne p2, v1, :cond_4

    .line 59
    const/4 v0, 0x0

    goto :goto_0

    .line 63
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected readLastSoundEffectFromPref(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x3

    .line 74
    :try_start_0
    const-string v3, "soundeffect_pref"

    const/4 v4, 0x2

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 75
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v3, "local"

    const/4 v4, 0x3

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 79
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :goto_0
    return v2

    .line 77
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method
