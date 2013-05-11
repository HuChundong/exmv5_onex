.class public Lcom/android/internal/policy/impl/FaceUnlock;
.super Ljava/lang/Object;
.source "FaceUnlock.java"

# interfaces
.implements Lcom/android/internal/policy/impl/BiometricSensorUnlock;
.implements Landroid/os/Handler$Callback;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FULLockscreen"


# instance fields
.field private final BACKUP_LOCK_TIMEOUT:I

.field private final MSG_CANCEL:I

.field private final MSG_EXPOSE_FALLBACK:I

.field private final MSG_HIDE_FACE_UNLOCK_VIEW:I

.field private final MSG_POKE_WAKELOCK:I

.field private final MSG_REPORT_FAILED_ATTEMPT:I

.field private final MSG_SERVICE_CONNECTED:I

.field private final MSG_SERVICE_DISCONNECTED:I

.field private final MSG_SHOW_FACE_UNLOCK_VIEW:I

.field private final MSG_UNLOCK:I

.field private final SERVICE_STARTUP_VIEW_TIMEOUT:I

.field private mBoundToService:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

.field private mFaceUnlockView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private volatile mIsRunning:Z

.field mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mService:Lcom/android/internal/policy/IFaceLockInterface;

.field private mServiceRunning:Z

.field private final mServiceRunningLock:Ljava/lang/Object;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/policy/impl/FaceUnlock;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 2
    .parameter "context"
    .parameter "updateMonitor"
    .parameter "lockPatternUtils"
    .parameter "keyguardScreenCallback"

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mServiceRunning:Z

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mServiceRunningLock:Ljava/lang/Object;

    .line 55
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mBoundToService:Z

    .line 59
    iput v1, p0, Lcom/android/internal/policy/impl/FaceUnlock;->MSG_SHOW_FACE_UNLOCK_VIEW:I

    .line 60
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->MSG_HIDE_FACE_UNLOCK_VIEW:I

    .line 61
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->MSG_SERVICE_CONNECTED:I

    .line 62
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->MSG_SERVICE_DISCONNECTED:I

    .line 63
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->MSG_UNLOCK:I

    .line 64
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->MSG_CANCEL:I

    .line 65
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->MSG_REPORT_FAILED_ATTEMPT:I

    .line 66
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->MSG_EXPOSE_FALLBACK:I

    .line 67
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->MSG_POKE_WAKELOCK:I

    .line 72
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mIsRunning:Z

    .line 78
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->SERVICE_STARTUP_VIEW_TIMEOUT:I

    .line 82
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->BACKUP_LOCK_TIMEOUT:I

    .line 444
    new-instance v0, Lcom/android/internal/policy/impl/FaceUnlock$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/FaceUnlock$1;-><init>(Lcom/android/internal/policy/impl/FaceUnlock;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mConnection:Landroid/content/ServiceConnection;

    .line 522
    new-instance v0, Lcom/android/internal/policy/impl/FaceUnlock$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/FaceUnlock$2;-><init>(Lcom/android/internal/policy/impl/FaceUnlock;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    .line 92
    iput-object p1, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mContext:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 94
    iput-object p3, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 95
    iput-object p4, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mHandler:Landroid/os/Handler;

    .line 97
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/FaceUnlock;Lcom/android/internal/policy/IFaceLockInterface;)Lcom/android/internal/policy/IFaceLockInterface;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/FaceUnlock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/android/internal/policy/impl/FaceUnlock;->DEBUG:Z

    return v0
.end method

.method private removeDisplayMessages()V
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 438
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 439
    return-void
.end method

.method private startUi(Landroid/os/IBinder;IIII)V
    .locals 9
    .parameter "windowToken"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 469
    sget-boolean v0, Lcom/android/internal/policy/impl/FaceUnlock;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FULLockscreen"

    const-string v1, "startUi()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_0
    if-lez p4, :cond_1

    if-gtz p5, :cond_2

    .line 472
    :cond_1
    const-string v0, "FULLockscreen"

    const-string v1, "Starting FaceLock without UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :goto_0
    return-void

    .line 476
    :cond_2
    iget-object v8, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v8

    .line 477
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mServiceRunning:Z

    if-nez v0, :cond_3

    .line 478
    const-string v0, "FULLockscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting Face Unlock x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " w:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakLivelinessEnabled()Z

    move-result v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/policy/IFaceLockInterface;->startUi(Landroid/os/IBinder;IIIIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 486
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mServiceRunning:Z

    .line 490
    :goto_1
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 482
    :catch_0
    move-exception v7

    .line 483
    .local v7, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v0, "FULLockscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caught exception starting Face Unlock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    monitor-exit v8

    goto :goto_0

    .line 488
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_3
    const-string v0, "FULLockscreen"

    const-string v1, "startUi() attempted while running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private stopUi()V
    .locals 5

    .prologue
    .line 497
    sget-boolean v1, Lcom/android/internal/policy/impl/FaceUnlock;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "FULLockscreen"

    const-string v2, "stopUi()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v2

    .line 502
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mServiceRunning:Z

    if-eqz v1, :cond_2

    .line 503
    const-string v1, "FULLockscreen"

    const-string v3, "Stopping Face Unlock"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    invoke-interface {v1}, Lcom/android/internal/policy/IFaceLockInterface;->stopUi()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 509
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mServiceRunning:Z

    .line 516
    :cond_1
    :goto_1
    monitor-exit v2

    .line 517
    return-void

    .line 506
    :catch_0
    move-exception v0

    .line 507
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FULLockscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught exception stopping Face Unlock: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 516
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 514
    :cond_2
    :try_start_3
    sget-boolean v1, Lcom/android/internal/policy/impl/FaceUnlock;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "FULLockscreen"

    const-string v3, "stopUi() attempted while not running"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 222
    sget-boolean v0, Lcom/android/internal/policy/impl/FaceUnlock;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FULLockscreen"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    if-eqz v0, :cond_1

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/IFaceLockInterface;->unregisterCallback(Lcom/android/internal/policy/IFaceLockCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FaceUnlock;->stopUi()V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    .line 232
    :cond_1
    return-void

    .line 226
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getQuality()I
    .locals 1

    .prologue
    .line 238
    const v0, 0x8000

    return v0
.end method

.method handleCancel()V
    .locals 2

    .prologue
    .line 390
    sget-boolean v0, Lcom/android/internal/policy/impl/FaceUnlock;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FULLockscreen"

    const-string v1, "handleCancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    const-string v1, "handleCancel"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 399
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/FaceUnlock;->stop()Z

    .line 400
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x1388

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 401
    return-void

    .line 397
    :cond_1
    const-string v0, "FULLockscreen"

    const-string v1, "mFaceUnlockView is null in handleCancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method handleExposeFallback()V
    .locals 2

    .prologue
    .line 417
    sget-boolean v0, Lcom/android/internal/policy/impl/FaceUnlock;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FULLockscreen"

    const-string v1, "handleExposeFallback()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 423
    :goto_0
    return-void

    .line 421
    :cond_1
    const-string v0, "FULLockscreen"

    const-string v1, "mFaceUnlockView is null in handleExposeFallback()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method handleHideFaceUnlockView()V
    .locals 2

    .prologue
    .line 299
    sget-boolean v0, Lcom/android/internal/policy/impl/FaceUnlock;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FULLockscreen"

    const-string v1, "handleHideFaceUnlockView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 305
    :goto_0
    return-void

    .line 303
    :cond_1
    const-string v0, "FULLockscreen"

    const-string v1, "mFaceUnlockView is null in handleHideFaceUnlockView()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    .line 248
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 277
    const-string v0, "FULLockscreen"

    const-string v1, "Unhandled message"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/4 v0, 0x0

    .line 280
    :goto_0
    return v0

    .line 250
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/FaceUnlock;->handleShowFaceUnlockView()V

    .line 280
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 253
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/FaceUnlock;->handleHideFaceUnlockView()V

    goto :goto_1

    .line 256
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/FaceUnlock;->handleServiceConnected()V

    goto :goto_1

    .line 259
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/FaceUnlock;->handleServiceDisconnected()V

    goto :goto_1

    .line 262
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/FaceUnlock;->handleUnlock()V

    goto :goto_1

    .line 265
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/FaceUnlock;->handleCancel()V

    goto :goto_1

    .line 268
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/FaceUnlock;->handleReportFailedAttempt()V

    goto :goto_1

    .line 271
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/FaceUnlock;->handleExposeFallback()V

    goto :goto_1

    .line 274
    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/FaceUnlock;->handlePokeWakelock(I)V

    goto :goto_1

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method handlePokeWakelock(I)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 430
    return-void
.end method

.method handleReportFailedAttempt()V
    .locals 2

    .prologue
    .line 407
    sget-boolean v0, Lcom/android/internal/policy/impl/FaceUnlock;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FULLockscreen"

    const-string v1, "handleReportFailedAttempt()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportFailedBiometricUnlockAttempt()V

    .line 409
    return-void
.end method

.method handleServiceConnected()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 312
    const-string v0, "FULLockscreen"

    const-string v2, "handleServiceConnected()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mBoundToService:Z

    if-nez v0, :cond_1

    .line 320
    const-string v0, "FULLockscreen"

    const-string v2, "Dropping startUi() in handleServiceConnected() because no longer bound"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v2, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v0, v2}, Lcom/android/internal/policy/IFaceLockInterface;->registerCallback(Lcom/android/internal/policy/IFaceLockCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 336
    .local v1, windowToken:Landroid/os/IBinder;
    if-eqz v1, :cond_2

    .line 340
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 343
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 344
    .local v7, position:[I
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 345
    aget v2, v7, v4

    const/4 v0, 0x1

    aget v3, v7, v0

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/FaceUnlock;->startUi(Landroid/os/IBinder;IIII)V

    goto :goto_0

    .line 326
    .end local v1           #windowToken:Landroid/os/IBinder;
    .end local v7           #position:[I
    :catch_0
    move-exception v6

    .line 327
    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "FULLockscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught exception connecting to Face Unlock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    .line 329
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mBoundToService:Z

    .line 330
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mIsRunning:Z

    goto :goto_0

    .line 348
    .end local v6           #e:Landroid/os/RemoteException;
    .restart local v1       #windowToken:Landroid/os/IBinder;
    :cond_2
    const-string v0, "FULLockscreen"

    const-string v2, "windowToken is null in handleServiceConnected()"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method handleServiceDisconnected()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 358
    const-string v0, "FULLockscreen"

    const-string v1, "handleServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 362
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    .line 363
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mServiceRunning:Z

    .line 364
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mBoundToService:Z

    .line 366
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mIsRunning:Z

    .line 367
    return-void

    .line 364
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method handleShowFaceUnlockView()V
    .locals 2

    .prologue
    .line 287
    sget-boolean v0, Lcom/android/internal/policy/impl/FaceUnlock;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FULLockscreen"

    const-string v1, "handleShowFaceUnlockView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 293
    :goto_0
    return-void

    .line 291
    :cond_1
    const-string v0, "FULLockscreen"

    const-string v1, "mFaceUnlockView is null in handleShowFaceUnlockView()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method handleUnlock()V
    .locals 2

    .prologue
    .line 374
    sget-boolean v0, Lcom/android/internal/policy/impl/FaceUnlock;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FULLockscreen"

    const-string v1, "handleUnlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FaceUnlock;->removeDisplayMessages()V

    .line 376
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 381
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/FaceUnlock;->stop()Z

    .line 382
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 383
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    .line 384
    return-void

    .line 379
    :cond_1
    const-string v0, "FULLockscreen"

    const-string v1, "mFaceUnlockView is null in handleUnlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 139
    sget-boolean v0, Lcom/android/internal/policy/impl/FaceUnlock;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FULLockscreen"

    const-string v1, "hide()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FaceUnlock;->removeDisplayMessages()V

    .line 142
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 143
    return-void
.end method

.method public initializeView(Landroid/view/View;)V
    .locals 2
    .parameter "biometricUnlockView"

    .prologue
    .line 105
    const-string v0, "FULLockscreen"

    const-string v1, "initializeView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iput-object p1, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    .line 107
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mIsRunning:Z

    return v0
.end method

.method public show(J)V
    .locals 3
    .parameter "timeoutMillis"

    .prologue
    .line 121
    sget-boolean v0, Lcom/android/internal/policy/impl/FaceUnlock;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FULLockscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show() , time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 123
    const-string v0, "FULLockscreen"

    const-string v1, "show() called off of the UI thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FaceUnlock;->removeDisplayMessages()V

    .line 127
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_3

    .line 131
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 133
    :cond_3
    return-void
.end method

.method public start()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 151
    const-string v0, "FULLockscreen"

    const-string v1, "start()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 153
    const-string v0, "FULLockscreen"

    const-string v1, "start() called off of the UI thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mIsRunning:Z

    if-eqz v0, :cond_1

    .line 157
    const-string v0, "FULLockscreen"

    const-string v1, "start() called when already running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_1
    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/FaceUnlock;->show(J)V

    .line 164
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mBoundToService:Z

    if-nez v0, :cond_2

    .line 165
    const-string v0, "FULLockscreen"

    const-string v1, "Binding to Face Unlock service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/internal/policy/IFaceLockInterface;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mConnection:Landroid/content/ServiceConnection;

    iget-object v3, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z

    .line 170
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mBoundToService:Z

    .line 175
    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mIsRunning:Z

    .line 176
    return v4

    .line 172
    :cond_2
    const-string v0, "FULLockscreen"

    const-string v1, "Attempt to bind to Face Unlock when already bound"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stop()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 183
    sget-boolean v2, Lcom/android/internal/policy/impl/FaceUnlock;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "FULLockscreen"

    const-string v3, "stop()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 185
    const-string v2, "FULLockscreen"

    const-string v3, "stop() called off of the UI thread"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mIsRunning:Z

    .line 189
    .local v1, mWasRunning:Z
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FaceUnlock;->stopUi()V

    .line 191
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mBoundToService:Z

    if-eqz v2, :cond_4

    .line 192
    iget-object v2, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    if-eqz v2, :cond_2

    .line 194
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v3, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v2, v3}, Lcom/android/internal/policy/IFaceLockInterface;->unregisterCallback(Lcom/android/internal/policy/IFaceLockCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 199
    :cond_2
    :goto_0
    const-string v2, "FULLockscreen"

    const-string v3, "Unbinding from Face Unlock service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 207
    :goto_1
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mBoundToService:Z

    .line 214
    :cond_3
    :goto_2
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/FaceUnlock;->mIsRunning:Z

    .line 215
    return v1

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FULLockscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when mContext.unbindService = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 212
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    sget-boolean v2, Lcom/android/internal/policy/impl/FaceUnlock;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "FULLockscreen"

    const-string v3, "Attempt to unbind from Face Unlock when not bound"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 195
    :catch_1
    move-exception v2

    goto :goto_0
.end method
