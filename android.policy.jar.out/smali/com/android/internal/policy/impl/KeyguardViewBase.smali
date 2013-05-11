.class public abstract Lcom/android/internal/policy/impl/KeyguardViewBase;
.super Landroid/widget/FrameLayout;
.source "KeyguardViewBase.java"


# static fields
.field private static final BACKGROUND_COLOR:I = 0x70000000

#the value of this static final field might be set in the static constructor
.field private static final DEBUG_MEDIA:Z = false

.field private static final KEYGUARD_MANAGES_VOLUME:Z = true

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/policy/impl/KeyguardViewBase;->DEBUG_MEDIA:Z

    .line 55
    const-string v0, "KeyguardViewBase"

    sput-object v0, Lcom/android/internal/policy/impl/KeyguardViewBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardViewCallback;)V
    .locals 1
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 67
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardViewBase$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/KeyguardViewBase$1;-><init>(Lcom/android/internal/policy/impl/KeyguardViewBase;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 89
    iput-object p2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    .line 93
    return-void
.end method

.method private interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 196
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 197
    .local v1, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_6

    .line 198
    sparse-switch v1, :sswitch_data_0

    .line 281
    :cond_0
    :goto_0
    const/4 v4, 0x0

    :cond_1
    :goto_1
    return v4

    .line 204
    :sswitch_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_2

    .line 205
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "phone"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 208
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-nez v3, :cond_1

    .line 220
    :cond_3
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 228
    :sswitch_2
    monitor-enter p0

    .line 229
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    if-nez v3, :cond_4

    .line 230
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "audio"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    .line 233
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x3

    const/16 v3, 0x18

    if-ne v1, v3, :cond_5

    move v3, v4

    :goto_2
    invoke-virtual {v5, v6, v3, v4}, Landroid/media/AudioManager;->adjustLocalOrRemoteStreamVolumeWithFlags(III)V

    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, isMusicActive:Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    .line 250
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->isBootCompleted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 251
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.lockscreen.volumekey"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    .local v2, volumeIntent:Landroid/content/Intent;
    const-string v3, "isMusicActive"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 253
    const-string v3, "keyCode"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 254
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 233
    .end local v0           #isMusicActive:Z
    .end local v2           #volumeIntent:Landroid/content/Intent;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 238
    :cond_5
    const/4 v3, -0x1

    goto :goto_2

    .line 263
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 264
    sparse-switch v1, :sswitch_data_1

    goto :goto_0

    .line 276
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 198
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x4f -> :sswitch_1
        0x55 -> :sswitch_0
        0x56 -> :sswitch_1
        0x57 -> :sswitch_1
        0x58 -> :sswitch_1
        0x59 -> :sswitch_1
        0x5a -> :sswitch_1
        0x5b -> :sswitch_1
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
        0x82 -> :sswitch_1
        0xa4 -> :sswitch_2
    .end sparse-switch

    .line 264
    :sswitch_data_1
    .sparse-switch
        0x4f -> :sswitch_3
        0x55 -> :sswitch_3
        0x56 -> :sswitch_3
        0x57 -> :sswitch_3
        0x58 -> :sswitch_3
        0x59 -> :sswitch_3
        0x5a -> :sswitch_3
        0x5b -> :sswitch_3
        0x7e -> :sswitch_3
        0x7f -> :sswitch_3
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method private shouldEventKeepScreenOnWhileKeyguardShowing(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 166
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 171
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_2

    .line 172
    sget-boolean v1, Lcom/android/internal/policy/impl/KeyguardViewBase;->DEBUG_MEDIA:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/policy/impl/KeyguardViewBase;->TAG:Ljava/lang/String;

    const-string v2, "Screen is not on - keyguard won\'t pokeWakelock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 177
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 184
    const/4 v0, 0x1

    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract cleanUp()V
.end method

.method public abstract clearIdleScreen()V
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->shouldEventKeepScreenOnWhileKeyguardShowing(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    sget-boolean v0, Lcom/android/internal/policy/impl/KeyguardViewBase;->DEBUG_MEDIA:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/KeyguardViewBase;->TAG:Ljava/lang/String;

    const-string v1, "keyguard pokeWakelock by keyevent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    .line 159
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    const/4 v0, 0x1

    .line 162
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 301
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchSystemUiVisibilityChanged(I)V

    .line 302
    const/high16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->setSystemUiVisibility(I)V

    .line 303
    return-void
.end method

.method public getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    return-object v0
.end method

.method public abstract getIdleScreenLabel()Ljava/lang/String;
.end method

.method handleMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 5
    .parameter "keyEvent"

    .prologue
    .line 285
    sget-boolean v2, Lcom/android/internal/policy/impl/KeyguardViewBase;->DEBUG_MEDIA:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/policy/impl/KeyguardViewBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keyCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , Action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_0
    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 288
    .local v0, audioService:Landroid/media/IAudioService;
    if-eqz v0, :cond_1

    .line 290
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v1

    .line 292
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "KeyguardViewBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchMediaKeyEvent threw exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 295
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v2, "KeyguardViewBase"

    const-string v3, "Unable to find IAudioService for media key event"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public abstract hideIdleScreen()V
.end method

.method public abstract isLockScreen()Z
.end method

.method public abstract onKeyguardHiddenChanged(Z)V
.end method

.method public abstract onScreenTurnedOff()V
.end method

.method public abstract onScreenTurnedOn()V
.end method

.method public abstract recreateChildScreen()V
.end method

.method public abstract reset()V
.end method

.method public resetBackground()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    return-void
.end method

.method public abstract setIdleScreen(Landroid/content/ComponentName;)V
.end method

.method public abstract show()V
.end method

.method public abstract showIdleScreen()V
.end method

.method public abstract verifyUnlock()V
.end method

.method public abstract wakeWhenReadyTq(I)V
.end method
