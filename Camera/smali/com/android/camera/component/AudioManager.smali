.class final Lcom/android/camera/component/AudioManager;
.super Lcom/android/camera/component/CameraCompoment;
.source "AudioManager.java"

# interfaces
.implements Lcom/android/camera/IAudioManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/AudioManager$6;,
        Lcom/android/camera/component/AudioManager$StreamHandle;,
        Lcom/android/camera/component/AudioManager$SoundHandle;
    }
.end annotation


# static fields
.field private static final MSG_ABANDON_AUDIO_FOCUS:I = 0x2711

.field static final NAME:Ljava/lang/String; = "Audio Manager"

.field private static final SCREEN_MODE_ILANDSCAPE:I = 0x3

.field private static final SCREEN_MODE_IPORTRAIT:I = 0x2

.field private static final SCREEN_MODE_LANDSCAPE:I = 0x1

.field private static final SCREEN_MODE_PORTRAIT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AudioManager(Camera)"

.field private static volatile m_IsAlarmVolumeAdjusted:Z

.field private static volatile m_IsRingVolumeAdjusted:Z

.field private static volatile m_OriginalVolumeRing:I


# instance fields
.field private final m_AudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final m_HtcAudioManager:Landroid/media/HtcIfAudioManager;

.field private final m_SoundHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/component/AudioManager$SoundHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_SoundLoadedListener:Landroid/media/SoundPool$OnLoadCompleteListener;

.field private m_SoundPool:Landroid/media/SoundPool;

.field private final m_SysAudioManager:Landroid/media/AudioManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/android/camera/component/AudioManager;->m_OriginalVolumeRing:I

    return-void
.end method

.method constructor <init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "Audio Manager"

    invoke-direct {p0, v0, v3, p1, p2}, Lcom/android/camera/component/CameraCompoment;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/AudioManager;->m_SoundHandles:Ljava/util/ArrayList;

    new-instance v1, Landroid/media/SoundPool;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceSutterSound()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    :goto_0
    const/4 v2, 0x0

    invoke-direct {v1, v3, v0, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/android/camera/component/AudioManager;->m_SoundPool:Landroid/media/SoundPool;

    new-instance v0, Lcom/android/camera/component/AudioManager$1;

    invoke-direct {v0, p0}, Lcom/android/camera/component/AudioManager$1;-><init>(Lcom/android/camera/component/AudioManager;)V

    iput-object v0, p0, Lcom/android/camera/component/AudioManager;->m_AudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    new-instance v0, Lcom/android/camera/component/AudioManager$2;

    invoke-direct {v0, p0}, Lcom/android/camera/component/AudioManager$2;-><init>(Lcom/android/camera/component/AudioManager;)V

    iput-object v0, p0, Lcom/android/camera/component/AudioManager;->m_SoundLoadedListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/android/camera/component/AudioManager;->m_SoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/camera/component/AudioManager;->m_SoundLoadedListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    iget-object v0, p0, Lcom/android/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    check-cast v0, Landroid/media/HtcIfAudioManager;

    iput-object v0, p0, Lcom/android/camera/component/AudioManager;->m_HtcAudioManager:Landroid/media/HtcIfAudioManager;

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/component/AudioManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/AudioManager;->m_SoundHandles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/AudioManager;Lcom/android/camera/component/AudioManager$StreamHandle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/AudioManager;->playInMemorySound(Lcom/android/camera/component/AudioManager$StreamHandle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/AudioManager;)Landroid/media/HtcIfAudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/AudioManager;->m_HtcAudioManager:Landroid/media/HtcIfAudioManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/AudioManager;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/AudioManager;->setVolumePanelOrientation(Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method

.method private getAdjustedVolume(I)I
    .locals 4

    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceSutterSound()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/HeadsetHelper;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-double v0, p1

    const-wide v2, 0x3feccccccccccccdL

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd2

    if-ne v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_1

    int-to-double v0, p1

    const-wide v2, 0x3fe999999999999aL

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0

    :cond_1
    mul-int/lit8 v0, p1, 0x1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0

    :cond_2
    mul-int/lit8 v0, p1, 0x1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method private playInMemorySound(Lcom/android/camera/component/AudioManager$StreamHandle;)V
    .locals 8

    iget-boolean v0, p1, Lcom/android/camera/component/AudioManager$StreamHandle;->audioFocus:Z

    if-eqz v0, :cond_0

    const-string v0, "AudioManager(Camera)"

    const-string v1, "playInMemorySound() - Request audio focus"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/component/AudioManager;->requestAudioFocus()V

    :cond_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/android/camera/component/AudioManager;->m_SoundPool:Landroid/media/SoundPool;

    iget-object v1, p1, Lcom/android/camera/component/AudioManager$StreamHandle;->sound:Lcom/android/camera/component/AudioManager$SoundHandle;

    iget v1, v1, Lcom/android/camera/component/AudioManager$SoundHandle;->soundId:I

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/4 v4, 0x1

    iget v5, p1, Lcom/android/camera/component/AudioManager$StreamHandle;->loopCount:I

    const/high16 v6, 0x3f80

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v7

    if-eqz v7, :cond_2

    iput v7, p1, Lcom/android/camera/component/AudioManager$StreamHandle;->streamId:I

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean v0, p1, Lcom/android/camera/component/AudioManager$StreamHandle;->audioFocus:Z

    if-eqz v0, :cond_1

    const-string v0, "AudioManager(Camera)"

    const-string v1, "playInMemorySound() - Abandon audio focus"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/component/AudioManager;->abandonAudioFocus()V

    :cond_1
    return-void

    :cond_2
    :try_start_2
    const-string v0, "AudioManager(Camera)"

    const-string v1, "playInMemorySound() - Failed"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    iget-boolean v1, p1, Lcom/android/camera/component/AudioManager$StreamHandle;->audioFocus:Z

    if-eqz v1, :cond_3

    const-string v1, "AudioManager(Camera)"

    const-string v2, "playInMemorySound() - Abandon audio focus"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/component/AudioManager;->abandonAudioFocus()V

    :cond_3
    throw v0
.end method

.method private setAudioStreamVolume(I)V
    .locals 5

    const/4 v4, 0x7

    const/4 v3, 0x2

    const-class v2, Lcom/android/camera/component/AudioManager;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-eq v1, v3, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceSutterSound()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    if-ne p1, v4, :cond_1

    sget-boolean v1, Lcom/android/camera/component/AudioManager;->m_IsAlarmVolumeAdjusted:Z

    if-eqz v1, :cond_1

    monitor-exit v2

    :goto_0
    return-void

    :cond_1
    if-ne p1, v3, :cond_2

    sget-boolean v1, Lcom/android/camera/component/AudioManager;->m_IsRingVolumeAdjusted:Z

    if-eqz v1, :cond_2

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    const-string v1, "AudioManager(Camera)"

    const-string v3, "Backup audio stream volume"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p1, v4, :cond_5

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/camera/component/AudioManager;->m_IsAlarmVolumeAdjusted:Z

    :cond_3
    :goto_1
    const-string v1, "AudioManager(Camera)"

    const-string v3, "Set audio stream volume"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0, v0}, Lcom/android/camera/component/AudioManager;->getAdjustedVolume(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_4
    monitor-exit v2

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/camera/component/AudioManager;->m_IsRingVolumeAdjusted:Z

    sget v1, Lcom/android/camera/component/AudioManager;->m_OriginalVolumeRing:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    sput v1, Lcom/android/camera/component/AudioManager;->m_OriginalVolumeRing:I

    const-string v1, "AudioManager(Camera)"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Original ring volume = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/camera/component/AudioManager;->m_OriginalVolumeRing:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private setVolumePanelOrientation(Lcom/android/camera/rotate/UIRotation;)V
    .locals 3

    sget-object v1, Lcom/android/camera/component/AudioManager$6;->$SwitchMap$com$android$camera$rotate$UIRotation:[I

    invoke-virtual {p1}, Lcom/android/camera/rotate/UIRotation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/camera/component/AudioManager;->m_HtcAudioManager:Landroid/media/HtcIfAudioManager;

    invoke-interface {v1, v0}, Landroid/media/HtcIfAudioManager;->setVolumePanelOrientation(I)V

    return-void

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public abandonAudioFocus()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/camera/component/AudioManager;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_0

    const/16 v2, 0x2711

    const-wide/16 v3, 0x96

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/AudioManager;->sendMessage(Lcom/android/camera/component/Component;IJZ)Z

    :cond_0
    return-void
.end method

.method protected deinitializeOverride()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/component/AudioManager;->m_SoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lcom/android/camera/component/CameraCompoment;->deinitializeOverride()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected getCameraMode()Lcom/android/camera/CameraMode;
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/component/AudioManager;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/AudioManager;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraMode;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/AudioManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraMode;

    goto :goto_0
.end method

.method protected getCameraType()Lcom/android/camera/CameraType;
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/component/AudioManager;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/AudioManager;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/AudioManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    goto :goto_0
.end method

.method public final getStreamVolume(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/component/CameraCompoment;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/camera/component/AudioManager;->m_AudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 5

    invoke-super {p0}, Lcom/android/camera/component/CameraCompoment;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/component/AudioManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/AudioManager$3;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/AudioManager$3;-><init>(Lcom/android/camera/component/AudioManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/AudioManager$4;

    invoke-direct {v2, p0}, Lcom/android/camera/component/AudioManager$4;-><init>(Lcom/android/camera/component/AudioManager;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->actionScreenState:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/AudioManager$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/AudioManager$5;-><init>(Lcom/android/camera/component/AudioManager;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    :cond_0
    invoke-static {}, Lcom/android/camera/FeatureConfig;->canChangeZoomByVolumeKeys()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceSutterSound()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x7

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/camera/component/AudioManager;->setAudioStreamVolume(I)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public loadSoundToMemory(I)Lcom/android/camera/Handle;
    .locals 6

    const-string v2, "AudioManager(Camera)"

    const-string v3, "loadSoundToMemory("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ")"

    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/component/AudioManager;->threadAccessCheck()V

    invoke-virtual {p0}, Lcom/android/camera/component/AudioManager;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const-string v2, "AudioManager(Camera)"

    const-string v3, "loadSoundToMemory() - Component is not running"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/component/AudioManager;->m_SoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/android/camera/component/AudioManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p1, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    new-instance v0, Lcom/android/camera/component/AudioManager$SoundHandle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/android/camera/component/AudioManager$SoundHandle;-><init>(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/camera/component/AudioManager;->m_SoundHandles:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "AudioManager(Camera)"

    const-string v3, "loadSoundToMemory() - Sound ID = "

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public playInMemorySound(Lcom/android/camera/Handle;IZ)Lcom/android/camera/Handle;
    .locals 8

    const/4 v7, 0x0

    if-nez p1, :cond_0

    const-string v0, "AudioManager(Camera)"

    const-string v1, "playInMemorySound() - Null handle"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v7

    :cond_0
    instance-of v0, p1, Lcom/android/camera/component/AudioManager$SoundHandle;

    if-nez v0, :cond_1

    const-string v0, "AudioManager(Camera)"

    const-string v1, "playInMemorySound() - Invalid handle"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/AudioManager;->threadAccessCheck()V

    invoke-virtual {p0}, Lcom/android/camera/component/AudioManager;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const-string v0, "AudioManager(Camera)"

    const-string v1, "playInMemorySound() - Component is not running"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "AudioManager(Camera)"

    const-string v1, "playInMemorySound("

    iget-object v2, p1, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v6, p1

    check-cast v6, Lcom/android/camera/component/AudioManager$SoundHandle;

    new-instance v7, Lcom/android/camera/component/AudioManager$StreamHandle;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stream-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0, v6, p2, p3}, Lcom/android/camera/component/AudioManager$StreamHandle;-><init>(Ljava/lang/String;Lcom/android/camera/component/AudioManager$SoundHandle;IZ)V

    const-string v0, "AudioManager(Camera)"

    const-string v1, "playInMemorySound() - Stream handle : "

    iget-object v2, v7, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v3, " ["

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "]"

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, v6, Lcom/android/camera/component/AudioManager$SoundHandle;->isLoaded:Z

    if-nez v0, :cond_3

    iget-object v0, v6, Lcom/android/camera/component/AudioManager$SoundHandle;->pendingStreams:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "AudioManager(Camera)"

    const-string v1, "playInMemorySound() - Sound is not loaded yet, play later"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, v7}, Lcom/android/camera/component/AudioManager;->playInMemorySound(Lcom/android/camera/component/AudioManager$StreamHandle;)V

    goto :goto_0
.end method

.method public requestAudioFocus()V
    .locals 1

    const/16 v0, 0x2711

    invoke-virtual {p0, v0}, Lcom/android/camera/component/AudioManager;->removeMessages(I)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/camera/component/AudioManager;->requestAudioFocus(I)V

    return-void
.end method

.method public requestAudioFocus(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/camera/component/AudioManager;->m_AudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, p1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    return-void
.end method

.method public restoreAudioStreamVolume()V
    .locals 5

    const/4 v2, -0x1

    const-string v0, "AudioManager(Camera)"

    const-string v1, "restoreAudioStreamVolume()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/android/camera/component/AudioManager;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/android/camera/component/AudioManager;->m_OriginalVolumeRing:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    sget v3, Lcom/android/camera/component/AudioManager;->m_OriginalVolumeRing:I

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const/4 v0, -0x1

    sput v0, Lcom/android/camera/component/AudioManager;->m_OriginalVolumeRing:I

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/component/AudioManager;->m_IsAlarmVolumeAdjusted:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/component/AudioManager;->m_IsRingVolumeAdjusted:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setParameters(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    return-void
.end method

.method public stopInMemorySound(Lcom/android/camera/Handle;)V
    .locals 6

    if-nez p1, :cond_0

    const-string v2, "AudioManager(Camera)"

    const-string v3, "stopInMemorySound() - Null handle"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    instance-of v2, p1, Lcom/android/camera/component/AudioManager$StreamHandle;

    if-nez v2, :cond_1

    const-string v2, "AudioManager(Camera)"

    const-string v3, "stopInMemorySound() - Invalid handle"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/AudioManager;->threadAccessCheck()V

    invoke-virtual {p0}, Lcom/android/camera/component/AudioManager;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const-string v2, "AudioManager(Camera)"

    const-string v3, "stopInMemorySound() - Component is not running"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "AudioManager(Camera)"

    const-string v3, "stopInMemorySound("

    iget-object v4, p1, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v5, ")"

    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-enter p0

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/camera/component/AudioManager$StreamHandle;

    move-object v1, v0

    iget-object v2, v1, Lcom/android/camera/component/AudioManager$StreamHandle;->sound:Lcom/android/camera/component/AudioManager$SoundHandle;

    iget-boolean v2, v2, Lcom/android/camera/component/AudioManager$SoundHandle;->isLoaded:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/component/AudioManager;->m_SoundPool:Landroid/media/SoundPool;

    iget v3, v1, Lcom/android/camera/component/AudioManager$StreamHandle;->streamId:I

    invoke-virtual {v2, v3}, Landroid/media/SoundPool;->stop(I)V

    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_3
    :try_start_1
    iget-object v2, v1, Lcom/android/camera/component/AudioManager$StreamHandle;->sound:Lcom/android/camera/component/AudioManager$SoundHandle;

    iget-object v2, v2, Lcom/android/camera/component/AudioManager$SoundHandle;->pendingStreams:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
