.class public final Lcom/htc/app/HtcShutdownThread;
.super Ljava/lang/Thread;
.source "HtcShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/app/HtcShutdownThread$CloseDialogReceiver;
    }
.end annotation


# static fields
.field private static final FM_SERVICE_COMMAND:Ljava/lang/String; = "com.htc.fm.servicecommand"

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_NUM_PHONE_STATE_READS:I = 0x40

.field private static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field private static final MAX_RESTART_WAIT_TIME:I = 0x2710

.field private static final MAX_SHUTDOWN_ANIMATION_TIME:I = 0x2710

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field public static final REBOOT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.safemode"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HtcShutdownThread"

.field private static mHibernate:Z

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static mRebootSafeMode:Z

.field private static mResumeCount:I

.field private static mShutdownListener:Lcom/htc/shutdown/HtcShutdownScreen$OnShutdownListener;

.field private static pd:Landroid/app/ProgressDialog;

.field private static sInstance:Lcom/htc/app/HtcShutdownThread;

.field private static sIsAnimationCompleted:Z

.field private static sIsAnimationReady:Z

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;

.field private static shutdown:Lcom/htc/shutdown/HtcShutdownScreen;


# instance fields
.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mShutdownWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/app/HtcShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 107
    sput-boolean v1, Lcom/htc/app/HtcShutdownThread;->sIsStarted:Z

    .line 108
    sput-boolean v1, Lcom/htc/app/HtcShutdownThread;->sIsAnimationCompleted:Z

    .line 109
    sput-boolean v1, Lcom/htc/app/HtcShutdownThread;->sIsAnimationReady:Z

    .line 133
    sput v1, Lcom/htc/app/HtcShutdownThread;->mResumeCount:I

    .line 540
    new-instance v0, Lcom/htc/app/HtcShutdownThread$4;

    invoke-direct {v0}, Lcom/htc/app/HtcShutdownThread$4;-><init>()V

    sput-object v0, Lcom/htc/app/HtcShutdownThread;->mShutdownListener:Lcom/htc/shutdown/HtcShutdownScreen$OnShutdownListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/app/HtcShutdownThread;->mStarted:Z

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/app/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 136
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    sput-boolean p0, Lcom/htc/app/HtcShutdownThread;->mReboot:Z

    return p0
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-static {p0}, Lcom/htc/app/HtcShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 85
    sget-boolean v0, Lcom/htc/app/HtcShutdownThread;->sIsAnimationReady:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    sput-boolean p0, Lcom/htc/app/HtcShutdownThread;->sIsAnimationCompleted:Z

    return p0
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .locals 15
    .parameter "context"

    .prologue
    const/16 v14, 0x7da

    const/4 v9, 0x2

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 420
    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v7, :cond_0

    const-string v7, "HtcShutdownThread"

    const-string v8, "Sending shutdown animation broadcast"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_0
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.htc.intent.action.SHUTDOWN_ANIMATION"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 424
    sget-object v8, Lcom/htc/app/HtcShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v8

    .line 425
    :try_start_0
    sget-boolean v7, Lcom/htc/app/HtcShutdownThread;->sIsStarted:Z

    if-eqz v7, :cond_3

    .line 426
    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v7, :cond_1

    .line 427
    const-string v7, "HtcShutdownThread"

    const-string v9, "User perform shutdown already running, returning."

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_1
    const-string v7, "HtcShutdownThread"

    const-string v9, "Shutdown sequence already running, returning."

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    monitor-exit v8

    .line 537
    :cond_2
    :goto_0
    return-void

    .line 431
    :cond_3
    const/4 v7, 0x1

    sput-boolean v7, Lcom/htc/app/HtcShutdownThread;->sIsStarted:Z

    .line 432
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 435
    .local v6, home:Landroid/content/Intent;
    const-string v7, "android.intent.category.HOME"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    const/high16 v7, 0x1000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 437
    invoke-virtual {p0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 439
    const/16 v7, 0xd8

    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v7, v8, :cond_4

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-eq v9, v7, :cond_6

    :cond_4
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v12, v7, :cond_5

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-eq v9, v7, :cond_6

    :cond_5
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v9, v7, :cond_8

    .line 443
    :cond_6
    const-string v7, "ctl.stop"

    const-string v8, "zchgd_onmode"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide/16 v9, 0x2710

    add-long v4, v7, v9

    .line 446
    .local v4, endRestartTime:J
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v1, v4, v7

    .line 447
    .local v1, delay:J
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-gtz v7, :cond_c

    .line 448
    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v7, :cond_8

    .line 449
    const-string v7, "HtcShutdownThread"

    const-string v8, "zchgd_onmode timed out"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    .end local v1           #delay:J
    .end local v4           #endRestartTime:J
    :cond_8
    :goto_1
    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v7, :cond_9

    .line 463
    const-string v7, "HtcShutdownThread"

    const-string v8, "zchgd_onmode stopped"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_9
    invoke-static {}, Lcom/htc/app/HtcShutdownThread;->isUseAnimation()Z

    move-result v0

    .line 466
    .local v0, bUseAnim:Z
    if-nez v0, :cond_e

    .line 469
    new-instance v7, Landroid/app/ProgressDialog;

    invoke-direct {v7, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v7, Lcom/htc/app/HtcShutdownThread;->pd:Landroid/app/ProgressDialog;

    .line 470
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->pd:Landroid/app/ProgressDialog;

    const v8, 0x104012d

    invoke-virtual {p0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 471
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->pd:Landroid/app/ProgressDialog;

    const v8, 0x1040131

    invoke-virtual {p0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 472
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v7, v12}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 473
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v7, v11}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 474
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v14}, Landroid/view/Window;->setType(I)V

    .line 476
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->show()V

    .line 477
    sput-boolean v12, Lcom/htc/app/HtcShutdownThread;->sIsAnimationCompleted:Z

    .line 478
    sput-boolean v12, Lcom/htc/app/HtcShutdownThread;->sIsAnimationReady:Z

    .line 497
    :goto_2
    new-instance v7, Lcom/htc/app/HtcShutdownThread;

    invoke-direct {v7}, Lcom/htc/app/HtcShutdownThread;-><init>()V

    sput-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    .line 498
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iput-object p0, v7, Lcom/htc/app/HtcShutdownThread;->mContext:Landroid/content/Context;

    .line 499
    sget-object v8, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    const-string v7, "power"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    iput-object v7, v8, Lcom/htc/app/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 500
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v7, v7, Lcom/htc/app/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v7, v11}, Landroid/os/PowerManager;->setAblActive(I)V

    .line 502
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iput-object v13, v7, Lcom/htc/app/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 504
    :try_start_1
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    sget-object v8, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v8, v8, Lcom/htc/app/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v9, 0x1

    const-string v10, "HtcShutdownThread-cpu"

    invoke-virtual {v8, v9, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    iput-object v8, v7, Lcom/htc/app/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 506
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v7, v7, Lcom/htc/app/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v7, :cond_a

    .line 507
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v7, v7, Lcom/htc/app/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 508
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v7, v7, Lcom/htc/app/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 517
    :cond_a
    :goto_3
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iput-object v13, v7, Lcom/htc/app/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 518
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v7, v7, Lcom/htc/app/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v7}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 520
    :try_start_2
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    sget-object v8, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v8, v8, Lcom/htc/app/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v9, 0x1a

    const-string v10, "HtcShutdownThread-screen"

    invoke-virtual {v8, v9, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    iput-object v8, v7, Lcom/htc/app/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 522
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v7, v7, Lcom/htc/app/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v7, :cond_b

    .line 523
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v7, v7, Lcom/htc/app/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 524
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v7, v7, Lcom/htc/app/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 532
    :cond_b
    :goto_4
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    new-instance v8, Lcom/htc/app/HtcShutdownThread$3;

    invoke-direct {v8}, Lcom/htc/app/HtcShutdownThread$3;-><init>()V

    iput-object v8, v7, Lcom/htc/app/HtcShutdownThread;->mHandler:Landroid/os/Handler;

    .line 534
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    invoke-virtual {v7}, Lcom/htc/app/HtcShutdownThread;->isAlive()Z

    move-result v7

    if-nez v7, :cond_2

    .line 535
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    invoke-virtual {v7}, Lcom/htc/app/HtcShutdownThread;->start()V

    goto/16 :goto_0

    .line 432
    .end local v0           #bUseAnim:Z
    .end local v6           #home:Landroid/content/Intent;
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    .line 452
    .restart local v1       #delay:J
    .restart local v4       #endRestartTime:J
    .restart local v6       #home:Landroid/content/Intent;
    :cond_c
    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v7, :cond_d

    .line 453
    const-string v7, "HtcShutdownThread"

    const-string v8, "zchgd_onmode"

    const-string v9, "stopped"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_d
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v7, 0x64

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    .line 460
    :goto_5
    const-string v7, "zchgd_onmode"

    const-string v8, "stopped"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "stopped"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto/16 :goto_1

    .line 480
    .end local v1           #delay:J
    .end local v4           #endRestartTime:J
    .restart local v0       #bUseAnim:Z
    :cond_e
    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v7, :cond_f

    .line 481
    const-string v7, "HtcShutdownThread"

    const-string v8, "start animation"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_f
    new-instance v7, Lcom/htc/shutdown/HtcShutdownScreen;

    const v8, 0x1030005

    invoke-direct {v7, p0, v8}, Lcom/htc/shutdown/HtcShutdownScreen;-><init>(Landroid/content/Context;I)V

    sput-object v7, Lcom/htc/app/HtcShutdownThread;->shutdown:Lcom/htc/shutdown/HtcShutdownScreen;

    .line 484
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->shutdown:Lcom/htc/shutdown/HtcShutdownScreen;

    sget-object v8, Lcom/htc/app/HtcShutdownThread;->mShutdownListener:Lcom/htc/shutdown/HtcShutdownScreen$OnShutdownListener;

    invoke-virtual {v7, v8}, Lcom/htc/shutdown/HtcShutdownScreen;->setShutdownListener(Lcom/htc/shutdown/HtcShutdownScreen$OnShutdownListener;)V

    .line 485
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->shutdown:Lcom/htc/shutdown/HtcShutdownScreen;

    invoke-virtual {v7}, Lcom/htc/shutdown/HtcShutdownScreen;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v14}, Landroid/view/Window;->setType(I)V

    .line 486
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->shutdown:Lcom/htc/shutdown/HtcShutdownScreen;

    invoke-virtual {v7}, Lcom/htc/shutdown/HtcShutdownScreen;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x400

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 488
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->shutdown:Lcom/htc/shutdown/HtcShutdownScreen;

    invoke-virtual {v7}, Lcom/htc/shutdown/HtcShutdownScreen;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/high16 v8, -0x8000

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 490
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->shutdown:Lcom/htc/shutdown/HtcShutdownScreen;

    invoke-virtual {v7, v11}, Lcom/htc/shutdown/HtcShutdownScreen;->setCancelable(Z)V

    .line 491
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->shutdown:Lcom/htc/shutdown/HtcShutdownScreen;

    invoke-virtual {v7}, Lcom/htc/shutdown/HtcShutdownScreen;->show()V

    .line 493
    sput-boolean v11, Lcom/htc/app/HtcShutdownThread;->sIsAnimationCompleted:Z

    goto/16 :goto_2

    .line 510
    :catch_0
    move-exception v3

    .line 511
    .local v3, e:Ljava/lang/SecurityException;
    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v7, :cond_10

    .line 512
    const-string v7, "HtcShutdownThread"

    const-string v8, "No permission to acquire wake lock"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 513
    :cond_10
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iput-object v13, v7, Lcom/htc/app/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_3

    .line 526
    .end local v3           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v3

    .line 527
    .restart local v3       #e:Ljava/lang/SecurityException;
    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v7, :cond_11

    .line 528
    const-string v7, "HtcShutdownThread"

    const-string v8, "No permission to acquire wake lock"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 529
    :cond_11
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iput-object v13, v7, Lcom/htc/app/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_4

    .line 458
    .end local v0           #bUseAnim:Z
    .end local v3           #e:Ljava/lang/SecurityException;
    .restart local v1       #delay:J
    .restart local v4       #endRestartTime:J
    :catch_2
    move-exception v7

    goto :goto_5
.end method

.method public static hibernate(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "confirm"

    .prologue
    const/4 v4, 0x1

    .line 402
    sput-boolean v4, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    .line 403
    const-string v2, "sys.shutdown.mode"

    const-string v3, "hibernate"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hibernate_nowait"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 412
    .local v1, nowait:I
    :goto_0
    if-ne v1, v4, :cond_0

    .line 413
    const-string v2, "sys.shutdown.nowait"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :cond_0
    invoke-static {p0, p1}, Lcom/htc/app/HtcShutdownThread;->shutdown(Landroid/content/Context;Z)V

    .line 416
    return-void

    .line 409
    .end local v1           #nowait:I
    :catch_0
    move-exception v0

    .line 410
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, 0x0

    .restart local v1       #nowait:I
    goto :goto_0
.end method

.method private static isUseAnimation()Z
    .locals 12

    .prologue
    .line 1493
    new-instance v6, Lcom/htc/shutdown/ConfigReader;

    invoke-direct {v6}, Lcom/htc/shutdown/ConfigReader;-><init>()V

    .line 1494
    .local v6, mReader:Lcom/htc/shutdown/ConfigReader;
    new-instance v5, Lcom/htc/shutdown/ConfigData;

    invoke-direct {v5}, Lcom/htc/shutdown/ConfigData;-><init>()V

    .line 1495
    .local v5, mData:Lcom/htc/shutdown/ConfigData;
    const/4 v8, 0x0

    .line 1496
    .local v8, useAnimation:Z
    const-string v9, "ro.cid"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1500
    .local v7, str_cid:Ljava/lang/String;
    const-string v3, "/data/data/cw/animation.xml"

    .line 1501
    .local v3, cw_config_path:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1502
    .local v2, cwConfig:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1503
    sget-boolean v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v9, :cond_0

    .line 1504
    const-string v9, "HtcShutdownThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cw_config_path:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    :cond_0
    invoke-virtual {v6, v3}, Lcom/htc/shutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 1506
    invoke-virtual {v6}, Lcom/htc/shutdown/ConfigReader;->getConfigData()Lcom/htc/shutdown/ConfigData;

    move-result-object v5

    .line 1507
    sget-boolean v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v9, :cond_1

    const-string v9, "HtcShutdownThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cust_Shutdown_animation: image property> \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Lcom/htc/shutdown/ConfigData;->image:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    :cond_1
    iget-object v9, v5, Lcom/htc/shutdown/ConfigData;->image:Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 1509
    sget-boolean v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v9, :cond_2

    .line 1510
    const-string v9, "HtcShutdownThread"

    const-string v10, "use cw animation"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    :cond_2
    const/4 v9, 0x1

    .line 1573
    :goto_0
    return v9

    .line 1515
    :cond_3
    if-eqz v7, :cond_f

    .line 1516
    sget-boolean v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v9, :cond_4

    .line 1517
    const-string v9, "HtcShutdownThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CID:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/system/customize/CID/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".xml"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1520
    .local v1, config_path:Ljava/lang/String;
    sget-boolean v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v9, :cond_5

    .line 1521
    const-string v9, "HtcShutdownThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "config_path:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    :cond_5
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1524
    .local v0, config:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 1525
    invoke-virtual {v6, v1}, Lcom/htc/shutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 1526
    invoke-virtual {v6}, Lcom/htc/shutdown/ConfigReader;->getConfigData()Lcom/htc/shutdown/ConfigData;

    move-result-object v5

    .line 1527
    iget-object v9, v5, Lcom/htc/shutdown/ConfigData;->image:Ljava/lang/String;

    if-nez v9, :cond_b

    .line 1528
    sget-boolean v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v9, :cond_6

    .line 1529
    const-string v9, "HtcShutdownThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Parse "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "failed.  Use default.xml."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    :cond_6
    const-string v9, "/system/customize/CID/default.xml"

    invoke-virtual {v6, v9}, Lcom/htc/shutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 1531
    invoke-virtual {v6}, Lcom/htc/shutdown/ConfigReader;->getConfigData()Lcom/htc/shutdown/ConfigData;

    move-result-object v5

    .line 1532
    iget-object v9, v5, Lcom/htc/shutdown/ConfigData;->image:Ljava/lang/String;

    if-nez v9, :cond_a

    .line 1533
    sget-boolean v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v9, :cond_7

    .line 1534
    const-string v9, "HtcShutdownThread"

    const-string v10, "Parse default.xml failed.  Use default dialog"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    .end local v0           #config:Ljava/io/File;
    .end local v1           #config_path:Ljava/lang/String;
    :cond_7
    :goto_1
    iget-object v9, v5, Lcom/htc/shutdown/ConfigData;->image:Ljava/lang/String;

    if-nez v9, :cond_8

    .line 1567
    new-instance v4, Ljava/io/File;

    const-string v9, "/system/customize/resource/shutdown.zip"

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1568
    .local v4, defaultFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1569
    const/4 v8, 0x1

    .line 1572
    .end local v4           #defaultFile:Ljava/io/File;
    :cond_8
    sget-boolean v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v9, :cond_9

    const-string v9, "HtcShutdownThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cust_Shutdown_animation: image property> \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Lcom/htc/shutdown/ConfigData;->image:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move v9, v8

    .line 1573
    goto/16 :goto_0

    .line 1536
    .restart local v0       #config:Ljava/io/File;
    .restart local v1       #config_path:Ljava/lang/String;
    :cond_a
    const/4 v8, 0x1

    goto :goto_1

    .line 1539
    :cond_b
    const/4 v8, 0x1

    goto :goto_1

    .line 1542
    :cond_c
    sget-boolean v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v9, :cond_d

    .line 1543
    const-string v9, "HtcShutdownThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can\'t load "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".  Use default.xml."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    :cond_d
    const-string v9, "/system/customize/CID/default.xml"

    invoke-virtual {v6, v9}, Lcom/htc/shutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 1545
    invoke-virtual {v6}, Lcom/htc/shutdown/ConfigReader;->getConfigData()Lcom/htc/shutdown/ConfigData;

    move-result-object v5

    .line 1546
    iget-object v9, v5, Lcom/htc/shutdown/ConfigData;->image:Ljava/lang/String;

    if-nez v9, :cond_e

    .line 1547
    sget-boolean v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v9, :cond_7

    .line 1548
    const-string v9, "HtcShutdownThread"

    const-string v10, "Parse default.xml failed.  Use default dialog"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1550
    :cond_e
    const/4 v8, 0x1

    goto :goto_1

    .line 1554
    .end local v0           #config:Ljava/io/File;
    .end local v1           #config_path:Ljava/lang/String;
    :cond_f
    sget-boolean v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v9, :cond_10

    .line 1555
    const-string v9, "HtcShutdownThread"

    const-string v10, "Can\'t find CID.  Use default.xml."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    :cond_10
    const-string v9, "/system/customize/CID/default.xml"

    invoke-virtual {v6, v9}, Lcom/htc/shutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 1557
    invoke-virtual {v6}, Lcom/htc/shutdown/ConfigReader;->getConfigData()Lcom/htc/shutdown/ConfigData;

    move-result-object v5

    .line 1558
    iget-object v9, v5, Lcom/htc/shutdown/ConfigData;->image:Ljava/lang/String;

    if-nez v9, :cond_11

    .line 1559
    sget-boolean v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v9, :cond_7

    .line 1560
    const-string v9, "HtcShutdownThread"

    const-string v10, "Parse default.xml failed.  Use default dialog"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1562
    :cond_11
    const/4 v8, 0x1

    goto/16 :goto_1
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "reason"
    .parameter "confirm"

    .prologue
    .line 373
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/app/HtcShutdownThread;->mReboot:Z

    .line 374
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/app/HtcShutdownThread;->mRebootSafeMode:Z

    .line 375
    sput-object p1, Lcom/htc/app/HtcShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 376
    invoke-static {p0, p2}, Lcom/htc/app/HtcShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 377
    return-void
.end method

.method public static rebootSafeMode(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "confirm"

    .prologue
    const/4 v0, 0x1

    .line 391
    sput-boolean v0, Lcom/htc/app/HtcShutdownThread;->mReboot:Z

    .line 392
    sput-boolean v0, Lcom/htc/app/HtcShutdownThread;->mRebootSafeMode:Z

    .line 393
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/app/HtcShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 394
    invoke-static {p0, p1}, Lcom/htc/app/HtcShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 395
    return-void
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "confirm"

    .prologue
    const/4 v0, 0x0

    .line 152
    sput-boolean v0, Lcom/htc/app/HtcShutdownThread;->mReboot:Z

    .line 153
    sput-boolean v0, Lcom/htc/app/HtcShutdownThread;->mRebootSafeMode:Z

    .line 154
    invoke-static {p0, p1}, Lcom/htc/app/HtcShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 155
    return-void
.end method

.method static shutdownInner(Landroid/content/Context;Z)V
    .locals 10
    .parameter "context"
    .parameter "confirm"

    .prologue
    .line 160
    sget-object v8, Lcom/htc/app/HtcShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v8

    .line 161
    :try_start_0
    sget-boolean v7, Lcom/htc/app/HtcShutdownThread;->sIsStarted:Z

    if-eqz v7, :cond_2

    .line 162
    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v7, :cond_0

    .line 163
    const-string v7, "HtcShutdownThread"

    const-string v9, "Request to shutdown already running, returning."

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    monitor-exit v8

    .line 222
    :cond_1
    :goto_0
    return-void

    .line 166
    :cond_2
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v7, :cond_3

    .line 179
    const-string v7, "HtcShutdownThread"

    const-string v8, "Notifying thread to start shutdown"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_3
    if-eqz p1, :cond_7

    .line 184
    sget-boolean v7, Lcom/htc/app/HtcShutdownThread;->mReboot:Z

    if-eqz v7, :cond_6

    .line 185
    sget-boolean v7, Lcom/htc/app/HtcShutdownThread;->mRebootSafeMode:Z

    if-eqz v7, :cond_4

    const v5, 0x1040134

    .line 186
    .local v5, idTitle:I
    :goto_1
    sget-boolean v7, Lcom/htc/app/HtcShutdownThread;->mRebootSafeMode:Z

    if-eqz v7, :cond_5

    const v2, 0x1040135

    .line 187
    .local v2, idMessage:I
    :goto_2
    const v4, 0x20400d0

    .line 188
    .local v4, idPositive:I
    const v3, 0x1040009

    .line 196
    .local v3, idNegative:I
    :goto_3
    new-instance v0, Lcom/htc/app/HtcShutdownThread$CloseDialogReceiver;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 197
    .local v0, closer:Lcom/htc/app/HtcShutdownThread$CloseDialogReceiver;
    new-instance v7, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v7, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/htc/app/HtcShutdownThread$2;

    invoke-direct {v8, p0}, Lcom/htc/app/HtcShutdownThread$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v4, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/htc/app/HtcShutdownThread$1;

    invoke-direct {v8}, Lcom/htc/app/HtcShutdownThread$1;-><init>()V

    invoke-virtual {v7, v3, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 211
    .local v1, dialog:Lcom/htc/widget/HtcAlertDialog;
    iput-object v1, v0, Lcom/htc/app/HtcShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 212
    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 213
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d9

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    .line 214
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 216
    sget-object v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 217
    .local v6, version:F
    const/high16 v7, 0x4000

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_1

    .line 218
    invoke-static {p0, v1, v6}, Lcom/htc/app/HtcShutdownThread;->updateSkinResource(Landroid/content/Context;Lcom/htc/widget/HtcAlertDialog;F)V

    goto :goto_0

    .line 166
    .end local v0           #closer:Lcom/htc/app/HtcShutdownThread$CloseDialogReceiver;
    .end local v1           #dialog:Lcom/htc/widget/HtcAlertDialog;
    .end local v2           #idMessage:I
    .end local v3           #idNegative:I
    .end local v4           #idPositive:I
    .end local v5           #idTitle:I
    .end local v6           #version:F
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 185
    :cond_4
    const v5, 0x20400ce

    goto :goto_1

    .line 186
    .restart local v5       #idTitle:I
    :cond_5
    const v2, 0x20400cf

    goto :goto_2

    .line 190
    .end local v5           #idTitle:I
    :cond_6
    const v5, 0x104012d

    .line 191
    .restart local v5       #idTitle:I
    const v2, 0x1040132

    .line 192
    .restart local v2       #idMessage:I
    const v4, 0x1040013

    .line 193
    .restart local v4       #idPositive:I
    const v3, 0x1040009

    .restart local v3       #idNegative:I
    goto :goto_3

    .line 220
    .end local v2           #idMessage:I
    .end local v3           #idNegative:I
    .end local v4           #idPositive:I
    .end local v5           #idTitle:I
    :cond_7
    invoke-static {p0}, Lcom/htc/app/HtcShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method private static updateSkinResource(Landroid/content/Context;Lcom/htc/widget/HtcAlertDialog;F)V
    .locals 18
    .parameter "context"
    .parameter "dialog"
    .parameter "version"

    .prologue
    .line 259
    if-nez p1, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    const-string v14, "HtcShutdownThread"

    const-string v15, "updateSkinResource(), dialog is not null"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 265
    .local v1, am:Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 266
    .local v4, config:Landroid/content/res/Configuration;
    iget-object v12, v4, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .line 267
    .local v12, skinPackage:Ljava/lang/String;
    sget-boolean v14, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v14, :cond_2

    const-string v14, "HtcShutdownThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "skinPackage = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_2
    const/4 v14, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v8

    .line 270
    .local v8, positiveBtn:Landroid/widget/Button;
    const/4 v14, -0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v7

    .line 272
    .local v7, negativeBtn:Landroid/widget/Button;
    const/high16 v14, 0x4080

    cmpl-float v14, p2, v14

    if-ltz v14, :cond_d

    .line 273
    const-string v14, ""

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "default"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 274
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 276
    .local v9, res:Landroid/content/res/Resources;
    const-string v14, "b_button_primary"

    const-string v15, "color"

    const-string v16, "com.htc"

    move-object/from16 v0, v16

    invoke-virtual {v9, v14, v15, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 277
    .local v3, colorId:I
    sget-boolean v14, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v14, :cond_4

    const-string v14, "HtcShutdownThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "colorId = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_4
    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 281
    .local v2, button_skin:Landroid/content/res/ColorStateList;
    if-eqz v8, :cond_6

    .line 282
    sget-boolean v14, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v14, :cond_5

    const-string v14, "HtcShutdownThread"

    const-string v15, "default, positiveBtn.setTextColor"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_5
    invoke-virtual {v8, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 286
    :cond_6
    if-eqz v7, :cond_0

    .line 287
    sget-boolean v14, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v14, :cond_7

    const-string v14, "HtcShutdownThread"

    const-string v15, "default, negativeBtn.setTextColor"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_7
    invoke-virtual {v7, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0

    .line 353
    .end local v2           #button_skin:Landroid/content/res/ColorStateList;
    .end local v3           #colorId:I
    .end local v4           #config:Landroid/content/res/Configuration;
    .end local v7           #negativeBtn:Landroid/widget/Button;
    .end local v8           #positiveBtn:Landroid/widget/Button;
    .end local v9           #res:Landroid/content/res/Resources;
    .end local v12           #skinPackage:Ljava/lang/String;
    :catch_0
    move-exception v14

    goto/16 :goto_0

    .line 291
    .restart local v4       #config:Landroid/content/res/Configuration;
    .restart local v7       #negativeBtn:Landroid/widget/Button;
    .restart local v8       #positiveBtn:Landroid/widget/Button;
    .restart local v12       #skinPackage:Ljava/lang/String;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v14, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v13

    .line 293
    .local v13, themeres:Landroid/content/res/Resources;
    const-string v14, "b_button_primary"

    const-string v15, "color"

    invoke-virtual {v13, v14, v15, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 294
    .restart local v3       #colorId:I
    sget-boolean v14, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v14, :cond_9

    const-string v14, "HtcShutdownThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "colorId = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_9
    invoke-virtual {v13, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 298
    .restart local v2       #button_skin:Landroid/content/res/ColorStateList;
    if-eqz v8, :cond_b

    .line 299
    sget-boolean v14, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v14, :cond_a

    const-string v14, "HtcShutdownThread"

    const-string v15, "not default, positiveBtn.setTextColor"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_a
    invoke-virtual {v8, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 303
    :cond_b
    if-eqz v7, :cond_0

    .line 304
    sget-boolean v14, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v14, :cond_c

    const-string v14, "HtcShutdownThread"

    const-string v15, "not default, negativeBtn.setTextColor"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_c
    invoke-virtual {v7, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0

    .line 314
    .end local v2           #button_skin:Landroid/content/res/ColorStateList;
    .end local v3           #colorId:I
    .end local v13           #themeres:Landroid/content/res/Resources;
    :cond_d
    const/high16 v14, 0x4060

    cmpl-float v14, p2, v14

    if-ltz v14, :cond_14

    .line 315
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const-string v15, "popup_bottom_left"

    const-string v16, "drawable"

    const-string v17, "com.htc"

    invoke-virtual/range {v14 .. v17}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 316
    .local v5, leftBtnResId:I
    const-string v6, "popup_bottom_left"

    .line 317
    .local v6, leftBtnResStr:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const-string v15, "popup_bottom_right"

    const-string v16, "drawable"

    const-string v17, "com.htc"

    invoke-virtual/range {v14 .. v17}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 318
    .local v10, rightBtnResId:I
    const-string v11, "popup_bottom_right"

    .line 323
    .local v11, rightBtnResStr:Ljava/lang/String;
    :goto_1
    sget-boolean v14, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v14, :cond_e

    const-string v14, "HtcShutdownThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "leftBtnResStr = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", rightBtnResStr = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_e
    const-string v14, ""

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_f

    const-string v14, "default"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 326
    :cond_f
    sget-boolean v14, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v14, :cond_10

    const-string v14, "HtcShutdownThread"

    const-string v15, "default"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 329
    .restart local v9       #res:Landroid/content/res/Resources;
    if-eqz v8, :cond_12

    .line 330
    sget-boolean v14, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v14, :cond_11

    const-string v14, "HtcShutdownThread"

    const-string v15, "default, positiveBtn.setBackgroundDrawable"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_11
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 334
    :cond_12
    if-eqz v7, :cond_0

    .line 335
    sget-boolean v14, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v14, :cond_13

    const-string v14, "HtcShutdownThread"

    const-string v15, "default, negativeBtn.setBackgroundDrawable"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_13
    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 320
    .end local v5           #leftBtnResId:I
    .end local v6           #leftBtnResStr:Ljava/lang/String;
    .end local v9           #res:Landroid/content/res/Resources;
    .end local v10           #rightBtnResId:I
    .end local v11           #rightBtnResStr:Ljava/lang/String;
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const-string v15, "command_bar_btn"

    const-string v16, "drawable"

    const-string v17, "com.htc"

    invoke-virtual/range {v14 .. v17}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .restart local v5       #leftBtnResId:I
    move v10, v5

    .line 321
    .restart local v10       #rightBtnResId:I
    const-string v6, "command_bar_btn"

    .restart local v6       #leftBtnResStr:Ljava/lang/String;
    move-object v11, v6

    .restart local v11       #rightBtnResStr:Ljava/lang/String;
    goto/16 :goto_1

    .line 339
    :cond_15
    sget-boolean v14, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v14, :cond_16

    const-string v14, "HtcShutdownThread"

    const-string v15, "not default"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v14, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v13

    .line 342
    .restart local v13       #themeres:Landroid/content/res/Resources;
    if-eqz v8, :cond_18

    .line 343
    sget-boolean v14, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v14, :cond_17

    const-string v14, "HtcShutdownThread"

    const-string v15, "not default, positiveBtn.setBackgroundDrawable"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_17
    const-string v14, "drawable"

    invoke-virtual {v13, v11, v14, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 347
    :cond_18
    if-eqz v7, :cond_0

    .line 348
    sget-boolean v14, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v14, :cond_19

    const-string v14, "HtcShutdownThread"

    const-string v15, "not default, negativeBtn.setBackgroundDrawable"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_19
    const-string v14, "drawable"

    invoke-virtual {v13, v6, v14, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    .line 561
    iget-object v1, p0, Lcom/htc/app/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 562
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/app/HtcShutdownThread;->mActionDone:Z

    .line 563
    iget-object v0, p0, Lcom/htc/app/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 564
    monitor-exit v1

    .line 565
    return-void

    .line 564
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method dismissDialog(Landroid/app/Dialog;)V
    .locals 8
    .parameter "dialog"

    .prologue
    .line 579
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/app/HtcShutdownThread;->mActionDone:Z

    .line 580
    iget-object v4, p0, Lcom/htc/app/HtcShutdownThread;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/htc/app/HtcShutdownThread$5;

    invoke-direct {v5, p0, p1}, Lcom/htc/app/HtcShutdownThread$5;-><init>(Lcom/htc/app/HtcShutdownThread;Landroid/app/Dialog;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 591
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    add-long v2, v4, v6

    .line 592
    .local v2, endTime:J
    iget-object v5, p0, Lcom/htc/app/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v5

    .line 593
    :goto_0
    :try_start_0
    iget-boolean v4, p0, Lcom/htc/app/HtcShutdownThread;->mActionDone:Z

    if-nez v4, :cond_0

    .line 594
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v0, v2, v6

    .line 595
    .local v0, delay:J
    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-gtz v4, :cond_1

    .line 596
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_0

    .line 597
    const-string v4, "HtcShutdownThread"

    const-string v6, "Dismiss shutdown screen timed out"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    .end local v0           #delay:J
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    return-void

    .line 601
    .restart local v0       #delay:J
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/htc/app/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v4, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 602
    :catch_0
    move-exception v4

    goto :goto_0

    .line 605
    .end local v0           #delay:J
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method dismissProgressDialog()V
    .locals 1

    .prologue
    .line 574
    sget-object v0, Lcom/htc/app/HtcShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v0}, Lcom/htc/app/HtcShutdownThread;->dismissDialog(Landroid/app/Dialog;)V

    .line 575
    return-void
.end method

.method dismissShutdownScreen()V
    .locals 1

    .prologue
    .line 569
    sget-object v0, Lcom/htc/app/HtcShutdownThread;->shutdown:Lcom/htc/shutdown/HtcShutdownScreen;

    invoke-virtual {p0, v0}, Lcom/htc/app/HtcShutdownThread;->dismissDialog(Landroid/app/Dialog;)V

    .line 570
    return-void
.end method

.method public run()V
    .locals 61

    .prologue
    .line 618
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/app/HtcShutdownThread;->mStarted:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 1489
    :goto_0
    return-void

    .line 620
    :cond_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/app/HtcShutdownThread;->mStarted:Z

    .line 624
    const/16 v16, 0x1

    .line 625
    .local v16, PHONE_TYPE_GSM:I
    const/4 v15, 0x2

    .line 626
    .local v15, PHONE_TYPE_CDMA:I
    const/16 v17, 0x5

    .line 629
    .local v17, PHONE_TYPE_SUB_GSM:I
    const/16 v38, 0x0

    .line 632
    .local v38, nfcOff:Z
    const/16 v46, 0x0

    .line 633
    .local v46, radioOff:Z
    const/16 v44, 0x0

    .line 634
    .local v44, radioGsmOff:Z
    const/16 v42, 0x0

    .line 635
    .local v42, radioCdmaOff:Z
    const/16 v47, 0x0

    .line 637
    .local v47, radioSubGsmOff:Z
    const/16 v56, 0x0

    .line 638
    .local v56, wifiOff:Z
    const/16 v54, 0x0

    .line 639
    .local v54, wifiApOff:Z
    const/16 v59, 0x0

    .line 641
    .local v59, wimaxOff:Z
    const/16 v49, 0x0

    .line 643
    .local v49, radioWasOn:Z
    const/16 v45, 0x0

    .line 644
    .local v45, radioGsmWasOn:Z
    const/16 v43, 0x0

    .line 645
    .local v43, radioCdmaWasOn:Z
    const/16 v48, 0x0

    .line 647
    .local v48, radioSubGsmWasOn:Z
    const/16 v57, 0x0

    .line 648
    .local v57, wifiWasOn:Z
    const/16 v55, 0x0

    .line 649
    .local v55, wifiApWasOn:Z
    const/16 v60, 0x0

    .line 651
    .local v60, wimaxWasOn:Z
    const/4 v2, 0x1

    sput-boolean v2, Lcom/htc/app/HtcShutdownThread;->sIsAnimationReady:Z

    .line 653
    sget-object v2, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/htc/app/HtcShutdownThread;->mShutdownWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 655
    :try_start_0
    sget-object v2, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    sget-object v4, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v4, v4, Lcom/htc/app/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v6, 0x1

    const-string v7, "HtcShutdownThread-shutdown"

    invoke-virtual {v4, v6, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, v2, Lcom/htc/app/HtcShutdownThread;->mShutdownWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 657
    sget-object v2, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v2, v2, Lcom/htc/app/HtcShutdownThread;->mShutdownWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    .line 658
    sget-object v2, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v2, v2, Lcom/htc/app/HtcShutdownThread;->mShutdownWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 659
    sget-object v2, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v2, v2, Lcom/htc/app/HtcShutdownThread;->mShutdownWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    :cond_1
    :goto_1
    new-instance v5, Lcom/htc/app/HtcShutdownThread$6;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/htc/app/HtcShutdownThread$6;-><init>(Lcom/htc/app/HtcShutdownThread;)V

    .line 674
    .local v5, br:Landroid/content/BroadcastReceiver;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v18

    .line 681
    .local v18, alarm:Landroid/app/IAlarmManager;
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mRebootSafeMode:Z

    if-eqz v2, :cond_2

    .line 682
    const-string v2, "persist.sys.safemode"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    :cond_2
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    if-eqz v2, :cond_2b

    .line 687
    :try_start_1
    invoke-interface/range {v18 .. v18}, Landroid/app/IAlarmManager;->startHibernate()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_28

    .line 690
    :goto_2
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_3

    .line 691
    const-string v2, "HtcShutdownThread"

    const-string v4, "Sending quickboot poweroff broadcast..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-string v2, "com.htc.intent.action.QUICKBOOT_POWEROFF"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 695
    .local v3, qb_intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 696
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/app/HtcShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 699
    const-string v2, "sys.shutdown.hibernate.mode"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    .end local v3           #qb_intent:Landroid/content/Intent;
    :goto_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/app/HtcShutdownThread;->mActionDone:Z

    .line 710
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x2710

    add-long v31, v6, v8

    .line 711
    .local v31, endTime:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/app/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    .line 712
    :goto_4
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/app/HtcShutdownThread;->mActionDone:Z

    if-nez v2, :cond_4

    .line 713
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v22, v31, v6

    .line 714
    .local v22, delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v22, v6

    if-gtz v2, :cond_2d

    .line 715
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_4

    .line 716
    const-string v2, "HtcShutdownThread"

    const-string v6, "Shutdown/quickboot poweroff broadcast timed out"

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    .end local v22           #delay:J
    :cond_4
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 733
    const-string v2, "nfc"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v37

    .line 736
    .local v37, nfc:Landroid/nfc/INfcAdapter;
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v40

    .line 738
    .local v40, phone:Lcom/android/internal/telephony/ITelephony;
    const-string v2, "bluetooth"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v20

    .line 741
    .local v20, bluetooth:Landroid/bluetooth/IBluetooth;
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v36

    .line 745
    .local v36, mount:Landroid/os/storage/IMountService;
    const-string v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v53

    .line 747
    .local v53, wifi:Landroid/net/wifi/IWifiManager;
    const-string v2, "wimax"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/net/wimax/IWimaxController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/net/wimax/IWimaxController;

    move-result-object v58

    .line 749
    .local v58, wimax:Lcom/htc/net/wimax/IWimaxController;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "airplane_mode_on"

    const/4 v6, 0x0

    invoke-static {v2, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 751
    .local v14, IsAirplaneMode:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "screen_brightness_mode"

    const/4 v6, 0x0

    invoke-static {v2, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v52

    .line 755
    .local v52, screenBrightnessMode:I
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "screen_brightness"

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v51

    .line 761
    .local v51, screenBrightness:I
    :goto_5
    if-nez v52, :cond_2e

    .line 762
    const-string v2, "sys.shutdown.brightness"

    new-instance v4, Ljava/lang/Integer;

    move/from16 v0, v51

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    :goto_6
    :try_start_4
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    if-nez v2, :cond_5

    if-eqz v37, :cond_5

    invoke-interface/range {v37 .. v37}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2f

    :cond_5
    const/16 v38, 0x1

    .line 771
    :goto_7
    if-nez v38, :cond_7

    .line 772
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_6

    .line 773
    const-string v2, "HtcShutdownThread"

    const-string v4, "Turning off NFC..."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, v37

    invoke-interface {v0, v2}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 783
    :cond_7
    :goto_8
    if-eqz v20, :cond_8

    :try_start_5
    invoke-interface/range {v20 .. v20}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I

    move-result v2

    const/16 v4, 0xa

    if-ne v2, v4, :cond_31

    :cond_8
    const/16 v21, 0x1

    .line 785
    .local v21, bluetoothOff:Z
    :goto_9
    if-nez v21, :cond_a

    .line 786
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_9

    .line 787
    const-string v2, "HtcShutdownThread"

    const-string v4, "Disabling Bluetooth..."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/bluetooth/IBluetooth;->disable(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    .line 797
    :cond_a
    :goto_a
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 799
    if-eqz v40, :cond_b

    :try_start_6
    move-object/from16 v0, v40

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isRadioOnExt(I)Z

    move-result v2

    if-nez v2, :cond_33

    :cond_b
    const/16 v44, 0x1

    .line 800
    :goto_b
    if-eqz v40, :cond_e

    .line 801
    if-nez v14, :cond_c

    .line 802
    const/16 v45, 0x1

    .line 803
    :cond_c
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_d

    .line 804
    const-string v2, "HtcShutdownThread"

    const-string v4, "Turning off GSM radio..."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :cond_d
    const/4 v2, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v16

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/ITelephony;->setRadioExt(ZI)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5

    .line 814
    :cond_e
    :goto_c
    if-eqz v40, :cond_f

    :try_start_7
    move-object/from16 v0, v40

    invoke-interface {v0, v15}, Lcom/android/internal/telephony/ITelephony;->isRadioOnExt(I)Z

    move-result v2

    if-nez v2, :cond_35

    :cond_f
    const/16 v42, 0x1

    .line 815
    :goto_d
    if-eqz v40, :cond_12

    .line 816
    if-nez v14, :cond_10

    .line 817
    const/16 v43, 0x1

    .line 818
    :cond_10
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_11

    .line 819
    const-string v2, "HtcShutdownThread"

    const-string v4, "Turning off CDMA radio..."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :cond_11
    const/4 v2, 0x0

    move-object/from16 v0, v40

    invoke-interface {v0, v2, v15}, Lcom/android/internal/telephony/ITelephony;->setRadioExt(ZI)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_6

    .line 877
    :cond_12
    :goto_e
    if-eqz v53, :cond_13

    :try_start_8
    invoke-interface/range {v53 .. v53}, Landroid/net/wifi/IWifiManager;->getWifiEnabledState()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_49

    :cond_13
    const/16 v56, 0x1

    .line 879
    :goto_f
    if-nez v56, :cond_15

    .line 880
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_14

    .line 881
    const-string v2, "HtcShutdownThread"

    const-string v4, "Disabling Wifi..."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :cond_14
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v53

    invoke-interface {v0, v2, v4}, Landroid/net/wifi/IWifiManager;->setWifiEnabledPersist(ZZ)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_a

    .line 883
    const/16 v57, 0x1

    .line 892
    :cond_15
    :goto_10
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    if-eqz v2, :cond_50

    .line 894
    if-eqz v53, :cond_16

    :try_start_9
    invoke-interface/range {v53 .. v53}, Landroid/net/wifi/IWifiManager;->getWifiApEnabledState()I

    move-result v2

    const/16 v4, 0xb

    if-ne v2, v4, :cond_4b

    :cond_16
    const/16 v54, 0x1

    .line 896
    :goto_11
    if-nez v54, :cond_18

    .line 897
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_17

    .line 898
    const-string v2, "HtcShutdownThread"

    const-string v4, "Disabling Wifi ap..."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    :cond_17
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v53

    invoke-interface {v0, v2, v4}, Landroid/net/wifi/IWifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_b

    .line 900
    const/16 v55, 0x1

    .line 909
    :cond_18
    :goto_12
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIMAX_flag:Z

    if-eqz v2, :cond_4f

    .line 911
    if-eqz v58, :cond_19

    :try_start_a
    invoke-interface/range {v58 .. v58}, Lcom/htc/net/wimax/IWimaxController;->getWimaxState()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4d

    :cond_19
    const/16 v59, 0x1

    .line 913
    :goto_13
    if-nez v59, :cond_1b

    .line 914
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_1a

    .line 915
    const-string v2, "HtcShutdownThread"

    const-string v4, "Disabling Wimax..."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    :cond_1a
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v58

    invoke-interface {v0, v2, v4}, Lcom/htc/net/wimax/IWimaxController;->setWimaxEnabledPersist(ZZ)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_c

    .line 917
    const/16 v60, 0x1

    .line 934
    :cond_1b
    :goto_14
    new-instance v34, Landroid/content/Intent;

    const-string v2, "com.htc.fm.servicecommand"

    move-object/from16 v0, v34

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 935
    .local v34, fmPauseIntent:Landroid/content/Intent;
    const-string v2, "command"

    const-string v4, "stop"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 936
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mContext:Landroid/content/Context;

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 938
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_1c

    .line 939
    const-string v2, "HtcShutdownThread"

    const-string v4, "Waiting for NFC, Bluetooth and Radio..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :cond_1c
    const/16 v35, 0x0

    .local v35, i:I
    :goto_15
    const/16 v2, 0x40

    move/from16 v0, v35

    if-ge v0, v2, :cond_24

    .line 943
    if-nez v21, :cond_1d

    .line 945
    :try_start_b
    invoke-interface/range {v20 .. v20}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_d

    move-result v2

    const/16 v4, 0xa

    if-ne v2, v4, :cond_51

    const/16 v21, 0x1

    .line 952
    :goto_16
    if-eqz v21, :cond_1d

    .line 953
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_1d

    .line 954
    const-string v2, "HtcShutdownThread"

    const-string v4, "Bluetooth turned off."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :cond_1d
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 959
    if-nez v44, :cond_1e

    .line 961
    :try_start_c
    move-object/from16 v0, v40

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isRadioOnExt(I)Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_e

    move-result v2

    if-nez v2, :cond_53

    const/16 v44, 0x1

    .line 967
    :goto_17
    if-eqz v44, :cond_1e

    .line 968
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_1e

    .line 969
    const-string v2, "HtcShutdownThread"

    const-string v4, "GSM radio turned off."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    :cond_1e
    if-nez v42, :cond_1f

    .line 974
    :try_start_d
    move-object/from16 v0, v40

    invoke-interface {v0, v15}, Lcom/android/internal/telephony/ITelephony;->isRadioOnExt(I)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_f

    move-result v2

    if-nez v2, :cond_55

    const/16 v42, 0x1

    .line 980
    :goto_18
    if-eqz v42, :cond_1f

    .line 981
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_1f

    .line 982
    const-string v2, "HtcShutdownThread"

    const-string v4, "CDMA radio turned off."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    :cond_1f
    :goto_19
    if-nez v56, :cond_20

    .line 1034
    :try_start_e
    invoke-interface/range {v53 .. v53}, Landroid/net/wifi/IWifiManager;->getWifiEnabledState()I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_13

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_61

    const/16 v56, 0x1

    .line 1040
    :goto_1a
    if-eqz v56, :cond_20

    .line 1041
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_20

    .line 1042
    const-string v2, "HtcShutdownThread"

    const-string v4, "wifi turned off."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    :cond_20
    if-nez v54, :cond_21

    .line 1048
    :try_start_f
    invoke-interface/range {v53 .. v53}, Landroid/net/wifi/IWifiManager;->getWifiApEnabledState()I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_14

    move-result v2

    const/16 v4, 0xb

    if-ne v2, v4, :cond_63

    const/16 v54, 0x1

    .line 1054
    :goto_1b
    if-eqz v54, :cond_21

    .line 1055
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_21

    .line 1056
    const-string v2, "HtcShutdownThread"

    const-string v4, "wifi ap turned off."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    :cond_21
    if-nez v59, :cond_22

    .line 1062
    :try_start_10
    invoke-interface/range {v58 .. v58}, Lcom/htc/net/wimax/IWimaxController;->getWimaxState()I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_15

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_65

    const/16 v59, 0x1

    .line 1068
    :goto_1c
    if-eqz v59, :cond_22

    .line 1069
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_22

    .line 1070
    const-string v2, "HtcShutdownThread"

    const-string v4, "wimax turned off."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    :cond_22
    if-nez v38, :cond_23

    .line 1076
    :try_start_11
    invoke-interface/range {v37 .. v37}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_16

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_67

    const/16 v38, 0x1

    .line 1082
    :goto_1d
    if-eqz v38, :cond_23

    .line 1083
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_23

    .line 1084
    const-string v2, "HtcShutdownThread"

    const-string v4, "NFC turned off."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :cond_23
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_69

    .line 1090
    if-eqz v44, :cond_6b

    if-eqz v42, :cond_6b

    if-eqz v21, :cond_6b

    if-eqz v56, :cond_6b

    if-eqz v54, :cond_6b

    if-eqz v59, :cond_6b

    if-eqz v38, :cond_6b

    .line 1091
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_24

    .line 1092
    const-string v2, "HtcShutdownThread"

    const-string v4, "NFC, Radio and Bluetooth shutdown complete."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    :cond_24
    :goto_1e
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 1114
    const-string v2, "HtcShutdownThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "radioGsmOff: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", radioCdmaOff: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", bluetoothOff: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", wifiOff: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v56

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", wifiApOff: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v54

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", wimaxOff: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v59

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", nfcOff: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", IsAirplaneMode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    if-eqz v44, :cond_25

    if-eqz v42, :cond_25

    if-eqz v21, :cond_25

    if-eqz v56, :cond_25

    if-eqz v54, :cond_25

    if-nez v59, :cond_26

    .line 1119
    :cond_25
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    if-eqz v2, :cond_26

    .line 1120
    const-string v2, "HtcShutdownThread"

    const-string v4, "Radio off timed out, shutdown power"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    const/4 v2, 0x0

    sput-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    .line 1122
    const-string v2, "sys.shutdown.mode"

    const-string v4, "normal"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    const-string v2, "sys.shutdown.hibernate.mode"

    const-string v4, "0"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    :cond_26
    :goto_1f
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    if-nez v2, :cond_7a

    .line 1162
    if-eqz v37, :cond_27

    :try_start_12
    invoke-interface/range {v37 .. v37}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_71

    :cond_27
    const/16 v38, 0x1

    .line 1164
    :goto_20
    if-nez v38, :cond_29

    .line 1165
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_28

    .line 1166
    const-string v2, "HtcShutdownThread"

    const-string v4, "!mHibernate, Turning off NFC..."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    :cond_28
    const/4 v2, 0x0

    move-object/from16 v0, v37

    invoke-interface {v0, v2}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_17

    .line 1174
    :cond_29
    :goto_21
    const/16 v35, 0x0

    :goto_22
    if-nez v38, :cond_75

    const/16 v2, 0x18

    move/from16 v0, v35

    if-ge v0, v2, :cond_75

    .line 1176
    :try_start_13
    invoke-interface/range {v37 .. v37}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_18

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_73

    const/16 v38, 0x1

    .line 1182
    :goto_23
    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 1174
    add-int/lit8 v35, v35, 0x1

    goto :goto_22

    .line 661
    .end local v5           #br:Landroid/content/BroadcastReceiver;
    .end local v14           #IsAirplaneMode:I
    .end local v18           #alarm:Landroid/app/IAlarmManager;
    .end local v20           #bluetooth:Landroid/bluetooth/IBluetooth;
    .end local v21           #bluetoothOff:Z
    .end local v31           #endTime:J
    .end local v34           #fmPauseIntent:Landroid/content/Intent;
    .end local v35           #i:I
    .end local v36           #mount:Landroid/os/storage/IMountService;
    .end local v37           #nfc:Landroid/nfc/INfcAdapter;
    .end local v40           #phone:Lcom/android/internal/telephony/ITelephony;
    .end local v51           #screenBrightness:I
    .end local v52           #screenBrightnessMode:I
    .end local v53           #wifi:Landroid/net/wifi/IWifiManager;
    .end local v58           #wimax:Lcom/htc/net/wimax/IWimaxController;
    :catch_0
    move-exception v24

    .line 662
    .local v24, e:Ljava/lang/SecurityException;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_2a

    .line 663
    const-string v2, "HtcShutdownThread"

    const-string v4, "No permission to acquire wake lock"

    move-object/from16 v0, v24

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 664
    :cond_2a
    sget-object v2, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/htc/app/HtcShutdownThread;->mShutdownWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_1

    .line 702
    .end local v24           #e:Ljava/lang/SecurityException;
    .restart local v5       #br:Landroid/content/BroadcastReceiver;
    .restart local v18       #alarm:Landroid/app/IAlarmManager;
    :cond_2b
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_2c

    .line 703
    const-string v2, "HtcShutdownThread"

    const-string v4, "Sending shutdown broadcast..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_2c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/app/HtcShutdownThread;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/app/HtcShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v9, v5

    invoke-virtual/range {v6 .. v13}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_3

    .line 720
    .restart local v22       #delay:J
    .restart local v31       #endTime:J
    :cond_2d
    :try_start_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-wide/from16 v0, v22

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_14} :catch_1

    goto/16 :goto_4

    .line 721
    :catch_1
    move-exception v2

    goto/16 :goto_4

    .line 724
    .end local v22           #delay:J
    :catchall_0
    move-exception v2

    :try_start_15
    monitor-exit v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    throw v2

    .line 757
    .restart local v14       #IsAirplaneMode:I
    .restart local v20       #bluetooth:Landroid/bluetooth/IBluetooth;
    .restart local v36       #mount:Landroid/os/storage/IMountService;
    .restart local v37       #nfc:Landroid/nfc/INfcAdapter;
    .restart local v40       #phone:Lcom/android/internal/telephony/ITelephony;
    .restart local v52       #screenBrightnessMode:I
    .restart local v53       #wifi:Landroid/net/wifi/IWifiManager;
    .restart local v58       #wimax:Lcom/htc/net/wimax/IWimaxController;
    :catch_2
    move-exception v24

    .line 758
    .local v24, e:Landroid/provider/Settings$SettingNotFoundException;
    const/16 v51, 0x0

    .restart local v51       #screenBrightness:I
    goto/16 :goto_5

    .line 765
    .end local v24           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_2e
    const-string v2, "sys.shutdown.brightness"

    const-string v4, "0"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 769
    :cond_2f
    const/16 v38, 0x0

    goto/16 :goto_7

    .line 776
    :catch_3
    move-exception v33

    .line 777
    .local v33, ex:Landroid/os/RemoteException;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_30

    .line 778
    const-string v2, "HtcShutdownThread"

    const-string v4, "RemoteException during NFC shutdown"

    move-object/from16 v0, v33

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 779
    :cond_30
    const/16 v38, 0x1

    goto/16 :goto_8

    .line 783
    .end local v33           #ex:Landroid/os/RemoteException;
    :cond_31
    const/16 v21, 0x0

    goto/16 :goto_9

    .line 790
    :catch_4
    move-exception v33

    .line 791
    .restart local v33       #ex:Landroid/os/RemoteException;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_32

    .line 792
    const-string v2, "HtcShutdownThread"

    const-string v4, "RemoteException during bluetooth shutdown"

    move-object/from16 v0, v33

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 793
    :cond_32
    const/16 v21, 0x1

    .restart local v21       #bluetoothOff:Z
    goto/16 :goto_a

    .line 799
    .end local v33           #ex:Landroid/os/RemoteException;
    :cond_33
    const/16 v44, 0x0

    goto/16 :goto_b

    .line 807
    :catch_5
    move-exception v33

    .line 808
    .restart local v33       #ex:Landroid/os/RemoteException;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_34

    .line 809
    const-string v2, "HtcShutdownThread"

    const-string v4, "RemoteException during GSM radio shutdown"

    move-object/from16 v0, v33

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 810
    :cond_34
    const/16 v44, 0x1

    goto/16 :goto_c

    .line 814
    .end local v33           #ex:Landroid/os/RemoteException;
    :cond_35
    const/16 v42, 0x0

    goto/16 :goto_d

    .line 822
    :catch_6
    move-exception v33

    .line 823
    .restart local v33       #ex:Landroid/os/RemoteException;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_36

    .line 824
    const-string v2, "HtcShutdownThread"

    const-string v4, "RemoteException during CDMA radio shutdown"

    move-object/from16 v0, v33

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 825
    :cond_36
    const/16 v42, 0x1

    .line 826
    goto/16 :goto_e

    .line 827
    .end local v33           #ex:Landroid/os/RemoteException;
    :cond_37
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 829
    if-eqz v40, :cond_38

    :try_start_16
    move-object/from16 v0, v40

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isRadioOnExt(I)Z

    move-result v2

    if-nez v2, :cond_40

    :cond_38
    const/16 v44, 0x1

    .line 830
    :goto_24
    if-eqz v40, :cond_3b

    .line 831
    if-nez v14, :cond_39

    .line 832
    const/16 v45, 0x1

    .line 833
    :cond_39
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_3a

    .line 834
    const-string v2, "HtcShutdownThread"

    const-string v4, "Turning off GSM radio..."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :cond_3a
    const/4 v2, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v16

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/ITelephony;->setRadioExt(ZI)Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_8

    .line 844
    :cond_3b
    :goto_25
    if-eqz v40, :cond_3c

    :try_start_17
    move-object/from16 v0, v40

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isRadioOnExt(I)Z

    move-result v2

    if-nez v2, :cond_42

    :cond_3c
    const/16 v47, 0x1

    .line 845
    :goto_26
    if-eqz v40, :cond_12

    .line 846
    if-nez v14, :cond_3d

    .line 847
    const/16 v48, 0x1

    .line 848
    :cond_3d
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_3e

    .line 849
    const-string v2, "HtcShutdownThread"

    const-string v4, "Turning off Sub GSM radio..."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :cond_3e
    const/4 v2, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v17

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/ITelephony;->setRadioExt(ZI)Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_7

    goto/16 :goto_e

    .line 852
    :catch_7
    move-exception v33

    .line 853
    .restart local v33       #ex:Landroid/os/RemoteException;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_3f

    .line 854
    const-string v2, "HtcShutdownThread"

    const-string v4, "RemoteException during Sub GSM radio shutdown"

    move-object/from16 v0, v33

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 855
    :cond_3f
    const/16 v47, 0x1

    .line 856
    goto/16 :goto_e

    .line 829
    .end local v33           #ex:Landroid/os/RemoteException;
    :cond_40
    const/16 v44, 0x0

    goto :goto_24

    .line 837
    :catch_8
    move-exception v33

    .line 838
    .restart local v33       #ex:Landroid/os/RemoteException;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_41

    .line 839
    const-string v2, "HtcShutdownThread"

    const-string v4, "RemoteException during GSM radio shutdown"

    move-object/from16 v0, v33

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 840
    :cond_41
    const/16 v44, 0x1

    goto :goto_25

    .line 844
    .end local v33           #ex:Landroid/os/RemoteException;
    :cond_42
    const/16 v47, 0x0

    goto :goto_26

    .line 860
    :cond_43
    if-eqz v40, :cond_44

    :try_start_18
    invoke-interface/range {v40 .. v40}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v2

    if-nez v2, :cond_48

    :cond_44
    const/16 v46, 0x1

    .line 861
    :goto_27
    if-eqz v40, :cond_12

    .line 862
    if-nez v14, :cond_45

    .line 863
    const/16 v49, 0x1

    .line 864
    :cond_45
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_46

    .line 865
    const-string v2, "HtcShutdownThread"

    const-string v4, "Turning off radio..."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :cond_46
    const/4 v2, 0x0

    move-object/from16 v0, v40

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_9

    goto/16 :goto_e

    .line 868
    :catch_9
    move-exception v33

    .line 869
    .restart local v33       #ex:Landroid/os/RemoteException;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_47

    .line 870
    const-string v2, "HtcShutdownThread"

    const-string v4, "RemoteException during radio shutdown"

    move-object/from16 v0, v33

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 871
    :cond_47
    const/16 v46, 0x1

    .line 872
    sget-object v2, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v2, v2, Lcom/htc/app/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->lowLevelShutdownEFSSync()V

    goto/16 :goto_e

    .line 860
    .end local v33           #ex:Landroid/os/RemoteException;
    :cond_48
    const/16 v46, 0x0

    goto :goto_27

    .line 877
    :cond_49
    const/16 v56, 0x0

    goto/16 :goto_f

    .line 886
    :catch_a
    move-exception v33

    .line 887
    .restart local v33       #ex:Landroid/os/RemoteException;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_4a

    .line 888
    const-string v2, "HtcShutdownThread"

    const-string v4, "RemoteException during wifi shutdown"

    move-object/from16 v0, v33

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 889
    :cond_4a
    const/16 v56, 0x1

    goto/16 :goto_10

    .line 894
    .end local v33           #ex:Landroid/os/RemoteException;
    :cond_4b
    const/16 v54, 0x0

    goto/16 :goto_11

    .line 903
    :catch_b
    move-exception v33

    .line 904
    .restart local v33       #ex:Landroid/os/RemoteException;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_4c

    .line 905
    const-string v2, "HtcShutdownThread"

    const-string v4, "RemoteException during wifi ap shutdown"

    move-object/from16 v0, v33

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 906
    :cond_4c
    const/16 v54, 0x1

    goto/16 :goto_12

    .line 911
    .end local v33           #ex:Landroid/os/RemoteException;
    :cond_4d
    const/16 v59, 0x0

    goto/16 :goto_13

    .line 920
    :catch_c
    move-exception v33

    .line 921
    .restart local v33       #ex:Landroid/os/RemoteException;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_4e

    .line 922
    const-string v2, "HtcShutdownThread"

    const-string v4, "RemoteException during wimax shutdown"

    move-object/from16 v0, v33

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 923
    :cond_4e
    const/16 v59, 0x1

    .line 924
    goto/16 :goto_14

    .line 927
    .end local v33           #ex:Landroid/os/RemoteException;
    :cond_4f
    const/16 v59, 0x1

    goto/16 :goto_14

    .line 930
    :cond_50
    const/16 v54, 0x1

    .line 931
    const/16 v59, 0x1

    goto/16 :goto_14

    .line 945
    .restart local v34       #fmPauseIntent:Landroid/content/Intent;
    .restart local v35       #i:I
    :cond_51
    const/16 v21, 0x0

    goto/16 :goto_16

    .line 947
    :catch_d
    move-exception v33

    .line 948
    .restart local v33       #ex:Landroid/os/RemoteException;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_52

    .line 949
    const-string v2, "HtcShutdownThread"

    const-string v4, "RemoteException during bluetooth shutdown"

    move-object/from16 v0, v33

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 950
    :cond_52
    const/16 v21, 0x1

    goto/16 :goto_16

    .line 961
    .end local v33           #ex:Landroid/os/RemoteException;
    :cond_53
    const/16 v44, 0x0

    goto/16 :goto_17

    .line 962
    :catch_e
    move-exception v33

    .line 963
    .restart local v33       #ex:Landroid/os/RemoteException;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_54

    .line 964
    const-string v2, "HtcShutdownThread"

    const-string v4, "RemoteException during GSM radio shutdown"

    move-object/from16 v0, v33

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 965
    :cond_54
    const/16 v44, 0x1

    goto/16 :goto_17

    .line 974
    .end local v33           #ex:Landroid/os/RemoteException;
    :cond_55
    const/16 v42, 0x0

    goto/16 :goto_18

    .line 975
    :catch_f
    move-exception v33

    .line 976
    .restart local v33       #ex:Landroid/os/RemoteException;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_56

    .line 977
    const-string v2, "HtcShutdownThread"

    const-string v4, "RemoteException during CDMA radio shutdown"

    move-object/from16 v0, v33

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 978
    :cond_56
    const/16 v42, 0x1

    goto/16 :goto_18

    .line 985
    .end local v33           #ex:Landroid/os/RemoteException;
    :cond_57
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 986
    if-nez v44, :cond_58

    .line 988
    :try_start_19
    move-object/from16 v0, v40

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isRadioOnExt(I)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_10

    move-result v2

    if-nez v2, :cond_59

    const/16 v44, 0x1

    .line 994
    :goto_28
    if-eqz v44, :cond_58

    .line 995
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_58

    .line 996
    const-string v2, "HtcShutdownThread"

    const-string v4, "GSM radio turned off."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :cond_58
    if-nez v47, :cond_1f

    .line 1001
    :try_start_1a
    move-object/from16 v0, v40

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isRadioOnExt(I)Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_11

    move-result v2

    if-nez v2, :cond_5b

    const/16 v47, 0x1

    .line 1007
    :goto_29
    if-eqz v47, :cond_1f

    .line 1008
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_1f

    .line 1009
    const-string v2, "HtcShutdownThread"

    const-string v4, "Sub GSM radio turned off."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    .line 988
    :cond_59
    const/16 v44, 0x0

    goto :goto_28

    .line 989
    :catch_10
    move-exception v33

    .line 990
    .restart local v33       #ex:Landroid/os/RemoteException;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_5a

    .line 991
    const-string v2, "HtcShutdownThread"

    const-string v4, "RemoteException during GSM radio shutdown"

    move-object/from16 v0, v33

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 992
    :cond_5a
    const/16 v44, 0x1

    goto :goto_28

    .line 1001
    .end local v33           #ex:Landroid/os/RemoteException;
    :cond_5b
    const/16 v47, 0x0

    goto :goto_29

    .line 1002
    :catch_11
    move-exception v33

    .line 1003
    .restart local v33       #ex:Landroid/os/RemoteException;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_5c

    .line 1004
    const-string v2, "HtcShutdownThread"

    const-string v4, "RemoteException during Sub GSM radio shutdown"

    move-object/from16 v0, v33

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1005
    :cond_5c
    const/16 v47, 0x1

    goto :goto_29

    .line 1014
    .end local v33           #ex:Landroid/os/RemoteException;
    :cond_5d
    if-nez v46, :cond_1f

    .line 1016
    :try_start_1b
    invoke-interface/range {v40 .. v40}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v2

    if-nez v2, :cond_5f

    const/16 v46, 0x1

    .line 1017
    :goto_2a
    if-eqz v46, :cond_5e

    .line 1018
    sget-object v2, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v2, v2, Lcom/htc/app/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->lowLevelShutdownEFSSync()V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_12

    .line 1026
    :cond_5e
    :goto_2b
    if-eqz v46, :cond_1f

    .line 1027
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_1f

    .line 1028
    const-string v2, "HtcShutdownThread"

    const-string v4, "Radio turned off."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    .line 1016
    :cond_5f
    const/16 v46, 0x0

    goto :goto_2a

    .line 1020
    :catch_12
    move-exception v33

    .line 1021
    .restart local v33       #ex:Landroid/os/RemoteException;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_60

    .line 1022
    const-string v2, "HtcShutdownThread"

    const-string v4, "RemoteException during radio shutdown"

    move-object/from16 v0, v33

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1023
    :cond_60
    const/16 v46, 0x1

    .line 1024
    sget-object v2, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v2, v2, Lcom/htc/app/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->lowLevelShutdownEFSSync()V

    goto :goto_2b

    .line 1034
    .end local v33           #ex:Landroid/os/RemoteException;
    :cond_61
    const/16 v56, 0x0

    goto/16 :goto_1a

    .line 1035
    :catch_13
    move-exception v33

    .line 1036
    .restart local v33       #ex:Landroid/os/RemoteException;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_62

    .line 1037
    const-string v2, "HtcShutdownThread"

    const-string v4, "RemoteException during wifi shutdown"

    move-object/from16 v0, v33

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1038
    :cond_62
    const/16 v56, 0x1

    goto/16 :goto_1a

    .line 1048
    .end local v33           #ex:Landroid/os/RemoteException;
    :cond_63
    const/16 v54, 0x0

    goto/16 :goto_1b

    .line 1049
    :catch_14
    move-exception v33

    .line 1050
    .restart local v33       #ex:Landroid/os/RemoteException;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_64

    .line 1051
    const-string v2, "HtcShutdownThread"

    const-string v4, "RemoteException during wifi ap shutdown"

    move-object/from16 v0, v33

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1052
    :cond_64
    const/16 v54, 0x1

    goto/16 :goto_1b

    .line 1062
    .end local v33           #ex:Landroid/os/RemoteException;
    :cond_65
    const/16 v59, 0x0

    goto/16 :goto_1c

    .line 1063
    :catch_15
    move-exception v33

    .line 1064
    .restart local v33       #ex:Landroid/os/RemoteException;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_66

    .line 1065
    const-string v2, "HtcShutdownThread"

    const-string v4, "RemoteException during wimax shutdown"

    move-object/from16 v0, v33

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1066
    :cond_66
    const/16 v59, 0x1

    goto/16 :goto_1c

    .line 1076
    .end local v33           #ex:Landroid/os/RemoteException;
    :cond_67
    const/16 v38, 0x0

    goto/16 :goto_1d

    .line 1077
    :catch_16
    move-exception v33

    .line 1078
    .restart local v33       #ex:Landroid/os/RemoteException;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_68

    .line 1079
    const-string v2, "HtcShutdownThread"

    const-string v4, "RemoteException during NFC shutdown"

    move-object/from16 v0, v33

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1080
    :cond_68
    const/16 v38, 0x1

    goto/16 :goto_1d

    .line 1095
    .end local v33           #ex:Landroid/os/RemoteException;
    :cond_69
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 1096
    if-eqz v44, :cond_6b

    if-eqz v47, :cond_6b

    if-eqz v21, :cond_6b

    if-eqz v56, :cond_6b

    if-eqz v54, :cond_6b

    if-eqz v59, :cond_6b

    if-eqz v38, :cond_6b

    .line 1097
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_24

    .line 1098
    const-string v2, "HtcShutdownThread"

    const-string v4, "NFC, Radio and Bluetooth shutdown complete."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    .line 1103
    :cond_6a
    if-eqz v46, :cond_6b

    if-eqz v21, :cond_6b

    if-eqz v56, :cond_6b

    if-eqz v54, :cond_6b

    if-eqz v59, :cond_6b

    if-eqz v38, :cond_6b

    .line 1104
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_24

    .line 1105
    const-string v2, "HtcShutdownThread"

    const-string v4, "NFC, Radio and Bluetooth shutdown complete."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    .line 1109
    :cond_6b
    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 942
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_15

    .line 1126
    :cond_6c
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 1127
    const-string v2, "HtcShutdownThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "radioGsmOff: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", radioSubGsmOff: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", bluetoothOff: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", wifiOff: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v56

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", wifiApOff: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v54

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", wimaxOff: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v59

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", nfcOff: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", IsAirplaneMode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    if-eqz v44, :cond_6d

    if-eqz v47, :cond_6d

    if-eqz v21, :cond_6d

    if-eqz v56, :cond_6d

    if-eqz v54, :cond_6d

    if-nez v59, :cond_26

    .line 1132
    :cond_6d
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    if-eqz v2, :cond_26

    .line 1133
    const-string v2, "HtcShutdownThread"

    const-string v4, "Radio off timed out, shutdown power"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    const/4 v2, 0x0

    sput-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    .line 1135
    const-string v2, "sys.shutdown.mode"

    const-string v4, "normal"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    const-string v2, "sys.shutdown.hibernate.mode"

    const-string v4, "0"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 1141
    :cond_6e
    const-string v2, "HtcShutdownThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "radioOff: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", bluetoothOff: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", wifiOff: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v56

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", wifiApOff: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v54

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", wimaxOff: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v59

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", nfcOff: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", IsAirplaneMode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    if-eqz v46, :cond_6f

    if-eqz v21, :cond_6f

    if-eqz v56, :cond_6f

    if-eqz v54, :cond_6f

    if-nez v59, :cond_26

    .line 1146
    :cond_6f
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    if-eqz v2, :cond_26

    .line 1147
    const-string v2, "HtcShutdownThread"

    const-string v4, "Radio off timed out, shutdown power"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    const/4 v2, 0x0

    sput-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    .line 1149
    const-string v2, "sys.shutdown.mode"

    const-string v4, "normal"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    const-string v2, "sys.shutdown.hibernate.mode"

    const-string v4, "0"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    if-nez v46, :cond_26

    .line 1152
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_70

    const-string v2, "HtcShutdownThread"

    const-string v4, "Radio off timed out, do efs_sync"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    :cond_70
    sget-object v2, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v2, v2, Lcom/htc/app/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->lowLevelShutdownEFSSync()V

    goto/16 :goto_1f

    .line 1162
    :cond_71
    const/16 v38, 0x0

    goto/16 :goto_20

    .line 1169
    :catch_17
    move-exception v33

    .line 1170
    .restart local v33       #ex:Landroid/os/RemoteException;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_72

    .line 1171
    const-string v2, "HtcShutdownThread"

    const-string v4, "RemoteException during NFC shutdown"

    move-object/from16 v0, v33

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1172
    :cond_72
    const/16 v38, 0x1

    goto/16 :goto_21

    .line 1176
    .end local v33           #ex:Landroid/os/RemoteException;
    :cond_73
    const/16 v38, 0x0

    goto/16 :goto_23

    .line 1177
    :catch_18
    move-exception v33

    .line 1178
    .restart local v33       #ex:Landroid/os/RemoteException;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_74

    .line 1179
    const-string v2, "HtcShutdownThread"

    const-string v4, "RemoteException during NFC shutdown"

    move-object/from16 v0, v33

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1180
    :cond_74
    const/16 v38, 0x1

    goto/16 :goto_23

    .line 1184
    .end local v33           #ex:Landroid/os/RemoteException;
    :cond_75
    if-nez v38, :cond_76

    const-string v2, "HtcShutdownThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot disable NFC, nfcOff = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    :cond_76
    new-instance v39, Lcom/htc/app/HtcShutdownThread$7;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/app/HtcShutdownThread$7;-><init>(Lcom/htc/app/HtcShutdownThread;)V

    .line 1196
    .local v39, observer:Landroid/os/storage/IMountShutdownObserver;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_77

    .line 1197
    const-string v2, "HtcShutdownThread"

    const-string v4, "Shutting down MountService"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    :cond_77
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/app/HtcShutdownThread;->mActionDone:Z

    .line 1201
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x4e20

    add-long v29, v6, v8

    .line 1202
    .local v29, endShutdownTime:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/app/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1204
    if-eqz v36, :cond_97

    .line 1205
    :try_start_1c
    move-object/from16 v0, v36

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_19

    .line 1214
    :cond_78
    :goto_2c
    :try_start_1d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/app/HtcShutdownThread;->mActionDone:Z

    if-nez v2, :cond_79

    .line 1215
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v22, v29, v6

    .line 1216
    .restart local v22       #delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v22, v6

    if-gtz v2, :cond_98

    .line 1217
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_79

    .line 1218
    const-string v2, "HtcShutdownThread"

    const-string v6, "Shutdown wait timed out"

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    .end local v22           #delay:J
    :cond_79
    monitor-exit v4
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    .line 1229
    .end local v29           #endShutdownTime:J
    .end local v39           #observer:Landroid/os/storage/IMountShutdownObserver;
    :cond_7a
    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v19

    .line 1232
    .local v19, am:Landroid/app/IActivityManager;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_7b

    .line 1233
    const-string v2, "HtcShutdownThread"

    const-string v4, "Shutting down activity manager..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    :cond_7b
    if-eqz v19, :cond_7c

    .line 1237
    :try_start_1e
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    if-eqz v2, :cond_99

    .line 1238
    invoke-interface/range {v19 .. v19}, Landroid/app/IActivityManager;->hibernate()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_1b

    .line 1246
    :cond_7c
    :goto_2d
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_7d

    .line 1247
    const-string v2, "HtcShutdownThread"

    const-string v4, "Waiting for shutdown animation complete..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    :cond_7d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x2710

    add-long v25, v6, v8

    .line 1249
    .local v25, endAnimTime:J
    :goto_2e
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->sIsAnimationCompleted:Z

    const/4 v4, 0x1

    if-eq v2, v4, :cond_7e

    .line 1250
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v22, v25, v6

    .line 1251
    .restart local v22       #delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v22, v6

    if-gtz v2, :cond_9a

    .line 1252
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_7e

    .line 1253
    const-string v2, "HtcShutdownThread"

    const-string v4, "Shutdown animation timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    .end local v22           #delay:J
    :cond_7e
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mReboot:Z

    if-eqz v2, :cond_81

    .line 1265
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_7f

    const-string v2, "HtcShutdownThread"

    const-string v4, "reboot, setShutdownState true"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    :cond_7f
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/htc/profileflag/ProfileConfig;->setShutdownState(Z)V

    .line 1269
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_80

    .line 1270
    const-string v2, "HtcShutdownThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rebooting, reason: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Lcom/htc/app/HtcShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    :cond_80
    :try_start_1f
    sget-object v2, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v2, v2, Lcom/htc/app/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    sget-object v4, Lcom/htc/app/HtcShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/os/PowerManager;->lowLevelReboot_system(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_1d

    .line 1293
    :cond_81
    :goto_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_82

    .line 1294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1295
    :cond_82
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_83

    .line 1296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1297
    :cond_83
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v41

    .line 1298
    .local v41, pm:Landroid/os/IPowerManager;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_84

    .line 1299
    const-string v2, "HtcShutdownThread"

    const-string v4, "Cleaning up power manager state..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    :cond_84
    :try_start_20
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    move-object/from16 v0, v41

    invoke-interface {v0, v6, v7}, Landroid/os/IPowerManager;->goToSleep(J)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_20} :catch_1e

    .line 1308
    :cond_85
    :goto_30
    invoke-virtual/range {p0 .. p0}, Lcom/htc/app/HtcShutdownThread;->dismissProgressDialog()V

    .line 1310
    const-string v2, "sys.shutdown.resume.count"

    new-instance v4, Ljava/lang/Integer;

    sget v6, Lcom/htc/app/HtcShutdownThread;->mResumeCount:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/htc/app/HtcShutdownThread;->mResumeCount:I

    invoke-direct {v4, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    if-nez v2, :cond_87

    .line 1314
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_86

    const-string v2, "HtcShutdownThread"

    const-string v4, "power off, setShutdownState true"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    :cond_86
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/htc/profileflag/ProfileConfig;->setShutdownState(Z)V

    .line 1320
    :cond_87
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_88

    .line 1321
    const-string v2, "HtcShutdownThread"

    const-string v4, "Performing low-level shutdown..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    :cond_88
    sget-object v2, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v2, v2, Lcom/htc/app/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v4, 0x2710

    invoke-virtual {v2, v4}, Landroid/os/PowerManager;->lowLevelShutdownEFSSync_wait(I)V

    .line 1324
    invoke-virtual/range {p0 .. p0}, Lcom/htc/app/HtcShutdownThread;->dismissShutdownScreen()V

    .line 1325
    sget-object v2, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v2, v2, Lcom/htc/app/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->lowLevelShutdown_system()V

    .line 1327
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_89

    .line 1328
    const-string v2, "HtcShutdownThread"

    const-string v4, "Back from hibernation state..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    :cond_89
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mShutdownWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_8a

    .line 1331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mShutdownWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1333
    :cond_8a
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    if-eqz v2, :cond_8b

    const-string v2, "sys.shutdown.hibernate.mode"

    const-string v4, "0"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    :cond_8b
    :try_start_21
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, v41

    invoke-interface {v0, v6, v7, v2, v4}, Landroid/os/IPowerManager;->userActivityWithForce(JZZ)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_21} :catch_1f

    .line 1343
    :cond_8c
    :goto_31
    const-string v2, "dev.bootreason"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "rtc_alarm"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    .line 1346
    .local v50, rtc_alarm:Z
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 1347
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_8d

    const-string v2, "HtcShutdownThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "radioGsmWasOn = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", radioCdmaWasOn = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", rtc_alarm = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v50

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    :cond_8d
    if-eqz v45, :cond_8e

    if-nez v50, :cond_8e

    .line 1350
    const/4 v2, 0x1

    :try_start_22
    move-object/from16 v0, v40

    move/from16 v1, v16

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/ITelephony;->setRadioExt(ZI)Z

    .line 1351
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_8e

    .line 1352
    const-string v2, "HtcShutdownThread"

    const-string v4, "GSM Radio restarted"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_22} :catch_20

    .line 1360
    :cond_8e
    :goto_32
    if-eqz v43, :cond_8f

    if-nez v50, :cond_8f

    .line 1362
    const/4 v2, 0x1

    :try_start_23
    move-object/from16 v0, v40

    invoke-interface {v0, v2, v15}, Lcom/android/internal/telephony/ITelephony;->setRadioExt(ZI)Z

    .line 1363
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_8f

    .line 1364
    const-string v2, "HtcShutdownThread"

    const-string v4, "CDMA Radio restarted"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_23} :catch_21

    .line 1412
    :cond_8f
    :goto_33
    if-eqz v57, :cond_90

    .line 1414
    const/4 v2, 0x1

    const/4 v4, 0x0

    :try_start_24
    move-object/from16 v0, v53

    invoke-interface {v0, v2, v4}, Landroid/net/wifi/IWifiManager;->setWifiEnabledPersist(ZZ)Z

    .line 1415
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_90

    .line 1416
    const-string v2, "HtcShutdownThread"

    const-string v4, "Wifi restarted"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_24} :catch_25

    .line 1424
    :cond_90
    :goto_34
    if-eqz v55, :cond_91

    .line 1426
    const/4 v2, 0x0

    const/4 v4, 0x1

    :try_start_25
    move-object/from16 v0, v53

    invoke-interface {v0, v2, v4}, Landroid/net/wifi/IWifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 1427
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_91

    .line 1428
    const-string v2, "HtcShutdownThread"

    const-string v4, "Wifi ap restarted"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_25} :catch_26

    .line 1436
    :cond_91
    :goto_35
    if-eqz v60, :cond_92

    .line 1438
    const/4 v2, 0x1

    :try_start_26
    move-object/from16 v0, v58

    invoke-interface {v0, v2}, Lcom/htc/net/wimax/IWimaxController;->setWimaxEnabled(Z)Z

    .line 1439
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_92

    .line 1440
    const-string v2, "HtcShutdownThread"

    const-string v4, "wimax restarted"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_26} :catch_27

    .line 1448
    :cond_92
    :goto_36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x2710

    add-long v27, v6, v8

    .line 1450
    .local v27, endRestartTime:J
    :cond_93
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v22, v27, v6

    .line 1451
    .restart local v22       #delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v22, v6

    if-gtz v2, :cond_a0

    .line 1452
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_94

    .line 1453
    const-string v2, "HtcShutdownThread"

    const-string v4, "Boot animation timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    :cond_94
    :goto_37
    const-string v2, "sys.shutdown.nowait"

    const-string v4, "0"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "hibernate_nowait"

    const/4 v6, 0x0

    invoke-static {v2, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1468
    const-string v2, "sys.shutdown.mode"

    const-string v4, "normal"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    const-string v2, "sys.shutdown.resume.date"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    const-string v2, "sys.shutdown.resume.timestamp"

    new-instance v4, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    if-eqz v19, :cond_95

    .line 1473
    invoke-interface/range {v19 .. v19}, Landroid/app/IActivityManager;->resumeFromHibernate()V

    .line 1476
    :cond_95
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    if-eqz v2, :cond_96

    .line 1478
    :try_start_27
    invoke-interface/range {v18 .. v18}, Landroid/app/IAlarmManager;->stopHibernate()V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_27} :catch_29

    .line 1483
    :cond_96
    :goto_38
    sget-object v4, Lcom/htc/app/HtcShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v4

    .line 1484
    const/4 v2, 0x0

    :try_start_28
    sput-boolean v2, Lcom/htc/app/HtcShutdownThread;->sIsStarted:Z

    .line 1485
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/app/HtcShutdownThread;->mStarted:Z

    .line 1486
    const/4 v2, 0x0

    sput-object v2, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    .line 1487
    const/4 v2, 0x0

    sput-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    .line 1488
    monitor-exit v4

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_1

    throw v2

    .line 1207
    .end local v19           #am:Landroid/app/IActivityManager;
    .end local v22           #delay:J
    .end local v25           #endAnimTime:J
    .end local v27           #endRestartTime:J
    .end local v41           #pm:Landroid/os/IPowerManager;
    .end local v50           #rtc_alarm:Z
    .restart local v29       #endShutdownTime:J
    .restart local v39       #observer:Landroid/os/storage/IMountShutdownObserver;
    :cond_97
    :try_start_29
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_78

    .line 1208
    const-string v2, "HtcShutdownThread"

    const-string v6, "MountService unavailable for shutdown"

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_19

    goto/16 :goto_2c

    .line 1210
    :catch_19
    move-exception v24

    .line 1211
    .local v24, e:Ljava/lang/Exception;
    :try_start_2a
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_78

    .line 1212
    const-string v2, "HtcShutdownThread"

    const-string v6, "Exception during MountService shutdown"

    move-object/from16 v0, v24

    invoke-static {v2, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2c

    .line 1226
    .end local v24           #e:Ljava/lang/Exception;
    :catchall_2
    move-exception v2

    monitor-exit v4
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_2

    throw v2

    .line 1222
    .restart local v22       #delay:J
    :cond_98
    :try_start_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-wide/from16 v0, v22

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_2b} :catch_1a

    goto/16 :goto_2c

    .line 1223
    :catch_1a
    move-exception v2

    goto/16 :goto_2c

    .line 1241
    .end local v22           #delay:J
    .end local v29           #endShutdownTime:J
    .end local v39           #observer:Landroid/os/storage/IMountShutdownObserver;
    .restart local v19       #am:Landroid/app/IActivityManager;
    :cond_99
    const/16 v2, 0x2710

    :try_start_2c
    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2c} :catch_1b

    goto/16 :goto_2d

    .line 1242
    :catch_1b
    move-exception v2

    goto/16 :goto_2d

    .line 1257
    .restart local v22       #delay:J
    .restart local v25       #endAnimTime:J
    :cond_9a
    :try_start_2d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v6, 0x64

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2d
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_2d} :catch_1c

    goto/16 :goto_2e

    .line 1259
    :catch_1c
    move-exception v2

    goto/16 :goto_2e

    .line 1273
    .end local v22           #delay:J
    :catch_1d
    move-exception v24

    .line 1274
    .restart local v24       #e:Ljava/lang/Exception;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_81

    .line 1275
    const-string v2, "HtcShutdownThread"

    const-string v4, "Reboot failed, will attempt shutdown instead"

    move-object/from16 v0, v24

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2f

    .line 1303
    .end local v24           #e:Ljava/lang/Exception;
    .restart local v41       #pm:Landroid/os/IPowerManager;
    :catch_1e
    move-exception v33

    .line 1304
    .restart local v33       #ex:Landroid/os/RemoteException;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_85

    .line 1305
    const-string v2, "HtcShutdownThread"

    const-string v4, "RemoteException during goToSleep"

    move-object/from16 v0, v33

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_30

    .line 1338
    .end local v33           #ex:Landroid/os/RemoteException;
    :catch_1f
    move-exception v33

    .line 1339
    .restart local v33       #ex:Landroid/os/RemoteException;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_8c

    .line 1340
    const-string v2, "HtcShutdownThread"

    const-string v4, "RemoteException during userActivityWithForce"

    move-object/from16 v0, v33

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_31

    .line 1354
    .end local v33           #ex:Landroid/os/RemoteException;
    .restart local v50       #rtc_alarm:Z
    :catch_20
    move-exception v33

    .line 1355
    .restart local v33       #ex:Landroid/os/RemoteException;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_8e

    .line 1356
    const-string v2, "HtcShutdownThread"

    const-string v4, "RemoteException during GSM radio restart"

    move-object/from16 v0, v33

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_32

    .line 1366
    .end local v33           #ex:Landroid/os/RemoteException;
    :catch_21
    move-exception v33

    .line 1367
    .restart local v33       #ex:Landroid/os/RemoteException;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_8f

    .line 1368
    const-string v2, "HtcShutdownThread"

    const-string v4, "RemoteException during CDMA radio restart"

    move-object/from16 v0, v33

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_33

    .line 1371
    .end local v33           #ex:Landroid/os/RemoteException;
    :cond_9b
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 1372
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_9c

    const-string v2, "HtcShutdownThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "radioGsmWasOn = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", radioSubGsmWasOn = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", rtc_alarm = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v50

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    :cond_9c
    if-eqz v45, :cond_9d

    if-nez v50, :cond_9d

    .line 1375
    const/4 v2, 0x1

    :try_start_2e
    move-object/from16 v0, v40

    move/from16 v1, v16

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/ITelephony;->setRadioExt(ZI)Z

    .line 1376
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_9d

    .line 1377
    const-string v2, "HtcShutdownThread"

    const-string v4, "GSM Radio restarted"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_2e} :catch_23

    .line 1385
    :cond_9d
    :goto_39
    if-eqz v48, :cond_8f

    if-nez v50, :cond_8f

    .line 1387
    const/4 v2, 0x1

    :try_start_2f
    move-object/from16 v0, v40

    move/from16 v1, v17

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/ITelephony;->setRadioExt(ZI)Z

    .line 1388
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_8f

    .line 1389
    const-string v2, "HtcShutdownThread"

    const-string v4, "Sub GSM Radio restarted"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_2f} :catch_22

    goto/16 :goto_33

    .line 1391
    :catch_22
    move-exception v33

    .line 1392
    .restart local v33       #ex:Landroid/os/RemoteException;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_8f

    .line 1393
    const-string v2, "HtcShutdownThread"

    const-string v4, "RemoteException during Sub GSM radio restart"

    move-object/from16 v0, v33

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_33

    .line 1379
    .end local v33           #ex:Landroid/os/RemoteException;
    :catch_23
    move-exception v33

    .line 1380
    .restart local v33       #ex:Landroid/os/RemoteException;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_9d

    .line 1381
    const-string v2, "HtcShutdownThread"

    const-string v4, "RemoteException during GSM radio restart"

    move-object/from16 v0, v33

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_39

    .line 1398
    .end local v33           #ex:Landroid/os/RemoteException;
    :cond_9e
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_9f

    const-string v2, "HtcShutdownThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "radioWasOn = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", rtc_alarm = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v50

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    :cond_9f
    if-eqz v49, :cond_8f

    if-nez v50, :cond_8f

    .line 1401
    const/4 v2, 0x1

    :try_start_30
    move-object/from16 v0, v40

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z

    .line 1402
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_8f

    .line 1403
    const-string v2, "HtcShutdownThread"

    const-string v4, "Radio restarted"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_30} :catch_24

    goto/16 :goto_33

    .line 1405
    :catch_24
    move-exception v33

    .line 1406
    .restart local v33       #ex:Landroid/os/RemoteException;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_8f

    .line 1407
    const-string v2, "HtcShutdownThread"

    const-string v4, "RemoteException during radio restart"

    move-object/from16 v0, v33

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_33

    .line 1418
    .end local v33           #ex:Landroid/os/RemoteException;
    :catch_25
    move-exception v33

    .line 1419
    .restart local v33       #ex:Landroid/os/RemoteException;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_90

    .line 1420
    const-string v2, "HtcShutdownThread"

    const-string v4, "RemoteException during wifi restart"

    move-object/from16 v0, v33

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_34

    .line 1430
    .end local v33           #ex:Landroid/os/RemoteException;
    :catch_26
    move-exception v33

    .line 1431
    .restart local v33       #ex:Landroid/os/RemoteException;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_91

    .line 1432
    const-string v2, "HtcShutdownThread"

    const-string v4, "RemoteException during wifi restart"

    move-object/from16 v0, v33

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_35

    .line 1442
    .end local v33           #ex:Landroid/os/RemoteException;
    :catch_27
    move-exception v33

    .line 1443
    .restart local v33       #ex:Landroid/os/RemoteException;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_92

    .line 1444
    const-string v2, "HtcShutdownThread"

    const-string v4, "RemoteException during wifi restart"

    move-object/from16 v0, v33

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_36

    .line 1456
    .end local v33           #ex:Landroid/os/RemoteException;
    .restart local v22       #delay:J
    .restart local v27       #endRestartTime:J
    :cond_a0
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_a1

    .line 1457
    const-string v2, "HtcShutdownThread"

    const-string v4, "init.svc.bootanim"

    const-string v6, "stopped"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    :cond_a1
    :try_start_31
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v6, 0x64

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_31
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_31} :catch_2a

    .line 1463
    :goto_3a
    const-string v2, "init.svc.bootanim"

    const-string v4, "stopped"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "stopped"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    goto/16 :goto_37

    .line 688
    .end local v14           #IsAirplaneMode:I
    .end local v19           #am:Landroid/app/IActivityManager;
    .end local v20           #bluetooth:Landroid/bluetooth/IBluetooth;
    .end local v21           #bluetoothOff:Z
    .end local v22           #delay:J
    .end local v25           #endAnimTime:J
    .end local v27           #endRestartTime:J
    .end local v31           #endTime:J
    .end local v34           #fmPauseIntent:Landroid/content/Intent;
    .end local v35           #i:I
    .end local v36           #mount:Landroid/os/storage/IMountService;
    .end local v37           #nfc:Landroid/nfc/INfcAdapter;
    .end local v40           #phone:Lcom/android/internal/telephony/ITelephony;
    .end local v41           #pm:Landroid/os/IPowerManager;
    .end local v50           #rtc_alarm:Z
    .end local v51           #screenBrightness:I
    .end local v52           #screenBrightnessMode:I
    .end local v53           #wifi:Landroid/net/wifi/IWifiManager;
    .end local v58           #wimax:Lcom/htc/net/wimax/IWimaxController;
    :catch_28
    move-exception v2

    goto/16 :goto_2

    .line 1479
    .restart local v14       #IsAirplaneMode:I
    .restart local v19       #am:Landroid/app/IActivityManager;
    .restart local v20       #bluetooth:Landroid/bluetooth/IBluetooth;
    .restart local v21       #bluetoothOff:Z
    .restart local v22       #delay:J
    .restart local v25       #endAnimTime:J
    .restart local v27       #endRestartTime:J
    .restart local v31       #endTime:J
    .restart local v34       #fmPauseIntent:Landroid/content/Intent;
    .restart local v35       #i:I
    .restart local v36       #mount:Landroid/os/storage/IMountService;
    .restart local v37       #nfc:Landroid/nfc/INfcAdapter;
    .restart local v40       #phone:Lcom/android/internal/telephony/ITelephony;
    .restart local v41       #pm:Landroid/os/IPowerManager;
    .restart local v50       #rtc_alarm:Z
    .restart local v51       #screenBrightness:I
    .restart local v52       #screenBrightnessMode:I
    .restart local v53       #wifi:Landroid/net/wifi/IWifiManager;
    .restart local v58       #wimax:Lcom/htc/net/wimax/IWimaxController;
    :catch_29
    move-exception v2

    goto/16 :goto_38

    .line 1461
    :catch_2a
    move-exception v2

    goto :goto_3a
.end method
