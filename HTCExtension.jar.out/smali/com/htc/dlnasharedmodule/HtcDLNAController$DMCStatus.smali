.class Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;
.super Ljava/lang/Object;
.source "HtcDLNAController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnasharedmodule/HtcDLNAController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DMCStatus"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus$StateMsgTimerTask;,
        Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus$StateTimerTask;
    }
.end annotation


# instance fields
.field PgTimer:Ljava/util/Timer;

.field public StateMsgTimer:Ljava/util/Timer;

.field public StateTimer:Ljava/util/Timer;

.field bCanToastR:Z

.field bCanToastS:Z

.field public bMuteState:Z

.field public bShuffleState:Z

.field private bStateSynced:Z

.field public lDuration:J

.field public lPosition:J

.field public lPositionDyn:J

.field protected lUserPosition:J

.field public mbIsLiveRenderer:Z

.field public mbIsLiveServer:Z

.field public nPlayState:I

.field public nRepeatState:I

.field public nUserShuffleState:I

.field public nUserState:I

.field public nUserVolume:I

.field public nVolume:I

.field final synthetic this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;


# direct methods
.method private constructor <init>(Lcom/htc/dlnasharedmodule/HtcDLNAController;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 509
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 536
    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nPlayState:I

    .line 541
    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserState:I

    .line 542
    iput-boolean v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->bStateSynced:Z

    .line 547
    iput-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateTimer:Ljava/util/Timer;

    .line 552
    iput-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateMsgTimer:Ljava/util/Timer;

    .line 662
    iput-boolean v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->mbIsLiveServer:Z

    .line 667
    iput-boolean v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->mbIsLiveRenderer:Z

    .line 698
    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserShuffleState:I

    .line 731
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->PgTimer:Ljava/util/Timer;

    .line 760
    iput-boolean v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->bCanToastR:Z

    .line 761
    iput-boolean v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->bCanToastS:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/dlnasharedmodule/HtcDLNAController;Lcom/htc/dlnasharedmodule/HtcDLNAController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 509
    invoke-direct {p0, p1}, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;-><init>(Lcom/htc/dlnasharedmodule/HtcDLNAController;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 509
    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->bStateSynced:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 509
    iput-boolean p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->bStateSynced:Z

    return p1
.end method

.method static synthetic access$3000(Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 509
    invoke-direct {p0, p1}, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->setPosUI(I)V

    return-void
.end method

.method private isPlaying()Z
    .locals 3

    .prologue
    .line 646
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nPlayState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserState:I

    if-nez v0, :cond_1

    .line 647
    :cond_0
    const-string v0, "[HtcDLNAController]"

    const-string v1, "isPlaying() state:YES(0)"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const/4 v0, 0x1

    .line 651
    :goto_0
    return v0

    .line 650
    :cond_1
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPlaying() state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nPlayState:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPosUI(I)V
    .locals 0
    .parameter "nProgress"

    .prologue
    .line 754
    return-void
.end method

.method private setVolUI(I)V
    .locals 0
    .parameter "nVol"

    .prologue
    .line 758
    return-void
.end method


# virtual methods
.method protected checkState()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 575
    const/16 v1, 0x8

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 584
    .local v0, nUserStateMap:[I
    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nPlayState:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    .line 585
    iput v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nPlayState:I

    .line 586
    iput v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserState:I

    .line 588
    :cond_0
    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nPlayState:I

    const/4 v2, 0x7

    if-gt v1, v2, :cond_1

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nPlayState:I

    if-gez v1, :cond_2

    .line 602
    :cond_1
    :goto_0
    return-void

    .line 591
    :cond_2
    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nPlayState:I

    aget v1, v0, v1

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserState:I

    if-ne v1, v2, :cond_3

    .line 592
    iput-boolean v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->bStateSynced:Z

    .line 594
    :cond_3
    iget-boolean v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->bStateSynced:Z

    if-eqz v1, :cond_1

    .line 595
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #setter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mOncePlayed:Z
    invoke-static {v1, v3}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1102(Lcom/htc/dlnasharedmodule/HtcDLNAController;Z)Z

    .line 596
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #calls: Lcom/htc/dlnasharedmodule/HtcDLNAController;->setDMCLine(I)V
    invoke-static {v1, v3}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1200(Lcom/htc/dlnasharedmodule/HtcDLNAController;I)V

    .line 599
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateTimer:Ljava/util/Timer;

    invoke-virtual {v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateTimer:Ljava/util/Timer;

    .line 600
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateMsgTimer:Ljava/util/Timer;

    invoke-virtual {v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateMsgTimer:Ljava/util/Timer;

    goto :goto_0

    .line 575
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected refreshRS(I)V
    .locals 0
    .parameter "nRef"

    .prologue
    .line 814
    return-void
.end method

.method protected refreshTime()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 706
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurMode:I
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$000(Lcom/htc/dlnasharedmodule/HtcDLNAController;)I

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->lDuration:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 708
    :cond_0
    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->bStateSynced:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-wide v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->lPositionDyn:J

    iput-wide v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->lPosition:J

    .line 710
    :cond_1
    iget-wide v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->lDuration:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 711
    iget-wide v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->lPosition:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 712
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mStateListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnStateListener;

    if-eqz v0, :cond_2

    .line 713
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mStateListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnStateListener;

    iget-wide v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->lPosition:J

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAController$OnStateListener;->onUpdateCurrentPosition(J)V

    .line 729
    :cond_2
    :goto_0
    return-void

    .line 717
    :cond_3
    iget-wide v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->lPosition:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    goto :goto_0
.end method

.method protected refreshVolume()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    .line 821
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DMR volume had been set:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nVolume:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nVolume:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nVolume:I

    .line 823
    :cond_0
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nVolume:I

    if-lt v0, v3, :cond_1

    iput v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nVolume:I

    .line 826
    :cond_1
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurrentDMRListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurrentDMRListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nVolume:I

    invoke-interface {v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;->onVolumeChanged(I)V

    .line 827
    :cond_2
    return-void
.end method

.method protected setUserState(I)V
    .locals 8
    .parameter "nState"

    .prologue
    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    .line 559
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->bStateSynced:Z

    .line 560
    iput p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserState:I

    .line 561
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateMsgTimer:Ljava/util/Timer;

    new-instance v2, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus$StateMsgTimerTask;

    invoke-direct {v2, p0, v7}, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus$StateMsgTimerTask;-><init>(Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;Lcom/htc/dlnasharedmodule/HtcDLNAController$1;)V

    const-wide/16 v3, 0xfa0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->TimerEnable(Ljava/util/Timer;Ljava/util/TimerTask;JJ)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateMsgTimer:Ljava/util/Timer;

    .line 562
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$300(Lcom/htc/dlnasharedmodule/HtcDLNAController;)I

    move-result v0

    if-nez v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateTimer:Ljava/util/Timer;

    new-instance v2, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus$StateTimerTask;

    invoke-direct {v2, p0, v7}, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus$StateTimerTask;-><init>(Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;Lcom/htc/dlnasharedmodule/HtcDLNAController$1;)V

    const-wide/32 v3, 0x88b8

    invoke-virtual/range {v0 .. v6}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->TimerEnable(Ljava/util/Timer;Ljava/util/TimerTask;JJ)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateTimer:Ljava/util/Timer;

    .line 566
    :goto_0
    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->refreshTime()V

    .line 567
    return-void

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateTimer:Ljava/util/Timer;

    new-instance v2, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus$StateTimerTask;

    invoke-direct {v2, p0, v7}, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus$StateTimerTask;-><init>(Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;Lcom/htc/dlnasharedmodule/HtcDLNAController$1;)V

    const-wide/16 v3, 0x61a8

    invoke-virtual/range {v0 .. v6}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->TimerEnable(Ljava/util/Timer;Ljava/util/TimerTask;JJ)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateTimer:Ljava/util/Timer;

    goto :goto_0
.end method
