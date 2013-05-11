.class public Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;
.super Ljava/lang/Object;
.source "IdleScreenEngine.java"

# interfaces
.implements Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;,
        Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;
    }
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String; = "IdleScreenEngine"


# instance fields
.field protected mContext:Landroid/content/Context;

.field mDestroyed:Z

.field private mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

.field mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

.field mInitializing:Z

.field private mIsResume:Z

.field final mLock:Ljava/lang/Object;

.field private mLockScreenState:I

.field mPendingMove:Landroid/view/MotionEvent;

.field private mReminderListener:Lcom/htc/lockscreen/reminder/ReminderListener;

.field mRenderable:Z

.field mReportedVisible:Z

.field mScreenOn:Z

.field protected mService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field mStarted:Z

.field mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

.field private mTeleListener:Lcom/htc/lockscreen/telephony/TelephonyListener;

.field private mWakeLockHelper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "service"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mInitializing:Z

    .line 65
    iput-boolean v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mStarted:Z

    .line 66
    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mScreenOn:Z

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLock:Ljava/lang/Object;

    .line 76
    new-instance v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;-><init>(Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;)V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mWakeLockHelper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;

    .line 80
    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIsResume:Z

    .line 81
    sget-object v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->NONE:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    .line 82
    iput v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLockScreenState:I

    .line 87
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mContext:Landroid/content/Context;

    .line 88
    new-instance v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;-><init>(Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;)V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    .line 89
    if-eqz p1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mWakeLockHelper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;->setTag(Ljava/lang/String;)V

    .line 92
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/htc/lockscreen/idlescreen/IdleScreenService;)V
    .locals 3
    .parameter "service"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mInitializing:Z

    .line 65
    iput-boolean v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mStarted:Z

    .line 66
    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mScreenOn:Z

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLock:Ljava/lang/Object;

    .line 76
    new-instance v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;-><init>(Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;)V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mWakeLockHelper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;

    .line 80
    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIsResume:Z

    .line 81
    sget-object v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->NONE:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    .line 82
    iput v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLockScreenState:I

    .line 95
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    .line 96
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mContext:Landroid/content/Context;

    .line 97
    new-instance v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;-><init>(Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;)V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    .line 98
    if-eqz p1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mWakeLockHelper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;

    invoke-virtual {p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;->setTag(Ljava/lang/String;)V

    .line 101
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/htc/lockscreen/idlescreen/IdleScreenService;Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;)V
    .locals 3
    .parameter "service"
    .parameter "windowBuilder"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 103
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mInitializing:Z

    .line 65
    iput-boolean v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mStarted:Z

    .line 66
    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mScreenOn:Z

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLock:Ljava/lang/Object;

    .line 76
    new-instance v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;-><init>(Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;)V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mWakeLockHelper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;

    .line 80
    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIsResume:Z

    .line 81
    sget-object v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->NONE:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    .line 82
    iput v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLockScreenState:I

    .line 104
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    .line 105
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mContext:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    .line 107
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0, p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->setEngine(Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;)V

    .line 109
    if-eqz p1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mWakeLockHelper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;

    invoke-virtual {p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;->setTag(Ljava/lang/String;)V

    .line 112
    :cond_0
    return-void
.end method

.method public static isScreenOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 465
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 466
    .local v1, pm:Landroid/os/PowerManager;
    const/4 v0, 0x0

    .line 467
    .local v0, bScreenOn:Z
    if-eqz v1, :cond_0

    .line 468
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 470
    :cond_0
    return v0
.end method


# virtual methods
.method attach(Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;)V
    .locals 4
    .parameter "wrapper"

    .prologue
    const/4 v3, 0x0

    .line 372
    const-string v0, "IdleScreenEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " wrapper="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 403
    :goto_0
    return-void

    .line 377
    :cond_0
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    .line 382
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->setSurfaceSize()V

    .line 383
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mInitializing:Z

    .line 384
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->attach()V

    .line 398
    const-string v0, "IdleScreenEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doCreate(Landroid/view/SurfaceHolder;)V

    .line 401
    iput-boolean v3, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mInitializing:Z

    .line 402
    invoke-virtual {p0, v3, v3, v3}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->updateSurface(ZZZ)V

    goto :goto_0
.end method

.method detach()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 737
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 757
    :goto_0
    return-void

    .line 741
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mDestroyed:Z

    .line 743
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mStarted:Z

    if-eqz v0, :cond_1

    .line 744
    iput-boolean v3, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mStarted:Z

    .line 745
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->setWindowVisibility(I)V

    .line 746
    const-string v0, "IdleScreenEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVisibilityChanged(false): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    invoke-virtual {p0, v3}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onVisibilityChanged(Z)V

    .line 749
    :cond_1
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->detach()V

    .line 752
    const-string v0, "IdleScreenEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->goToStop()V

    .line 754
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doDestroy()V

    goto :goto_0
.end method

.method public disableAnimation()V
    .locals 1

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    if-eqz v0, :cond_0

    .line 1214
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->disableAnimation()V

    .line 1216
    :cond_0
    return-void
.end method

.method public dismissReminder(IJ)V
    .locals 2
    .parameter "type"
    .parameter "id"

    .prologue
    .line 1047
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1048
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "Key_ReminderType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1049
    const-string v1, "Key_ReminderId"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1050
    const-string v1, "idleScreenReminderDismiss"

    invoke-virtual {p0, v1, v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1051
    return-void
.end method

.method doCommand(Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;)V
    .locals 25
    .parameter "cmd"

    .prologue
    .line 596
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mDestroyed:Z

    if-nez v3, :cond_1

    .line 597
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;->action:Ljava/lang/String;

    .line 598
    .local v10, action:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;->extras:Landroid/os/Bundle;

    .line 599
    .local v11, extras:Landroid/os/Bundle;
    const-string v3, "idleScreenTelephonyUpdate"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mTeleListener:Lcom/htc/lockscreen/telephony/TelephonyListener;

    move-object/from16 v21, v0

    .line 601
    .local v21, telephonyListener:Lcom/htc/lockscreen/telephony/TelephonyListener;
    if-eqz v11, :cond_1

    .line 602
    const-string v3, "Key_TelephonyState"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v20

    check-cast v20, Lcom/htc/lockscreen/telephony/TelephonyState;

    .line 603
    .local v20, state:Lcom/htc/lockscreen/telephony/TelephonyState;
    if-eqz v21, :cond_0

    .line 604
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/htc/lockscreen/telephony/TelephonyListener;->onTelephonyStateChange(Lcom/htc/lockscreen/telephony/TelephonyState;)V

    .line 606
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onTelephonyStateChange(Lcom/htc/lockscreen/telephony/TelephonyState;)V

    .line 688
    .end local v10           #action:Ljava/lang/String;
    .end local v11           #extras:Landroid/os/Bundle;
    .end local v20           #state:Lcom/htc/lockscreen/telephony/TelephonyState;
    .end local v21           #telephonyListener:Lcom/htc/lockscreen/telephony/TelephonyListener;
    :cond_1
    :goto_0
    return-void

    .line 609
    .restart local v10       #action:Ljava/lang/String;
    .restart local v11       #extras:Landroid/os/Bundle;
    :cond_2
    const-string v3, "idleScreenReminderUpdate"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mReminderListener:Lcom/htc/lockscreen/reminder/ReminderListener;

    move-object/from16 v16, v0

    .line 611
    .local v16, listener:Lcom/htc/lockscreen/reminder/ReminderListener;
    if-eqz v11, :cond_1

    .line 612
    const-string v3, "Key_ReminderState"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v20

    check-cast v20, Lcom/htc/lockscreen/reminder/ReminderState;

    .line 613
    .local v20, state:Lcom/htc/lockscreen/reminder/ReminderState;
    const-string v3, "Key_ReminderType"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    .line 614
    .local v22, type:I
    if-eqz v16, :cond_3

    .line 615
    move-object/from16 v0, v16

    move/from16 v1, v22

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/htc/lockscreen/reminder/ReminderListener;->onReminderStateChange(ILcom/htc/lockscreen/reminder/ReminderState;)V

    .line 617
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onReminderStateChange(ILcom/htc/lockscreen/reminder/ReminderState;)V

    goto :goto_0

    .line 620
    .end local v16           #listener:Lcom/htc/lockscreen/reminder/ReminderListener;
    .end local v20           #state:Lcom/htc/lockscreen/reminder/ReminderState;
    .end local v22           #type:I
    :cond_4
    const-string v3, "idleScreenIsResume"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 621
    if-eqz v11, :cond_5

    .line 622
    const-string v3, "Key_IsResume"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIsResume:Z

    .line 624
    :cond_5
    const-string v3, "idleScreen_Survive"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 625
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->reportVisibility()V

    goto :goto_0

    .line 627
    :cond_6
    const-string v3, "idleScreenViewMode"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 628
    if-eqz v11, :cond_1

    .line 629
    const-string v3, "Key_ViewMode"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLockScreenState:I

    .line 631
    const-string v3, "IdleScreenEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_LOCKSCREEN_VIEW_MODE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLockScreenState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLockScreenState:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onLockScreenStateChanged(I)V

    .line 633
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLockScreenState:I

    if-nez v3, :cond_7

    const/16 v24, 0x1

    .line 634
    .local v24, windowShow:Z
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->setWindowShow(Z)V

    .line 635
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->reportVisibility()V

    goto/16 :goto_0

    .line 633
    .end local v24           #windowShow:Z
    :cond_7
    const/16 v24, 0x0

    goto :goto_1

    .line 638
    :cond_8
    const-string v3, "idlescreen_Phone_state_update"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 639
    const-string v3, "Key_PhoneState"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v20

    check-cast v20, Lcom/htc/lockscreen/telephony/PhoneState;

    .line 640
    .local v20, state:Lcom/htc/lockscreen/telephony/PhoneState;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onPhoneStateChanged(Lcom/htc/lockscreen/telephony/PhoneState;)V

    goto/16 :goto_0

    .line 642
    .end local v20           #state:Lcom/htc/lockscreen/telephony/PhoneState;
    :cond_9
    const-string v3, "idleScreen_key_down"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 643
    if-eqz v11, :cond_1

    .line 644
    const-string v3, "Key_keycode"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 645
    .local v14, keycode:I
    const-string v3, "Key_keyEvent"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/view/KeyEvent;

    .line 646
    .local v13, keyEvent:Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onKeyDown(ILandroid/view/KeyEvent;)V

    goto/16 :goto_0

    .line 650
    .end local v13           #keyEvent:Landroid/view/KeyEvent;
    .end local v14           #keycode:I
    :cond_a
    const-string v3, "idleScreen_key_up"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 651
    if-eqz v11, :cond_1

    .line 652
    const-string v3, "Key_keycode"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 653
    .restart local v14       #keycode:I
    const-string v3, "Key_keyEvent"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/view/KeyEvent;

    .line 654
    .restart local v13       #keyEvent:Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onKeyUp(ILandroid/view/KeyEvent;)V

    goto/16 :goto_0

    .line 658
    .end local v13           #keyEvent:Landroid/view/KeyEvent;
    .end local v14           #keycode:I
    :cond_b
    const-string v3, "idleScreen_remote_view"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 659
    if-eqz v11, :cond_1

    .line 660
    const-string v3, "Key_remoteView"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;

    .line 661
    .local v17, remoteView:Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onRemoteViewUpdate(Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;)V

    goto/16 :goto_0

    .line 664
    .end local v17           #remoteView:Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;
    :cond_c
    const-string v3, "idlescreen_shortcut_update"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 665
    if-eqz v11, :cond_1

    .line 666
    const/16 v19, 0x0

    .line 667
    .local v19, shortcutInfos:[Lcom/htc/lockscreen/widget/ShortcutInfo;
    const-string v3, "Key_shortcut_visibility"

    const/4 v4, -0x1

    invoke-virtual {v11, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v23

    .line 668
    .local v23, visibility:I
    const-string v3, "Key_shortcut_list"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v18

    .line 669
    .local v18, shorcutArray:[Landroid/os/Parcelable;
    if-eqz v18, :cond_e

    .line 670
    move-object/from16 v0, v18

    array-length v15, v0

    .line 671
    .local v15, length:I
    new-array v0, v15, [Lcom/htc/lockscreen/widget/ShortcutInfo;

    move-object/from16 v19, v0

    .line 672
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    if-ge v12, v15, :cond_e

    .line 673
    aget-object v3, v18, v12

    if-eqz v3, :cond_d

    .line 674
    aget-object v3, v18, v12

    check-cast v3, Lcom/htc/lockscreen/widget/ShortcutInfo;

    aput-object v3, v19, v12

    .line 672
    :cond_d
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 678
    .end local v12           #i:I
    .end local v15           #length:I
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onShortcutsUpdate([Lcom/htc/lockscreen/widget/ShortcutInfo;I)V

    goto/16 :goto_0

    .line 682
    .end local v18           #shorcutArray:[Landroid/os/Parcelable;
    .end local v19           #shortcutInfos:[Lcom/htc/lockscreen/widget/ShortcutInfo;
    .end local v23           #visibility:I
    :cond_f
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;->action:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;->x:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;->y:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;->z:I

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;->extras:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;->sync:Z

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    goto/16 :goto_0
.end method

.method protected doConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    if-eqz v0, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->setWindowConfig(Landroid/content/res/Configuration;)V

    .line 1088
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1090
    return-void
.end method

.method public doCreate(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "surfaceHolder"

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 122
    return-void
.end method

.method doDesiredSizeChanged(II)V
    .locals 3
    .parameter "desiredWidth"
    .parameter "desiredHeight"

    .prologue
    .line 431
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 432
    const-string v0, "IdleScreenEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDesiredSizeChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0, p1, p2}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onDesiredSizeChanged(II)V

    .line 436
    :cond_0
    return-void
.end method

.method public doDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->pokeWakeLock(I)V

    .line 131
    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mTeleListener:Lcom/htc/lockscreen/telephony/TelephonyListener;

    .line 132
    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mReminderListener:Lcom/htc/lockscreen/reminder/ReminderListener;

    .line 133
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onDestroy()V

    .line 135
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->doDestroy()V

    .line 136
    return-void
.end method

.method public doPause()V
    .locals 0

    .prologue
    .line 816
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onPause()V

    .line 817
    return-void
.end method

.method public doResume()V
    .locals 0

    .prologue
    .line 807
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onResume()V

    .line 808
    return-void
.end method

.method public doStart()V
    .locals 2

    .prologue
    .line 797
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onStart()V

    .line 798
    const-string v0, "idlescreen_surface_create"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 799
    return-void
.end method

.method public doStop()V
    .locals 0

    .prologue
    .line 825
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onStop()V

    .line 826
    return-void
.end method

.method doVisibilityChanged(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    const/4 v2, 0x0

    .line 439
    iget-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mDestroyed:Z

    if-nez v1, :cond_2

    .line 440
    iput-boolean p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mStarted:Z

    .line 441
    const/16 v0, 0x8

    .line 442
    .local v0, visibility:I
    if-eqz p1, :cond_0

    .line 443
    const/4 v0, 0x0

    .line 445
    :cond_0
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v1, v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->setWindowVisibility(I)V

    .line 447
    invoke-virtual {p0, v2, v2, v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->updateSurface(ZZZ)V

    .line 449
    iget-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mStarted:Z

    if-eqz v1, :cond_3

    .line 450
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->goToStart()V

    .line 455
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->reportVisibility()V

    .line 457
    .end local v0           #visibility:I
    :cond_2
    return-void

    .line 452
    .restart local v0       #visibility:I
    :cond_3
    iget-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mStarted:Z

    if-nez v1, :cond_1

    .line 453
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->goToStop()V

    goto :goto_0
.end method

.method finishDrawing()V
    .locals 1

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->finishDrawing()V

    .line 1210
    return-void
.end method

.method protected forceViewModeDisable(I)Z
    .locals 1
    .parameter "viewMode"

    .prologue
    .line 984
    const/4 v0, 0x0

    return v0
.end method

.method public getDesiredMinimumHeight()I
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget v0, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mReqHeight:I

    return v0
.end method

.method public getDesiredMinimumWidth()I
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget v0, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mReqWidth:I

    return v0
.end method

.method public getIdleWindow()Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    return-object v0
.end method

.method public getLockScreenViewMode()I
    .locals 1

    .prologue
    .line 968
    iget v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLockScreenState:I

    return v0
.end method

.method public getSession()Landroid/view/IWindowSession;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->getSession()Landroid/view/IWindowSession;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    if-eqz v0, :cond_0

    .line 1118
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->getWindow()Lcom/android/internal/view/BaseIWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/BaseIWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1120
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWindowAnimation()I
    .locals 1

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    if-eqz v0, :cond_0

    .line 1141
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget v0, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mWindowAnimation:I

    .line 1143
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWindowFlag()I
    .locals 1

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->getWindowFlag()I

    move-result v0

    return v0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    if-eqz v0, :cond_0

    .line 1111
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-object v0, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mWindowToken:Landroid/os/IBinder;

    .line 1113
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWindowType()I
    .locals 1

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    if-eqz v0, :cond_0

    .line 1129
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget v0, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mWindowType:I

    .line 1131
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x67

    goto :goto_0
.end method

.method protected goToPause()V
    .locals 2

    .prologue
    .line 569
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    sget-object v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->RESUME:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    if-ne v0, v1, :cond_0

    .line 570
    sget-object v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->PAUSE:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    .line 571
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doPause()V

    .line 573
    :cond_0
    return-void
.end method

.method protected goToResume()V
    .locals 2

    .prologue
    .line 551
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    sget-object v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->NONE:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    sget-object v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->STOP:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    if-ne v0, v1, :cond_2

    .line 552
    :cond_0
    sget-object v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->RESUME:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    .line 553
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doStart()V

    .line 554
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doResume()V

    .line 561
    :cond_1
    :goto_0
    return-void

    .line 556
    :cond_2
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    sget-object v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->START:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    sget-object v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->PAUSE:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    if-ne v0, v1, :cond_1

    .line 557
    :cond_3
    sget-object v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->RESUME:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    .line 558
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doResume()V

    goto :goto_0
.end method

.method protected goToStart()V
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    sget-object v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->NONE:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    sget-object v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->STOP:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    if-ne v0, v1, :cond_1

    .line 540
    :cond_0
    sget-object v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->START:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    .line 541
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doStart()V

    .line 543
    :cond_1
    return-void
.end method

.method protected goToStop()V
    .locals 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    sget-object v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->START:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    if-ne v0, v1, :cond_1

    .line 582
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doStop()V

    .line 591
    :cond_0
    :goto_0
    sget-object v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->STOP:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    .line 592
    return-void

    .line 584
    :cond_1
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    sget-object v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->RESUME:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    if-ne v0, v1, :cond_2

    .line 585
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doPause()V

    .line 586
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doStop()V

    goto :goto_0

    .line 588
    :cond_2
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    sget-object v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->PAUSE:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    if-ne v0, v1, :cond_0

    .line 589
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doStop()V

    goto :goto_0
.end method

.method public handleAllReminder(Z)V
    .locals 2
    .parameter "bSnoozeAll"

    .prologue
    const/4 v1, 0x0

    .line 1072
    if-eqz p1, :cond_0

    .line 1073
    const-string v0, "idleScreenReminderSnoozeAll"

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1078
    :goto_0
    return-void

    .line 1076
    :cond_0
    const-string v0, "idleScreenReminderHandleAll"

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 1106
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mDestroyed:Z

    return v0
.end method

.method public isPreview()Z
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-boolean v0, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mIsPreview:Z

    return v0
.end method

.method public isRenderable()Z
    .locals 1

    .prologue
    .line 530
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mRenderable:Z

    return v0
.end method

.method public isResume()Z
    .locals 1

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIsResume:Z

    return v0
.end method

.method public isScreenOn()Z
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mScreenOn:Z

    return v0
.end method

.method public isScreenStart()Z
    .locals 1

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mStarted:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mReportedVisible:Z

    return v0
.end method

.method public onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 1
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"
    .parameter "resultRequested"

    .prologue
    .line 170
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 1098
    return-void
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "surfaceHolder"

    .prologue
    .line 139
    return-void
.end method

.method public onDesiredSizeChanged(II)V
    .locals 0
    .parameter "desiredWidth"
    .parameter "desiredHeight"

    .prologue
    .line 180
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method protected onKeyDown(ILandroid/view/KeyEvent;)V
    .locals 0
    .parameter "keycode"
    .parameter "keyEvent"

    .prologue
    .line 1001
    return-void
.end method

.method protected onKeyUp(ILandroid/view/KeyEvent;)V
    .locals 0
    .parameter "keycode"
    .parameter "keyEvent"

    .prologue
    .line 1009
    return-void
.end method

.method protected onLockScreenStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 765
    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .locals 0
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "xOffsetStep"
    .parameter "yOffsetStep"
    .parameter "xPixelOffset"
    .parameter "yPixelOffset"

    .prologue
    .line 160
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 838
    return-void
.end method

.method protected onPhoneStateChanged(Lcom/htc/lockscreen/telephony/PhoneState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 993
    return-void
.end method

.method protected onReminderStateChange(ILcom/htc/lockscreen/reminder/ReminderState;)V
    .locals 0
    .parameter "type"
    .parameter "state"

    .prologue
    .line 1032
    return-void
.end method

.method protected onRemoteViewUpdate(Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;)V
    .locals 0
    .parameter "remoteView"

    .prologue
    .line 1017
    return-void
.end method

.method public onRenderableChange(Z)V
    .locals 0
    .parameter "bRenderable"

    .prologue
    .line 522
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 834
    return-void
.end method

.method protected onScreenOnOffChanged(Z)V
    .locals 0
    .parameter "screenOn"

    .prologue
    .line 774
    return-void
.end method

.method protected onShortcutsUpdate([Lcom/htc/lockscreen/widget/ShortcutInfo;I)V
    .locals 0
    .parameter "shortcuts"
    .parameter "visibility"

    .prologue
    .line 1025
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 830
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 842
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 188
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 219
    return-void
.end method

.method public onSurfaceDestroyPredict(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 196
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 226
    return-void
.end method

.method public onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 211
    return-void
.end method

.method public onSurfaceVisibilityChanged(Landroid/view/SurfaceHolder;I)V
    .locals 0
    .parameter "holder"
    .parameter "visibility"

    .prologue
    .line 204
    return-void
.end method

.method protected onTelephonyStateChange(Lcom/htc/lockscreen/telephony/TelephonyState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1039
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 149
    return-void
.end method

.method protected onViewModeChange(ILandroid/os/Bundle;)V
    .locals 0
    .parameter "viewMode"
    .parameter "extras"

    .prologue
    .line 977
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 145
    return-void
.end method

.method protected onWindowResize(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "coveredInsets"
    .parameter "visibleInsets"
    .parameter "reportDraw"
    .parameter "newConfig"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 789
    return-void
.end method

.method public pokeWakeLock()V
    .locals 1

    .prologue
    .line 862
    const/16 v0, 0x2ee0

    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->pokeWakeLock(I)V

    .line 863
    return-void
.end method

.method public pokeWakeLock(I)V
    .locals 2
    .parameter "ms"

    .prologue
    .line 871
    const-string v0, "idleScreenWakeLock"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 872
    return-void
.end method

.method public prepareUnlock()V
    .locals 2

    .prologue
    .line 715
    const-string v0, "idleScreenPrepareUnlock"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 716
    return-void
.end method

.method public registerReminderState(Lcom/htc/lockscreen/reminder/ReminderListener;)V
    .locals 2
    .parameter "reminderListener"

    .prologue
    .line 948
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mReminderListener:Lcom/htc/lockscreen/reminder/ReminderListener;

    .line 949
    const-string v0, "idleScreenReminderRegister"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 950
    return-void
.end method

.method public registerTelephonyState(Lcom/htc/lockscreen/telephony/TelephonyListener;)V
    .locals 2
    .parameter "telephonyListener"

    .prologue
    .line 926
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mTeleListener:Lcom/htc/lockscreen/telephony/TelephonyListener;

    .line 927
    const-string v0, "idleScreenTelephonyRegister"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 928
    return-void
.end method

.method reportVisibility()V
    .locals 6

    .prologue
    .line 475
    const-string v3, "IdleScreenEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reportVisibility mVisible"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mStarted:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mScreenOn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mScreenOn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mIsResume:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIsResume:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mLockScreenState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLockScreenState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    iget-boolean v3, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mDestroyed:Z

    if-nez v3, :cond_2

    .line 480
    iget-object v3, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->isScreenOn(Landroid/content/Context;)Z

    move-result v1

    .line 481
    .local v1, screenOn:Z
    iget-boolean v3, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mScreenOn:Z

    if-eq v3, v1, :cond_0

    .line 482
    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mScreenOn:Z

    .line 483
    iget-boolean v3, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mScreenOn:Z

    invoke-virtual {p0, v3}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onScreenOnOffChanged(Z)V

    .line 486
    :cond_0
    iget-boolean v3, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mStarted:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mScreenOn:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIsResume:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLockScreenState:I

    if-nez v3, :cond_3

    const/4 v2, 0x1

    .line 487
    .local v2, visible:Z
    :goto_0
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mStarted:Z

    .line 488
    .local v0, bRender:Z
    iget-boolean v3, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mRenderable:Z

    if-eq v3, v0, :cond_1

    .line 489
    iput-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mRenderable:Z

    .line 490
    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onRenderableChange(Z)V

    .line 492
    :cond_1
    iget-boolean v3, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mReportedVisible:Z

    if-eq v3, v2, :cond_2

    .line 493
    iput-boolean v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mReportedVisible:Z

    .line 494
    const-string v3, "IdleScreenEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onVisibilityChanged("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-virtual {p0, v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onVisibilityChanged(Z)V

    .line 505
    if-eqz v2, :cond_4

    .line 506
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->goToResume()V

    .line 513
    .end local v0           #bRender:Z
    .end local v1           #screenOn:Z
    .end local v2           #visible:Z
    :cond_2
    :goto_1
    return-void

    .line 486
    .restart local v1       #screenOn:Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 509
    .restart local v0       #bRender:Z
    .restart local v2       #visible:Z
    :cond_4
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->goToPause()V

    goto :goto_1
.end method

.method public reportWindowResized(Z)V
    .locals 5
    .parameter "reportDraw"

    .prologue
    const/4 v2, 0x0

    .line 1188
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    if-eqz v1, :cond_0

    .line 1189
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-object v3, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    const/16 v4, 0x272e

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1191
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-object v1, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1193
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 1189
    goto :goto_0
.end method

.method public reportWindowVisible(Z)V
    .locals 5
    .parameter "visible"

    .prologue
    const/4 v2, 0x0

    .line 1201
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    if-eqz v1, :cond_0

    .line 1202
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-object v3, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    const/16 v4, 0x271a

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1204
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-object v1, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1206
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 1202
    goto :goto_0
.end method

.method public requestUpdateSurface()V
    .locals 3

    .prologue
    .line 1170
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    if-eqz v1, :cond_0

    .line 1171
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-object v1, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1172
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-object v1, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1174
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public requestUpdateSurface(J)V
    .locals 3
    .parameter "delay"

    .prologue
    .line 1177
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    if-eqz v1, :cond_0

    .line 1178
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-object v1, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1179
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-object v1, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1181
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .parameter "action"
    .parameter "extra"

    .prologue
    .line 345
    new-instance v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;

    invoke-direct {v0}, Lcom/android/internal/os/HandlerCaller$SomeArgs;-><init>()V

    .line 346
    .local v0, args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg1:Ljava/lang/Object;

    .line 347
    iput-object p2, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg2:Ljava/lang/Object;

    .line 349
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-object v2, v2, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    const/16 v3, 0x2742

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 351
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-object v2, v2, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 352
    return-void
.end method

.method public setShowLiveWallpaper(Z)V
    .locals 2
    .parameter "show"

    .prologue
    const/4 v1, 0x0

    .line 334
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->setShowLiveWallpaper(Z)V

    .line 335
    if-eqz p1, :cond_0

    .line 336
    const-string v0, "idleScreenShowLiveWallpaper"

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 342
    :goto_0
    return-void

    .line 339
    :cond_0
    const-string v0, "idleScreenHideLiveWallpaper"

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method setSurfaceFormat(I)V
    .locals 1
    .parameter "format"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->setFormat(I)V

    .line 364
    return-void
.end method

.method protected setSurfaceSize()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 423
    .local v0, holder:Landroid/view/SurfaceHolder;
    if-eqz v0, :cond_0

    .line 424
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    .line 428
    :cond_0
    return-void
.end method

.method public setWindowFlag(I)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->setWindowFlag(I)V

    .line 1152
    return-void
.end method

.method setWindowShow(Z)V
    .locals 3
    .parameter "show"

    .prologue
    const/4 v2, 0x0

    .line 317
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 318
    const-string v0, "IdleScreenEngine"

    const-string v1, "updateSurface~ destroyed"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/idlescreen/ISLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->setWindowShow(Z)V

    .line 321
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0, v2, v2, v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->updateSurface(ZZZ)V

    .line 322
    return-void
.end method

.method setWindowSize(II)V
    .locals 1
    .parameter "width"
    .parameter "heigt"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0, p1, p2}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->setWindowSize(II)V

    .line 369
    return-void
.end method

.method public snoozeReminder(IJLjava/lang/String;)V
    .locals 2
    .parameter "type"
    .parameter "id"
    .parameter "action"

    .prologue
    .line 1059
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1060
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "Key_ReminderType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1061
    const-string v1, "Key_ReminderId"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1062
    const-string v1, "Key_ReminderAction"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    const-string v1, "idleScreenReminderSnooze"

    invoke-virtual {p0, v1, v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1064
    return-void
.end method

.method public startActivityAndUnlock(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "intent"
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 703
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 704
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "KEY_ACTIVITY_INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 705
    const-string v1, "KEY_ACTIVITY_PACKAGE"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const-string v1, "KEY_ACTIVITY_CLASS"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const-string v1, "ACTION_LOCKSCREEN_START_PENDING"

    invoke-virtual {p0, v1, v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 708
    return-void
.end method

.method public startActivityAndUnlock(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "intent"
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 695
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 696
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "KEY_ACTIVITY_INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 697
    const-string v1, "KEY_ACTIVITY_PACKAGE"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    const-string v1, "KEY_ACTIVITY_CLASS"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    const-string v1, "startActivityAndUnlock"

    invoke-virtual {p0, v1, v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 700
    return-void
.end method

.method public unlock()V
    .locals 2

    .prologue
    .line 849
    const-string v0, "idleScreenUnlock"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 850
    return-void
.end method

.method public unlock(Landroid/os/Bundle;)V
    .locals 1
    .parameter "extra"

    .prologue
    .line 853
    const-string v0, "idleScreenUnlock"

    invoke-virtual {p0, v0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 854
    return-void
.end method

.method public unregisterReminderState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 959
    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mReminderListener:Lcom/htc/lockscreen/reminder/ReminderListener;

    .line 960
    const-string v0, "idleScreenReminderUnRegister"

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 961
    return-void
.end method

.method public unregisterTelephonyState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 937
    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mTeleListener:Lcom/htc/lockscreen/telephony/TelephonyListener;

    .line 938
    const-string v0, "idleScreenTelephonyUnRegister"

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 939
    return-void
.end method

.method updateSurface(ZZZ)V
    .locals 2
    .parameter "forceRelayout"
    .parameter "forceReport"
    .parameter "redrawNeeded"

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 357
    const-string v0, "IdleScreenEngine"

    const-string v1, "updateSurface~ destroyed"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/idlescreen/ISLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->updateSurface(ZZZ)V

    .line 360
    return-void
.end method
