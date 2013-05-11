.class public Lcom/htc/album/PaintManager/ImageAnimateDispatcher;
.super Ljava/lang/Object;
.source "ImageAnimateDispatcher.java"


# static fields
.field private static final DEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAnimate:I

.field private mIndex:I

.field private mIsAnimating:Z

.field private mIsIndexChange:Z

.field private mIsSRotateBegin:Z

.field private mIsSRotateEnd:Z

.field private mIsSRotating:Z

.field private mListener:Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;

.field private mScrollState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIndex:I

    .line 13
    iput v1, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mScrollState:I

    .line 15
    iput-boolean v1, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsIndexChange:Z

    .line 20
    iput v1, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mAnimate:I

    .line 21
    iput-boolean v1, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsAnimating:Z

    .line 27
    iput-boolean v1, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsSRotateBegin:Z

    .line 28
    iput-boolean v1, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsSRotateEnd:Z

    .line 29
    iput-boolean v1, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsSRotating:Z

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mListener:Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;

    return-void
.end method


# virtual methods
.method public doDispatch()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 93
    iget-object v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mListener:Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;

    if-nez v0, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-boolean v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsSRotateBegin:Z

    if-ne v1, v0, :cond_2

    .line 105
    iput-boolean v2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsSRotateBegin:Z

    .line 106
    iput-boolean v1, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsSRotating:Z

    .line 107
    iget-object v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mListener:Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;

    invoke-interface {v0}, Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;->onAnimateBegin()V

    goto :goto_0

    .line 112
    :cond_2
    iget-boolean v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsSRotating:Z

    if-ne v1, v0, :cond_3

    iget-boolean v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsSRotateEnd:Z

    if-ne v1, v0, :cond_3

    .line 114
    iput-boolean v2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsSRotating:Z

    .line 115
    iput-boolean v2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsSRotateEnd:Z

    .line 116
    iget-object v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mListener:Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;

    invoke-interface {v0}, Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;->onAnimateEnd()V

    goto :goto_0

    .line 123
    :cond_3
    iget v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mAnimate:I

    if-lez v0, :cond_4

    .line 125
    iget-boolean v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsAnimating:Z

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mListener:Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;

    invoke-interface {v0}, Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;->onAnimateBegin()V

    .line 128
    iput-boolean v1, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsAnimating:Z

    goto :goto_0

    .line 134
    :cond_4
    iget-boolean v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsAnimating:Z

    if-ne v1, v0, :cond_0

    .line 136
    iget-boolean v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsIndexChange:Z

    if-nez v0, :cond_5

    .line 139
    iget-object v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mListener:Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;

    invoke-interface {v0}, Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;->onAnimateEnd()V

    .line 147
    :goto_1
    iput-boolean v2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsAnimating:Z

    goto :goto_0

    .line 144
    :cond_5
    iget-object v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mListener:Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;

    invoke-interface {v0}, Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;->onAnimateEndSwitched()V

    .line 145
    iput-boolean v2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsIndexChange:Z

    goto :goto_1
.end method

.method public isRotating()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsSRotating:Z

    return v0
.end method

.method public setAnimateBegin()V
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mAnimate:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mAnimate:I

    .line 83
    return-void
.end method

.method public setAnimateEnd()V
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mAnimate:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mAnimate:I

    .line 87
    iget v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mAnimate:I

    if-gez v0, :cond_0

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mAnimate:I

    .line 90
    :cond_0
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 38
    iput p1, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIndex:I

    .line 39
    return-void
.end method

.method public setListener(Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mListener:Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;

    .line 35
    return-void
.end method

.method public setScreenRotateBegin()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsSRotateBegin:Z

    .line 70
    return-void
.end method

.method public setScreenRotateEnd()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsSRotateEnd:Z

    .line 78
    return-void
.end method

.method public setScrollState(II)Z
    .locals 4
    .parameter "nIndex"
    .parameter "nState"

    .prologue
    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, bResult:Z
    iget v2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mScrollState:I

    if-ne v2, p2, :cond_0

    move v1, v0

    .line 64
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 46
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    iput p2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mScrollState:I

    .line 48
    iget v2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIndex:I

    if-eq v2, p1, :cond_1

    .line 49
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsIndexChange:Z

    .line 50
    :cond_1
    iput p1, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIndex:I

    .line 52
    const/4 v2, 0x2

    iget v3, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mScrollState:I

    if-ne v2, v3, :cond_3

    .line 54
    iget v2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mAnimate:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mAnimate:I

    .line 63
    :cond_2
    :goto_1
    const/4 v0, 0x1

    move v1, v0

    .line 64
    .restart local v1       #bResult:I
    goto :goto_0

    .line 56
    .end local v1           #bResult:I
    :cond_3
    iget v2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mScrollState:I

    if-nez v2, :cond_2

    .line 58
    iget v2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mAnimate:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mAnimate:I

    .line 59
    iget v2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mAnimate:I

    if-gez v2, :cond_2

    .line 60
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mAnimate:I

    goto :goto_1
.end method
