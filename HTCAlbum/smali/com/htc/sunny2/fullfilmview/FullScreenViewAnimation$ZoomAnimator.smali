.class public Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;
.super Lcom/htc/sunnyCore/RenderThreadAction;
.source "FullScreenViewAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZoomAnimator"
.end annotation


# static fields
.field private static final LTAG:Ljava/lang/String; = "ZoomAnimator"


# instance fields
.field centerXBegin:F

.field centerXEnd:F

.field centerYBegin:F

.field centerYEnd:F

.field frameDuration:J

.field isZooming:Z

.field private itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

.field zoomFactorBegin:F

.field zoomFactorEnd:F


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;FFFFFF)V
    .locals 4
    .parameter "host"
    .parameter "name"
    .parameter "itemFrame"
    .parameter "zoomFactorBegin"
    .parameter "centerXBegin"
    .parameter "centerYBegin"
    .parameter "zoomFactorEnd"
    .parameter "centerXEnd"
    .parameter "centerYEnd"

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    .line 36
    const-wide/16 v0, 0x10

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->frameDuration:J

    .line 38
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->zoomFactorBegin:F

    .line 39
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerXBegin:F

    .line 40
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerYBegin:F

    .line 42
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->zoomFactorEnd:F

    .line 43
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerXEnd:F

    .line 44
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerYEnd:F

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->isZooming:Z

    .line 54
    iput-object p3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    .line 56
    iput p4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->zoomFactorBegin:F

    .line 57
    iput p5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerXBegin:F

    .line 58
    iput p6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerYBegin:F

    .line 60
    iput p7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->zoomFactorEnd:F

    .line 61
    iput p8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerXEnd:F

    .line 62
    iput p9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerYEnd:F

    .line 63
    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 2
    .parameter "cancelReason"

    .prologue
    const/4 v1, 0x0

    .line 127
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->isZooming:Z

    if-eqz v0, :cond_1

    .line 129
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->isZooming:Z

    .line 130
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->doZoomEnd()V

    .line 132
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v0, :cond_0

    const-string v0, "profiler.performance"

    invoke-static {v0, v1}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 133
    :cond_0
    const-string v0, "AutoTest"

    const-string v1, "[AutoProf](302) [OTHER][Gallery][DoubleTapZoomInOut_End][FINISH]\u2026"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_1
    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 11
    .parameter "frameIndex"
    .parameter "timeMillis"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    if-nez v0, :cond_0

    .line 73
    const-string v0, "ZoomAnimator"

    const-string v4, "null itemFrame"

    invoke-static {v0, v4}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/4 v0, 0x0

    .line 122
    :goto_0
    return v0

    .line 79
    :cond_0
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->firstFrameIndex:I

    if-ne p1, v0, :cond_2

    .line 81
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "ZoomAnimator"

    const-string v4, "zoom begin"

    invoke-static {v0, v4}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->doZoomBegin(Z)V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->isZooming:Z

    .line 88
    :cond_2
    const/high16 v1, 0x3f80

    .line 89
    .local v1, zoomFactor:F
    const/4 v2, 0x0

    .line 90
    .local v2, displayImageCenterX:F
    const/4 v3, 0x0

    .line 92
    .local v3, displayImageCenterY:F
    int-to-long v4, p1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->firstFrameIndex:I

    int-to-long v6, v0

    iget-wide v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->frameDuration:J

    add-long/2addr v6, v9

    cmp-long v0, v4, v6

    if-lez v0, :cond_6

    .line 94
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->zoomFactorEnd:F

    .line 95
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerXEnd:F

    .line 96
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerYEnd:F

    .line 106
    :goto_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->doZoom(FFFZZII)V

    .line 110
    int-to-long v4, p1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->firstFrameIndex:I

    int-to-long v6, v0

    iget-wide v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->frameDuration:J

    add-long/2addr v6, v9

    cmp-long v0, v4, v6

    if-lez v0, :cond_7

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->isZooming:Z

    .line 113
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->doZoomEnd()V

    .line 114
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "ZoomAnimator"

    const-string v4, "zoom end"

    invoke-static {v0, v4}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_3
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v0, :cond_4

    const-string v0, "profiler.performance"

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_5

    .line 116
    :cond_4
    const-string v0, "AutoTest"

    const-string v4, "[AutoProf](302) [OTHER][Gallery][DoubleTapZoomInOut_End][FINISH]\u2026"

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 100
    :cond_6
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->firstFrameIndex:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget-wide v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->frameDuration:J

    long-to-float v4, v4

    div-float v8, v0, v4

    .line 101
    .local v8, t:F
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->zoomFactorBegin:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->zoomFactorEnd:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->zoomFactorBegin:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v8

    add-float v1, v0, v4

    .line 102
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerXBegin:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerXEnd:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerXBegin:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v8

    add-float v2, v0, v4

    .line 103
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerYBegin:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerYEnd:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerYBegin:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v8

    add-float v3, v0, v4

    goto :goto_1

    .line 122
    .end local v8           #t:F
    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_0
.end method
