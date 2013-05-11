.class public Lcom/htc/album/PaintManager/PenEventDispatcher;
.super Ljava/lang/Object;
.source "PenEventDispatcher.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final PEN_META_ERASER:I = 0x0

.field private static final PEN_META_UNKNOWN:I = -0x1


# instance fields
.field private mIsPenDown:Z

.field private mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

.field private mPenMetaState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/htc/album/PaintManager/PenEventDispatcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/PaintManager/PenEventDispatcher;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/PaintManager/PenEventDispatcher;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/PaintManager/PenEventDispatcher;->mPenMetaState:I

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/PaintManager/PenEventDispatcher;->mIsPenDown:Z

    return-void
.end method

.method private dispatchPenEventByMeta(ILandroid/view/MotionEvent;)Z
    .locals 4
    .parameter "nPenMetaState"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, bResult:Z
    iget-object v2, p0, Lcom/htc/album/PaintManager/PenEventDispatcher;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    if-nez v2, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 73
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 75
    .local v1, nAction:I
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 81
    :pswitch_0
    if-nez v1, :cond_2

    .line 84
    iget-object v2, p0, Lcom/htc/album/PaintManager/PenEventDispatcher;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-virtual {v2, v3}, Lcom/htc/painting/engine/HtcPaintingView;->enableEraseMode(Z)V

    goto :goto_0

    .line 86
    :cond_2
    if-ne v3, v1, :cond_0

    .line 89
    iget-object v2, p0, Lcom/htc/album/PaintManager/PenEventDispatcher;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/painting/engine/HtcPaintingView;->enableEraseMode(Z)V

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dispatchPenEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 27
    const/4 v0, 0x0

    .line 29
    .local v0, bResult:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 31
    .local v1, nAction:I
    const/4 v2, -0x1

    .line 32
    .local v2, nMeta:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    if-ne v5, v3, :cond_1

    .line 33
    const/4 v2, 0x0

    .line 37
    :goto_0
    if-nez v1, :cond_2

    iget-boolean v3, p0, Lcom/htc/album/PaintManager/PenEventDispatcher;->mIsPenDown:Z

    if-nez v3, :cond_2

    .line 41
    iput-boolean v4, p0, Lcom/htc/album/PaintManager/PenEventDispatcher;->mIsPenDown:Z

    .line 42
    iput v2, p0, Lcom/htc/album/PaintManager/PenEventDispatcher;->mPenMetaState:I

    .line 43
    iget v3, p0, Lcom/htc/album/PaintManager/PenEventDispatcher;->mPenMetaState:I

    invoke-direct {p0, v3, p1}, Lcom/htc/album/PaintManager/PenEventDispatcher;->dispatchPenEventByMeta(ILandroid/view/MotionEvent;)Z

    move-result v0

    .line 65
    :cond_0
    :goto_1
    return v0

    .line 35
    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    .line 45
    :cond_2
    if-ne v5, v1, :cond_3

    iget-boolean v3, p0, Lcom/htc/album/PaintManager/PenEventDispatcher;->mIsPenDown:Z

    if-ne v4, v3, :cond_3

    iget v3, p0, Lcom/htc/album/PaintManager/PenEventDispatcher;->mPenMetaState:I

    if-ne v2, v3, :cond_3

    .line 51
    iget v3, p0, Lcom/htc/album/PaintManager/PenEventDispatcher;->mPenMetaState:I

    invoke-direct {p0, v3, p1}, Lcom/htc/album/PaintManager/PenEventDispatcher;->dispatchPenEventByMeta(ILandroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    .line 54
    :cond_3
    if-eq v4, v1, :cond_4

    iget v3, p0, Lcom/htc/album/PaintManager/PenEventDispatcher;->mPenMetaState:I

    if-eq v2, v3, :cond_0

    :cond_4
    iget-boolean v3, p0, Lcom/htc/album/PaintManager/PenEventDispatcher;->mIsPenDown:Z

    if-eqz v3, :cond_0

    .line 59
    iget v3, p0, Lcom/htc/album/PaintManager/PenEventDispatcher;->mPenMetaState:I

    if-eq v2, v3, :cond_5

    .line 60
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 61
    :cond_5
    iget v3, p0, Lcom/htc/album/PaintManager/PenEventDispatcher;->mPenMetaState:I

    invoke-direct {p0, v3, p1}, Lcom/htc/album/PaintManager/PenEventDispatcher;->dispatchPenEventByMeta(ILandroid/view/MotionEvent;)Z

    move-result v0

    .line 62
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/album/PaintManager/PenEventDispatcher;->mIsPenDown:Z

    .line 63
    const/4 v3, -0x1

    iput v3, p0, Lcom/htc/album/PaintManager/PenEventDispatcher;->mPenMetaState:I

    goto :goto_1
.end method

.method public onCreate(Lcom/htc/painting/engine/HtcPaintingView;)V
    .locals 0
    .parameter "paintingView"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/htc/album/PaintManager/PenEventDispatcher;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    .line 20
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/PaintManager/PenEventDispatcher;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    .line 24
    return-void
.end method
