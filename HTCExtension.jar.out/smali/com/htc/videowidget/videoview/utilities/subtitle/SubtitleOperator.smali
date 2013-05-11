.class public Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;
.super Ljava/lang/Object;
.source "SubtitleOperator.java"


# static fields
.field public static final ANDROID_INVOKE_VIDEO_GET_PLAY_MODE:I = 0x22d9

.field private static final NO_SUBTITLE_FILE:I = 0x0

.field private static final PARSE_DONE:I = 0x3

.field private static final PARSE_ERROR:I = 0x2

.field private static final PARSE_START:I = 0x1

.field private static final SEARCHING_SUBTITLE:I = -0x1

.field private static final TAG:Ljava/lang/String; = null

.field private static final VIDEO_ADJ_TIME:I = 0x2710

.field private static final VIDEO_SEEK_TO_THE_CLOSET:I = -0x3

.field private static final VIDEO_START_PLAY:I = -0x1

.field private static final VIDEO_SUBTITLE_ERROR:I = -0x2

.field private static final VIDEO_SUBTITLE_PLAY:I = 0x1

.field private static final VIDEO_SUBTITLE_SEARCH:I


# instance fields
.field private mAdjTime:I

.field private mCurrentIndex:I

.field private mEnableSubtitle:Z

.field private mFirstTimePlay:Z

.field private final mHandler:Landroid/os/Handler;

.field private mNextIndex:I

.field private mParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

.field private mPlayNext:Z

.field private mPlayer:Lcom/htc/videowidget/videoview/IHtcPlayerAPI;

.field private mSearchRunnable:Ljava/lang/Runnable;

.field private mSearchThread:Landroid/os/HandlerThread;

.field private mSubtitleText:Landroid/widget/TextView;

.field private final mThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mNextIndex:I

    .line 29
    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mAdjTime:I

    .line 30
    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mCurrentIndex:I

    .line 31
    iput-boolean v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mPlayNext:Z

    .line 32
    iput-boolean v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mEnableSubtitle:Z

    .line 33
    iput-boolean v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mFirstTimePlay:Z

    .line 270
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$1;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$1;-><init>(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mSearchRunnable:Ljava/lang/Runnable;

    .line 285
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$2;-><init>(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mHandler:Landroid/os/Handler;

    .line 54
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mSubtitleText:Landroid/widget/TextView;

    .line 55
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Search_Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mSearchThread:Landroid/os/HandlerThread;

    .line 56
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mSearchThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 57
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mSearchThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mThreadHandler:Landroid/os/Handler;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$008(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mCurrentIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->binarySearchSubtitle()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mAdjTime:I

    return v0
.end method

.method static synthetic access$1002(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mAdjTime:I

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mFirstTimePlay:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mFirstTimePlay:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->getStrPos(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->getEndPos(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->getSubtitleSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->getSubtitle(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mNextIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mPlayNext:Z

    return v0
.end method

.method static synthetic access$402(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mPlayNext:Z

    return p1
.end method

.method static synthetic access$500(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mSearchRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mSubtitleText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)Lcom/htc/videowidget/videoview/IHtcPlayerAPI;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mPlayer:Lcom/htc/videowidget/videoview/IHtcPlayerAPI;

    return-object v0
.end method

.method private binarySearchSubtitle()I
    .locals 9

    .prologue
    .line 450
    sget-object v6, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->TAG:Ljava/lang/String;

    const-string v7, "[binarySearchSubtitle]"

    invoke-static {v6, v7}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->getStrPos(I)I

    move-result v6

    iget-object v7, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mPlayer:Lcom/htc/videowidget/videoview/IHtcPlayerAPI;

    invoke-interface {v7}, Lcom/htc/videowidget/videoview/IHtcPlayerAPI;->getCurrentPosition()I

    move-result v7

    if-le v6, v7, :cond_1

    .line 454
    const/4 v4, -0x1

    .line 494
    :cond_0
    :goto_0
    return v4

    .line 457
    :cond_1
    iget-object v6, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    if-eqz v6, :cond_8

    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->getSubtitleSize()I

    move-result v6

    if-lez v6, :cond_8

    .line 459
    const/4 v3, 0x0

    .line 460
    .local v3, low:I
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->getSubtitleSize()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .line 461
    .local v2, high:I
    iget-object v6, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mPlayer:Lcom/htc/videowidget/videoview/IHtcPlayerAPI;

    invoke-interface {v6}, Lcom/htc/videowidget/videoview/IHtcPlayerAPI;->getCurrentPosition()I

    move-result v0

    .line 462
    .local v0, currentPos:I
    const/4 v4, 0x0

    .line 463
    .local v4, mid:I
    const/4 v5, 0x0

    .line 464
    .local v5, startMidVal:I
    const/4 v1, 0x0

    .line 465
    .local v1, endMidVal:I
    :cond_2
    :goto_1
    if-gt v3, v2, :cond_5

    .line 467
    sub-int v6, v2, v3

    div-int/lit8 v6, v6, 0x2

    add-int v4, v3, v6

    .line 468
    invoke-direct {p0, v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->getStrPos(I)I

    move-result v5

    .line 469
    invoke-direct {p0, v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->getEndPos(I)I

    move-result v1

    .line 471
    if-gt v5, v0, :cond_3

    if-ge v1, v0, :cond_0

    .line 473
    :cond_3
    if-le v5, v0, :cond_4

    .line 474
    add-int/lit8 v2, v4, -0x1

    goto :goto_1

    .line 475
    :cond_4
    if-ge v1, v0, :cond_2

    .line 476
    add-int/lit8 v3, v4, 0x1

    goto :goto_1

    .line 479
    :cond_5
    if-ltz v3, :cond_7

    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->getSubtitleSize()I

    move-result v6

    if-gt v3, v6, :cond_7

    .line 481
    iget-object v6, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mHandler:Landroid/os/Handler;

    if-eqz v6, :cond_6

    .line 483
    iput v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mNextIndex:I

    .line 484
    sget-object v6, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[binarySearchSubtitle] the closet time index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :cond_6
    const/4 v4, -0x3

    goto :goto_0

    .line 490
    :cond_7
    add-int/lit8 v6, v3, 0x1

    neg-int v4, v6

    goto :goto_0

    .line 493
    .end local v0           #currentPos:I
    .end local v1           #endMidVal:I
    .end local v2           #high:I
    .end local v3           #low:I
    .end local v4           #mid:I
    .end local v5           #startMidVal:I
    :cond_8
    sget-object v6, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->TAG:Ljava/lang/String;

    const-string v7, "[binarySearchSubtitle] no subtitle or parse fail"

    invoke-static {v6, v7}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const/4 v4, -0x2

    goto :goto_0
.end method

.method private clearSearchThread()V
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mSearchThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 501
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->TAG:Ljava/lang/String;

    const-string v1, "[clearSearchThread] Before quit handler thread!"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mSearchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 503
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mSearchThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 504
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->TAG:Ljava/lang/String;

    const-string v1, "[clearSearchThread] After handler thread!"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    :cond_0
    return-void
.end method

.method private getEndPos(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->getSubtitleSize()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    invoke-virtual {v0, p1}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->getEndPos(I)I

    move-result v0

    .line 124
    :goto_0
    return v0

    .line 123
    :cond_0
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->TAG:Ljava/lang/String;

    const-string v1, "[getEndPos] Not found timestamp"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mPlayer:Lcom/htc/videowidget/videoview/IHtcPlayerAPI;

    invoke-interface {v0}, Lcom/htc/videowidget/videoview/IHtcPlayerAPI;->getCurrentPosition()I

    move-result v0

    add-int/lit16 v0, v0, 0x1f4

    goto :goto_0
.end method

.method private getStrPos(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->getSubtitleSize()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    invoke-virtual {v0, p1}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->getStrPos(I)I

    move-result v0

    .line 111
    :goto_0
    return v0

    .line 110
    :cond_0
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->TAG:Ljava/lang/String;

    const-string v1, "[getStrPos] Not found timestamp"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mPlayer:Lcom/htc/videowidget/videoview/IHtcPlayerAPI;

    invoke-interface {v0}, Lcom/htc/videowidget/videoview/IHtcPlayerAPI;->getCurrentPosition()I

    move-result v0

    add-int/lit16 v0, v0, 0x1f4

    goto :goto_0
.end method

.method private getSubtitle(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->getSubtitleSize()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    invoke-virtual {v0, p1}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->getSubtitle(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    .line 97
    :cond_0
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->TAG:Ljava/lang/String;

    const-string v1, "No Subtitle"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v0, ""

    goto :goto_0
.end method

.method private getSubtitleSize()I
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->getSubtitleSize()I

    move-result v0

    .line 137
    :goto_0
    return v0

    .line 136
    :cond_0
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->TAG:Ljava/lang/String;

    const-string v1, "Subtitle is null"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public SubtitleParse(Landroid/content/Context;Landroid/content/res/AssetFileDescriptor;)V
    .locals 1
    .parameter "context"
    .parameter "srtfd"

    .prologue
    .line 72
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    invoke-direct {v0, p1, p2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;-><init>(Landroid/content/Context;Landroid/content/res/AssetFileDescriptor;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    .line 73
    return-void
.end method

.method public SubtitleParse(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "filePath"

    .prologue
    .line 62
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    .line 63
    return-void
.end method

.method public SubtitleParse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "filePath"
    .parameter "subtitleName"

    .prologue
    .line 67
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    .line 68
    return-void
.end method

.method public changeSubtitle(IZ)V
    .locals 3
    .parameter "subtitleIndex"
    .parameter "isNeedAutoDetect"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    if-eqz v0, :cond_0

    .line 182
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[changeSubtitle] SubtitleIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Need auto detect charset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    invoke-virtual {v0, p1, p2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->changeSubtitle(IZ)V

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->TAG:Ljava/lang/String;

    const-string v1, "[changeSubtitle] parse is null to change subtitle"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dismissSubtitle()V
    .locals 2

    .prologue
    .line 253
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->TAG:Ljava/lang/String;

    const-string v1, "[dismissSubtitle] start"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mSubtitleText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mSubtitleText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->TAG:Ljava/lang/String;

    const-string v1, "[dismissSubtitle] end"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_0
    return-void
.end method

.method public enableSubtitle(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mEnableSubtitle:Z

    .line 144
    return-void
.end method

.method public getPlayedSubtitleIndex()I
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    if-nez v0, :cond_0

    .line 511
    const/4 v0, -0x1

    .line 512
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->getPlayedSubtitleIndex()I

    move-result v0

    goto :goto_0
.end method

.method public getSubtitleByteArray()[B
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->getSubtitleByteArray()[B

    move-result-object v0

    .line 213
    :goto_0
    return-object v0

    .line 212
    :cond_0
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->TAG:Ljava/lang/String;

    const-string v1, "[getSubtitleByteArray] ByteArray is null"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubtitleCharset()Ljava/lang/String;
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->getSubtitleCharset()Ljava/lang/String;

    move-result-object v0

    .line 524
    :goto_0
    return-object v0

    .line 523
    :cond_0
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->TAG:Ljava/lang/String;

    const-string v1, "[getSubtitleCharset] SubtitleParse is null"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubtitleList()Ljava/util/LinkedList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->getSubtitleList()Ljava/util/LinkedList;

    move-result-object v0

    .line 174
    :goto_0
    return-object v0

    .line 173
    :cond_0
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->TAG:Ljava/lang/String;

    const-string v1, "No subtitle list"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubtitlePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->getSubtitlePath()Ljava/lang/String;

    move-result-object v0

    .line 200
    :goto_0
    return-object v0

    .line 199
    :cond_0
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->TAG:Ljava/lang/String;

    const-string v1, "[getSubtitlePath] Path is null"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSubtitle()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 78
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    if-eqz v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->getSubtitleSize()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 85
    :cond_0
    :goto_0
    return v0

    .line 84
    :cond_1
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->TAG:Ljava/lang/String;

    const-string v2, "Subtitle is null"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public releaseSubtitle()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->releaseSubtitle()V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    .line 153
    :cond_0
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->clearSearchThread()V

    .line 154
    return-void
.end method

.method public releaseSubtitleList()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;->releaseSubtitleList()V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mParse:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleParse;

    .line 163
    :cond_0
    return-void
.end method

.method public setMediaPlayer(Lcom/htc/videowidget/videoview/IHtcPlayerAPI;)V
    .locals 3
    .parameter "player"

    .prologue
    .line 263
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mPlayer:Lcom/htc/videowidget/videoview/IHtcPlayerAPI;

    .line 264
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPlayer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mPlayer:Lcom/htc/videowidget/videoview/IHtcPlayerAPI;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public startRenderSubtitle()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 219
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->TAG:Ljava/lang/String;

    const-string v1, "[start render subtitle] start"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mPlayer:Lcom/htc/videowidget/videoview/IHtcPlayerAPI;

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mEnableSubtitle:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mSubtitleText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 224
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mSubtitleText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iput-boolean v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mPlayNext:Z

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mFirstTimePlay:Z

    .line 227
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mPlayer:Lcom/htc/videowidget/videoview/IHtcPlayerAPI;

    invoke-interface {v0}, Lcom/htc/videowidget/videoview/IHtcPlayerAPI;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mAdjTime:I

    .line 228
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[start render subtitle] Adjust time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mAdjTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 232
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->TAG:Ljava/lang/String;

    const-string v1, "[start render subtitle] end"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_1
    :goto_0
    return-void

    .line 235
    :cond_2
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->dismissSubtitle()V

    goto :goto_0
.end method

.method public stopRenderSubtitle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 241
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->TAG:Ljava/lang/String;

    const-string v1, "[stop render subtitle] start"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 245
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 246
    iput-boolean v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mPlayNext:Z

    .line 247
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->TAG:Ljava/lang/String;

    const-string v1, "[stop render subtitle] end"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_0
    return-void
.end method
