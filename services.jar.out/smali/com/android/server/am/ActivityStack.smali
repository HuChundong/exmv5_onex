.class final Lcom/android/server/am/ActivityStack;
.super Ljava/lang/Object;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;,
        Lcom/android/server/am/ActivityStack$ActivityState;
    }
.end annotation


# static fields
.field static final ACTIVITY_INACTIVE_RESET_TIME:J = 0x0L

.field static final DEBUG_ADD_REMOVE:Z = false

.field static final DEBUG_CONFIGURATION:Z = false

#the value of this static final field might be set in the static constructor
.field static final DEBUG_NAV_BAR:Z = false

.field static final DEBUG_PAUSE:Z = false

.field static final DEBUG_RESULTS:Z = false

.field static final DEBUG_SAVED_STATE:Z = false

.field static final DEBUG_STARTING_WINDOW:Z = false

.field static final DEBUG_STATES:Z = false

.field static final DEBUG_SWITCH:Z = false

.field static final DEBUG_TASKS:Z = false

.field static final DEBUG_TRANSITION:Z = false

.field static final DEBUG_USER_LEAVING:Z = false

.field static final DEBUG_VISBILITY:Z = false

.field static final DELAY_COLLAPSE_STATUSBAR:I = 0x1e

.field static final DESTROY_ACTIVITIES_MSG:I = 0x6d

.field static final DESTROY_TIMEOUT:I = 0x2710

.field static final DESTROY_TIMEOUT_MSG:I = 0x69

.field private static final DISABLE_GC_HEAP_THRESHOLD:I = 0x1800000

.field private static final FINISH_AFTER_PAUSE:I = 0x1

.field private static final FINISH_AFTER_VISIBLE:I = 0x2

.field private static final FINISH_IMMEDIATELY:I = 0x0

#the value of this static final field might be set in the static constructor
.field static final HTC_RECENT_APP_FUSION:Z = false

.field static final IDLE_NOW_MSG:I = 0x67

.field static final IDLE_TIMEOUT:I = 0x2710

.field static final IDLE_TIMEOUT_MSG:I = 0x66

.field static final INTENT_NOTIFY_ENTER_HOME:Landroid/content/Intent; = null

.field static final LAUNCH_TICK:I = 0x1f4

.field static final LAUNCH_TICK_MSG:I = 0x6b

.field static final LAUNCH_TIMEOUT:I = 0x2710

.field static final LAUNCH_TIMEOUT_MSG:I = 0x68

.field private static final MAX_DISABLE_GC_TIMEOUT:I = 0x1388

.field static final PAUSE_TIMEOUT:I = 0x1f4

.field static final PAUSE_TIMEOUT_MSG:I = 0x65

.field static final RESUME_TOP_ACTIVITY_MSG:I = 0x6a

#the value of this static final field might be set in the static constructor
.field static final SHOW_APP_STARTING_PREVIEW:Z = false

.field static final SLEEP_TIMEOUT:I = 0x1388

.field static final SLEEP_TIMEOUT_MSG:I = 0x64

.field static final START_WARN_TIME:J = 0x1388L

.field static final STOP_TIMEOUT:I = 0x2710

.field static final STOP_TIMEOUT_MSG:I = 0x6c

.field static final TAG:Ljava/lang/String; = "ActivityManager"

.field static final VALIDATE_TOKENS:Z

.field static final isWVGA:Z

.field static final localLOGV:Z

.field static final mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

.field private static mDuringLaunchActivity:Z

.field private static mLaunchActivityLock:Ljava/lang/Object;

.field private static sEnableGCRunnable:Ljava/lang/Runnable;


# instance fields
.field private DO_HOME_ANIM_TIMEOUT:I

.field ghostScreenIntentFlag:I

.field isCategoryHome:Z

.field private lastTimeDoHtcAnim:J

.field private final mCPUStopRunnable:Ljava/lang/Runnable;

.field mConfigWillChange:Z

.field final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field mDismissKeyguardOnNextActivity:Z

.field final mFinishingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mGoingToSleep:Landroid/os/PowerManager$WakeLock;

.field final mGoingToSleepActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Landroid/os/Handler;

.field final mHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mInitialStartTime:J

.field final mLRUActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

.field mLastStartedActivity:Lcom/android/server/am/ActivityRecord;

.field final mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

.field final mMainStack:Z

.field final mNoAnimActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mNotClearThumbnail:Z

.field mPausingActivity:Lcom/android/server/am/ActivityRecord;

.field mPreviousActivity:Lcom/android/server/am/ActivityRecord;

.field mResumedActivity:Lcom/android/server/am/ActivityRecord;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field mSleepTimeout:Z

.field final mStoppingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mThumbnailHeight:I

.field mThumbnailWidth:I

.field mUserLeaving:Z

.field final mValidateAppTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field final mWaitingActivityLaunched:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/IActivityManager$WaitResult;",
            ">;"
        }
    .end annotation
.end field

.field final mWaitingActivityVisible:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/IActivityManager$WaitResult;",
            ">;"
        }
    .end annotation
.end field

.field final mWaitingVisibleActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private rosiePkgName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 112
    const-string v0, "debug_nav_bar"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityStack;->DEBUG_NAV_BAR:Z

    .line 116
    const-string v0, "4.0a"

    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Extra_Sense_Version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityStack;->isWVGA:Z

    .line 122
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->HTC_RECENT_APP_FUSION:Z

    sput-boolean v0, Lcom/android/server/am/ActivityStack;->HTC_RECENT_APP_FUSION:Z

    .line 162
    const-string v0, "show_starting_window"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityStack;->SHOW_APP_STARTING_PREVIEW:Z

    .line 166
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.NOTIFY_ENTER_HOME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/ActivityStack;->INTENT_NOTIFY_ENTER_HOME:Landroid/content/Intent;

    .line 348
    new-instance v0, Lcom/android/internal/app/ActivityTrigger;

    invoke-direct {v0}, Lcom/android/internal/app/ActivityTrigger;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    .line 5236
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityStack;->mLaunchActivityLock:Ljava/lang/Object;

    .line 5237
    sput-boolean v2, Lcom/android/server/am/ActivityStack;->mDuringLaunchActivity:Z

    .line 5300
    new-instance v0, Lcom/android/server/am/ActivityStack$4;

    invoke-direct {v0}, Lcom/android/server/am/ActivityStack$4;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityStack;->sEnableGCRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Z)V
    .locals 7
    .parameter "service"
    .parameter "context"
    .parameter "mainStack"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 475
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    .line 194
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    .line 201
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    .line 208
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    .line 216
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    .line 222
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    .line 229
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    .line 237
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    .line 243
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    .line 249
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityVisible:Ljava/util/ArrayList;

    .line 271
    iput-object v4, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 278
    iput-object v4, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 283
    iput-object v4, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 290
    iput-object v4, p0, Lcom/android/server/am/ActivityStack;->mLastStartedActivity:Lcom/android/server/am/ActivityRecord;

    .line 302
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mUserLeaving:Z

    .line 304
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    .line 309
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mSleepTimeout:Z

    .line 314
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 316
    iput v5, p0, Lcom/android/server/am/ActivityStack;->mThumbnailWidth:I

    .line 317
    iput v5, p0, Lcom/android/server/am/ActivityStack;->mThumbnailHeight:I

    .line 352
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStack;->isCategoryHome:Z

    .line 356
    iput v3, p0, Lcom/android/server/am/ActivityStack;->ghostScreenIntentFlag:I

    .line 361
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mNotClearThumbnail:Z

    .line 364
    new-instance v1, Lcom/android/server/am/ActivityStack$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActivityStack$1;-><init>(Lcom/android/server/am/ActivityStack;)V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    .line 5245
    new-instance v1, Lcom/android/server/am/ActivityStack$3;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActivityStack$3;-><init>(Lcom/android/server/am/ActivityStack;)V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mCPUStopRunnable:Ljava/lang/Runnable;

    .line 5322
    iput-object v4, p0, Lcom/android/server/am/ActivityStack;->mPreviousActivity:Lcom/android/server/am/ActivityRecord;

    .line 5328
    const-string v1, "com.htc.launcher"

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->rosiePkgName:Ljava/lang/String;

    .line 5329
    const/16 v1, 0x320

    iput v1, p0, Lcom/android/server/am/ActivityStack;->DO_HOME_ANIM_TIMEOUT:I

    .line 476
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 477
    iput-object p2, p0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    .line 478
    iput-boolean p3, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    .line 479
    const-string v1, "power"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 481
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "ActivityManager-Sleep"

    invoke-virtual {v0, v6, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    .line 482
    const-string v1, "ActivityManager-Launch"

    invoke-virtual {v0, v6, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    .line 483
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 484
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ActivityStack;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->collapseStatusBar(Landroid/content/Context;)V

    return-void
.end method

.method private collapseStatusBar(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 1515
    const-string v1, "statusbar"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 1516
    .local v0, sb:Landroid/app/StatusBarManager;
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 1517
    return-void
.end method

.method private final completePauseLocked()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1293
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1296
    .local v3, prev:Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_0

    .line 1300
    iput-boolean v7, v3, Lcom/android/server/am/ActivityRecord;->bCollapseStatusBarAfterResume:Z

    .line 1303
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_5

    .line 1305
    const/4 v5, 0x2

    invoke-direct {p0, v3, v5}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 1338
    :goto_0
    iput-object v8, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1341
    :cond_0
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v5

    if-nez v5, :cond_a

    .line 1342
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 1353
    :cond_1
    :goto_1
    if-eqz v3, :cond_4

    .line 1354
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 1356
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_3

    iget-wide v5, v3, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    cmp-long v5, v5, v11

    if-lez v5, :cond_3

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v5}, Lcom/android/server/am/BatteryStatsService;->isOnBattery()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1358
    const-wide/16 v1, 0x0

    .line 1359
    .local v1, diff:J
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStatsThread:Ljava/lang/Thread;

    monitor-enter v6

    .line 1360
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v5, v7}, Lcom/android/internal/os/ProcessStats;->getCpuTimeForPid(I)J

    move-result-wide v7

    iget-wide v9, v3, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    sub-long v1, v7, v9

    .line 1362
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1363
    cmp-long v5, v1, v11

    if-lez v5, :cond_3

    .line 1364
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v5}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    .line 1365
    .local v0, bsi:Lcom/android/internal/os/BatteryStatsImpl;
    monitor-enter v0

    .line 1366
    :try_start_1
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl;->getProcessStatsLocked(ILjava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v4

    .line 1369
    .local v4, ps:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v4, :cond_2

    .line 1370
    invoke-virtual {v4, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addForegroundTimeLocked(J)V

    .line 1372
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1375
    .end local v0           #bsi:Lcom/android/internal/os/BatteryStatsImpl;
    .end local v1           #diff:J
    .end local v4           #ps:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :cond_3
    iput-wide v11, v3, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    .line 1378
    :cond_4
    return-void

    .line 1306
    :cond_5
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_9

    .line 1308
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v5, :cond_6

    .line 1309
    iput-boolean v7, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 1310
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1314
    :cond_6
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-eqz v5, :cond_7

    .line 1321
    const/4 v5, 0x1

    const-string v6, "pause-config"

    invoke-virtual {p0, v3, v5, v7, v6}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    goto :goto_0

    .line 1323
    :cond_7
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1324
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_8

    .line 1329
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->scheduleIdleLocked()V

    goto/16 :goto_0

    .line 1331
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V

    goto/16 :goto_0

    .line 1336
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1344
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V

    .line 1345
    invoke-virtual {p0, v8}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1348
    invoke-virtual {p0, v8}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto/16 :goto_1

    .line 1362
    .restart local v1       #diff:J
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 1372
    .restart local v0       #bsi:Lcom/android/internal/os/BatteryStatsImpl;
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5
.end method

.method private final completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 11
    .parameter "next"

    .prologue
    const/16 v10, 0x1e

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1386
    iput-boolean v9, p1, Lcom/android/server/am/ActivityRecord;->idle:Z

    .line 1387
    iput-object v8, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 1388
    iput-object v8, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 1392
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->isIntentFromStatusBar()Z

    move-result v0

    .line 1396
    .local v0, bIntentFromStatusBar:Z
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x66

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1397
    .local v4, msg:Landroid/os/Message;
    iput-object p1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1398
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x2710

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1410
    iget-boolean v5, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v5, :cond_0

    .line 1411
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, p1}, Lcom/android/server/am/ActivityManagerService;->reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1429
    :cond_0
    sget-boolean v5, Lcom/android/server/am/ActivityStack;->HTC_RECENT_APP_FUSION:Z

    if-eqz v5, :cond_4

    .line 1439
    :goto_0
    iget-boolean v5, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v5, :cond_1

    .line 1440
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, p1}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1442
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 1443
    invoke-virtual {p0, v8, v9}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 1447
    if-eqz v0, :cond_3

    .line 1448
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_2

    .line 1449
    const-string v5, "ActivityManager"

    const-string v6, "[GhostScreen][completeResumeLocked] disable animation"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    :cond_2
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/android/server/am/ActivityStack;->disableAppTransitionAnim(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 1453
    iget v5, p0, Lcom/android/server/am/ActivityStack;->ghostScreenIntentFlag:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_3

    .line 1454
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileStatusbarCollapseDelayForWifidisplayOnly()I

    move-result v2

    .line 1455
    .local v2, delayTime:I
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[GhostScreen][completeResumeLocked] trigger statusbar collapse delay: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1457
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    int-to-long v7, v2

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1462
    .end local v2           #delayTime:I
    :cond_3
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 1463
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1466
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->finishLaunchActivity()V

    .line 1470
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->resetSkipStartingWindowOnNextActivityLocked()V

    .line 1473
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    sget-object v5, Lcom/android/server/am/ActivityManagerService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 1474
    .local v1, cb:Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    new-instance v5, Lcom/android/server/am/HtcWrapActivityRecord;

    invoke-direct {v5, p1}, Lcom/android/server/am/HtcWrapActivityRecord;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onHandleActivityResumed(Lcom/android/server/am/HtcWrapActivityRecord;)V

    goto :goto_1

    .line 1433
    .end local v1           #cb:Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->clearThumbnail()V

    goto/16 :goto_0

    .line 1481
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_5
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_6

    .line 1482
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStatsThread:Ljava/lang/Thread;

    monitor-enter v6

    .line 1483
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v5, v7}, Lcom/android/internal/os/ProcessStats;->getCpuTimeForPid(I)J

    move-result-wide v7

    iput-wide v7, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    .line 1484
    monitor-exit v6

    .line 1488
    :goto_2
    return-void

    .line 1484
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1486
    :cond_6
    const-wide/16 v5, 0x0

    iput-wide v5, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    goto :goto_2
.end method

.method static debugStartingWindow()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5333
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    const-string v1, "debug_starting_window"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private disableAppTransitionAnim(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 2
    .parameter "token"
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 1511
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2, v1, v1}, Lcom/android/server/am/ActivityManagerService;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 1512
    return-void
.end method

.method private final findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;I)I
    .locals 4
    .parameter "r"
    .parameter "task"

    .prologue
    .line 2834
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2835
    .local v1, i:I
    :cond_0
    if-lez v1, :cond_1

    .line 2836
    add-int/lit8 v1, v1, -0x1

    .line 2837
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 2838
    .local v0, candidate:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_0

    .line 2841
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v2, p2, :cond_2

    .line 2849
    .end local v0           #candidate:Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v2, -0x1

    :goto_0
    return v2

    .line 2844
    .restart local v0       #candidate:Lcom/android/server/am/ActivityRecord;
    :cond_2
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    .line 2845
    goto :goto_0
.end method

.method private findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;
    .locals 7
    .parameter "intent"
    .parameter "info"

    .prologue
    .line 609
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 610
    .local v1, cls:Landroid/content/ComponentName;
    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 611
    new-instance v1, Landroid/content/ComponentName;

    .end local v1           #cls:Landroid/content/ComponentName;
    iget-object v5, p2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    .restart local v1       #cls:Landroid/content/ComponentName;
    :cond_0
    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserId;->getUserId(I)I

    move-result v4

    .line 615
    .local v4, userId:I
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 616
    .local v0, N:I
    add-int/lit8 v2, v0, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_2

    .line 617
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 618
    .local v3, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_1

    .line 619
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v5, v4, :cond_1

    .line 628
    .end local v3           #r:Lcom/android/server/am/ActivityRecord;
    :goto_1
    return-object v3

    .line 616
    .restart local v3       #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 628
    .end local v3           #r:Lcom/android/server/am/ActivityRecord;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private findTaskLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;
    .locals 8
    .parameter "intent"
    .parameter "info"

    .prologue
    .line 562
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 563
    .local v1, cls:Landroid/content/ComponentName;
    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 564
    new-instance v1, Landroid/content/ComponentName;

    .end local v1           #cls:Landroid/content/ComponentName;
    iget-object v6, p2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    .restart local v1       #cls:Landroid/content/ComponentName;
    :cond_0
    const/4 v2, 0x0

    .line 569
    .local v2, cp:Lcom/android/server/am/TaskRecord;
    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserId;->getUserId(I)I

    move-result v5

    .line 570
    .local v5, userId:I
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 571
    .local v0, N:I
    add-int/lit8 v3, v0, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_5

    .line 572
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 573
    .local v4, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v6, :cond_4

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v6, v2, :cond_4

    iget v6, v4, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v6, v5, :cond_4

    iget v6, v4, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_4

    .line 575
    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 579
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 580
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 600
    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    :goto_1
    return-object v4

    .line 584
    .restart local v4       #r:Lcom/android/server/am/ActivityRecord;
    :cond_2
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v6, :cond_3

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 590
    :cond_3
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v6, :cond_4

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 571
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 600
    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private final finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    .locals 2
    .parameter "r"
    .parameter "mode"

    .prologue
    .line 4371
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfActivityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v0

    .line 4372
    .local v0, index:I
    if-gez v0, :cond_0

    .line 4373
    const/4 v1, 0x0

    .line 4376
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;II)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    goto :goto_0
.end method

.method private final finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;II)Lcom/android/server/am/ActivityRecord;
    .locals 5
    .parameter "r"
    .parameter "index"
    .parameter "mode"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 4384
    const/4 v3, 0x2

    if-ne p3, v3, :cond_3

    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v3, :cond_3

    .line 4385
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4386
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4387
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_2

    .line 4391
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->scheduleIdleLocked()V

    .line 4398
    :cond_0
    :goto_0
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v2, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 4399
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 4431
    .end local p1
    :cond_1
    :goto_1
    return-object p1

    .line 4393
    .restart local p1
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V

    goto :goto_0

    .line 4404
    :cond_3
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4405
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4406
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4407
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, p1, :cond_4

    .line 4408
    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 4410
    :cond_4
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 4412
    .local v1, prevState:Lcom/android/server/am/ActivityStack$ActivityState;
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->FINISHING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 4414
    if-eqz p3, :cond_5

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v1, v3, :cond_5

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v1, v3, :cond_7

    .line 4419
    :cond_5
    const-string v3, "finish-imm"

    invoke-virtual {p0, p1, v4, v4, v3}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    move-result v0

    .line 4420
    .local v0, activityRemoved:Z
    if-eqz v0, :cond_6

    .line 4421
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 4423
    :cond_6
    if-eqz v0, :cond_1

    move-object p1, v2

    goto :goto_1

    .line 4428
    .end local v0           #activityRemoved:Z
    :cond_7
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4429
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto :goto_1
.end method

.method private final finishTaskMoveLocked(I)V
    .locals 1
    .parameter "task"

    .prologue
    .line 4833
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 4834
    return-void
.end method

.method private isIntentFromStatusBar()Z
    .locals 4

    .prologue
    .line 1493
    const/4 v0, 0x0

    .line 1496
    .local v0, result:Z
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    .line 1497
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GhostScreen][isIntentFromStatusBar] ghostScreenIntentFlag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/ActivityStack;->ghostScreenIntentFlag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    :cond_0
    iget v1, p0, Lcom/android/server/am/ActivityStack;->ghostScreenIntentFlag:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 1505
    const/4 v0, 0x1

    .line 1507
    :cond_1
    return v0
.end method

.method private logCaller(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .parameter "targetRecord"
    .parameter "sourceRecord"
    .parameter "callerApp"

    .prologue
    .line 3090
    if-nez p2, :cond_1

    .line 3092
    if-eqz p3, :cond_0

    iget-object v0, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    .line 3093
    iget-object v0, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/htc/utils/usage/ActivityCallerRecord;->writeUsageLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3107
    :cond_0
    :goto_0
    return-void

    .line 3100
    :cond_1
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 3101
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/htc/utils/usage/ActivityCallerRecord;->writeUsageLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V
    .locals 6
    .parameter "tag"
    .parameter "r"
    .parameter "task"

    .prologue
    .line 5032
    const/4 v2, 0x0

    .line 5033
    .local v2, strData:Ljava/lang/String;
    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 5034
    .local v0, data:Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 5035
    const-string v2, "null"

    .line 5042
    :goto_0
    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p3, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    aput-object v2, v3, v4

    const/4 v4, 0x6

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p1, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5048
    return-void

    .line 5039
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 5040
    .local v1, scheme:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_1

    .end local v1           #scheme:Ljava/lang/String;
    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":???"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .restart local v1       #scheme:Ljava/lang/String;
    :cond_1
    const-string v1, "null"

    goto :goto_1
.end method

.method private final moveActivityToFrontLocked(I)Lcom/android/server/am/ActivityRecord;
    .locals 5
    .parameter "where"

    .prologue
    .line 2857
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 2858
    .local v0, newTop:Lcom/android/server/am/ActivityRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2859
    .local v2, top:I
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 2866
    .local v1, oldTop:Lcom/android/server/am/ActivityRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2867
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 2868
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 2869
    return-object v0
.end method

.method private final performClearTaskAtIndexLocked(II)V
    .locals 6
    .parameter "taskId"
    .parameter "i"

    .prologue
    .line 2781
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 2782
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 2783
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v0, p1, :cond_2

    .line 2796
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    return-void

    .line 2787
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    :cond_2
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_3

    .line 2788
    add-int/lit8 p2, p2, 0x1

    .line 2789
    goto :goto_0

    .line 2791
    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "clear"

    move-object v0, p0

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2793
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method private final performClearTaskLocked(ILcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    .locals 11
    .parameter "taskId"
    .parameter "newR"
    .parameter "launchFlags"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2714
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2717
    .local v2, i:I
    :cond_0
    if-lez v2, :cond_1

    .line 2718
    add-int/lit8 v2, v2, -0x1

    .line 2719
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 2720
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v0, p1, :cond_0

    .line 2721
    add-int/lit8 v2, v2, 0x1

    .line 2727
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    if-lez v2, :cond_2

    .line 2728
    add-int/lit8 v2, v2, -0x1

    .line 2729
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 2730
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_1

    .line 2733
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v0, p1, :cond_3

    .line 2773
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_2
    :goto_0
    return-object v4

    .line 2736
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    :cond_3
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2738
    move-object v6, v1

    .line 2739
    .local v6, ret:Lcom/android/server/am/ActivityRecord;
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_5

    .line 2740
    add-int/lit8 v2, v2, 0x1

    .line 2741
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 2742
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v0, p1, :cond_6

    .line 2757
    :cond_5
    iget v0, v6, Lcom/android/server/am/ActivityRecord;->launchMode:I

    if-nez v0, :cond_7

    const/high16 v0, 0x2000

    and-int/2addr v0, p3

    if-nez v0, :cond_7

    .line 2759
    iget-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_7

    .line 2760
    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v7

    .line 2761
    .local v7, index:I
    if-ltz v7, :cond_2

    .line 2762
    const-string v10, "clear"

    move-object v5, p0

    move v8, v3

    move-object v9, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    goto :goto_0

    .line 2745
    .end local v7           #index:I
    :cond_6
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_4

    .line 2748
    const-string v5, "clear"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2750
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_7
    move-object v4, v6

    .line 2769
    goto :goto_0
.end method

.method private final performClearTaskLocked(I)V
    .locals 3
    .parameter "taskId"

    .prologue
    .line 2802
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2805
    .local v0, i:I
    :cond_0
    if-lez v0, :cond_1

    .line 2806
    add-int/lit8 v0, v0, -0x1

    .line 2807
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 2808
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v2, p1, :cond_0

    .line 2809
    add-int/lit8 v0, v0, 0x1

    .line 2815
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    if-lez v0, :cond_2

    .line 2816
    add-int/lit8 v0, v0, -0x1

    .line 2817
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 2818
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_1

    .line 2821
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v2, p1, :cond_1

    .line 2823
    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/server/am/ActivityStack;->performClearTaskAtIndexLocked(II)V

    .line 2827
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_2
    return-void
.end method

.method private final relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z
    .locals 9
    .parameter "r"
    .parameter "changes"
    .parameter "andResume"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 5191
    const/4 v2, 0x0

    .line 5192
    .local v2, results:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/4 v3, 0x0

    .line 5193
    .local v3, newIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    if-eqz p3, :cond_0

    .line 5194
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 5195
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 5200
    :cond_0
    if-eqz p3, :cond_3

    const/16 v0, 0x7543

    :goto_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v5

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v7

    const/4 v4, 0x2

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v6, v1, v4

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5204
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v0, v5}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 5210
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 5211
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-nez p3, :cond_1

    move v5, v7

    :cond_1
    new-instance v6, Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v6, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move v4, p2

    invoke-interface/range {v0 .. v6}, Landroid/app/IApplicationThread;->scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5220
    :goto_1
    if-eqz p3, :cond_4

    .line 5221
    iput-object v8, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 5222
    iput-object v8, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 5223
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v0, :cond_2

    .line 5224
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 5226
    :cond_2
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 5232
    :goto_2
    return v7

    .line 5200
    :cond_3
    const/16 v0, 0x7544

    goto :goto_0

    .line 5228
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 5229
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    goto :goto_2

    .line 5216
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V
    .locals 3
    .parameter "list"
    .parameter "app"

    .prologue
    .line 4702
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4706
    .local v0, i:I
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 4707
    add-int/lit8 v0, v0, -0x1

    .line 4708
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4711
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v2, p2, :cond_0

    .line 4713
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4714
    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0

    .line 4717
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    return-void
.end method

.method private removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 4491
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4492
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4493
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4494
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4495
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    .line 4496
    return-void
.end method

.method private final resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 26
    .parameter "taskTop"
    .parameter "newActivity"

    .prologue
    .line 2395
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    const/16 v18, 0x1

    .line 2405
    .local v18, forceReset:Z
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v24, v0

    .line 2410
    .local v24, task:Lcom/android/server/am/TaskRecord;
    const/16 v22, 0x0

    .line 2411
    .local v22, target:Lcom/android/server/am/ActivityRecord;
    const/16 v23, 0x0

    .line 2412
    .local v23, targetI:I
    const/16 v25, -0x1

    .line 2413
    .local v25, taskTopI:I
    const/16 v21, -0x1

    .line 2414
    .local v21, replyChainEnd:I
    const/16 v20, -0x1

    .line 2415
    .local v20, lastReparentPos:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v19, v2, -0x1

    .local v19, i:I
    :goto_1
    const/4 v2, -0x1

    move/from16 v0, v19

    if-lt v0, v2, :cond_3

    .line 2416
    if-ltz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    move-object v12, v2

    .line 2418
    .local v12, below:Lcom/android/server/am/ActivityRecord;
    :goto_2
    if-eqz v12, :cond_2

    iget-boolean v2, v12, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_2

    .line 2415
    :goto_3
    add-int/lit8 v19, v19, -0x1

    goto :goto_1

    .line 2395
    .end local v12           #below:Lcom/android/server/am/ActivityRecord;
    .end local v18           #forceReset:Z
    .end local v19           #i:I
    .end local v20           #lastReparentPos:I
    .end local v21           #replyChainEnd:I
    .end local v22           #target:Lcom/android/server/am/ActivityRecord;
    .end local v23           #targetI:I
    .end local v24           #task:Lcom/android/server/am/TaskRecord;
    .end local v25           #taskTopI:I
    :cond_0
    const/16 v18, 0x0

    goto :goto_0

    .line 2416
    .restart local v18       #forceReset:Z
    .restart local v19       #i:I
    .restart local v20       #lastReparentPos:I
    .restart local v21       #replyChainEnd:I
    .restart local v22       #target:Lcom/android/server/am/ActivityRecord;
    .restart local v23       #targetI:I
    .restart local v24       #task:Lcom/android/server/am/TaskRecord;
    .restart local v25       #taskTopI:I
    :cond_1
    const/4 v12, 0x0

    goto :goto_2

    .line 2422
    .restart local v12       #below:Lcom/android/server/am/ActivityRecord;
    :cond_2
    if-eqz v12, :cond_4

    iget v2, v12, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    if-eq v2, v5, :cond_4

    .line 2698
    .end local v12           #below:Lcom/android/server/am/ActivityRecord;
    :cond_3
    return-object p1

    .line 2425
    .restart local v12       #below:Lcom/android/server/am/ActivityRecord;
    :cond_4
    if-nez v22, :cond_5

    .line 2426
    move-object/from16 v22, v12

    .line 2427
    move/from16 v23, v19

    .line 2431
    const/16 v21, -0x1

    .line 2432
    goto :goto_3

    .line 2435
    :cond_5
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v2, Landroid/content/pm/ActivityInfo;->flags:I

    move/from16 v17, v0

    .line 2437
    .local v17, flags:I
    and-int/lit8 v2, v17, 0x2

    if-eqz v2, :cond_8

    const/16 v16, 0x1

    .line 2439
    .local v16, finishOnTaskLaunch:Z
    :goto_4
    and-int/lit8 v2, v17, 0x40

    if-eqz v2, :cond_9

    const/4 v11, 0x1

    .line 2442
    .local v11, allowTaskReparenting:Z
    :goto_5
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v24

    if-ne v2, v0, :cond_1f

    .line 2448
    if-gez v25, :cond_6

    .line 2449
    move/from16 v25, v23

    .line 2451
    :cond_6
    if-eqz v12, :cond_1e

    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v24

    if-ne v2, v0, :cond_1e

    .line 2452
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v5, 0x8

    and-int/2addr v2, v5

    if-eqz v2, :cond_a

    const/4 v13, 0x1

    .line 2455
    .local v13, clearWhenTaskReset:Z
    :goto_6
    if-nez v16, :cond_b

    if-nez v13, :cond_b

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_b

    .line 2462
    if-gez v21, :cond_7

    .line 2463
    move/from16 v21, v23

    .line 2694
    .end local v13           #clearWhenTaskReset:Z
    :cond_7
    :goto_7
    move-object/from16 v22, v12

    .line 2695
    move/from16 v23, v19

    goto :goto_3

    .line 2437
    .end local v11           #allowTaskReparenting:Z
    .end local v16           #finishOnTaskLaunch:Z
    :cond_8
    const/16 v16, 0x0

    goto :goto_4

    .line 2439
    .restart local v16       #finishOnTaskLaunch:Z
    :cond_9
    const/4 v11, 0x0

    goto :goto_5

    .line 2452
    .restart local v11       #allowTaskReparenting:Z
    :cond_a
    const/4 v13, 0x0

    goto :goto_6

    .line 2465
    .restart local v13       #clearWhenTaskReset:Z
    :cond_b
    if-nez v16, :cond_13

    if-nez v13, :cond_13

    if-eqz v11, :cond_13

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v2, :cond_13

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 2474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2475
    .local v3, p:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v2, :cond_d

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2480
    iget-object v2, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v5, v6}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    .line 2494
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v24

    iget v6, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v5, v6}, Lcom/android/server/wm/WindowManagerService;->setAppGroupId(Landroid/os/IBinder;I)V

    .line 2495
    if-gez v21, :cond_c

    .line 2496
    move/from16 v21, v23

    .line 2498
    :cond_c
    const/4 v15, 0x0

    .line 2499
    .local v15, dstPos:I
    move-object/from16 v0, v22

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    .line 2500
    .local v14, curThumbHolder:Lcom/android/server/am/ThumbnailHolder;
    move/from16 v4, v23

    .local v4, srcPos:I
    :goto_9
    move/from16 v0, v21

    if-gt v4, v0, :cond_10

    .line 2501
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #p:Lcom/android/server/am/ActivityRecord;
    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2502
    .restart local v3       #p:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_f

    .line 2500
    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 2484
    .end local v4           #srcPos:I
    .end local v14           #curThumbHolder:Lcom/android/server/am/ThumbnailHolder;
    .end local v15           #dstPos:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v2, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v2, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    .line 2485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v2, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    if-gtz v2, :cond_e

    .line 2486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x1

    iput v5, v2, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    .line 2488
    :cond_e
    new-instance v2, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v5, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 v8, 0x0

    invoke-direct {v2, v5, v6, v8}, Lcom/android/server/am/TaskRecord;-><init>(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v5, v6}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    .line 2490
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v5, v2, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    goto :goto_8

    .line 2507
    .restart local v4       #srcPos:I
    .restart local v14       #curThumbHolder:Lcom/android/server/am/ThumbnailHolder;
    .restart local v15       #dstPos:I
    :cond_f
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v14, v5}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    .line 2508
    iget-object v14, v3, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    .line 2515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v15, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2517
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v2, v15, v5}, Lcom/android/server/wm/WindowManagerService;->moveAppToken(ILandroid/os/IBinder;)V

    .line 2518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v5, v6}, Lcom/android/server/wm/WindowManagerService;->setAppGroupId(Landroid/os/IBinder;I)V

    .line 2519
    add-int/lit8 v15, v15, 0x1

    .line 2523
    add-int/lit8 v19, v19, 0x1

    goto :goto_a

    .line 2525
    :cond_10
    move-object/from16 v0, p1

    if-ne v0, v3, :cond_11

    .line 2526
    move-object/from16 p1, v12

    .line 2528
    :cond_11
    move/from16 v0, v25

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    .line 2529
    const/16 v25, -0x1

    .line 2531
    :cond_12
    const/16 v21, -0x1

    .line 2532
    goto/16 :goto_7

    .end local v3           #p:Lcom/android/server/am/ActivityRecord;
    .end local v4           #srcPos:I
    .end local v14           #curThumbHolder:Lcom/android/server/am/ThumbnailHolder;
    .end local v15           #dstPos:I
    :cond_13
    if-nez v18, :cond_14

    if-nez v16, :cond_14

    if-eqz v13, :cond_1d

    .line 2538
    :cond_14
    if-eqz v13, :cond_18

    .line 2542
    add-int/lit8 v21, v23, 0x1

    .line 2545
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v24

    if-ne v2, v0, :cond_15

    .line 2546
    add-int/lit8 v21, v21, 0x1

    goto :goto_b

    .line 2548
    :cond_15
    add-int/lit8 v21, v21, -0x1

    .line 2552
    :cond_16
    :goto_c
    const/4 v3, 0x0

    .line 2553
    .restart local v3       #p:Lcom/android/server/am/ActivityRecord;
    move/from16 v4, v23

    .restart local v4       #srcPos:I
    :goto_d
    move/from16 v0, v21

    if-gt v4, v0, :cond_1a

    .line 2554
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #p:Lcom/android/server/am/ActivityRecord;
    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2555
    .restart local v3       #p:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_19

    .line 2553
    :cond_17
    :goto_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 2549
    .end local v3           #p:Lcom/android/server/am/ActivityRecord;
    .end local v4           #srcPos:I
    :cond_18
    if-gez v21, :cond_16

    .line 2550
    move/from16 v21, v23

    goto :goto_c

    .line 2558
    .restart local v3       #p:Lcom/android/server/am/ActivityRecord;
    .restart local v4       #srcPos:I
    :cond_19
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "reset"

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2560
    add-int/lit8 v21, v21, -0x1

    .line 2561
    add-int/lit8 v4, v4, -0x1

    goto :goto_e

    .line 2564
    :cond_1a
    move-object/from16 v0, p1

    if-ne v0, v3, :cond_1b

    .line 2565
    move-object/from16 p1, v12

    .line 2567
    :cond_1b
    move/from16 v0, v25

    move/from16 v1, v21

    if-ne v0, v1, :cond_1c

    .line 2568
    const/16 v25, -0x1

    .line 2570
    :cond_1c
    const/16 v21, -0x1

    .line 2571
    goto/16 :goto_7

    .line 2575
    .end local v3           #p:Lcom/android/server/am/ActivityRecord;
    .end local v4           #srcPos:I
    :cond_1d
    const/16 v21, -0x1

    goto/16 :goto_7

    .line 2580
    .end local v13           #clearWhenTaskReset:Z
    :cond_1e
    const/16 v21, -0x1

    goto/16 :goto_7

    .line 2583
    :cond_1f
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_21

    if-eqz v12, :cond_20

    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v2, v5, :cond_21

    .line 2591
    :cond_20
    if-gez v21, :cond_7

    .line 2592
    move/from16 v21, v23

    goto/16 :goto_7

    .line 2595
    :cond_21
    if-ltz v25, :cond_2e

    if-eqz v11, :cond_2e

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v2, :cond_2e

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 2609
    if-nez v18, :cond_22

    if-eqz v16, :cond_27

    .line 2610
    :cond_22
    if-gez v21, :cond_23

    .line 2611
    move/from16 v21, v23

    .line 2613
    :cond_23
    const/4 v3, 0x0

    .line 2616
    .restart local v3       #p:Lcom/android/server/am/ActivityRecord;
    move/from16 v4, v23

    .restart local v4       #srcPos:I
    :goto_f
    move/from16 v0, v21

    if-gt v4, v0, :cond_26

    .line 2617
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #p:Lcom/android/server/am/ActivityRecord;
    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2618
    .restart local v3       #p:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_25

    .line 2616
    :cond_24
    :goto_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 2621
    :cond_25
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "reset"

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2623
    add-int/lit8 v25, v25, -0x1

    .line 2624
    add-int/lit8 v20, v20, -0x1

    .line 2625
    add-int/lit8 v21, v21, -0x1

    .line 2626
    add-int/lit8 v4, v4, -0x1

    goto :goto_10

    .line 2629
    :cond_26
    const/16 v21, -0x1

    .line 2630
    goto/16 :goto_7

    .line 2631
    .end local v3           #p:Lcom/android/server/am/ActivityRecord;
    .end local v4           #srcPos:I
    :cond_27
    if-gez v21, :cond_28

    .line 2632
    move/from16 v21, v23

    .line 2636
    :cond_28
    move/from16 v4, v21

    .restart local v4       #srcPos:I
    :goto_11
    move/from16 v0, v23

    if-lt v4, v0, :cond_2b

    .line 2637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2638
    .restart local v3       #p:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_29

    .line 2636
    :goto_12
    add-int/lit8 v4, v4, -0x1

    goto :goto_11

    .line 2641
    :cond_29
    if-gez v20, :cond_2a

    .line 2642
    move/from16 v20, v25

    .line 2643
    move-object/from16 p1, v3

    .line 2653
    :goto_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2654
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v3, v0, v2, v5}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    .line 2655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2659
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move/from16 v0, v20

    invoke-virtual {v2, v0, v5}, Lcom/android/server/wm/WindowManagerService;->moveAppToken(ILandroid/os/IBinder;)V

    .line 2660
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v5, v6}, Lcom/android/server/wm/WindowManagerService;->setAppGroupId(Landroid/os/IBinder;I)V

    goto :goto_12

    .line 2645
    :cond_2a
    add-int/lit8 v20, v20, -0x1

    goto :goto_13

    .line 2665
    .end local v3           #p:Lcom/android/server/am/ActivityRecord;
    :cond_2b
    const/16 v21, -0x1

    .line 2671
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_7

    .line 2672
    add-int/lit8 v7, v20, -0x1

    .local v7, j:I
    :goto_14
    if-ltz v7, :cond_7

    .line 2673
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2674
    .restart local v3       #p:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_2d

    .line 2672
    :cond_2c
    :goto_15
    add-int/lit8 v7, v7, -0x1

    goto :goto_14

    .line 2677
    :cond_2d
    iget-object v2, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 2678
    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "replace"

    move-object/from16 v5, p0

    move-object v6, v3

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 2680
    add-int/lit8 v25, v25, -0x1

    .line 2681
    add-int/lit8 v20, v20, -0x1

    goto :goto_15

    .line 2688
    .end local v3           #p:Lcom/android/server/am/ActivityRecord;
    .end local v4           #srcPos:I
    .end local v7           #j:I
    :cond_2e
    if-eqz v12, :cond_7

    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v2, v5, :cond_7

    .line 2691
    const/16 v21, -0x1

    goto/16 :goto_7
.end method

.method private final startActivityLocked(Lcom/android/server/am/ActivityRecord;ZZZLandroid/os/Bundle;)V
    .locals 26
    .parameter "r"
    .parameter "newTask"
    .parameter "doResume"
    .parameter "keepCurTransition"
    .parameter "options"

    .prologue
    .line 2181
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 2183
    .local v17, NH:I
    const/4 v4, -0x1

    .line 2185
    .local v4, addPos:I
    if-nez p2, :cond_4

    .line 2187
    const/16 v25, 0x1

    .line 2188
    .local v25, startIt:Z
    add-int/lit8 v20, v17, -0x1

    .local v20, i:I
    :goto_0
    if-ltz v20, :cond_4

    .line 2189
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/am/ActivityRecord;

    .line 2190
    .local v21, p:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v21

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_1

    .line 2188
    :cond_0
    :goto_1
    add-int/lit8 v20, v20, -0x1

    goto :goto_0

    .line 2193
    :cond_1
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, v5, :cond_3

    .line 2197
    add-int/lit8 v4, v20, 0x1

    .line 2198
    if-nez v25, :cond_4

    .line 2205
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2206
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->putInHistory()V

    .line 2207
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, p1

    iget-boolean v8, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIZ)V

    .line 2212
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2378
    .end local v20           #i:I
    .end local v21           #p:Lcom/android/server/am/ActivityRecord;
    .end local v25           #startIt:Z
    :cond_2
    :goto_2
    return-void

    .line 2217
    .restart local v20       #i:I
    .restart local v21       #p:Lcom/android/server/am/ActivityRecord;
    .restart local v25       #startIt:Z
    :cond_3
    move-object/from16 v0, v21

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v3, :cond_0

    .line 2218
    const/16 v25, 0x0

    goto :goto_1

    .line 2225
    .end local v20           #i:I
    .end local v21           #p:Lcom/android/server/am/ActivityRecord;
    .end local v25           #startIt:Z
    :cond_4
    if-gez v4, :cond_5

    .line 2226
    move/from16 v4, v17

    .line 2232
    :cond_5
    move/from16 v0, v17

    if-ge v4, v0, :cond_6

    .line 2233
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mUserLeaving:Z

    .line 2243
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2244
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->putInHistory()V

    .line 2245
    move/from16 v0, p2

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 2246
    if-lez v17, :cond_1b

    .line 2250
    move/from16 v15, p2

    .line 2251
    .local v15, showStartingIcon:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v24, v0

    .line 2252
    .local v24, proc:Lcom/android/server/am/ProcessRecord;
    if-nez v24, :cond_7

    .line 2253
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/server/ProcessMap;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v5, v6}, Lcom/android/server/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v24

    .end local v24           #proc:Lcom/android/server/am/ProcessRecord;
    check-cast v24, Lcom/android/server/am/ProcessRecord;

    .line 2255
    .restart local v24       #proc:Lcom/android/server/am/ProcessRecord;
    :cond_7
    if-eqz v24, :cond_8

    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v3, :cond_9

    .line 2256
    :cond_8
    const/4 v15, 0x1

    .line 2260
    :cond_9
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v5, 0x1

    and-int/2addr v3, v5

    if-eqz v3, :cond_11

    .line 2261
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x0

    move/from16 v0, p4

    invoke-virtual {v3, v5, v0}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2263
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2283
    :goto_3
    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/os/Bundle;)V

    .line 2284
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, p1

    iget-boolean v8, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIZ)V

    .line 2286
    const/16 v18, 0x1

    .line 2287
    .local v18, doShow:Z
    if-eqz p2, :cond_a

    .line 2293
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v5, 0x20

    and-int/2addr v3, v5

    if-eqz v3, :cond_a

    .line 2295
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    .line 2296
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    move-object/from16 v0, p1

    if-ne v3, v0, :cond_14

    const/16 v18, 0x1

    .line 2301
    :cond_a
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->showStartingWindow()Z

    move-result v3

    if-eqz v3, :cond_1a

    sget-boolean v3, Lcom/android/server/am/ActivityStack;->SHOW_APP_STARTING_PREVIEW:Z

    if-eqz v3, :cond_1a

    if-eqz v18, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->isSkipStartingWindowOnNextActivityLocked()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 2305
    invoke-static {}, Lcom/android/server/am/ActivityStack;->debugStartingWindow()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2306
    const-string v3, "ActivityManager"

    const-string v5, "Show starting window"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v22, v0

    .line 2316
    .local v22, prev:Lcom/android/server/am/ActivityRecord;
    const/16 v16, 0x0

    .line 2317
    .local v16, prevBitmap:Landroid/graphics/Bitmap;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.android.systemui/.recent.RecentAppFxActivity"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2319
    const/16 v23, 0x0

    .line 2320
    .local v23, prevEFR:Z
    if-eqz v22, :cond_16

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v3, :cond_16

    .line 2321
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v3, v3, Lcom/android/server/am/TaskRecord;->visible:Z

    if-nez v3, :cond_15

    const/16 v23, 0x1

    .line 2333
    :cond_c
    :goto_5
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_d

    .line 2334
    const-string v3, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "For recentAppFxActivity: prev: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is exclude from recent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowManagerService;->prepareRecentAppTransitionAnimation(Z)V

    .line 2339
    if-eqz v22, :cond_e

    if-nez v23, :cond_e

    .line 2341
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 2346
    .end local v23           #prevEFR:Z
    :cond_e
    if-eqz v22, :cond_f

    .line 2349
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v3, v5, :cond_18

    const/16 v22, 0x0

    .line 2353
    :cond_f
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v9}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    if-eqz v22, :cond_19

    move-object/from16 v0, v22

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_7
    invoke-virtual/range {v5 .. v16}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIILandroid/os/IBinder;ZLandroid/graphics/Bitmap;)V

    .line 2375
    .end local v15           #showStartingIcon:Z
    .end local v16           #prevBitmap:Landroid/graphics/Bitmap;
    .end local v18           #doShow:Z
    .end local v22           #prev:Lcom/android/server/am/ActivityRecord;
    .end local v24           #proc:Lcom/android/server/am/ProcessRecord;
    :cond_10
    :goto_8
    if-eqz p3, :cond_2

    .line 2376
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto/16 :goto_2

    .line 2266
    .restart local v15       #showStartingIcon:Z
    .restart local v24       #proc:Lcom/android/server/am/ProcessRecord;
    :cond_11
    const-string v3, "do_home_anim_only"

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2267
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->rosiePkgName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2270
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/server/am/ActivityStack;->lastTimeDoHtcAnim:J

    .line 2278
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz p2, :cond_13

    const/16 v3, 0x1008

    :goto_9
    move/from16 v0, p4

    invoke-virtual {v5, v3, v0}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2281
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2278
    :cond_13
    const/16 v3, 0x1006

    goto :goto_9

    .line 2296
    .restart local v18       #doShow:Z
    :cond_14
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 2321
    .restart local v16       #prevBitmap:Landroid/graphics/Bitmap;
    .restart local v22       #prev:Lcom/android/server/am/ActivityRecord;
    .restart local v23       #prevEFR:Z
    :cond_15
    const/16 v23, 0x0

    goto/16 :goto_5

    .line 2324
    :cond_16
    :try_start_0
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v5, 0x80

    and-int/2addr v3, v5

    if-eqz v3, :cond_17

    const/16 v23, 0x1

    .line 2325
    :goto_a
    if-nez v23, :cond_c

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 2326
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    const-string v5, "android.intent.category.HOME"

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v23

    goto/16 :goto_5

    .line 2324
    :cond_17
    const/16 v23, 0x0

    goto :goto_a

    .line 2328
    :catch_0
    move-exception v19

    .line 2329
    .local v19, e:Ljava/lang/RuntimeException;
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_c

    .line 2330
    const-string v3, "ActivityManager"

    const-string v5, "For recentAppFxActivity: unable to identify exclude from recent..."

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2351
    .end local v19           #e:Ljava/lang/RuntimeException;
    .end local v23           #prevEFR:Z
    :cond_18
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v3, :cond_f

    const/16 v22, 0x0

    goto/16 :goto_6

    .line 2353
    :cond_19
    const/4 v14, 0x0

    goto/16 :goto_7

    .line 2360
    .end local v16           #prevBitmap:Landroid/graphics/Bitmap;
    .end local v22           #prev:Lcom/android/server/am/ActivityRecord;
    :cond_1a
    invoke-static {}, Lcom/android/server/am/ActivityStack;->debugStartingWindow()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2361
    const-string v3, "ActivityManager"

    const-string v5, "Show no starting window"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 2367
    .end local v15           #showStartingIcon:Z
    .end local v18           #doShow:Z
    .end local v24           #proc:Lcom/android/server/am/ProcessRecord;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, p1

    iget-boolean v8, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIZ)V

    .line 2369
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto/16 :goto_8
.end method

.method private startLaunchActivity(Landroid/content/pm/ActivityInfo;)V
    .locals 12
    .parameter "aInfo"

    .prologue
    .line 5257
    const/4 v8, 0x1

    sput-boolean v8, Lcom/android/server/am/ActivityStack;->mDuringLaunchActivity:Z

    .line 5258
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/server/am/ActivityStack;->enableGC(Z)V

    .line 5261
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileMulticoreSwitch()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 5264
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 5265
    .local v4, origId:J
    const-string v8, "CpuWake"

    const-string v9, ">>nativeAcquireCpuPerfWakeLock()"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5266
    invoke-static {}, Lcom/android/server/PowerManagerService;->nativeAcquireCpuPerfWakeLock()V

    .line 5267
    const-string v8, "CpuWake"

    const-string v9, "<<nativeAcquireCpuPerfWakeLock()"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5268
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5271
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileMulticoreTimeout()I

    move-result v7

    .line 5272
    .local v7, time:I
    sget-boolean v8, Lcom/android/server/am/ActivityManagerService;->isSense40a:Z

    if-nez v8, :cond_1

    .line 5274
    :try_start_0
    sget-object v0, Lcom/android/server/am/ActivityManagerService;->sPrevTopApp:Lcom/android/server/am/ProcessRecord;

    .line 5275
    .local v0, app:Lcom/android/server/am/ProcessRecord;
    if-nez v0, :cond_3

    const-string v1, ""

    .line 5276
    .local v1, currentProcess:Ljava/lang/String;
    :goto_0
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v8, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    .line 5277
    if-nez v0, :cond_4

    const-string v3, ""

    .line 5278
    .local v3, homeProcess:Ljava/lang/String;
    :goto_1
    iget-object v8, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 5279
    .local v6, targetProcess:Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_1

    .line 5280
    :cond_0
    const/16 v7, 0x3e8

    .line 5285
    .end local v0           #app:Lcom/android/server/am/ProcessRecord;
    .end local v1           #currentProcess:Ljava/lang/String;
    .end local v3           #homeProcess:Ljava/lang/String;
    .end local v6           #targetProcess:Ljava/lang/String;
    :cond_1
    :goto_2
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mCPUStopRunnable:Ljava/lang/Runnable;

    int-to-long v10, v7

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5288
    .end local v4           #origId:J
    .end local v7           #time:I
    :cond_2
    return-void

    .line 5275
    .restart local v0       #app:Lcom/android/server/am/ProcessRecord;
    .restart local v4       #origId:J
    .restart local v7       #time:I
    :cond_3
    :try_start_1
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto :goto_0

    .line 5277
    .restart local v1       #currentProcess:Ljava/lang/String;
    :cond_4
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 5281
    .end local v0           #app:Lcom/android/server/am/ProcessRecord;
    .end local v1           #currentProcess:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 5282
    .local v2, e:Ljava/lang/Exception;
    const-string v8, "ActivityManager"

    const-string v9, "startLaunchActivity get appname failed"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private final startPausingLocked(ZZ)V
    .locals 10
    .parameter "userLeaving"
    .parameter "uiSleeping"

    .prologue
    const/16 v9, 0x68

    const/4 v8, 0x0

    .line 1077
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_0

    .line 1078
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 1079
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trying to pause when pause is already pending for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1082
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1083
    .local v3, prev:Lcom/android/server/am/ActivityRecord;
    if-nez v3, :cond_1

    .line 1084
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 1085
    .restart local v0       #e:Ljava/lang/RuntimeException;
    const-string v4, "ActivityManager"

    const-string v5, "Trying to pause when nothing is resumed"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1086
    invoke-virtual {p0, v8}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 1167
    .end local v0           #e:Ljava/lang/RuntimeException;
    :goto_0
    return-void

    .line 1090
    :cond_1
    sget-boolean v4, Lcom/android/server/am/PerformanceLogUtilAm;->Enabled:Z

    if-eqz v4, :cond_2

    .line 1091
    invoke-virtual {p0, v8}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 1092
    .local v2, next:Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_2

    .line 1093
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, v2}, Lcom/android/server/am/PerformanceLogUtilAm;->logActivityStackStartPausingLocked(Landroid/content/Context;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 1099
    .end local v2           #next:Lcom/android/server/am/ActivityRecord;
    :cond_2
    iput-object v8, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1100
    iput-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1101
    iput-object v3, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1102
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v4, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1103
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 1104
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4, v8}, Lcom/android/server/am/ActivityRecord;->updateThumbnail(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 1106
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 1108
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_6

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_6

    .line 1111
    const/16 v4, 0x753d

    const/4 v5, 0x2

    :try_start_0
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1114
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    iget v7, v3, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-interface {v4, v5, v6, p1, v7}, Landroid/app/IApplicationThread;->schedulePauseActivity(Landroid/os/IBinder;ZZI)V

    .line 1116
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v4, :cond_3

    .line 1117
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1132
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v4, :cond_4

    .line 1133
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1134
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1136
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1137
    .local v1, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x2710

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1142
    .end local v1           #msg:Landroid/os/Message;
    :cond_4
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_7

    .line 1147
    if-nez p2, :cond_5

    .line 1148
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->pauseKeyDispatchingLocked()V

    .line 1156
    :cond_5
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x65

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1157
    .restart local v1       #msg:Landroid/os/Message;
    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1158
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/am/ActivityRecord;->pauseTime:J

    .line 1159
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x1f4

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1119
    .end local v1           #msg:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 1121
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "ActivityManager"

    const-string v5, "Exception thrown during pause"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1122
    iput-object v8, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1123
    iput-object v8, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_1

    .line 1126
    .end local v0           #e:Ljava/lang/Exception;
    :cond_6
    iput-object v8, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1127
    iput-object v8, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_1

    .line 1165
    :cond_7
    invoke-virtual {p0, v8}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto/16 :goto_0
.end method

.method private final startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .locals 11
    .parameter "r"
    .parameter "andResume"
    .parameter "checkConfig"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 901
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v9

    .line 904
    .local v9, app:Lcom/android/server/am/ProcessRecord;
    iget-wide v0, p1, Lcom/android/server/am/ActivityRecord;->launchTime:J

    cmp-long v0, v0, v5

    if-nez v0, :cond_1

    .line 905
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/ActivityRecord;->launchTime:J

    .line 906
    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    cmp-long v0, v0, v5

    if-nez v0, :cond_0

    .line 907
    iget-wide v0, p1, Lcom/android/server/am/ActivityRecord;->launchTime:J

    iput-wide v0, p0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    .line 913
    :cond_0
    :goto_0
    if-eqz v9, :cond_2

    iget-object v0, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_2

    iget-boolean v0, v9, Lcom/android/server/am/ProcessRecord;->killedBackground:Z

    if-nez v0, :cond_2

    .line 915
    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;)Z

    .line 916
    invoke-virtual {p0, p1, v9, p2, p3}, Lcom/android/server/am/ActivityStack;->realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    :goto_1
    return-void

    .line 909
    :cond_1
    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    cmp-long v0, v0, v5

    if-nez v0, :cond_0

    .line 910
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    goto :goto_0

    .line 918
    :catch_0
    move-exception v10

    .line 919
    .local v10, e:Landroid/os/RemoteException;
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception when starting activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 929
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x1

    const-string v5, "activity"

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    move v7, v4

    move v8, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZ)Lcom/android/server/am/ProcessRecord;

    goto :goto_1
.end method

.method private final stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 8
    .parameter "r"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3925
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x4000

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    .line 3927
    :cond_0
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_1

    .line 3928
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v2, :cond_1

    .line 3932
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const-string v3, "no-history"

    invoke-virtual {p0, v2, v6, v4, v3}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;)Z

    .line 3941
    :cond_1
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_5

    .line 3942
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_2

    .line 3943
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v2, p1, :cond_2

    .line 3944
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 3947
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 3949
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 3952
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v2, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3955
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v2, :cond_3

    .line 3956
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 3958
    :cond_3
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    iget v5, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-interface {v2, v3, v4, v5}, Landroid/app/IApplicationThread;->scheduleStopActivity(Landroid/os/IBinder;ZI)V

    .line 3959
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3960
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    .line 3962
    :cond_4
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3963
    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3964
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3979
    .end local v1           #msg:Landroid/os/Message;
    :cond_5
    :goto_0
    return-void

    .line 3965
    :catch_0
    move-exception v0

    .line 3969
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ActivityManager"

    const-string v3, "Exception thrown during pause"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3971
    iput-boolean v7, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 3973
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v2, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3974
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-eqz v2, :cond_5

    .line 3975
    const-string v2, "stop-except"

    invoke-virtual {p0, p1, v7, v6, v2}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    goto :goto_0
.end method

.method private final updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 2
    .parameter "r"

    .prologue
    .line 552
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 553
    .local v0, hadit:Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    return v0
.end method


# virtual methods
.method final activityDestroyed(Landroid/os/IBinder;)V
    .locals 7
    .parameter "token"

    .prologue
    .line 4679
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 4680
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v1

    .line 4682
    .local v1, origId:J
    :try_start_1
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 4683
    .local v3, r:Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_0

    .line 4684
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x69

    invoke-virtual {v4, v6, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4687
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->indexOfActivityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v0

    .line 4688
    .local v0, index:I
    if-ltz v0, :cond_1

    .line 4689
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v6, :cond_1

    .line 4690
    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v4, v6}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 4691
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4694
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4696
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4698
    monitor-exit v5

    .line 4699
    return-void

    .line 4696
    .end local v0           #index:I
    .end local v3           #r:Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 4698
    .end local v1           #origId:J
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4
.end method

.method final activityIdleInternal(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)Lcom/android/server/am/ActivityRecord;
    .locals 29
    .parameter "token"
    .parameter "fromTimeout"
    .parameter "config"

    .prologue
    .line 4034
    const/16 v23, 0x0

    .line 4036
    .local v23, res:Lcom/android/server/am/ActivityRecord;
    const/16 v25, 0x0

    .line 4037
    .local v25, stops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/16 v19, 0x0

    .line 4038
    .local v19, finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/16 v26, 0x0

    .line 4039
    .local v26, thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v13, 0x0

    .line 4040
    .local v13, NS:I
    const/4 v12, 0x0

    .line 4041
    .local v12, NF:I
    const/4 v14, 0x0

    .line 4042
    .local v14, NT:I
    const/16 v24, 0x0

    .line 4043
    .local v24, sendThumbnail:Landroid/app/IApplicationThread;
    const/16 v16, 0x0

    .line 4044
    .local v16, booting:Z
    const/16 v18, 0x0

    .line 4045
    .local v18, enableScreen:Z
    const/4 v15, 0x0

    .line 4047
    .local v15, activityRemoved:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v28, v0

    monitor-enter v28

    .line 4048
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 4049
    .local v4, r:Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_0

    .line 4050
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4051
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    .line 4055
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStack;->indexOfActivityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v22

    .line 4056
    .local v22, index:I
    if-ltz v22, :cond_a

    .line 4057
    move-object/from16 v23, v4

    .line 4059
    if-eqz p2, :cond_1

    .line 4060
    const-wide/16 v5, -0x1

    const-wide/16 v7, -0x1

    move-object/from16 v2, p0

    move/from16 v3, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;->reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V

    .line 4068
    :cond_1
    if-eqz p3, :cond_2

    .line 4069
    move-object/from16 v0, p3

    iput-object v0, v4, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 4073
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v2, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4074
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x68

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 4075
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4080
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, v4, Lcom/android/server/am/ActivityRecord;->idle:Z

    .line 4081
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    .line 4082
    iget-boolean v2, v4, Lcom/android/server/am/ActivityRecord;->thumbnailNeeded:Z

    if-eqz v2, :cond_4

    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_4

    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_4

    .line 4083
    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v24, v0

    .line 4084
    const/4 v2, 0x0

    iput-boolean v2, v4, Lcom/android/server/am/ActivityRecord;->thumbnailNeeded:Z

    .line 4090
    :cond_4
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 4093
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_5

    .line 4094
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v2, :cond_5

    .line 4095
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    .line 4096
    const/16 v18, 0x1

    .line 4105
    :cond_5
    :goto_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->processStoppingActivitiesLocked(Z)Ljava/util/ArrayList;

    move-result-object v25

    .line 4106
    if-eqz v25, :cond_b

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 4107
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_6

    .line 4108
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4109
    .end local v19           #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .local v20, finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object/from16 v19, v20

    .line 4111
    .end local v20           #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v19       #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCancelledThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_7

    .line 4112
    new-instance v27, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCancelledThumbnails:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4113
    .end local v26           #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .local v27, thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCancelledThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move-object/from16 v26, v27

    .line 4116
    .end local v27           #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v26       #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_8

    .line 4117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v2, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    move/from16 v16, v0

    .line 4118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 4120
    :cond_8
    monitor-exit v28
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4125
    if-eqz v24, :cond_9

    .line 4127
    :try_start_5
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/app/IApplicationThread;->requestThumbnail(Landroid/os/IBinder;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 4136
    :cond_9
    :goto_2
    const/16 v21, 0x0

    .local v21, i:I
    :goto_3
    move/from16 v0, v21

    if-ge v0, v13, :cond_d

    .line 4137
    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 4138
    .restart local v4       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 4139
    :try_start_6
    iget-boolean v2, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_c

    .line 4140
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    .line 4144
    :goto_4
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 4136
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 4100
    .end local v21           #i:I
    :cond_a
    if-eqz p2, :cond_5

    .line 4101
    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    move-object/from16 v5, p0

    move/from16 v6, p2

    :try_start_7
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ActivityStack;->reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V

    goto/16 :goto_0

    .line 4120
    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    .end local v22           #index:I
    :catchall_0
    move-exception v2

    :goto_5
    monitor-exit v28
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v2

    .line 4106
    .restart local v4       #r:Lcom/android/server/am/ActivityRecord;
    .restart local v22       #index:I
    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 4128
    :catch_0
    move-exception v17

    .line 4129
    .local v17, e:Ljava/lang/Exception;
    const-string v2, "ActivityManager"

    const-string v3, "Exception thrown when requesting thumbnail"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4130
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v7, p1

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityManagerService;->sendPendingThumbnail(Lcom/android/server/am/ActivityRecord;Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Z)V

    goto :goto_2

    .line 4142
    .end local v17           #e:Ljava/lang/Exception;
    .restart local v21       #i:I
    :cond_c
    :try_start_8
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/am/ActivityStack;->stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_4

    .line 4144
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v2

    .line 4149
    :cond_d
    const/16 v21, 0x0

    :goto_6
    move/from16 v0, v21

    if-ge v0, v12, :cond_e

    .line 4150
    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 4151
    .restart local v4       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 4152
    const/4 v2, 0x1

    const/4 v5, 0x0

    :try_start_9
    const-string v6, "finish-idle"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2, v5, v6}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    move-result v15

    .line 4153
    monitor-exit v3

    .line 4149
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 4153
    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v2

    .line 4157
    :cond_e
    const/16 v21, 0x0

    :goto_7
    move/from16 v0, v21

    if-ge v0, v14, :cond_f

    .line 4158
    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 4159
    .restart local v4       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityManagerService;->sendPendingThumbnail(Lcom/android/server/am/ActivityRecord;Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Z)V

    .line 4157
    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    .line 4162
    :cond_f
    if-eqz v16, :cond_10

    .line 4163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->finishBooting()V

    .line 4166
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->trimApplications()V

    .line 4170
    if-eqz v18, :cond_11

    .line 4171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->enableScreenAfterBoot()V

    .line 4174
    :cond_11
    if-eqz v15, :cond_12

    .line 4175
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 4176
    const/4 v2, 0x0

    :try_start_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 4177
    monitor-exit v3

    .line 4180
    :cond_12
    return-object v23

    .line 4177
    :catchall_3
    move-exception v2

    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v2

    .line 4120
    .end local v19           #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v21           #i:I
    .restart local v20       #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :catchall_4
    move-exception v2

    move-object/from16 v19, v20

    .end local v20           #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v19       #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    goto/16 :goto_5

    .end local v26           #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v27       #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :catchall_5
    move-exception v2

    move-object/from16 v26, v27

    .end local v27           #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v26       #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    goto/16 :goto_5
.end method

.method final activityPaused(Landroid/os/IBinder;Z)V
    .locals 10
    .parameter "token"
    .parameter "timeout"

    .prologue
    const/4 v8, 0x1

    .line 1173
    const/4 v4, 0x0

    .line 1175
    .local v4, r:Lcom/android/server/am/ActivityRecord;
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 1176
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v3

    .line 1177
    .local v3, index:I
    if-ltz v3, :cond_2

    .line 1178
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    move-object v4, v0

    .line 1180
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    sget-object v5, Lcom/android/server/am/ActivityManagerService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 1181
    .local v1, cb:Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    new-instance v5, Lcom/android/server/am/HtcWrapActivityRecord;

    invoke-direct {v5, v4}, Lcom/android/server/am/HtcWrapActivityRecord;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onHandleActivityPaused(Lcom/android/server/am/HtcWrapActivityRecord;)V

    goto :goto_0

    .line 1212
    .end local v1           #cb:Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #index:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1184
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #index:I
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x65

    invoke-virtual {v5, v7, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1185
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v5, v4, :cond_3

    .line 1188
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v5, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1189
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->completePauseLocked()V

    .line 1192
    sget-boolean v5, Lcom/android/server/am/ActivityStack;->HTC_RECENT_APP_FUSION:Z

    if-eqz v5, :cond_2

    .line 1193
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getActivityType()I

    move-result v5

    if-ne v5, v8, :cond_1

    .line 1195
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mPreviousProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v5, v7, :cond_1

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v5, v7, :cond_1

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mBeforePreviousProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_1

    .line 1199
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mBeforePreviousProcess:Lcom/android/server/am/ProcessRecord;

    iput-object v7, v5, Lcom/android/server/am/ActivityManagerService;->mPreviousProcess:Lcom/android/server/am/ProcessRecord;

    .line 1202
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    iput-object v7, v5, Lcom/android/server/am/ActivityManagerService;->mBeforePreviousProcess:Lcom/android/server/am/ProcessRecord;

    .line 1212
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    monitor-exit v6

    .line 1213
    return-void

    .line 1206
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_3
    const/16 v7, 0x753c

    const/4 v5, 0x3

    new-array v8, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    const/4 v5, 0x1

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v9, v8, v5

    const/4 v9, 0x2

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    :goto_2
    aput-object v5, v8, v9

    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_1

    :cond_4
    const-string v5, "(none)"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method activitySleptLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 964
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 965
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V

    .line 966
    return-void
.end method

.method final activityStoppedLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    .locals 7
    .parameter "r"
    .parameter "icicle"
    .parameter "thumbnail"
    .parameter "description"

    .prologue
    const/16 v6, 0x6c

    const/4 v5, 0x1

    .line 1217
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v3, v4, :cond_1

    .line 1218
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity reported stop, but no longer stopping: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1290
    :cond_0
    :goto_0
    return-void

    .line 1223
    :cond_1
    if-eqz p2, :cond_2

    .line 1226
    iput-object p2, p1, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 1227
    iput-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->haveState:Z

    .line 1228
    invoke-virtual {p1, p3, p4}, Lcom/android/server/am/ActivityRecord;->updateThumbnail(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 1230
    :cond_2
    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-nez v3, :cond_0

    .line 1232
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1233
    iput-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 1239
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v3, v4, :cond_3

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1242
    :cond_3
    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_4

    .line 1243
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    goto :goto_0

    .line 1245
    :cond_4
    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-eqz v3, :cond_5

    .line 1246
    const/4 v3, 0x0

    const-string v4, "stop-config"

    invoke-virtual {p0, p1, v5, v3, v4}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    .line 1247
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto :goto_0

    .line 1252
    :cond_5
    const/4 v0, 0x0

    .line 1253
    .local v0, fgActivity:Lcom/android/server/am/ActivityRecord;
    const/4 v1, 0x0

    .line 1254
    .local v1, fgApp:Lcom/android/server/am/ProcessRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_8

    .line 1255
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1256
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1263
    :cond_6
    :goto_1
    const/4 v2, 0x0

    .line 1264
    .local v2, isPreviousProcessChanged:Z
    sget-boolean v3, Lcom/android/server/am/ActivityStack;->HTC_RECENT_APP_FUSION:Z

    if-eqz v3, :cond_7

    .line 1265
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_7

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getActivityType()I

    move-result v3

    if-ne v3, v5, :cond_7

    iget-wide v3, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v5, v5, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_7

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v3, v4, :cond_7

    .line 1270
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPreviousProcess:Lcom/android/server/am/ProcessRecord;

    iput-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mBeforePreviousProcess:Lcom/android/server/am/ProcessRecord;

    .line 1271
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mPreviousProcess:Lcom/android/server/am/ProcessRecord;

    .line 1272
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v4, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iput-wide v4, v3, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    .line 1273
    const/4 v2, 0x1

    .line 1276
    :cond_7
    if-nez v2, :cond_0

    .line 1278
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v3, v1, :cond_0

    iget-wide v3, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v5, v5, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v3, v4, :cond_0

    .line 1281
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mPreviousProcess:Lcom/android/server/am/ProcessRecord;

    .line 1282
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v4, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iput-wide v4, v3, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    goto/16 :goto_0

    .line 1257
    .end local v2           #isPreviousProcessChanged:Z
    :cond_8
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_6

    .line 1258
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1259
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_1
.end method

.method awakeFromSleepingLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 950
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 951
    iput-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mSleepTimeout:Z

    .line 952
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 953
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 956
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 957
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 958
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v1, v4}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    .line 956
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 960
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 961
    return-void
.end method

.method checkReadyForSleepLocked()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 969
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1030
    :cond_0
    :goto_0
    return-void

    .line 974
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mSleepTimeout:Z

    if-nez v2, :cond_9

    .line 975
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_2

    .line 979
    invoke-direct {p0, v5, v6}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZ)V

    goto :goto_0

    .line 982
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v2, :cond_0

    .line 988
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 992
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->scheduleIdleLocked()V

    goto :goto_0

    .line 996
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v5}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 1000
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_6

    .line 1001
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1002
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v2, v3, :cond_4

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v2, v3, :cond_5

    .line 1003
    :cond_4
    invoke-virtual {v1, v6}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    .line 1000
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1007
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_6
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 1022
    .end local v0           #i:I
    :cond_7
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1024
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1025
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1027
    :cond_8
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz v2, :cond_0

    .line 1028
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 1015
    :cond_9
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v2, v3, :cond_7

    .line 1016
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sleep timeout but there still exists resumed, so pause "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    invoke-direct {p0, v5, v6}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZ)V

    goto/16 :goto_0
.end method

.method final cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .locals 6
    .parameter "r"
    .parameter "cleanServices"
    .parameter "setState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 4443
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, p1, :cond_0

    .line 4444
    iput-object v5, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 4446
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, p1, :cond_1

    .line 4447
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    .line 4450
    :cond_1
    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    .line 4451
    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 4453
    if-eqz p3, :cond_2

    .line 4455
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 4461
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4462
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4465
    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-eqz v3, :cond_5

    .line 4466
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 4467
    .local v0, apr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PendingIntentRecord;

    .line 4468
    .local v2, rec:Lcom/android/server/am/PendingIntentRecord;
    if-eqz v2, :cond_3

    .line 4469
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v2, v4}, Lcom/android/server/am/ActivityManagerService;->cancelIntentSenderLocked(Lcom/android/server/am/PendingIntentRecord;Z)V

    goto :goto_0

    .line 4472
    .end local v0           #apr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v2           #rec:Lcom/android/server/am/PendingIntentRecord;
    :cond_4
    iput-object v5, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 4475
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_5
    if-eqz p2, :cond_6

    .line 4476
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4479
    :cond_6
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPendingThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 4483
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mCancelledThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4487
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4488
    return-void
.end method

.method final cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .parameter "r"

    .prologue
    const/4 v3, 0x0

    .line 4526
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    if-eqz v2, :cond_1

    .line 4527
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4528
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/ConnectionRecord;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4529
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    .line 4530
    .local v0, c:Lcom/android/server/am/ConnectionRecord;
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v0, v3, p1}, Lcom/android/server/am/ActivityManagerService;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0

    .line 4532
    .end local v0           #c:Lcom/android/server/am/ConnectionRecord;
    :cond_0
    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    .line 4534
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_1
    return-void
.end method

.method final destroyActivitiesLocked(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)V
    .locals 6
    .parameter "owner"
    .parameter "oomAdj"
    .parameter "reason"

    .prologue
    .line 4543
    const/4 v2, 0x0

    .line 4544
    .local v2, lastIsOpaque:Z
    const/4 v0, 0x0

    .line 4545
    .local v0, activityRemoved:Z
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_4

    .line 4546
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 4547
    .local v3, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_1

    .line 4545
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4550
    :cond_1
    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v4, :cond_2

    .line 4551
    const/4 v2, 0x1

    .line 4553
    :cond_2
    if-eqz p1, :cond_3

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v4, p1, :cond_0

    .line 4556
    :cond_3
    if-eqz v2, :cond_0

    .line 4561
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v3, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v3, v4, :cond_0

    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-eqz v4, :cond_0

    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v4, :cond_0

    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v4, v5, :cond_0

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v4, v5, :cond_0

    .line 4568
    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4, p2, p3}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4569
    const/4 v0, 0x1

    goto :goto_1

    .line 4573
    .end local v3           #r:Lcom/android/server/am/ActivityRecord;
    :cond_4
    if-eqz v0, :cond_5

    .line 4574
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 4576
    :cond_5
    return-void
.end method

.method final destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z
    .locals 10
    .parameter "r"
    .parameter "removeFromApp"
    .parameter "oomAdj"
    .parameter "reason"

    .prologue
    .line 4589
    const/16 v6, 0x7542

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aput-object p4, v7, v8

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4593
    const/4 v4, 0x0

    .line 4595
    .local v4, removedFromHistory:Z
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, p1, v6, v7}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 4597
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_5

    const/4 v1, 0x1

    .line 4599
    .local v1, hadApp:Z
    :goto_0
    if-eqz v1, :cond_7

    .line 4600
    if-eqz p2, :cond_2

    .line 4601
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 4602
    .local v2, idx:I
    if-ltz v2, :cond_0

    .line 4603
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4605
    :cond_0
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v6, v7, :cond_1

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_1

    .line 4606
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    .line 4607
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x19

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4610
    :cond_1
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 4613
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZZ)V

    .line 4617
    .end local v2           #idx:I
    :cond_2
    const/4 v5, 0x0

    .line 4621
    .local v5, skipDestroy:Z
    :try_start_0
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    iget v9, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-interface {v6, v7, v8, v9}, Landroid/app/IApplicationThread;->scheduleDestroyActivity(Landroid/os/IBinder;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4635
    :cond_3
    :goto_1
    const/4 v6, 0x0

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4636
    const/4 v6, 0x0

    iput-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 4645
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_6

    if-nez v5, :cond_6

    .line 4648
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 4649
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x69

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 4650
    .local v3, msg:Landroid/os/Message;
    iput-object p1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4651
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x2710

    invoke-virtual {v6, v3, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4669
    .end local v3           #msg:Landroid/os/Message;
    .end local v5           #skipDestroy:Z
    :goto_2
    const/4 v6, 0x0

    iput v6, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 4671
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    if-eqz v1, :cond_4

    .line 4672
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " being finished, but not in LRU list"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4675
    :cond_4
    return v4

    .line 4597
    .end local v1           #hadApp:Z
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 4623
    .restart local v1       #hadApp:Z
    .restart local v5       #skipDestroy:Z
    :catch_0
    move-exception v0

    .line 4628
    .local v0, e:Ljava/lang/Exception;
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_3

    .line 4629
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4630
    const/4 v4, 0x1

    .line 4631
    const/4 v5, 0x1

    goto :goto_1

    .line 4655
    .end local v0           #e:Ljava/lang/Exception;
    :cond_6
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    goto :goto_2

    .line 4659
    .end local v5           #skipDestroy:Z
    :cond_7
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_8

    .line 4660
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4661
    const/4 v4, 0x1

    goto :goto_2

    .line 4665
    :cond_8
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    goto :goto_2
.end method

.method public dismissKeyguardOnNextActivityLocked()V
    .locals 1

    .prologue
    .line 5318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 5319
    return-void
.end method

.method public enableGC(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 5307
    if-eqz p1, :cond_0

    .line 5308
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->enableGc()V

    .line 5309
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/am/ActivityStack;->sEnableGCRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5314
    :goto_0
    return-void

    .line 5311
    :cond_0
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const-wide/32 v1, 0x1800000

    invoke-virtual {v0, v1, v2}, Ldalvik/system/VMRuntime;->disableGc(J)V

    .line 5312
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/am/ActivityStack;->sEnableGCRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V
    .locals 2
    .parameter "starting"
    .parameter "configChanges"

    .prologue
    const/4 v1, 0x0

    .line 1681
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1682
    .local v0, r:Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 1683
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V

    .line 1685
    :cond_0
    return-void
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V
    .locals 11
    .parameter "top"
    .parameter "starting"
    .parameter "onlyThisProcess"
    .parameter "configChanges"

    .prologue
    .line 1532
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1533
    .local v1, count:I
    add-int/lit8 v4, v1, -0x1

    .line 1534
    .local v4, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eq v6, p1, :cond_0

    .line 1535
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1538
    :cond_0
    const/4 v0, 0x0

    .line 1539
    .local v0, behindFullscreen:Z
    :goto_1
    if-ltz v4, :cond_a

    .line 1540
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 1544
    .local v5, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_2

    .line 1539
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1548
    :cond_2
    if-eqz p3, :cond_3

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    :cond_3
    const/4 v2, 0x1

    .line 1553
    .local v2, doThisProcess:Z
    :goto_2
    if-eq v5, p2, :cond_4

    if-eqz v2, :cond_4

    .line 1554
    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/server/am/ActivityStack;->ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z

    .line 1557
    :cond_4
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_5

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v6, :cond_f

    .line 1558
    :cond_5
    if-eqz p3, :cond_6

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1565
    :cond_6
    if-eq v5, p2, :cond_7

    .line 1566
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v6, p4}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 1568
    :cond_7
    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v6, :cond_8

    .line 1571
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 1573
    :cond_8
    if-eq v5, p2, :cond_9

    .line 1574
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/am/ActivityStack;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 1610
    :cond_9
    :goto_3
    iget v6, v5, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    or-int/2addr p4, v6

    .line 1612
    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v6, :cond_1

    .line 1616
    const/4 v0, 0x1

    .line 1617
    add-int/lit8 v4, v4, -0x1

    .line 1623
    .end local v2           #doThisProcess:Z
    .end local v5           #r:Lcom/android/server/am/ActivityRecord;
    :cond_a
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v1, v6, :cond_b

    .line 1624
    const-string v6, "ActivityManager"

    const-string v7, "Warning!! mHistory changed from %d to %d items"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1626
    if-lt v4, v1, :cond_b

    .line 1627
    const-string v6, "ActivityManager"

    const-string v7, "Warning!! Activity visibility may changed"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    add-int/lit8 v4, v1, -0x1

    .line 1635
    :cond_b
    :goto_4
    if-ltz v4, :cond_12

    .line 1636
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 1641
    .restart local v5       #r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v6, :cond_d

    .line 1642
    if-eqz v0, :cond_11

    .line 1643
    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v6, :cond_d

    .line 1646
    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 1648
    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 1649
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v6, v7, :cond_c

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v6, v7, :cond_d

    :cond_c
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_d

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v6, :cond_d

    .line 1654
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/app/IApplicationThread;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1672
    :cond_d
    :goto_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 1548
    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 1578
    .restart local v2       #doThisProcess:Z
    :cond_f
    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v6, :cond_10

    .line 1583
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    goto/16 :goto_3

    .line 1585
    :cond_10
    if-nez p3, :cond_9

    .line 1588
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 1589
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v6, v7, :cond_9

    if-eq v5, p2, :cond_9

    .line 1595
    :try_start_1
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 1596
    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 1597
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    .line 1598
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/app/IApplicationThread;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    .line 1599
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 1600
    :catch_0
    move-exception v3

    .line 1603
    .local v3, e:Ljava/lang/Exception;
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception thrown making visibile: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1656
    .end local v2           #doThisProcess:Z
    .end local v3           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 1659
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception thrown making hidden: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 1666
    .end local v3           #e:Ljava/lang/Exception;
    :cond_11
    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v6, :cond_d

    .line 1669
    const/4 v0, 0x1

    goto/16 :goto_5

    .line 1674
    .end local v5           #r:Lcom/android/server/am/ActivityRecord;
    :cond_12
    return-void
.end method

.method final ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z
    .locals 10
    .parameter "r"
    .parameter "globalChanges"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 5059
    iget-boolean v8, p0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    if-eqz v8, :cond_1

    .line 5186
    :cond_0
    :goto_0
    return v6

    .line 5070
    :cond_1
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v8, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .line 5071
    .local v3, newConfig:Landroid/content/res/Configuration;
    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    if-ne v8, v3, :cond_2

    iget-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    if-eqz v8, :cond_0

    .line 5078
    :cond_2
    iget-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v8, :cond_3

    .line 5081
    invoke-virtual {p1, v7}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    goto :goto_0

    .line 5087
    :cond_3
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 5088
    .local v4, oldConfig:Landroid/content/res/Configuration;
    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 5094
    invoke-virtual {v4, v3}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 5095
    .local v0, changes:I
    if-nez v0, :cond_4

    iget-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    if-eqz v8, :cond_0

    .line 5103
    :cond_4
    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v8, :cond_5

    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v8, :cond_6

    .line 5106
    :cond_5
    invoke-virtual {p1, v7}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 5107
    iput-boolean v7, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    goto :goto_0

    .line 5120
    :cond_6
    const/high16 v8, 0x2

    and-int/2addr v8, v0

    if-eqz v8, :cond_9

    move v1, v6

    .line 5122
    .local v1, isFontsizeChanged:Z
    :goto_1
    const/high16 v8, 0x1

    and-int/2addr v8, v0

    if-eqz v8, :cond_a

    move v2, v6

    .line 5124
    .local v2, isSkinChange:Z
    :goto_2
    const v8, -0x20001

    and-int/2addr v8, v0

    const v9, -0x10001

    and-int v5, v8, v9

    .line 5131
    .local v5, originChanges:I
    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v8}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v8

    xor-int/lit8 v8, v8, -0x1

    and-int/2addr v8, v5

    if-nez v8, :cond_7

    iget-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    if-nez v8, :cond_7

    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v8, v8, Landroid/content/pm/ActivityInfo;->allowFontsizeChange:Z

    and-int/2addr v8, v1

    if-nez v8, :cond_7

    if-eqz v2, :cond_e

    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v8, v8, Landroid/content/pm/ActivityInfo;->allowSkinChangeAlive:Z

    if-nez v8, :cond_e

    .line 5135
    :cond_7
    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v0, v3}, Landroid/app/MiuiThemeHelper;->needRestartActivity(Ljava/lang/String;ILandroid/content/res/Configuration;)Z

    move-result v8

    if-nez v8, :cond_0

    iget v8, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    or-int/2addr v8, v0

    iput v8, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 5136
    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v8, p2}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 5137
    iput-boolean v7, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 5138
    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v8, :cond_8

    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v8, :cond_b

    .line 5141
    :cond_8
    const-string v8, "config"

    invoke-virtual {p0, p1, v6, v7, v8}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    :goto_3
    move v6, v7

    .line 5168
    goto/16 :goto_0

    .end local v1           #isFontsizeChanged:Z
    .end local v2           #isSkinChange:Z
    .end local v5           #originChanges:I
    :cond_9
    move v1, v7

    .line 5120
    goto :goto_1

    .restart local v1       #isFontsizeChanged:Z
    :cond_a
    move v2, v7

    .line 5122
    goto :goto_2

    .line 5142
    .restart local v2       #isSkinChange:Z
    .restart local v5       #originChanges:I
    :cond_b
    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v9, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v8, v9, :cond_c

    .line 5148
    iput-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    goto/16 :goto_0

    .line 5150
    :cond_c
    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v9, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v8, v9, :cond_d

    .line 5157
    iget v8, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-direct {p0, p1, v8, v6}, Lcom/android/server/am/ActivityStack;->relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    .line 5158
    iput v7, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    goto :goto_3

    .line 5162
    :cond_d
    iget v6, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-direct {p0, p1, v6, v7}, Lcom/android/server/am/ActivityStack;->relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    .line 5163
    iput v7, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    goto :goto_3

    .line 5176
    :cond_e
    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v8, :cond_f

    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v8, :cond_f

    .line 5179
    :try_start_0
    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v8, v9}, Landroid/app/IApplicationThread;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5184
    :cond_f
    :goto_4
    invoke-virtual {p1, v7}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    goto/16 :goto_0

    .line 5180
    :catch_0
    move-exception v8

    goto :goto_4
.end method

.method final finishActivityAffinityLocked(Landroid/os/IBinder;)Z
    .locals 7
    .parameter "token"

    .prologue
    const/4 v3, 0x0

    .line 4223
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v2

    .line 4226
    .local v2, index:I
    if-gez v2, :cond_0

    .line 4245
    :goto_0
    return v3

    .line 4229
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    .line 4231
    .local v6, r:Lcom/android/server/am/ActivityRecord;
    :goto_1
    if-ltz v2, :cond_1

    .line 4232
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4233
    .local v1, cur:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v0, v4, :cond_2

    .line 4245
    .end local v1           #cur:Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 4236
    .restart local v1       #cur:Lcom/android/server/am/ActivityRecord;
    :cond_2
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 4239
    :cond_3
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v4, v6, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4242
    :cond_4
    const/4 v4, 0x0

    const-string v5, "request-affinity"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    .line 4243
    add-int/lit8 v2, v2, -0x1

    .line 4244
    goto :goto_1
.end method

.method final finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z
    .locals 7
    .parameter "r"
    .parameter "index"
    .parameter "resultCode"
    .parameter "resultData"
    .parameter "reason"

    .prologue
    .line 4281
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method final finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;Z)Z
    .locals 9
    .parameter "r"
    .parameter "index"
    .parameter "resultCode"
    .parameter "resultData"
    .parameter "reason"
    .parameter "immediate"

    .prologue
    const/high16 v8, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4290
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_1

    .line 4291
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duplicate finish request for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4362
    :cond_0
    :goto_0
    return v4

    .line 4295
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishing()V

    .line 4296
    const/16 v2, 0x7531

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v6, 0x2

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object p5, v5, v6

    invoke-static {v2, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4299
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge p2, v2, :cond_3

    .line 4300
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4301
    .local v1, next:Lcom/android/server/am/ActivityRecord;
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v2, v5, :cond_3

    .line 4302
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v2, :cond_2

    .line 4304
    iput-boolean v3, v1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 4306
    :cond_2
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int/2addr v2, v8

    if-eqz v2, :cond_3

    .line 4310
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4315
    .end local v1           #next:Lcom/android/server/am/ActivityRecord;
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->pauseKeyDispatchingLocked()V

    .line 4316
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_4

    .line 4317
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v2, p1, :cond_4

    .line 4318
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4322
    :cond_4
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/am/ActivityStack;->finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V

    .line 4324
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPendingThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 4328
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCancelledThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4331
    :cond_5
    if-eqz p6, :cond_7

    .line 4332
    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;II)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_1
    move v4, v2

    goto/16 :goto_0

    :cond_6
    move v2, v4

    goto :goto_1

    .line 4334
    :cond_7
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v2, p1, :cond_b

    .line 4335
    if-lez p2, :cond_8

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    add-int/lit8 v5, p2, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v2, v5, :cond_9

    :cond_8
    move v0, v3

    .line 4339
    .local v0, endTask:Z
    :goto_2
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_a

    const/16 v2, 0x2009

    :goto_3
    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 4344
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 4346
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v2, :cond_0

    .line 4349
    invoke-direct {p0, v4, v4}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZ)V

    goto/16 :goto_0

    .end local v0           #endTask:Z
    :cond_9
    move v0, v4

    .line 4335
    goto :goto_2

    .line 4339
    .restart local v0       #endTask:Z
    :cond_a
    const/16 v2, 0x2007

    goto :goto_3

    .line 4352
    .end local v0           #endTask:Z
    :cond_b
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v2, v5, :cond_0

    .line 4356
    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;II)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_c

    :goto_4
    move v4, v3

    goto/16 :goto_0

    :cond_c
    move v3, v4

    goto :goto_4
.end method

.method final finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V
    .locals 7
    .parameter "r"
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    const/4 v6, 0x0

    .line 4250
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 4251
    .local v0, resultTo:Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    .line 4255
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-lez v1, :cond_0

    .line 4256
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v4

    invoke-virtual {v1, v2, v3, p3, v4}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;)V

    .line 4260
    :cond_0
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityRecord;->addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 4262
    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 4269
    :cond_1
    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 4270
    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 4271
    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 4272
    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 4273
    return-void
.end method

.method public finishLaunchActivity()V
    .locals 2

    .prologue
    .line 5291
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/ActivityStack;->mDuringLaunchActivity:Z

    .line 5293
    sget-object v1, Lcom/android/server/am/ActivityStack;->mLaunchActivityLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5294
    :try_start_0
    sget-object v0, Lcom/android/server/am/ActivityStack;->mLaunchActivityLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 5295
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5297
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStack;->enableGC(Z)V

    .line 5298
    return-void

    .line 5295
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method final finishSubActivityLocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 7
    .parameter "token"
    .parameter "resultWho"
    .parameter "requestCode"

    .prologue
    .line 4204
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 4205
    .local v6, self:Lcom/android/server/am/ActivityRecord;
    if-nez v6, :cond_1

    .line 4220
    :cond_0
    return-void

    .line 4210
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 4211
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4212
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-ne v0, v6, :cond_4

    iget v0, v1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    if-ne v0, p3, :cond_4

    .line 4213
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-nez v0, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4215
    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "request-sub"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    .line 4210
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public getPreviousActivity()Lcom/android/server/am/ActivityRecord;
    .locals 1

    .prologue
    .line 5324
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPreviousActivity:Lcom/android/server/am/ActivityRecord;

    return-object v0
.end method

.method public getTaskAccessInfoLocked(IZ)Lcom/android/server/am/TaskAccessInfo;
    .locals 10
    .parameter "taskId"
    .parameter "inclThumbs"

    .prologue
    .line 4965
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 4966
    .local v5, resumed:Lcom/android/server/am/ActivityRecord;
    new-instance v8, Lcom/android/server/am/TaskAccessInfo;

    invoke-direct {v8}, Lcom/android/server/am/TaskAccessInfo;-><init>()V

    .line 4968
    .local v8, thumbs:Lcom/android/server/am/TaskAccessInfo;
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4969
    .local v0, NA:I
    const/4 v3, 0x0

    .line 4970
    .local v3, j:I
    const/4 v2, 0x0

    .line 4971
    .local v2, holder:Lcom/android/server/am/ThumbnailHolder;
    :goto_0
    if-ge v3, v0, :cond_0

    .line 4972
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4973
    .local v1, ar:Lcom/android/server/am/ActivityRecord;
    iget-boolean v9, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v9, :cond_2

    iget-object v9, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v9, p1, :cond_2

    .line 4974
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    .line 4980
    .end local v1           #ar:Lcom/android/server/am/ActivityRecord;
    :cond_0
    if-lt v3, v0, :cond_3

    .line 5026
    :cond_1
    :goto_1
    return-object v8

    .line 4977
    .restart local v1       #ar:Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 4978
    goto :goto_0

    .line 4984
    .end local v1           #ar:Lcom/android/server/am/ActivityRecord;
    :cond_3
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityRecord;

    iput-object v9, v8, Lcom/android/server/am/TaskAccessInfo;->root:Lcom/android/server/am/ActivityRecord;

    .line 4985
    iput v3, v8, Lcom/android/server/am/TaskAccessInfo;->rootIndex:I

    .line 4987
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4988
    .local v7, subtasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/TaskAccessInfo$SubTask;>;"
    iput-object v7, v8, Lcom/android/server/am/TaskAccessInfo;->subtasks:Ljava/util/ArrayList;

    .line 4989
    const/4 v4, 0x0

    .line 4990
    .local v4, lastActivity:Lcom/android/server/am/ActivityRecord;
    :cond_4
    :goto_2
    if-ge v3, v0, :cond_5

    .line 4991
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4992
    .restart local v1       #ar:Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v3, v3, 0x1

    .line 4993
    iget-boolean v9, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v9, :cond_4

    .line 4996
    iget-object v9, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v9, p1, :cond_7

    .line 5010
    .end local v1           #ar:Lcom/android/server/am/ActivityRecord;
    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_6

    .line 5011
    if-ne v5, v4, :cond_6

    .line 5012
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskAccessInfo$SubTask;

    .line 5013
    .local v6, sub:Lcom/android/server/am/TaskAccessInfo$SubTask;
    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v9, v4}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, v6, Lcom/android/server/am/TaskAccessInfo$SubTask;->thumbnail:Landroid/graphics/Bitmap;

    .line 5016
    .end local v6           #sub:Lcom/android/server/am/TaskAccessInfo$SubTask;
    :cond_6
    iget v9, v8, Lcom/android/server/am/TaskAccessInfo;->numSubThumbbails:I

    if-lez v9, :cond_1

    .line 5017
    new-instance v9, Lcom/android/server/am/ActivityStack$2;

    invoke-direct {v9, p0, v8}, Lcom/android/server/am/ActivityStack$2;-><init>(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/TaskAccessInfo;)V

    iput-object v9, v8, Lcom/android/server/am/TaskAccessInfo;->retriever:Landroid/app/IThumbnailRetriever;

    goto :goto_1

    .line 4999
    .restart local v1       #ar:Lcom/android/server/am/ActivityRecord;
    :cond_7
    move-object v4, v1

    .line 5000
    iget-object v9, v1, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    if-eq v9, v2, :cond_4

    if-eqz v2, :cond_4

    .line 5001
    iget v9, v8, Lcom/android/server/am/TaskAccessInfo;->numSubThumbbails:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/android/server/am/TaskAccessInfo;->numSubThumbbails:I

    .line 5002
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    .line 5003
    new-instance v6, Lcom/android/server/am/TaskAccessInfo$SubTask;

    invoke-direct {v6}, Lcom/android/server/am/TaskAccessInfo$SubTask;-><init>()V

    .line 5004
    .restart local v6       #sub:Lcom/android/server/am/TaskAccessInfo$SubTask;
    iget-object v9, v2, Lcom/android/server/am/ThumbnailHolder;->lastThumbnail:Landroid/graphics/Bitmap;

    iput-object v9, v6, Lcom/android/server/am/TaskAccessInfo$SubTask;->thumbnail:Landroid/graphics/Bitmap;

    .line 5005
    iput-object v1, v6, Lcom/android/server/am/TaskAccessInfo$SubTask;->activity:Lcom/android/server/am/ActivityRecord;

    .line 5006
    add-int/lit8 v9, v3, -0x1

    iput v9, v6, Lcom/android/server/am/TaskAccessInfo$SubTask;->index:I

    .line 5007
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public getTaskThumbnailsLocked(Lcom/android/server/am/TaskRecord;)Landroid/app/ActivityManager$TaskThumbnails;
    .locals 4
    .parameter "tr"

    .prologue
    .line 4925
    iget v2, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ActivityStack;->getTaskAccessInfoLocked(IZ)Lcom/android/server/am/TaskAccessInfo;

    move-result-object v0

    .line 4926
    .local v0, info:Lcom/android/server/am/TaskAccessInfo;
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 4927
    .local v1, resumed:Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    if-ne v2, p1, :cond_0

    .line 4928
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/am/TaskAccessInfo;->mainThumbnail:Landroid/graphics/Bitmap;

    .line 4932
    :goto_0
    return-object v0

    .line 4930
    :cond_0
    iget-object v2, p1, Lcom/android/server/am/ThumbnailHolder;->lastThumbnail:Landroid/graphics/Bitmap;

    iput-object v2, v0, Lcom/android/server/am/TaskAccessInfo;->mainThumbnail:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method final indexOfActivityLocked(Lcom/android/server/am/ActivityRecord;)I
    .locals 1
    .parameter "r"

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method final indexOfTokenLocked(Landroid/os/IBinder;)I
    .locals 2
    .parameter "token"

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method final isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .locals 2
    .parameter "token"

    .prologue
    .line 544
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 545
    .local v0, r:Lcom/android/server/am/ActivityRecord;
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 548
    .end local v0           #r:Lcom/android/server/am/ActivityRecord;
    :goto_0
    return-object v0

    .restart local v0       #r:Lcom/android/server/am/ActivityRecord;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final moveHomeToFrontFromLaunchLocked(I)V
    .locals 2
    .parameter "launchFlags"

    .prologue
    const v1, 0x10004000

    .line 3111
    and-int v0, p1, v1

    if-ne v0, v1, :cond_0

    .line 3116
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->moveHomeToFrontLocked()V

    .line 3118
    :cond_0
    return-void
.end method

.method final moveHomeToFrontLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4732
    const/4 v0, 0x0

    .line 4733
    .local v0, homeTask:Lcom/android/server/am/TaskRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 4734
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4735
    .local v1, hr:Lcom/android/server/am/ActivityRecord;
    iget-boolean v3, v1, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-eqz v3, :cond_2

    .line 4736
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 4740
    .end local v1           #hr:Lcom/android/server/am/ActivityRecord;
    :cond_0
    if-eqz v0, :cond_1

    .line 4741
    invoke-virtual {p0, v0, v4, v4}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)V

    .line 4743
    :cond_1
    return-void

    .line 4733
    .restart local v1       #hr:Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method final moveTaskToBackLocked(ILcom/android/server/am/ActivityRecord;)Z
    .locals 13
    .parameter "task"
    .parameter "reason"

    .prologue
    const/4 v12, 0x0

    const/4 v8, 0x0

    .line 4848
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "moveTaskToBack: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4853
    iget-boolean v9, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v9, :cond_1

    .line 4854
    invoke-virtual {p0, v12, p1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 4855
    .local v5, next:Lcom/android/server/am/ActivityRecord;
    if-nez v5, :cond_0

    .line 4856
    invoke-virtual {p0, v12, v8}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 4858
    :cond_0
    if-eqz v5, :cond_1

    .line 4860
    const/4 v3, 0x1

    .line 4862
    .local v3, moveOK:Z
    :try_start_0
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    iget-object v10, v5, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v9, v10}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 4866
    :goto_0
    if-nez v3, :cond_1

    .line 4921
    .end local v3           #moveOK:Z
    .end local v5           #next:Lcom/android/server/am/ActivityRecord;
    :goto_1
    return v8

    .line 4863
    .restart local v3       #moveOK:Z
    .restart local v5       #next:Lcom/android/server/am/ActivityRecord;
    :catch_0
    move-exception v2

    .line 4864
    .local v2, e:Landroid/os/RemoteException;
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v12, v9, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    goto :goto_0

    .line 4872
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v3           #moveOK:Z
    .end local v5           #next:Lcom/android/server/am/ActivityRecord;
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4877
    .local v4, moved:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4878
    .local v0, N:I
    const/4 v1, 0x0

    .line 4879
    .local v1, bottom:I
    const/4 v6, 0x0

    .line 4883
    .local v6, pos:I
    :goto_2
    if-ge v6, v0, :cond_3

    .line 4884
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .line 4887
    .local v7, r:Lcom/android/server/am/ActivityRecord;
    iget-object v9, v7, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v9, p1, :cond_2

    .line 4895
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4896
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v9, v1, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4897
    iget-object v9, v7, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4898
    add-int/lit8 v1, v1, 0x1

    .line 4900
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 4901
    goto :goto_2

    .line 4903
    .end local v7           #r:Lcom/android/server/am/ActivityRecord;
    :cond_3
    if-eqz p2, :cond_5

    iget-object v9, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getFlags()I

    move-result v9

    const/high16 v10, 0x1

    and-int/2addr v9, v10

    if-eqz v9, :cond_5

    .line 4905
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, v8, v8}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 4907
    invoke-virtual {p0, v12}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .line 4908
    .restart local v7       #r:Lcom/android/server/am/ActivityRecord;
    if-eqz v7, :cond_4

    .line 4909
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4915
    .end local v7           #r:Lcom/android/server/am/ActivityRecord;
    :cond_4
    :goto_3
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8, v4}, Lcom/android/server/wm/WindowManagerService;->moveAppTokensToBottom(Ljava/util/List;)V

    .line 4920
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->finishTaskMoveLocked(I)V

    .line 4921
    const/4 v8, 0x1

    goto :goto_1

    .line 4912
    :cond_5
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v10, 0x200b

    invoke-virtual {v9, v10, v8}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto :goto_3
.end method

.method final moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)V
    .locals 9
    .parameter "tr"
    .parameter "reason"
    .parameter "options"

    .prologue
    const/high16 v8, 0x1

    const/16 v7, 0x100a

    const/4 v6, 0x0

    .line 4760
    iget v3, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 4761
    .local v3, task:I
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .line 4763
    .local v4, top:I
    if-ltz v4, :cond_0

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v5, v3, :cond_3

    .line 4765
    :cond_0
    if-eqz p2, :cond_2

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    and-int/2addr v5, v8

    if-eqz v5, :cond_2

    .line 4767
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 4772
    :goto_0
    iget-boolean v5, p0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    if-eqz v5, :cond_1

    .line 4773
    iput-boolean v6, p0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 4774
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard()V

    .line 4830
    :cond_1
    :goto_1
    return-void

    .line 4769
    :cond_2
    invoke-virtual {p0, v7, p3}, Lcom/android/server/am/ActivityStack;->updateTransitLocked(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 4780
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4784
    .local v0, moved:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .line 4785
    move v1, v4

    .line 4789
    .local v1, pos:I
    :goto_2
    if-ltz v1, :cond_5

    .line 4790
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 4793
    .local v2, r:Lcom/android/server/am/ActivityRecord;
    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v5, v3, :cond_4

    .line 4800
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4801
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4802
    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v6, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4803
    add-int/lit8 v4, v4, -0x1

    .line 4805
    :cond_4
    add-int/lit8 v1, v1, -0x1

    .line 4806
    goto :goto_2

    .line 4810
    .end local v2           #r:Lcom/android/server/am/ActivityRecord;
    :cond_5
    if-eqz p2, :cond_7

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    and-int/2addr v5, v8

    if-eqz v5, :cond_7

    .line 4812
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v6, v6}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 4814
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 4815
    .restart local v2       #r:Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_6

    .line 4816
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4818
    :cond_6
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 4823
    .end local v2           #r:Lcom/android/server/am/ActivityRecord;
    :goto_3
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowManagerService;->moveAppTokensToTop(Ljava/util/List;)V

    .line 4828
    invoke-direct {p0, v3}, Lcom/android/server/am/ActivityStack;->finishTaskMoveLocked(I)V

    .line 4829
    const/16 v5, 0x7532

    invoke-static {v5, v3}, Landroid/util/EventLog;->writeEvent(II)I

    goto :goto_1

    .line 4820
    :cond_7
    invoke-virtual {p0, v7, p3}, Lcom/android/server/am/ActivityStack;->updateTransitLocked(ILandroid/os/Bundle;)V

    goto :goto_3
.end method

.method final processStoppingActivitiesLocked(Z)Ljava/util/ArrayList;
    .locals 8
    .parameter "remove"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3983
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3984
    .local v0, N:I
    if-gtz v0, :cond_1

    const/4 v4, 0x0

    .line 4021
    :cond_0
    return-object v4

    .line 3986
    :cond_1
    const/4 v4, 0x0

    .line 3988
    .local v4, stops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v6, v6, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v6, v6, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-nez v6, :cond_6

    const/4 v2, 0x1

    .line 3991
    .local v2, nowVisible:Z
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 3992
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 3996
    .local v3, s:Lcom/android/server/am/ActivityRecord;
    iget-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v6, :cond_2

    if-eqz v2, :cond_2

    .line 3997
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3998
    iput-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 3999
    iget-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_2

    .line 4006
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v6, v7, v5}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 4009
    :cond_2
    iget-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_3
    if-eqz p1, :cond_5

    .line 4011
    if-nez v4, :cond_4

    .line 4012
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #stops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4014
    .restart local v4       #stops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_4
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4015
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4016
    add-int/lit8 v0, v0, -0x1

    .line 4017
    add-int/lit8 v1, v1, -0x1

    .line 3991
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1           #i:I
    .end local v2           #nowVisible:Z
    .end local v3           #s:Lcom/android/server/am/ActivityRecord;
    :cond_6
    move v2, v5

    .line 3988
    goto :goto_0
.end method

.method final realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    .locals 21
    .parameter "r"
    .parameter "app"
    .parameter "andResume"
    .parameter "checkConfig"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 679
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 680
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 683
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->startLaunchTickingLocked()V

    .line 691
    if-eqz p4, :cond_1

    .line 694
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->isWVGA:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v3, "HtcLinkifyDispatcher"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.zdworks.android.toolbox/.ui.widget.BrightnessActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.kikin/.KikinSearchActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 706
    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_3

    .line 708
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setNavigationBarVisibility(Ljava/lang/String;Z)V

    .line 713
    :goto_0
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_NAV_BAR:Z

    if-eqz v2, :cond_0

    .line 714
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "realStartActivityLocked, pkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sdk: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 723
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v2, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_2
    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v17

    .line 726
    .local v17, config:Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    .line 729
    .end local v17           #config:Landroid/content/res/Configuration;
    :cond_1
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 730
    const/4 v2, 0x0

    move-object/from16 v0, p2

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    .line 734
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v19

    .line 735
    .local v19, idx:I
    if-gez v19, :cond_2

    .line 736
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->willLaunch:Z

    .line 739
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZZ)V

    .line 742
    :try_start_1
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v2, :cond_5

    .line 743
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 834
    :catch_0
    move-exception v18

    .line 835
    .local v18, e:Landroid/os/RemoteException;
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    if-eqz v2, :cond_14

    .line 838
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Second failure launching "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", giving up"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 841
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;ILandroid/app/IApplicationThread;)V

    .line 842
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "2nd-crash"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;)Z

    .line 844
    const/4 v2, 0x0

    .line 895
    .end local v18           #e:Landroid/os/RemoteException;
    :goto_3
    return v2

    .line 710
    .end local v19           #idx:I
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setNavigationBarVisibility(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 717
    :catch_1
    move-exception v2

    goto/16 :goto_1

    .line 723
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 745
    .restart local v19       #idx:I
    :cond_5
    const/4 v10, 0x0

    .line 746
    .local v10, results:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/4 v11, 0x0

    .line 747
    .local v11, newIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    if-eqz p3, :cond_6

    .line 748
    :try_start_3
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 749
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 755
    :cond_6
    if-eqz p3, :cond_7

    .line 756
    const/16 v2, 0x7536

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 760
    :cond_7
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-eqz v2, :cond_9

    .line 761
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iput-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    .line 763
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_8

    .line 764
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "realStartActivityLocked, app.processName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mDoAnimation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mDoAnimation:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_8
    const-string v2, "disable_oobe_anim"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 768
    const-string v2, "com.htc.android.htcsetupwizard"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mDoAnimation:Z

    if-eqz v2, :cond_12

    .line 769
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_9

    .line 770
    const-string v2, "ActivityManager"

    const-string v3, "It is OOBE, disable htc anim"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/wm/WindowManagerService;->mDoAnimation:Z

    .line 782
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->ensurePackageDexOpt(Ljava/lang/String;)V

    .line 783
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 784
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 785
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 786
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    .line 787
    const/4 v14, 0x0

    .line 788
    .local v14, profileFile:Ljava/lang/String;
    const/4 v15, 0x0

    .line 789
    .local v15, profileFd:Landroid/os/ParcelFileDescriptor;
    const/16 v16, 0x0

    .line 790
    .local v16, profileAutoStop:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProfileApp:Ljava/lang/String;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProfileApp:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 791
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p2

    if-ne v2, v0, :cond_b

    .line 792
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iput-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    .line 793
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v2, Lcom/android/server/am/ActivityManagerService;->mProfileFile:Ljava/lang/String;

    .line 794
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v2, Lcom/android/server/am/ActivityManagerService;->mProfileFd:Landroid/os/ParcelFileDescriptor;

    .line 795
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v2, Lcom/android/server/am/ActivityManagerService;->mAutoStopProfiler:Z

    move/from16 v16, v0

    .line 798
    :cond_b
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    .line 799
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 800
    if-eqz v15, :cond_c

    .line 802
    :try_start_4
    invoke-virtual {v15}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v15

    .line 807
    :cond_c
    :goto_5
    :try_start_5
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    new-instance v7, Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v7, v8}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    if-nez p3, :cond_13

    const/4 v12, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v13}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    move-result v13

    invoke-interface/range {v2 .. v16}, Landroid/app/IApplicationThread;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Z)V

    .line 814
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x1000

    and-int/2addr v2, v3

    if-eqz v2, :cond_e

    .line 819
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 820
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p2

    if-eq v2, v0, :cond_d

    .line 822
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting new heavy weight process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " when already running "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iput-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    .line 827
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    .line 829
    .local v20, msg:Landroid/os/Message;
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 830
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 853
    .end local v20           #msg:Landroid/os/Message;
    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    .line 854
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 855
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " being launched, but already in LRU list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_f
    if-eqz p3, :cond_15

    .line 862
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 865
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 866
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 867
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 868
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_10

    .line 869
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 871
    :cond_10
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 872
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V

    .line 874
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 875
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->haveState:Z

    .line 891
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_11

    .line 892
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->startSetupActivityLocked()V

    .line 895
    :cond_11
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 773
    .end local v14           #profileFile:Ljava/lang/String;
    .end local v15           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v16           #profileAutoStop:Z
    :cond_12
    :try_start_6
    const-string v2, "com.htc.launcher"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mDoAnimation:Z

    if-nez v2, :cond_9

    .line 774
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_9

    .line 775
    const-string v2, "ActivityManager"

    const-string v3, "It is Rosie, enable htc anim"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/wm/WindowManagerService;->mDoAnimation:Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_4

    .line 803
    .restart local v14       #profileFile:Ljava/lang/String;
    .restart local v15       #profileFd:Landroid/os/ParcelFileDescriptor;
    .restart local v16       #profileAutoStop:Z
    :catch_2
    move-exception v18

    .line 804
    .local v18, e:Ljava/io/IOException;
    const/4 v15, 0x0

    goto/16 :goto_5

    .line 807
    .end local v18           #e:Ljava/io/IOException;
    :cond_13
    const/4 v12, 0x0

    goto/16 :goto_6

    .line 849
    .end local v10           #results:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v11           #newIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    .end local v14           #profileFile:Ljava/lang/String;
    .end local v15           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v16           #profileAutoStop:Z
    .local v18, e:Landroid/os/RemoteException;
    :cond_14
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 850
    throw v18

    .line 883
    .end local v18           #e:Landroid/os/RemoteException;
    .restart local v10       #results:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .restart local v11       #newIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    .restart local v14       #profileFile:Ljava/lang/String;
    .restart local v15       #profileFd:Landroid/os/ParcelFileDescriptor;
    .restart local v16       #profileAutoStop:Z
    :cond_15
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 884
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    goto :goto_7
.end method

.method final removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 4499
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v0, v1, :cond_0

    .line 4500
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/ActivityStack;->finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V

    .line 4501
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishing()V

    .line 4507
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4508
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->takeFromHistory()V

    .line 4511
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 4512
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->removeAppToken(Landroid/os/IBinder;)V

    .line 4516
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4517
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->removeUriPermissionsLocked()V

    .line 4519
    :cond_0
    return-void
.end method

.method removeHistoryRecordsForAppLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 1
    .parameter "app"

    .prologue
    .line 4720
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V

    .line 4721
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V

    .line 4722
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V

    .line 4723
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V

    .line 4724
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V

    .line 4725
    return-void
.end method

.method public removeTaskActivitiesLocked(IIZ)Lcom/android/server/am/ActivityRecord;
    .locals 6
    .parameter "taskId"
    .parameter "subTaskIndex"
    .parameter "taskRequired"

    .prologue
    const/4 v2, 0x0

    .line 4937
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/android/server/am/ActivityStack;->getTaskAccessInfoLocked(IZ)Lcom/android/server/am/TaskAccessInfo;

    move-result-object v0

    .line 4938
    .local v0, info:Lcom/android/server/am/TaskAccessInfo;
    iget-object v3, v0, Lcom/android/server/am/TaskAccessInfo;->root:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_1

    .line 4939
    if-eqz p3, :cond_0

    .line 4940
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeTaskLocked: unknown taskId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4961
    :cond_0
    :goto_0
    return-object v2

    .line 4945
    :cond_1
    if-gez p2, :cond_2

    .line 4947
    iget v2, v0, Lcom/android/server/am/TaskAccessInfo;->rootIndex:I

    invoke-direct {p0, p1, v2}, Lcom/android/server/am/ActivityStack;->performClearTaskAtIndexLocked(II)V

    .line 4948
    iget-object v2, v0, Lcom/android/server/am/TaskAccessInfo;->root:Lcom/android/server/am/ActivityRecord;

    goto :goto_0

    .line 4951
    :cond_2
    iget-object v3, v0, Lcom/android/server/am/TaskAccessInfo;->subtasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p2, v3, :cond_3

    .line 4952
    if-eqz p3, :cond_0

    .line 4953
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeTaskLocked: unknown subTaskIndex "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4959
    :cond_3
    iget-object v2, v0, Lcom/android/server/am/TaskAccessInfo;->subtasks:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskAccessInfo$SubTask;

    .line 4960
    .local v1, subtask:Lcom/android/server/am/TaskAccessInfo$SubTask;
    iget v2, v1, Lcom/android/server/am/TaskAccessInfo$SubTask;->index:I

    invoke-direct {p0, p1, v2}, Lcom/android/server/am/ActivityStack;->performClearTaskAtIndexLocked(II)V

    .line 4961
    iget-object v2, v1, Lcom/android/server/am/TaskAccessInfo$SubTask;->activity:Lcom/android/server/am/ActivityRecord;

    goto :goto_0
.end method

.method reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V
    .locals 5
    .parameter "timeout"
    .parameter "r"
    .parameter "thisTime"
    .parameter "totalTime"

    .prologue
    .line 3867
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 3868
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IActivityManager$WaitResult;

    .line 3869
    .local v1, w:Landroid/app/IActivityManager$WaitResult;
    iput-boolean p1, v1, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 3870
    if-eqz p2, :cond_0

    .line 3871
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 3873
    :cond_0
    iput-wide p3, v1, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 3874
    iput-wide p5, v1, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 3867
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3876
    .end local v1           #w:Landroid/app/IActivityManager$WaitResult;
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 3877
    return-void
.end method

.method reportActivityVisibleLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 7
    .parameter "r"

    .prologue
    const/4 v6, 0x0

    .line 3880
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 3881
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IActivityManager$WaitResult;

    .line 3882
    .local v1, w:Landroid/app/IActivityManager$WaitResult;
    iput-boolean v6, v1, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 3883
    if-eqz p1, :cond_0

    .line 3884
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 3886
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 3887
    iget-wide v2, v1, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    iput-wide v2, v1, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 3880
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3889
    .end local v1           #w:Landroid/app/IActivityManager$WaitResult;
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 3891
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    if-eqz v2, :cond_2

    .line 3892
    iput-boolean v6, p0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 3893
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard()V

    .line 3895
    :cond_2
    return-void
.end method

.method final requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;)Z
    .locals 6
    .parameter "token"
    .parameter "resultCode"
    .parameter "resultData"
    .parameter "reason"

    .prologue
    .line 4189
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v2

    .line 4194
    .local v2, index:I
    if-gez v2, :cond_0

    .line 4195
    const/4 v0, 0x0

    .line 4200
    :goto_0
    return v0

    .line 4197
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .local v1, r:Lcom/android/server/am/ActivityRecord;
    move-object v0, p0

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 4199
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    .line 4200
    const/4 v0, 0x1

    goto :goto_0
.end method

.method resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/os/ParcelFileDescriptor;I)Landroid/content/pm/ActivityInfo;
    .locals 9
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "startFlags"
    .parameter "profileFile"
    .parameter "profileFd"
    .parameter "userId"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 3542
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const v1, 0x10400

    invoke-interface {v0, p1, p2, v1, p6}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    .line 3547
    .local v8, rInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v8, :cond_3

    iget-object v6, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3552
    .end local v8           #rInfo:Landroid/content/pm/ResolveInfo;
    .local v6, aInfo:Landroid/content/pm/ActivityInfo;
    :goto_0
    if-eqz v6, :cond_2

    .line 3557
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, v6, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3561
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    .line 3562
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3563
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1, v5, v3}, Lcom/android/server/am/ActivityManagerService;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 3567
    :cond_0
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_1

    .line 3568
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3569
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->setOpenGlTraceApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 3573
    :cond_1
    if-eqz p4, :cond_2

    .line 3574
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3575
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    and-int/lit8 v4, p3, 0x8

    if-eqz v4, :cond_4

    :goto_1
    move-object v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->setProfileApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Z)V

    .line 3581
    :cond_2
    return-object v6

    .line 3547
    .end local v6           #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v8       #rInfo:Landroid/content/pm/ResolveInfo;
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 3548
    .end local v8           #rInfo:Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v7

    .line 3549
    .local v7, e:Landroid/os/RemoteException;
    const/4 v6, 0x0

    .restart local v6       #aInfo:Landroid/content/pm/ActivityInfo;
    goto :goto_0

    .end local v7           #e:Landroid/os/RemoteException;
    :cond_4
    move v5, v3

    .line 3575
    goto :goto_1
.end method

.method final resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .parameter "prev"

    .prologue
    .line 1697
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method final resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z
    .locals 26
    .parameter "prev"
    .parameter "options"

    .prologue
    .line 1703
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mPreviousActivity:Lcom/android/server/am/ActivityRecord;

    .line 1707
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v21

    .line 1711
    .local v21, next:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mUserLeaving:Z

    move/from16 v25, v0

    .line 1712
    .local v25, userLeaving:Z
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mUserLeaving:Z

    .line 1714
    if-nez v21, :cond_0

    .line 1717
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_0

    .line 1718
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1719
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->startHomeActivityLocked(I)Z

    move-result v2

    .line 2176
    :goto_0
    return v2

    .line 1723
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, v21

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 1726
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v21

    if-ne v2, v0, :cond_1

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v2, v3, :cond_1

    .line 1729
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 1730
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1731
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1732
    const/4 v2, 0x0

    goto :goto_0

    .line 1737
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz v2, :cond_4

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v21

    if-ne v2, v0, :cond_4

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v2, v3, :cond_3

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v2, v3, :cond_3

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v2, v3, :cond_4

    .line 1744
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 1745
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1746
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1747
    const/4 v2, 0x0

    goto :goto_0

    .line 1752
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1753
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1754
    const/4 v2, 0x0

    move-object/from16 v0, v21

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 1755
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1757
    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/os/Bundle;)V

    .line 1762
    sget-object v2, Lcom/android/server/am/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ActivityTrigger;->activityResumeTrigger(Landroid/content/Intent;)V

    .line 1767
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_5

    .line 1769
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1803
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_6

    .line 1805
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZ)V

    .line 1806
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1812
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v18, v0

    .line 1813
    .local v18, last:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-eqz v2, :cond_8

    if-eqz v18, :cond_8

    move-object/from16 v0, v18

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_8

    .line 1814
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x4000

    and-int/2addr v2, v3

    if-nez v2, :cond_7

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_8

    .line 1819
    :cond_7
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "no-history"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;)Z

    .line 1824
    :cond_8
    if-eqz p1, :cond_9

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_9

    .line 1825
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-nez v2, :cond_12

    if-eqz v21, :cond_12

    move-object/from16 v0, v21

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez v2, :cond_12

    .line 1826
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 1827
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1857
    :cond_9
    :goto_1
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, v21

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-interface {v2, v3, v4, v5}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1868
    :goto_2
    const/16 v23, 0x0

    .line 1869
    .local v23, noAnim:Z
    if-eqz p1, :cond_1c

    .line 1872
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->isCategoryHome:Z

    if-eqz v2, :cond_a

    .line 1873
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->startHomeByHomeKey()V

    .line 1877
    :cond_a
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_17

    .line 1880
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1881
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 1901
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->setAppWillBeHidden(Landroid/os/IBinder;)V

    .line 1902
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 1945
    :cond_b
    :goto_4
    if-nez v23, :cond_1e

    .line 1946
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ActivityRecord;->applyOptionsLocked()V

    .line 1951
    :goto_5
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_2a

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_2a

    .line 1955
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 1958
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ActivityRecord;->startLaunchTickingLocked()V

    .line 1960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v19, v0

    .line 1961
    .local v19, lastResumedActivity:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v20, v0

    .line 1963
    .local v20, lastState:Lcom/android/server/am/ActivityStack$ActivityState;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 1966
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1967
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1968
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 1969
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_c

    .line 1970
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 1972
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZZ)V

    .line 1973
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 1977
    const/16 v24, 0x0

    .line 1978
    .local v24, updated:Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_f

    .line 1979
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 1982
    :try_start_1
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->isWVGA:Z

    if-nez v2, :cond_d

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v4, "HtcLinkifyDispatcher"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.zdworks.android.toolbox/.ui.widget.BrightnessActivity"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.kikin/.KikinSearchActivity"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_d

    .line 1994
    :try_start_2
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xe

    if-ge v2, v4, :cond_1f

    .line 1996
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setNavigationBarVisibility(Ljava/lang/String;Z)V

    .line 2001
    :goto_6
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_NAV_BAR:Z

    if-eqz v2, :cond_d

    .line 2002
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resumeTopActivityLocked, pkg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sdk: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2011
    :cond_d
    :goto_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v2, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_20

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_8
    invoke-virtual {v4, v5, v2}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v16

    .line 2014
    .local v16, config:Landroid/content/res/Configuration;
    if-eqz v16, :cond_e

    .line 2015
    const/4 v2, 0x1

    move-object/from16 v0, v21

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 2017
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1, v4, v5}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    move-result v24

    .line 2018
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2020
    .end local v16           #config:Landroid/content/res/Configuration;
    :cond_f
    if-nez v24, :cond_21

    .line 2026
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v22

    .line 2030
    .local v22, nextNext:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_10

    .line 2032
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2034
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_11

    .line 2035
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2037
    :cond_11
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 2038
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 2039
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2040
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1839
    .end local v19           #lastResumedActivity:Lcom/android/server/am/ActivityRecord;
    .end local v20           #lastState:Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v22           #nextNext:Lcom/android/server/am/ActivityRecord;
    .end local v23           #noAnim:Z
    .end local v24           #updated:Z
    :cond_12
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_9

    .line 1840
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    goto/16 :goto_1

    .line 1860
    :catch_0
    move-exception v17

    .line 1861
    .local v17, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed trying to unstop package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1885
    .end local v17           #e:Ljava/lang/IllegalArgumentException;
    .restart local v23       #noAnim:Z
    :cond_13
    const-string v2, "do_home_anim_only"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1886
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->rosiePkgName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->rosiePkgName:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1889
    :cond_14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/am/ActivityStack;->lastTimeDoHtcAnim:J

    .line 1897
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v2, v4, :cond_16

    const/16 v2, 0x2007

    :goto_9
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_3

    :cond_16
    const/16 v2, 0x2009

    goto :goto_9

    .line 1906
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1907
    const/16 v23, 0x1

    .line 1908
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_4

    .line 1912
    :cond_18
    const-string v2, "do_home_anim_only"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1913
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->rosiePkgName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->rosiePkgName:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1916
    :cond_19
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/am/ActivityStack;->lastTimeDoHtcAnim:J

    .line 1924
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v2, v4, :cond_1b

    const/16 v2, 0x1006

    :goto_a
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_4

    :cond_1b
    const/16 v2, 0x1008

    goto :goto_a

    .line 1933
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_b

    .line 1936
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1937
    const/16 v23, 0x1

    .line 1938
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_4

    .line 1941
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v3, 0x1006

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_4

    .line 1948
    :cond_1e
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    goto/16 :goto_5

    .line 1998
    .restart local v19       #lastResumedActivity:Lcom/android/server/am/ActivityRecord;
    .restart local v20       #lastState:Lcom/android/server/am/ActivityStack$ActivityState;
    .restart local v24       #updated:Z
    :cond_1f
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setNavigationBarVisibility(Ljava/lang/String;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_6

    .line 2005
    :catch_1
    move-exception v2

    goto/16 :goto_7

    .line 2011
    :cond_20
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 2018
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    .line 2045
    :cond_21
    :try_start_6
    move-object/from16 v0, v21

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 2046
    .local v15, a:Ljava/util/ArrayList;
    if-eqz v15, :cond_22

    .line 2047
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 2048
    .local v14, N:I
    move-object/from16 v0, v21

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_22

    if-lez v14, :cond_22

    .line 2052
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v2, v3, v15}, Landroid/app/IApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    .line 2056
    .end local v14           #N:I
    :cond_22
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-eqz v2, :cond_23

    .line 2057
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v2, v3, v4}, Landroid/app/IApplicationThread;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V

    .line 2060
    :cond_23
    const/16 v2, 0x7537

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2064
    const/4 v2, 0x0

    move-object/from16 v0, v21

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 2065
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2066
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    .line 2067
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/app/IApplicationThread;->scheduleResumeActivity(Landroid/os/IBinder;Z)V

    .line 2071
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mPreviousActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_24

    move-object/from16 v0, v21

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-eqz v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v2

    if-nez v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->testIsSystemReady()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2073
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    sget-object v4, Lcom/android/server/am/ActivityStack;->INTENT_NOTIFY_ENTER_HOME:Landroid/content/Intent;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v2 .. v13}, Lcom/android/server/am/ActivityManagerService;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZI)I

    .line 2078
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 2121
    const/4 v2, 0x1

    :try_start_7
    move-object/from16 v0, v21

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 2122
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 2134
    const/4 v2, 0x0

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 2135
    const/4 v2, 0x0

    move-object/from16 v0, v21

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->haveState:Z

    .line 2136
    const/4 v2, 0x0

    move-object/from16 v0, v21

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 2171
    .end local v15           #a:Ljava/util/ArrayList;
    .end local v19           #lastResumedActivity:Lcom/android/server/am/ActivityRecord;
    .end local v20           #lastState:Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v24           #updated:Z
    :goto_b
    sget-boolean v2, Lcom/android/server/am/PerformanceLogUtilAm;->Enabled:Z

    if-eqz v2, :cond_25

    .line 2172
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/server/am/PerformanceLogUtilAm;->logResumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 2176
    :cond_25
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2080
    .restart local v19       #lastResumedActivity:Lcom/android/server/am/ActivityRecord;
    .restart local v20       #lastState:Lcom/android/server/am/ActivityStack$ActivityState;
    .restart local v24       #updated:Z
    :catch_2
    move-exception v17

    .line 2084
    .local v17, e:Ljava/lang/Exception;
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 2085
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2086
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restarting because process died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    move-object/from16 v0, v21

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    if-nez v2, :cond_27

    .line 2088
    const/4 v2, 0x1

    move-object/from16 v0, v21

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    .line 2114
    :cond_26
    :goto_c
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 2115
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2092
    :cond_27
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ActivityRecord;->showStartingWindow()Z

    move-result v2

    if-eqz v2, :cond_29

    sget-boolean v2, Lcom/android/server/am/ActivityStack;->SHOW_APP_STARTING_PREVIEW:Z

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->isSkipStartingWindowOnNextActivityLocked()Z

    move-result v2

    if-nez v2, :cond_29

    .line 2096
    invoke-static {}, Lcom/android/server/am/ActivityStack;->debugStartingWindow()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 2097
    const-string v2, "ActivityManager"

    const-string v3, "Show starting window"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v21

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v6

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, v21

    iget v8, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move-object/from16 v0, v21

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    move-object/from16 v0, v21

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIILandroid/os/IBinder;Z)V

    goto :goto_c

    .line 2108
    :cond_29
    invoke-static {}, Lcom/android/server/am/ActivityStack;->debugStartingWindow()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 2109
    const-string v2, "ActivityManager"

    const-string v3, "Show no starting window"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 2123
    .end local v17           #e:Ljava/lang/Exception;
    .restart local v15       #a:Ljava/util/ArrayList;
    :catch_3
    move-exception v17

    .line 2126
    .restart local v17       #e:Ljava/lang/Exception;
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception thrown during resume of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2127
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "resume-exception"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;)Z

    .line 2129
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2140
    .end local v15           #a:Ljava/util/ArrayList;
    .end local v17           #e:Ljava/lang/Exception;
    .end local v19           #lastResumedActivity:Lcom/android/server/am/ActivityRecord;
    .end local v20           #lastState:Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v24           #updated:Z
    :cond_2a
    move-object/from16 v0, v21

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    if-nez v2, :cond_2c

    .line 2141
    const/4 v2, 0x1

    move-object/from16 v0, v21

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    .line 2168
    :cond_2b
    :goto_d
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    goto/16 :goto_b

    .line 2145
    :cond_2c
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ActivityRecord;->showStartingWindow()Z

    move-result v2

    if-eqz v2, :cond_2e

    sget-boolean v2, Lcom/android/server/am/ActivityStack;->SHOW_APP_STARTING_PREVIEW:Z

    if-eqz v2, :cond_2e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->isSkipStartingWindowOnNextActivityLocked()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 2149
    invoke-static {}, Lcom/android/server/am/ActivityStack;->debugStartingWindow()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 2150
    const-string v2, "ActivityManager"

    const-string v3, "Show starting window"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v21

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v6

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, v21

    iget v8, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move-object/from16 v0, v21

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    move-object/from16 v0, v21

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIILandroid/os/IBinder;Z)V

    goto :goto_d

    .line 2161
    :cond_2e
    invoke-static {}, Lcom/android/server/am/ActivityStack;->debugStartingWindow()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 2162
    const-string v2, "ActivityManager"

    const-string v3, "Show no starting window"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1859
    .end local v23           #noAnim:Z
    :catch_4
    move-exception v2

    goto/16 :goto_2
.end method

.method final scheduleDestroyActivities(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)V
    .locals 3
    .parameter "owner"
    .parameter "oomAdj"
    .parameter "reason"

    .prologue
    .line 4537
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4538
    .local v0, msg:Landroid/os/Message;
    new-instance v1, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;-><init>(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4539
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4540
    return-void
.end method

.method final scheduleIdleLocked()V
    .locals 2

    .prologue
    .line 4025
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4026
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x67

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4027
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4028
    return-void
.end method

.method public final screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "who"

    .prologue
    const/4 v4, 0x0

    const/4 v7, -0x1

    .line 1034
    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-nez v5, :cond_0

    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-nez v5, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getActivityType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 1073
    :cond_0
    :goto_0
    return-object v4

    .line 1039
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1042
    .local v1, res:Landroid/content/res/Resources;
    sget-boolean v5, Lcom/android/server/am/ActivityStack;->HTC_RECENT_APP_FUSION:Z

    if-eqz v5, :cond_2

    .line 1043
    iget v5, p0, Lcom/android/server/am/ActivityStack;->mThumbnailWidth:I

    if-ne v5, v7, :cond_2

    iget v5, p0, Lcom/android/server/am/ActivityStack;->mThumbnailHeight:I

    if-ne v5, v7, :cond_2

    .line 1045
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 1046
    .local v2, s:Landroid/graphics/Point;
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v2}, Lcom/android/server/wm/WindowManagerService;->getInitialDisplaySize(Landroid/graphics/Point;)V

    .line 1047
    iget v5, v2, Landroid/graphics/Point;->x:I

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/server/am/ActivityStack;->mThumbnailWidth:I

    .line 1048
    iget v5, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/server/am/ActivityStack;->mThumbnailHeight:I

    .line 1049
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mThumbnailWidth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/am/ActivityStack;->mThumbnailWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mThumbnailHeight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/am/ActivityStack;->mThumbnailHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    .end local v2           #s:Landroid/graphics/Point;
    :cond_2
    iget v3, p0, Lcom/android/server/am/ActivityStack;->mThumbnailWidth:I

    .line 1056
    .local v3, w:I
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mThumbnailHeight:I

    .line 1057
    .local v0, h:I
    if-gez v3, :cond_3

    .line 1058
    const v5, 0x1050002

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/am/ActivityStack;->mThumbnailWidth:I

    .line 1060
    const v5, 0x1050001

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityStack;->mThumbnailHeight:I

    .line 1064
    :cond_3
    if-lez v3, :cond_0

    .line 1066
    sget-boolean v4, Lcom/android/server/am/ActivityStack;->HTC_RECENT_APP_FUSION:Z

    if-eqz v4, :cond_4

    .line 1067
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v4, v5, v3, v0}, Lcom/android/server/wm/WindowManagerService;->screenshotApplicationsRecent(Landroid/os/IBinder;II)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0

    .line 1069
    :cond_4
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v4, v5, v3, v0}, Lcom/android/server/wm/WindowManagerService;->screenshotApplications(Landroid/os/IBinder;II)Landroid/graphics/Bitmap;

    move-result-object v4

    goto/16 :goto_0
.end method

.method sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 8
    .parameter "callingUid"
    .parameter "r"
    .parameter "resultWho"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 3900
    if-lez p1, :cond_0

    .line 3901
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v2

    invoke-virtual {v0, p1, v1, p6, v2}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;)V

    .line 3908
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p2, :cond_1

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_1

    .line 3910
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3911
    .local v7, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    new-instance v0, Landroid/app/ResultInfo;

    invoke-direct {v0, p3, p4, p5, p6}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3913
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v0, v1, v7}, Landroid/app/IApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3921
    .end local v7           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :goto_0
    return-void

    .line 3915
    :catch_0
    move-exception v6

    .line 3916
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown sending result to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3920
    .end local v6           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    move-object v0, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityRecord;->addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method final showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 632
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 633
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x1e

    iput v1, v0, Landroid/os/Message;->what:I

    .line 634
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v1, v1, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .end local p1
    :cond_0
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 635
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 636
    return-void
.end method

.method final startActivities(Landroid/app/IApplicationThread;I[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I
    .locals 23
    .parameter "caller"
    .parameter "callingUid"
    .parameter "intents"
    .parameter "resolvedTypes"
    .parameter "resultTo"
    .parameter "options"
    .parameter "userId"

    .prologue
    .line 3789
    if-nez p3, :cond_0

    .line 3790
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "intents is null"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3792
    :cond_0
    if-nez p4, :cond_1

    .line 3793
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "resolvedTypes is null"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3795
    :cond_1
    move-object/from16 v0, p3

    array-length v1, v0

    move-object/from16 v0, p4

    array-length v3, v0

    if-eq v1, v3, :cond_2

    .line 3796
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "intents are length different than resolvedTypes"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3799
    :cond_2
    const/4 v1, 0x1

    new-array v0, v1, [Lcom/android/server/am/ActivityRecord;

    move-object/from16 v16, v0

    .line 3802
    .local v16, outActivity:[Lcom/android/server/am/ActivityRecord;
    if-ltz p2, :cond_3

    .line 3803
    const/4 v11, -0x1

    .line 3810
    .local v11, callingPid:I
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    .line 3812
    .local v19, origId:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v22, v0

    monitor-enter v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3814
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    :try_start_1
    move-object/from16 v0, p3

    array-length v1, v0

    move/from16 v0, v17

    if-ge v0, v1, :cond_c

    .line 3815
    aget-object v18, p3, v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3816
    .local v18, intent:Landroid/content/Intent;
    if-nez v18, :cond_5

    move-object/from16 v2, v18

    .line 3814
    .end local v18           #intent:Landroid/content/Intent;
    .local v2, intent:Landroid/content/Intent;
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 3804
    .end local v2           #intent:Landroid/content/Intent;
    .end local v11           #callingPid:I
    .end local v17           #i:I
    .end local v19           #origId:J
    :cond_3
    if-nez p1, :cond_4

    .line 3805
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 3806
    .restart local v11       #callingPid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    goto :goto_0

    .line 3808
    .end local v11           #callingPid:I
    :cond_4
    const/16 p2, -0x1

    move/from16 v11, p2

    .restart local v11       #callingPid:I
    goto :goto_0

    .line 3821
    .restart local v17       #i:I
    .restart local v18       #intent:Landroid/content/Intent;
    .restart local v19       #origId:J
    :cond_5
    if-eqz v18, :cond_6

    :try_start_2
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3822
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "File descriptors passed in Intent"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3857
    .end local v18           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3859
    .end local v17           #i:I
    :catchall_1
    move-exception v1

    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 3825
    .restart local v17       #i:I
    .restart local v18       #intent:Landroid/content/Intent;
    :cond_6
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_7

    const/4 v15, 0x1

    .line 3828
    .local v15, componentSpecified:Z
    :goto_3
    new-instance v2, Landroid/content/Intent;

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3831
    .end local v18           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    aget-object v3, p4, v17

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v7, p7

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityStack;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/os/ParcelFileDescriptor;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    .line 3834
    .local v7, aInfo:Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p7

    invoke-virtual {v1, v7, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    .line 3836
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v1, :cond_8

    if-eqz v7, :cond_8

    iget-object v1, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x1000

    and-int/2addr v1, v3

    if-eqz v1, :cond_8

    .line 3838
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "FLAG_CANT_SAVE_STATE not supported here"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3825
    .end local v2           #intent:Landroid/content/Intent;
    .end local v7           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v15           #componentSpecified:Z
    .restart local v18       #intent:Landroid/content/Intent;
    :cond_7
    const/4 v15, 0x0

    goto :goto_3

    .line 3843
    .end local v18           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v7       #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v15       #componentSpecified:Z
    :cond_8
    if-eqz p6, :cond_9

    move-object/from16 v0, p3

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    move/from16 v0, v17

    if-ne v0, v1, :cond_9

    .line 3844
    move-object/from16 v14, p6

    .line 3848
    .local v14, theseOptions:Landroid/os/Bundle;
    :goto_4
    aget-object v6, p4, v17

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v13, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v5, v2

    move-object/from16 v8, p5

    move/from16 v12, p2

    invoke-virtual/range {v3 .. v16}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIIILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;)I

    move-result v21

    .line 3851
    .local v21, res:I
    if-gez v21, :cond_a

    .line 3852
    monitor-exit v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3859
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3862
    .end local v2           #intent:Landroid/content/Intent;
    .end local v7           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v14           #theseOptions:Landroid/os/Bundle;
    .end local v15           #componentSpecified:Z
    .end local v21           #res:I
    :goto_5
    return v21

    .line 3846
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v7       #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v15       #componentSpecified:Z
    :cond_9
    const/4 v14, 0x0

    .restart local v14       #theseOptions:Landroid/os/Bundle;
    goto :goto_4

    .line 3855
    .restart local v21       #res:I
    :cond_a
    const/4 v1, 0x0

    :try_start_5
    aget-object v1, v16, v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    aget-object v1, v16, v1

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 p5, v0

    :goto_6
    goto/16 :goto_2

    :cond_b
    const/16 p5, 0x0

    goto :goto_6

    .line 3857
    .end local v2           #intent:Landroid/content/Intent;
    .end local v7           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v14           #theseOptions:Landroid/os/Bundle;
    .end local v15           #componentSpecified:Z
    .end local v21           #res:I
    :cond_c
    monitor-exit v22
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3859
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3862
    const/16 v21, 0x0

    goto :goto_5
.end method

.method final startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIIILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;)I
    .locals 32
    .parameter "caller"
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "aInfo"
    .parameter "resultTo"
    .parameter "resultWho"
    .parameter "requestCode"
    .parameter "callingPid"
    .parameter "callingUid"
    .parameter "startFlags"
    .parameter "options"
    .parameter "componentSpecified"
    .parameter "outActivity"

    .prologue
    .line 2878
    const/16 v23, 0x0

    .line 2880
    .local v23, err:I
    const/16 v20, 0x0

    .line 2881
    .local v20, callerApp:Lcom/android/server/am/ProcessRecord;
    if-eqz p1, :cond_0

    .line 2882
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v20

    .line 2883
    if-eqz v20, :cond_4

    .line 2884
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 p8, v0

    .line 2885
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 p9, v0

    .line 2894
    :cond_0
    :goto_0
    if-nez v23, :cond_1

    .line 2895
    if-eqz p4, :cond_5

    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserId;->getUserId(I)I

    move-result v30

    .line 2896
    .local v30, userId:I
    :goto_1
    const-string v4, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "START {"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " u="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "} from pid "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v20, :cond_6

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    :goto_2
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2899
    sget-object v3, Lcom/android/server/am/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/internal/app/ActivityTrigger;->activityStartTrigger(Landroid/content/Intent;)V

    .line 2905
    .end local v30           #userId:I
    :cond_1
    const-string v3, "android.intent.category.HOME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->isCategoryHome:Z

    .line 2910
    sget-boolean v3, Lcom/android/server/am/PerformanceLogUtilAm;->Enabled:Z

    if-eqz v3, :cond_2

    .line 2911
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    if-eqz v20, :cond_7

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    :goto_3
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v4, v0, v1, v3}, Lcom/android/server/am/PerformanceLogUtilAm;->logStartActivityLocked(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;I)V

    .line 2916
    :cond_2
    const/16 v28, 0x0

    .line 2917
    .local v28, sourceRecord:Lcom/android/server/am/ActivityRecord;
    const/4 v5, 0x0

    .line 2918
    .local v5, resultRecord:Lcom/android/server/am/ActivityRecord;
    if-eqz p5, :cond_3

    .line 2919
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v24

    .line 2922
    .local v24, index:I
    if-ltz v24, :cond_3

    .line 2923
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    .end local v28           #sourceRecord:Lcom/android/server/am/ActivityRecord;
    check-cast v28, Lcom/android/server/am/ActivityRecord;

    .line 2924
    .restart local v28       #sourceRecord:Lcom/android/server/am/ActivityRecord;
    if-ltz p7, :cond_3

    move-object/from16 v0, v28

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v3, :cond_3

    .line 2925
    move-object/from16 v5, v28

    .line 2930
    .end local v24           #index:I
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v25

    .line 2932
    .local v25, launchFlags:I
    const/high16 v3, 0x200

    and-int v3, v3, v25

    if-eqz v3, :cond_a

    if-eqz v28, :cond_a

    .line 2936
    if-ltz p7, :cond_8

    .line 2937
    invoke-static/range {p11 .. p11}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2938
    const/4 v3, -0x3

    .line 3085
    :goto_4
    return v3

    .line 2887
    .end local v5           #resultRecord:Lcom/android/server/am/ActivityRecord;
    .end local v25           #launchFlags:I
    .end local v28           #sourceRecord:Lcom/android/server/am/ActivityRecord;
    :cond_4
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to find app for caller "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " (pid="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ") when starting: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2890
    const/16 v23, -0x4

    goto/16 :goto_0

    .line 2895
    :cond_5
    const/16 v30, 0x0

    goto/16 :goto_1

    .restart local v30       #userId:I
    :cond_6
    move/from16 v3, p8

    .line 2896
    goto/16 :goto_2

    .end local v30           #userId:I
    :cond_7
    move/from16 v3, p8

    .line 2911
    goto/16 :goto_3

    .line 2940
    .restart local v5       #resultRecord:Lcom/android/server/am/ActivityRecord;
    .restart local v25       #launchFlags:I
    .restart local v28       #sourceRecord:Lcom/android/server/am/ActivityRecord;
    :cond_8
    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 2941
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 p6, v0

    .line 2942
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move/from16 p7, v0

    .line 2943
    const/4 v3, 0x0

    move-object/from16 v0, v28

    iput-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 2944
    if-eqz v5, :cond_9

    .line 2945
    move-object/from16 v0, v28

    move-object/from16 v1, p6

    move/from16 v2, p7

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->removeResultsLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V

    .line 2949
    :cond_9
    if-eqz v28, :cond_a

    move-object/from16 v0, v28

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_a

    .line 2950
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startActivityLocked(): sourceRecord is finishing "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/am/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2955
    :cond_a
    if-nez v23, :cond_b

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_b

    .line 2958
    const/16 v23, -0x1

    .line 2961
    :cond_b
    if-nez v23, :cond_c

    if-nez p4, :cond_c

    .line 2964
    const/16 v23, -0x2

    .line 2967
    :cond_c
    if-eqz v23, :cond_e

    .line 2968
    if-eqz v5, :cond_d

    .line 2969
    const/4 v4, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 2973
    :cond_d
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 2974
    invoke-static/range {p11 .. p11}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    move/from16 v3, v23

    .line 2975
    goto/16 :goto_4

    .line 2978
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "android.permission.START_ANY_ACTIVITY"

    move/from16 v0, p8

    move/from16 v1, p9

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v29

    .line 2980
    .local v29, startAnyPerm:I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p4

    iget-boolean v11, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v21

    .line 2982
    .local v21, componentPerm:I
    if-eqz v29, :cond_11

    if-eqz v21, :cond_11

    .line 2983
    if-eqz v5, :cond_f

    .line 2984
    const/4 v4, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 2988
    :cond_f
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 2990
    move-object/from16 v0, p4

    iget-boolean v3, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v3, :cond_10

    .line 2991
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: starting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not exported from uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 3001
    .local v26, msg:Ljava/lang/String;
    :goto_5
    const-string v3, "ActivityManager"

    move-object/from16 v0, v26

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3002
    new-instance v3, Ljava/lang/SecurityException;

    move-object/from16 v0, v26

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2996
    .end local v26           #msg:Ljava/lang/String;
    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: starting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requires "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .restart local v26       #msg:Ljava/lang/String;
    goto :goto_5

    .line 3005
    .end local v26           #msg:Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_14

    .line 3006
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v3, :cond_14

    .line 3007
    const/16 v19, 0x0

    .line 3011
    .local v19, abort:Z
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v31

    .line 3012
    .local v31, watchIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v3, v0, v4}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_13

    const/16 v19, 0x1

    .line 3018
    .end local v31           #watchIntent:Landroid/content/Intent;
    :goto_6
    if-eqz v19, :cond_14

    .line 3019
    if-eqz v5, :cond_12

    .line 3020
    const/4 v4, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 3026
    :cond_12
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 3027
    invoke-static/range {p11 .. p11}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 3028
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 3012
    .restart local v31       #watchIntent:Landroid/content/Intent;
    :cond_13
    const/16 v19, 0x0

    goto :goto_6

    .line 3014
    .end local v31           #watchIntent:Landroid/content/Intent;
    :catch_0
    move-exception v22

    .line 3015
    .local v22, e:Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    goto :goto_6

    .line 3033
    .end local v19           #abort:Z
    .end local v22           #e:Landroid/os/RemoteException;
    :cond_14
    new-instance v6, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v3, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v8, p0

    move-object/from16 v9, v20

    move/from16 v10, p9

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object v15, v5

    move-object/from16 v16, p6

    move/from16 v17, p7

    move/from16 v18, p12

    invoke-direct/range {v6 .. v18}, Lcom/android/server/am/ActivityRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ProcessRecord;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZ)V

    .line 3036
    .local v6, r:Lcom/android/server/am/ActivityRecord;
    if-eqz p13, :cond_15

    .line 3037
    const/4 v3, 0x0

    aput-object v6, p13, v3

    .line 3040
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_18

    .line 3041
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v0, p9

    if-eq v3, v0, :cond_17

    .line 3043
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "Activity start"

    move/from16 v0, p8

    move/from16 v1, p9

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/server/am/ActivityManagerService;->checkAppSwitchAllowedLocked(IILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 3044
    new-instance v27, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;

    invoke-direct/range {v27 .. v27}, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;-><init>()V

    .line 3045
    .local v27, pal:Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;
    move-object/from16 v0, v27

    iput-object v6, v0, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;->r:Lcom/android/server/am/ActivityRecord;

    .line 3046
    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;->sourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 3047
    move/from16 v0, p10

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;->startFlags:I

    .line 3048
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPendingActivityLaunches:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3049
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 3050
    invoke-static/range {p11 .. p11}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 3051
    const/4 v3, 0x4

    goto/16 :goto_4

    .line 3055
    .end local v27           #pal:Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    if-eqz v3, :cond_1b

    .line 3061
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const-wide/16 v7, 0x0

    iput-wide v7, v3, Lcom/android/server/am/ActivityManagerService;->mAppSwitchesAllowedTime:J

    .line 3066
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->doPendingActivityLaunchesLocked(Z)V

    .line 3070
    :cond_18
    if-eqz v6, :cond_19

    iget-object v3, v6, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_19

    .line 3071
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v20

    invoke-direct {v0, v6, v1, v2}, Lcom/android/server/am/ActivityStack;->logCaller(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;)V

    .line 3075
    :cond_19
    const/4 v11, 0x1

    move-object/from16 v7, p0

    move-object v8, v6

    move-object/from16 v9, v28

    move/from16 v10, p10

    move-object/from16 v12, p11

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/am/ActivityStack;->startActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;IZLandroid/os/Bundle;)I

    move-result v23

    .line 3077
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_1a

    .line 3082
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 3083
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard()V

    :cond_1a
    move/from16 v3, v23

    .line 3085
    goto/16 :goto_4

    .line 3063
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    goto :goto_7
.end method

.method final startActivityMayWait(Landroid/app/IApplicationThread;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/app/IActivityManager$WaitResult;Landroid/content/res/Configuration;Landroid/os/Bundle;I)I
    .locals 41
    .parameter "caller"
    .parameter "callingUid"
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "resultTo"
    .parameter "resultWho"
    .parameter "requestCode"
    .parameter "startFlags"
    .parameter "profileFile"
    .parameter "profileFd"
    .parameter "outResult"
    .parameter "config"
    .parameter "options"
    .parameter "userId"

    .prologue
    .line 3590
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3591
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "File descriptors passed in Intent"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3593
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_c

    const/16 v21, 0x1

    .line 3596
    .local v21, componentSpecified:Z
    :goto_0
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, p3

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .end local p3
    .local v4, intent:Landroid/content/Intent;
    move-object/from16 v3, p0

    move-object/from16 v5, p4

    move/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move/from16 v9, p14

    .line 3599
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/os/ParcelFileDescriptor;I)Landroid/content/pm/ActivityInfo;

    move-result-object v13

    .line 3603
    .local v13, aInfo:Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/am/ActivityStack;->startLaunchActivity(Landroid/content/pm/ActivityInfo;)V

    .line 3606
    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v13, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v6, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v5, v6}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3607
    const/16 p14, 0x0

    .line 3609
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p14

    invoke-virtual {v3, v13, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v23

    .line 3612
    .end local v13           #aInfo:Landroid/content/pm/ActivityInfo;
    .local v23, aInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v23, :cond_4

    .line 3613
    const/16 v33, 0x0

    .line 3614
    .local v33, pr:Lcom/android/server/am/ProcessRecord;
    const/16 v32, -0x1

    .line 3615
    .local v32, pid:I
    const-wide/16 v25, 0x0

    .line 3616
    .local v25, createTime:J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 3617
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v23

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v6, v7}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v33

    .line 3618
    if-eqz v33, :cond_2

    .line 3619
    const/4 v3, 0x1

    move-object/from16 v0, v33

    iput-boolean v3, v0, Lcom/android/server/am/ProcessRecord;->willLaunch:Z

    .line 3620
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-object/from16 v0, v33

    iput-wide v6, v0, Lcom/android/server/am/ProcessRecord;->willLaunchTime:J

    .line 3621
    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v32, v0

    .line 3622
    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/android/server/am/ProcessRecord;->createTime:J

    move-wide/from16 v25, v0

    .line 3624
    :cond_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3625
    if-eqz v33, :cond_4

    move-object/from16 v0, v33

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    sget v5, Lcom/android/server/am/ProcessList;->HIDDEN_APP_MIN_ADJ:I

    if-le v3, v5, :cond_4

    .line 3626
    sget v3, Lcom/android/server/am/ProcessList;->HIDDEN_APP_MIN_ADJ:I

    move/from16 v0, v32

    invoke-static {v0, v3}, Landroid/os/Process;->setOomAdj(II)Z

    .line 3627
    move/from16 v0, v32

    move-wide/from16 v1, v25

    invoke-static {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->isDyingProcess(IJ)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3628
    const-string v3, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Launch activity in dying process pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3629
    const/16 v39, 0x0

    .line 3631
    .local v39, waitCount:I
    :cond_3
    add-int/lit8 v39, v39, 0x1

    .line 3632
    const-string v3, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wait dying process to be died, waitCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3634
    const-wide/16 v5, 0x64

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3636
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 3637
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v23

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v6, v7}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v33

    .line 3638
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3639
    if-eqz v33, :cond_4

    move-object/from16 v0, v33

    iget-wide v5, v0, Lcom/android/server/am/ProcessRecord;->createTime:J

    cmp-long v3, v25, v5

    if-nez v3, :cond_4

    const/16 v3, 0x14

    move/from16 v0, v39

    if-lt v0, v3, :cond_3

    .line 3645
    .end local v25           #createTime:J
    .end local v32           #pid:I
    .end local v33           #pr:Lcom/android/server/am/ProcessRecord;
    .end local v39           #waitCount:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v40, v0

    monitor-enter v40

    .line 3647
    if-ltz p2, :cond_d

    .line 3648
    const/16 v17, -0x1

    .line 3656
    .local v17, callingPid:I
    :goto_2
    if-eqz p12, :cond_f

    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p12

    invoke-virtual {v3, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v3

    if-eqz v3, :cond_f

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 3661
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v30

    .line 3663
    .local v30, origId:J
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_15

    if-eqz v23, :cond_15

    move-object/from16 v0, v23

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x1000

    and-int/2addr v3, v5

    if-eqz v3, :cond_15

    .line 3667
    move-object/from16 v0, v23

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 3668
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v23

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, v5, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 3671
    :cond_5
    move/from16 v36, v17

    .line 3672
    .local v36, realCallingPid:I
    move/from16 v8, p2

    .line 3673
    .local v8, realCallingUid:I
    if-eqz p1, :cond_6

    .line 3674
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v24

    .line 3675
    .local v24, callerApp:Lcom/android/server/am/ProcessRecord;
    if-eqz v24, :cond_10

    .line 3676
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v36, v0

    .line 3677
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3687
    .end local v24           #callerApp:Lcom/android/server/am/ProcessRecord;
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x2

    const-string v7, "android"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x1

    new-array v12, v3, [Landroid/content/Intent;

    const/4 v3, 0x0

    aput-object v4, v12, v3

    const/4 v3, 0x1

    new-array v13, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p4, v13, v3

    const/high16 v14, 0x5000

    const/4 v15, 0x0

    invoke-virtual/range {v5 .. v15}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;ILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v38

    .line 3693
    .local v38, target:Landroid/content/IIntentSender;
    new-instance v29, Landroid/content/Intent;

    invoke-direct/range {v29 .. v29}, Landroid/content/Intent;-><init>()V

    .line 3694
    .local v29, newIntent:Landroid/content/Intent;
    if-ltz p7, :cond_7

    .line 3696
    const-string v3, "has_result"

    const/4 v5, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3698
    :cond_7
    const-string v3, "intent"

    new-instance v5, Landroid/content/IntentSender;

    move-object/from16 v0, v38

    invoke-direct {v5, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3700
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 3701
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/am/ActivityRecord;

    .line 3702
    .local v28, hist:Lcom/android/server/am/ActivityRecord;
    const-string v3, "cur_app"

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3704
    const-string v3, "cur_task"

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3707
    .end local v28           #hist:Lcom/android/server/am/ActivityRecord;
    :cond_8
    const-string v3, "new_app"

    move-object/from16 v0, v23

    iget-object v5, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3709
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3710
    const-string v3, "android"

    const-class v5, Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 3712
    move-object/from16 p3, v29

    .line 3713
    .end local v4           #intent:Landroid/content/Intent;
    .restart local p3
    const/16 p4, 0x0

    .line 3714
    const/16 p1, 0x0

    .line 3715
    :try_start_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    .line 3716
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-result v17

    .line 3717
    const/16 v21, 0x1

    .line 3719
    :try_start_5
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/4 v5, 0x0

    const v6, 0x10400

    move-object/from16 v0, p3

    move/from16 v1, p14

    invoke-interface {v3, v0, v5, v6, v1}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v35

    .line 3724
    .local v35, rInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v35, :cond_11

    move-object/from16 v0, v35

    iget-object v13, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 3725
    .end local v23           #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v13       #aInfo:Landroid/content/pm/ActivityInfo;
    :goto_4
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p14

    invoke-virtual {v3, v13, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    move-result-object v13

    .line 3733
    .end local v8           #realCallingUid:I
    .end local v29           #newIntent:Landroid/content/Intent;
    .end local v35           #rInfo:Landroid/content/pm/ResolveInfo;
    .end local v36           #realCallingPid:I
    .end local v38           #target:Landroid/content/IIntentSender;
    :goto_5
    const/16 v22, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move/from16 v16, p7

    move/from16 v18, p2

    move/from16 v19, p8

    move-object/from16 v20, p13

    :try_start_7
    invoke-virtual/range {v9 .. v22}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIIILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;)I

    move-result v37

    .line 3737
    .local v37, res:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_9

    .line 3742
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "android.permission.CHANGE_CONFIGURATION"

    const-string v6, "updateConfiguration()"

    invoke-virtual {v3, v5, v6}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3744
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 3747
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p12

    invoke-virtual {v3, v0, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    .line 3750
    :cond_9
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3752
    if-eqz p11, :cond_b

    .line 3753
    move/from16 v0, v37

    move-object/from16 v1, p11

    iput v0, v1, Landroid/app/IActivityManager$WaitResult;->result:I

    .line 3754
    if-nez v37, :cond_12

    .line 3755
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    move-object/from16 v0, p11

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 3758
    :cond_a
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_3

    .line 3761
    :goto_6
    :try_start_9
    move-object/from16 v0, p11

    iget-boolean v3, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    if-nez v3, :cond_b

    move-object/from16 v0, p11

    iget-object v3, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v3, :cond_a

    .line 3782
    :cond_b
    :goto_7
    monitor-exit v40
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .end local v37           #res:I
    :goto_8
    return v37

    .line 3593
    .end local v13           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v17           #callingPid:I
    .end local v21           #componentSpecified:Z
    .end local v30           #origId:J
    :cond_c
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 3624
    .end local p3
    .restart local v4       #intent:Landroid/content/Intent;
    .restart local v21       #componentSpecified:Z
    .restart local v23       #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v25       #createTime:J
    .restart local v32       #pid:I
    .restart local v33       #pr:Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v3

    :try_start_a
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v3

    .line 3638
    .restart local v39       #waitCount:I
    :catchall_1
    move-exception v3

    :try_start_b
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v3

    .line 3649
    .end local v25           #createTime:J
    .end local v32           #pid:I
    .end local v33           #pr:Lcom/android/server/am/ProcessRecord;
    .end local v39           #waitCount:I
    :cond_d
    if-nez p1, :cond_e

    .line 3650
    :try_start_c
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v17

    .line 3651
    .restart local v17       #callingPid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    goto/16 :goto_2

    .line 3653
    .end local v17           #callingPid:I
    :cond_e
    const/16 p2, -0x1

    move/from16 v17, p2

    .restart local v17       #callingPid:I
    goto/16 :goto_2

    .line 3656
    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 3679
    .restart local v8       #realCallingUid:I
    .restart local v24       #callerApp:Lcom/android/server/am/ProcessRecord;
    .restart local v30       #origId:J
    .restart local v36       #realCallingPid:I
    :cond_10
    const-string v3, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find app for caller "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") when starting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3682
    invoke-static/range {p13 .. p13}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 3683
    const/16 v37, -0x4

    monitor-exit v40
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    move-object/from16 v13, v23

    .end local v23           #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v13       #aInfo:Landroid/content/pm/ActivityInfo;
    move-object/from16 p3, v4

    .end local v4           #intent:Landroid/content/Intent;
    .restart local p3
    goto :goto_8

    .line 3724
    .end local v13           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v24           #callerApp:Lcom/android/server/am/ProcessRecord;
    .restart local v23       #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v29       #newIntent:Landroid/content/Intent;
    .restart local v35       #rInfo:Landroid/content/pm/ResolveInfo;
    .restart local v38       #target:Landroid/content/IIntentSender;
    :cond_11
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 3726
    .end local v35           #rInfo:Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v27

    move-object/from16 v13, v23

    .line 3727
    .end local v23           #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v13       #aInfo:Landroid/content/pm/ActivityInfo;
    .local v27, e:Landroid/os/RemoteException;
    :goto_9
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 3762
    .end local v8           #realCallingUid:I
    .end local v27           #e:Landroid/os/RemoteException;
    .end local v29           #newIntent:Landroid/content/Intent;
    .end local v36           #realCallingPid:I
    .end local v38           #target:Landroid/content/IIntentSender;
    .restart local v37       #res:I
    :cond_12
    const/4 v3, 0x2

    move/from16 v0, v37

    if-ne v0, v3, :cond_b

    .line 3763
    const/4 v3, 0x0

    :try_start_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v34

    .line 3764
    .local v34, r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v34

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v3, :cond_13

    .line 3765
    const/4 v3, 0x0

    move-object/from16 v0, p11

    iput-boolean v3, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 3766
    new-instance v3, Landroid/content/ComponentName;

    move-object/from16 v0, v34

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v34

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p11

    iput-object v3, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 3767
    const-wide/16 v5, 0x0

    move-object/from16 v0, p11

    iput-wide v5, v0, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 3768
    const-wide/16 v5, 0x0

    move-object/from16 v0, p11

    iput-wide v5, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    goto/16 :goto_7

    .line 3783
    .end local v17           #callingPid:I
    .end local v30           #origId:J
    .end local v34           #r:Lcom/android/server/am/ActivityRecord;
    .end local v37           #res:I
    :catchall_2
    move-exception v3

    :goto_a
    monitor-exit v40
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    throw v3

    .line 3770
    .restart local v17       #callingPid:I
    .restart local v30       #origId:J
    .restart local v34       #r:Lcom/android/server/am/ActivityRecord;
    .restart local v37       #res:I
    :cond_13
    :try_start_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p11

    iput-wide v5, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 3771
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWaitingActivityVisible:Ljava/util/ArrayList;

    move-object/from16 v0, p11

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 3774
    :cond_14
    :try_start_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_2

    .line 3777
    :goto_b
    :try_start_10
    move-object/from16 v0, p11

    iget-boolean v3, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    if-nez v3, :cond_b

    move-object/from16 v0, p11

    iget-object v3, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    if-eqz v3, :cond_14

    goto/16 :goto_7

    .line 3635
    .end local v13           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v17           #callingPid:I
    .end local v30           #origId:J
    .end local v34           #r:Lcom/android/server/am/ActivityRecord;
    .end local v37           #res:I
    .end local p3
    .restart local v4       #intent:Landroid/content/Intent;
    .restart local v23       #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v25       #createTime:J
    .restart local v32       #pid:I
    .restart local v33       #pr:Lcom/android/server/am/ProcessRecord;
    .restart local v39       #waitCount:I
    :catch_1
    move-exception v3

    goto/16 :goto_1

    .line 3783
    .end local v25           #createTime:J
    .end local v32           #pid:I
    .end local v33           #pr:Lcom/android/server/am/ProcessRecord;
    .end local v39           #waitCount:I
    :catchall_3
    move-exception v3

    move-object/from16 v13, v23

    .end local v23           #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v13       #aInfo:Landroid/content/pm/ActivityInfo;
    move-object/from16 p3, v4

    .end local v4           #intent:Landroid/content/Intent;
    .restart local p3
    goto :goto_a

    .end local v13           #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v8       #realCallingUid:I
    .restart local v17       #callingPid:I
    .restart local v23       #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v29       #newIntent:Landroid/content/Intent;
    .restart local v30       #origId:J
    .restart local v36       #realCallingPid:I
    .restart local v38       #target:Landroid/content/IIntentSender;
    :catchall_4
    move-exception v3

    move-object/from16 v13, v23

    .end local v23           #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v13       #aInfo:Landroid/content/pm/ActivityInfo;
    goto :goto_a

    .line 3775
    .end local v8           #realCallingUid:I
    .end local v29           #newIntent:Landroid/content/Intent;
    .end local v36           #realCallingPid:I
    .end local v38           #target:Landroid/content/IIntentSender;
    .restart local v34       #r:Lcom/android/server/am/ActivityRecord;
    .restart local v37       #res:I
    :catch_2
    move-exception v3

    goto :goto_b

    .line 3759
    .end local v34           #r:Lcom/android/server/am/ActivityRecord;
    :catch_3
    move-exception v3

    goto/16 :goto_6

    .line 3726
    .end local v37           #res:I
    .restart local v8       #realCallingUid:I
    .restart local v29       #newIntent:Landroid/content/Intent;
    .restart local v35       #rInfo:Landroid/content/pm/ResolveInfo;
    .restart local v36       #realCallingPid:I
    .restart local v38       #target:Landroid/content/IIntentSender;
    :catch_4
    move-exception v27

    goto :goto_9

    .end local v8           #realCallingUid:I
    .end local v13           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v29           #newIntent:Landroid/content/Intent;
    .end local v35           #rInfo:Landroid/content/pm/ResolveInfo;
    .end local v36           #realCallingPid:I
    .end local v38           #target:Landroid/content/IIntentSender;
    .end local p3
    .restart local v4       #intent:Landroid/content/Intent;
    .restart local v23       #aInfo:Landroid/content/pm/ActivityInfo;
    :cond_15
    move-object/from16 v13, v23

    .end local v23           #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v13       #aInfo:Landroid/content/pm/ActivityInfo;
    move-object/from16 p3, v4

    .end local v4           #intent:Landroid/content/Intent;
    .restart local p3
    goto/16 :goto_5
.end method

.method final startActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;IZLandroid/os/Bundle;)I
    .locals 5
    .parameter "r"
    .parameter "sourceRecord"
    .parameter "startFlags"
    .parameter "doResume"
    .parameter "options"

    .prologue
    .line 3124
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    sget-object v3, Lcom/android/server/am/ActivityManagerService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 3125
    .local v0, cb:Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    invoke-virtual {v0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->beforeStartActivityUncheckedLocked()V

    goto :goto_0

    .line 3129
    .end local v0           #cb:Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/ActivityStack;->startActivityUncheckedLockedImpl(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;IZLandroid/os/Bundle;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3133
    .local v2, result:I
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    sget-object v3, Lcom/android/server/am/ActivityManagerService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 3134
    .restart local v0       #cb:Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    invoke-virtual {v0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->afterStartActivityUncheckedLocked()V

    goto :goto_1

    .line 3133
    .end local v0           #cb:Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2           #result:I
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    sget-object v4, Lcom/android/server/am/ActivityManagerService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 3134
    .restart local v0       #cb:Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    invoke-virtual {v0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->afterStartActivityUncheckedLocked()V

    goto :goto_2

    .end local v0           #cb:Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :cond_1
    throw v3

    .restart local v2       #result:I
    :cond_2
    return v2
.end method

.method final startActivityUncheckedLockedImpl(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;IZLandroid/os/Bundle;)I
    .locals 30
    .parameter "r"
    .parameter "sourceRecord"
    .parameter "startFlags"
    .parameter "doResume"
    .parameter "options"

    .prologue
    .line 3143
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v19, v0

    .line 3144
    .local v19, intent:Landroid/content/Intent;
    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    .line 3145
    .local v13, callingUid:I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v28, v0

    .line 3147
    .local v28, userId:I
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getFlags()I

    move-result v20

    .line 3150
    .local v20, launchFlags:I
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getHtcIntentFlag()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/am/ActivityStack;->ghostScreenIntentFlag:I

    .line 3151
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    .line 3152
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[GhostScreen][startActivityUncheckedLockedImpl] ghostScreenIntentFlag: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/am/ActivityStack;->ghostScreenIntentFlag:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3157
    :cond_0
    const/high16 v3, 0x4

    and-int v3, v3, v20

    if-nez v3, :cond_c

    const/4 v3, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mUserLeaving:Z

    .line 3164
    if-nez p4, :cond_1

    .line 3165
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 3168
    :cond_1
    const/high16 v3, 0x100

    and-int v3, v3, v20

    if-eqz v3, :cond_d

    move-object/from16 v23, p1

    .line 3175
    .local v23, notTop:Lcom/android/server/am/ActivityRecord;
    :goto_1
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_3

    .line 3176
    move-object/from16 v15, p2

    .line 3177
    .local v15, checkedCaller:Lcom/android/server/am/ActivityRecord;
    if-nez v15, :cond_2

    .line 3178
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v15

    .line 3180
    :cond_2
    iget-object v3, v15, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3182
    and-int/lit8 p3, p3, -0x2

    .line 3186
    .end local v15           #checkedCaller:Lcom/android/server/am/ActivityRecord;
    :cond_3
    if-nez p2, :cond_e

    .line 3189
    const/high16 v3, 0x1000

    and-int v3, v3, v20

    if-nez v3, :cond_4

    .line 3190
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startActivity called from non-Activity context; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3192
    const/high16 v3, 0x1000

    or-int v20, v20, v3

    .line 3206
    :cond_4
    :goto_2
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_5

    const/high16 v3, 0x1000

    and-int v3, v3, v20

    if-eqz v3, :cond_5

    .line 3212
    const-string v3, "ActivityManager"

    const-string v4, "Activity is launching as a new task, so cancelling activity result."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3213
    const/4 v4, -0x1

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 3216
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 3219
    :cond_5
    const/4 v11, 0x0

    .line 3220
    .local v11, addingToTask:Z
    const/16 v21, 0x0

    .line 3221
    .local v21, movedHome:Z
    const/16 v25, 0x0

    .line 3222
    .local v25, reuseTask:Lcom/android/server/am/TaskRecord;
    const/high16 v3, 0x1000

    and-int v3, v3, v20

    if-eqz v3, :cond_6

    const/high16 v3, 0x800

    and-int v3, v3, v20

    if-eqz v3, :cond_7

    :cond_6
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_7

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_22

    .line 3229
    :cond_7
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_22

    .line 3234
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_11

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/ActivityStack;->findTaskLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v26

    .line 3237
    .local v26, taskTop:Lcom/android/server/am/ActivityRecord;
    :goto_3
    if-eqz v26, :cond_22

    .line 3238
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v3, :cond_8

    .line 3243
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v4}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 3251
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v16

    .line 3252
    .local v16, curTop:Lcom/android/server/am/ActivityRecord;
    if-eqz v16, :cond_a

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v3, v4, :cond_a

    .line 3253
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v4, 0x40

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3254
    if-eqz p2, :cond_9

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, v4, :cond_12

    :cond_9
    const/4 v12, 0x1

    .line 3256
    .local v12, callerAtFront:Z
    :goto_4
    if-eqz v12, :cond_a

    .line 3259
    const/16 v21, 0x1

    .line 3260
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveHomeToFrontFromLaunchLocked(I)V

    .line 3261
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)V

    .line 3262
    const/16 p5, 0x0

    .line 3267
    .end local v12           #callerAtFront:Z
    :cond_a
    const/high16 v3, 0x20

    and-int v3, v3, v20

    if-eqz v3, :cond_b

    .line 3268
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v26

    .line 3270
    :cond_b
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_14

    .line 3275
    if-eqz p4, :cond_13

    .line 3276
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v3, v1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    .line 3280
    :goto_5
    const/4 v3, 0x1

    .line 3534
    .end local v16           #curTop:Lcom/android/server/am/ActivityRecord;
    .end local v26           #taskTop:Lcom/android/server/am/ActivityRecord;
    :goto_6
    return v3

    .line 3157
    .end local v11           #addingToTask:Z
    .end local v21           #movedHome:Z
    .end local v23           #notTop:Lcom/android/server/am/ActivityRecord;
    .end local v25           #reuseTask:Lcom/android/server/am/TaskRecord;
    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 3168
    :cond_d
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 3194
    .restart local v23       #notTop:Lcom/android/server/am/ActivityRecord;
    :cond_e
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_f

    .line 3198
    const/high16 v3, 0x1000

    or-int v20, v20, v3

    goto/16 :goto_2

    .line 3199
    :cond_f
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_10

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 3203
    :cond_10
    const/high16 v3, 0x1000

    or-int v20, v20, v3

    goto/16 :goto_2

    .line 3234
    .restart local v11       #addingToTask:Z
    .restart local v21       #movedHome:Z
    .restart local v25       #reuseTask:Lcom/android/server/am/TaskRecord;
    :cond_11
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/ActivityStack;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v26

    goto/16 :goto_3

    .line 3254
    .restart local v16       #curTop:Lcom/android/server/am/ActivityRecord;
    .restart local v26       #taskTop:Lcom/android/server/am/ActivityRecord;
    :cond_12
    const/4 v12, 0x0

    goto :goto_4

    .line 3278
    :cond_13
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto :goto_5

    .line 3282
    :cond_14
    const v3, 0x10008000

    and-int v3, v3, v20

    const v4, 0x10008000

    if-ne v3, v4, :cond_18

    .line 3288
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v25, v0

    .line 3289
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/am/ActivityStack;->performClearTaskLocked(I)V

    .line 3290
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 3368
    :cond_15
    :goto_7
    if-nez v11, :cond_22

    if-nez v25, :cond_22

    .line 3372
    if-eqz p4, :cond_21

    .line 3376
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v22

    .line 3377
    .local v22, next:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v22

    if-ne v3, v0, :cond_17

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_17

    .line 3380
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isIntentFromStatusBar()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 3381
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_16

    .line 3382
    const-string v3, "ActivityManager"

    const-string v4, "[GhostScreen] status bar trigger start activity and activity is onTop, just collapse statusbar list"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3384
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/am/ActivityStack;->collapseStatusBar(Landroid/content/Context;)V

    .line 3388
    :cond_17
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v3, v1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    .line 3392
    .end local v22           #next:Lcom/android/server/am/ActivityRecord;
    :goto_8
    const/4 v3, 0x2

    goto/16 :goto_6

    .line 3291
    :cond_18
    const/high16 v3, 0x400

    and-int v3, v3, v20

    if-nez v3, :cond_19

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_19

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1c

    .line 3298
    :cond_19
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/am/ActivityStack;->performClearTaskLocked(ILcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v27

    .line 3300
    .local v27, top:Lcom/android/server/am/ActivityRecord;
    if-eqz v27, :cond_1b

    .line 3301
    move-object/from16 v0, v27

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v3, :cond_1a

    .line 3308
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-static {v3}, Lcom/android/server/am/HtcWrapTaskRecord;->create(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/HtcWrapTaskRecord;

    move-result-object v24

    .line 3309
    .local v24, prev:Lcom/android/server/am/HtcWrapTaskRecord;
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v4, v6}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 3310
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-static {v3}, Lcom/android/server/am/HtcWrapTaskRecord;->create(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/HtcWrapTaskRecord;

    move-result-object v17

    .line 3311
    .local v17, curr:Lcom/android/server/am/HtcWrapTaskRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    sget-object v3, Lcom/android/server/am/ActivityManagerService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 3312
    .local v14, cb:Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onStartActivityUncheckedLockedNewIntent(Lcom/android/server/am/HtcWrapTaskRecord;Lcom/android/server/am/HtcWrapTaskRecord;)V

    goto :goto_9

    .line 3316
    .end local v14           #cb:Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v17           #curr:Lcom/android/server/am/HtcWrapTaskRecord;
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v24           #prev:Lcom/android/server/am/HtcWrapTaskRecord;
    :cond_1a
    const/16 v3, 0x7533

    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 3317
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v27

    invoke-virtual {v0, v13, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    goto/16 :goto_7

    .line 3323
    :cond_1b
    const/4 v11, 0x1

    .line 3327
    move-object/from16 p2, v26

    goto/16 :goto_7

    .line 3329
    .end local v27           #top:Lcom/android/server/am/ActivityRecord;
    :cond_1c
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 3336
    const/high16 v3, 0x2000

    and-int v3, v3, v20

    if-eqz v3, :cond_1e

    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 3338
    const/16 v3, 0x7533

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 3339
    move-object/from16 v0, v26

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v3, :cond_1d

    .line 3340
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v4, v6}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 3342
    :cond_1d
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v26

    invoke-virtual {v0, v13, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    goto/16 :goto_7

    .line 3343
    :cond_1e
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 3347
    const/4 v11, 0x1

    .line 3348
    move-object/from16 p2, v26

    goto/16 :goto_7

    .line 3350
    :cond_1f
    const/high16 v3, 0x20

    and-int v3, v3, v20

    if-nez v3, :cond_20

    .line 3356
    const/4 v11, 0x1

    .line 3357
    move-object/from16 p2, v26

    goto/16 :goto_7

    .line 3358
    :cond_20
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v3, v3, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    if-nez v3, :cond_15

    .line 3366
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v4, v6}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    goto/16 :goto_7

    .line 3390
    :cond_21
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto/16 :goto_8

    .line 3404
    .end local v16           #curTop:Lcom/android/server/am/ActivityRecord;
    .end local v26           #taskTop:Lcom/android/server/am/ActivityRecord;
    :cond_22
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_26

    .line 3408
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v27

    .line 3409
    .restart local v27       #top:Lcom/android/server/am/ActivityRecord;
    if-eqz v27, :cond_28

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_28

    .line 3410
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    move-object/from16 v0, v27

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v3, v4, :cond_28

    .line 3411
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_28

    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_28

    .line 3412
    const/high16 v3, 0x2000

    and-int v3, v3, v20

    if-nez v3, :cond_23

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_23

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_28

    .line 3415
    :cond_23
    const/16 v3, 0x7533

    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 3418
    if-eqz p4, :cond_24

    .line 3419
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 3421
    :cond_24
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 3422
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_25

    .line 3426
    const/4 v3, 0x1

    goto/16 :goto_6

    .line 3428
    :cond_25
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v27

    invoke-virtual {v0, v13, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 3429
    const/4 v3, 0x3

    goto/16 :goto_6

    .line 3436
    .end local v27           #top:Lcom/android/server/am/ActivityRecord;
    :cond_26
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_27

    .line 3437
    const/4 v4, -0x1

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 3441
    :cond_27
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 3442
    const/4 v3, -0x2

    goto/16 :goto_6

    .line 3445
    .restart local v27       #top:Lcom/android/server/am/ActivityRecord;
    :cond_28
    const/4 v5, 0x0

    .line 3446
    .local v5, newTask:Z
    const/4 v7, 0x0

    .line 3449
    .local v7, keepCurTransition:Z
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_2d

    if-nez v11, :cond_2d

    const/high16 v3, 0x1000

    and-int v3, v3, v20

    if-eqz v3, :cond_2d

    .line 3451
    if-nez v25, :cond_2c

    .line 3453
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v3, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    .line 3454
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v3, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    if-gtz v3, :cond_29

    .line 3455
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x1

    iput v4, v3, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    .line 3457
    :cond_29
    new-instance v3, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v19

    invoke-direct {v3, v4, v6, v0}, Lcom/android/server/am/TaskRecord;-><init>(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;)V

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v6}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    .line 3463
    :goto_a
    const/4 v5, 0x1

    .line 3464
    if-nez v21, :cond_2a

    .line 3465
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveHomeToFrontFromLaunchLocked(I)V

    .line 3526
    :cond_2a
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v3, v13, v4, v0, v6}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;)V

    .line 3529
    if-eqz v5, :cond_2b

    .line 3530
    const/16 v3, 0x7534

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(II)I

    .line 3532
    :cond_2b
    const/16 v3, 0x7535

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v6, p4

    move-object/from16 v8, p5

    .line 3533
    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Lcom/android/server/am/ActivityRecord;ZZZLandroid/os/Bundle;)V

    .line 3534
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 3461
    :cond_2c
    const/4 v3, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    goto :goto_a

    .line 3468
    :cond_2d
    if-eqz p2, :cond_32

    .line 3469
    if-nez v11, :cond_2f

    const/high16 v3, 0x400

    and-int v3, v3, v20

    if-eqz v3, :cond_2f

    .line 3474
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/am/ActivityStack;->performClearTaskLocked(ILcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v27

    .line 3476
    const/4 v7, 0x1

    .line 3477
    if-eqz v27, :cond_31

    .line 3478
    const/16 v3, 0x7533

    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 3479
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v27

    invoke-virtual {v0, v13, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 3482
    if-eqz p4, :cond_2e

    .line 3483
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 3485
    :cond_2e
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 3486
    const/4 v3, 0x3

    goto/16 :goto_6

    .line 3488
    :cond_2f
    if-nez v11, :cond_31

    const/high16 v3, 0x2

    and-int v3, v3, v20

    if-eqz v3, :cond_31

    .line 3493
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/ActivityStack;->findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;I)I

    move-result v29

    .line 3494
    .local v29, where:I
    if-ltz v29, :cond_31

    .line 3495
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->moveActivityToFrontLocked(I)Lcom/android/server/am/ActivityRecord;

    move-result-object v27

    .line 3496
    const/16 v3, 0x7533

    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 3497
    move-object/from16 v0, v27

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/os/Bundle;)V

    .line 3498
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v27

    invoke-virtual {v0, v13, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 3499
    if-eqz p4, :cond_30

    .line 3500
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 3502
    :cond_30
    const/4 v3, 0x3

    goto/16 :goto_6

    .line 3508
    .end local v29           #where:I
    :cond_31
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v6}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    goto/16 :goto_b

    .line 3516
    :cond_32
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 3517
    .local v10, N:I
    if-lez v10, :cond_33

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    add-int/lit8 v4, v10, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v24, v3

    .line 3519
    .local v24, prev:Lcom/android/server/am/ActivityRecord;
    :goto_c
    if-eqz v24, :cond_34

    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    :goto_d
    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v6}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    goto/16 :goto_b

    .line 3517
    .end local v24           #prev:Lcom/android/server/am/ActivityRecord;
    :cond_33
    const/16 v24, 0x0

    goto :goto_c

    .line 3519
    .restart local v24       #prev:Lcom/android/server/am/ActivityRecord;
    :cond_34
    new-instance v3, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v19

    invoke-direct {v3, v4, v6, v0}, Lcom/android/server/am/TaskRecord;-><init>(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;)V

    goto :goto_d
.end method

.method stopIfSleepingLocked()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    .line 934
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 935
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 936
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 937
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 938
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 939
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 942
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 943
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 944
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 945
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V

    .line 947
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    return-void
.end method

.method final switchUser(I)Z
    .locals 9
    .parameter "userId"

    .prologue
    .line 643
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    .line 644
    :try_start_0
    iput p1, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    .line 647
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x2

    if-ge v6, v8, :cond_0

    .line 648
    const/4 v1, 0x0

    monitor-exit v7

    .line 671
    :goto_0
    return v1

    .line 650
    :cond_0
    const/4 v1, 0x0

    .line 652
    .local v1, haveActivities:Z
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 653
    .local v5, top:Lcom/android/server/am/ActivityRecord;
    iget v6, v5, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v6, p1, :cond_1

    const/4 v1, 0x1

    monitor-exit v7

    goto :goto_0

    .line 672
    .end local v1           #haveActivities:Z
    .end local v5           #top:Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 655
    .restart local v1       #haveActivities:Z
    .restart local v5       #top:Lcom/android/server/am/ActivityRecord;
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 656
    .local v0, N:I
    const/4 v2, 0x0

    .line 657
    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 658
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 659
    .local v4, r:Lcom/android/server/am/ActivityRecord;
    iget v6, v4, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v6, p1, :cond_2

    .line 660
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 661
    .local v3, moveToTop:Lcom/android/server/am/ActivityRecord;
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    add-int/lit8 v0, v0, -0x1

    .line 664
    const/4 v1, 0x1

    .line 665
    goto :goto_1

    .line 666
    .end local v3           #moveToTop:Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 670
    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 671
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method final topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;
    .locals 3
    .parameter "token"
    .parameter "taskId"

    .prologue
    .line 523
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 524
    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 525
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 527
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-eq p1, v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq p2, v2, :cond_0

    .line 532
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :goto_1
    return-object v1

    .line 530
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 531
    goto :goto_0

    .line 532
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method final topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 3
    .parameter "notTop"

    .prologue
    .line 488
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 489
    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 490
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 491
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_0

    if-eq v1, p1, :cond_0

    .line 496
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :goto_1
    return-object v1

    .line 494
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 495
    goto :goto_0

    .line 496
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method final topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 3
    .parameter "notTop"

    .prologue
    .line 501
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 502
    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 503
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 504
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    if-nez v2, :cond_0

    if-eq v1, p1, :cond_0

    .line 509
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :goto_1
    return-object v1

    .line 507
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 508
    goto :goto_0

    .line 509
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method final updateTransitLocked(ILandroid/os/Bundle;)V
    .locals 3
    .parameter "transit"
    .parameter "options"

    .prologue
    .line 4746
    if-eqz p2, :cond_0

    .line 4747
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 4748
    .local v0, r:Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v1, v2, :cond_1

    .line 4749
    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/os/Bundle;)V

    .line 4754
    .end local v0           #r:Lcom/android/server/am/ActivityRecord;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 4755
    return-void

    .line 4751
    .restart local v0       #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method final validateAppTokensLocked()V
    .locals 3

    .prologue
    .line 2381
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2382
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 2383
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2384
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2383
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2386
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->validateAppTokens(Ljava/util/List;)V

    .line 2387
    return-void
.end method
