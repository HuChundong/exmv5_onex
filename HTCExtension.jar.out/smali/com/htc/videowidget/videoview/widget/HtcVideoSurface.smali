.class public Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;
.super Landroid/view/SurfaceView;
.source "HtcVideoSurface.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcVideoSurface"


# instance fields
.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 16
    iput v0, p0, Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;->mVideoWidth:I

    .line 17
    iput v0, p0, Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;->mVideoHeight:I

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    iput v0, p0, Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;->mVideoWidth:I

    .line 17
    iput v0, p0, Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;->mVideoHeight:I

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    iput v0, p0, Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;->mVideoWidth:I

    .line 17
    iput v0, p0, Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;->mVideoHeight:I

    .line 32
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 44
    iget v2, p0, Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;->mVideoWidth:I

    invoke-static {v2, p1}, Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;->getDefaultSize(II)I

    move-result v1

    .line 45
    .local v1, width:I
    iget v2, p0, Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;->mVideoHeight:I

    invoke-static {v2, p2}, Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;->getDefaultSize(II)I

    move-result v0

    .line 48
    .local v0, height:I
    iget v2, p0, Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;->mVideoWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;->mVideoHeight:I

    if-lez v2, :cond_0

    .line 49
    iget v2, p0, Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;->mVideoWidth:I

    iget v3, p0, Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;->mVideoHeight:I

    invoke-virtual {p0, v2, v3}, Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;->setMeasuredDimension(II)V

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public setViewSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 36
    iput p1, p0, Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;->mVideoWidth:I

    .line 37
    iput p2, p0, Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;->mVideoHeight:I

    .line 38
    return-void
.end method
