.class public Lcom/htc/view/animation/HtcGlZoomTransAnim;
.super Lcom/htc/view/animation/HtcBaseGlTransAnim;
.source "HtcGlZoomTransAnim.java"


# instance fields
.field private mAnimDuration:J

.field protected mPointX:I

.field protected mPointY:I

.field private final mZoomEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private final mZoomExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x5dd

    const/4 v2, 0x2

    const/4 v0, -0x1

    .line 42
    invoke-direct {p0}, Lcom/htc/view/animation/HtcBaseGlTransAnim;-><init>()V

    .line 17
    iput v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointX:I

    .line 19
    iput v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointY:I

    .line 23
    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mAnimDuration:J

    .line 26
    const-string v0, "TRANSIT_ZOOM_ENTER"

    invoke-static {v2, v4, v3, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mZoomEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 30
    const-string v0, "TRANSIT_ZOOM_EXIT"

    invoke-static {v2, v4, v3, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mZoomExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 43
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/htc/view/animation/HtcGlZoomTransAnim;->setAnimationType(I)V

    .line 45
    iget-wide v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mAnimDuration:J

    invoke-super {p0, v0, v1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setAnimDuration(J)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x5dd

    const/4 v2, 0x2

    const/4 v0, -0x1

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/htc/view/animation/HtcBaseGlTransAnim;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    iput v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointX:I

    .line 19
    iput v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointY:I

    .line 23
    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mAnimDuration:J

    .line 26
    const-string v0, "TRANSIT_ZOOM_ENTER"

    invoke-static {v2, v4, v3, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mZoomEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 30
    const-string v0, "TRANSIT_ZOOM_EXIT"

    invoke-static {v2, v4, v3, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mZoomExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 36
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/htc/view/animation/HtcGlZoomTransAnim;->setAnimationType(I)V

    .line 38
    iget-wide v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mAnimDuration:J

    invoke-super {p0, v0, v1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setAnimDuration(J)V

    .line 39
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter "in"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x5dd

    const/4 v2, 0x2

    const/4 v0, -0x1

    .line 126
    invoke-direct {p0, p1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;-><init>(Landroid/os/Parcel;)V

    .line 17
    iput v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointX:I

    .line 19
    iput v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointY:I

    .line 23
    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mAnimDuration:J

    .line 26
    const-string v0, "TRANSIT_ZOOM_ENTER"

    invoke-static {v2, v4, v3, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mZoomEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 30
    const-string v0, "TRANSIT_ZOOM_EXIT"

    invoke-static {v2, v4, v3, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mZoomExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointX:I

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointY:I

    .line 131
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/htc/view/animation/HtcGlZoomTransAnim;->setAnimationType(I)V

    .line 133
    iget-wide v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mAnimDuration:J

    invoke-super {p0, v0, v1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setAnimDuration(J)V

    .line 134
    return-void
.end method


# virtual methods
.method public encodeSpecificParamsToArray()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 87
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    .line 89
    .local v0, mGlAttributeSet:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/view/animation/HtcGlZoomTransAnim;->getZoomPoint()Landroid/graphics/Point;

    move-result-object v1

    .line 90
    .local v1, point:Landroid/graphics/Point;
    if-eqz v1, :cond_0

    .line 91
    iget v2, v1, Landroid/graphics/Point;->x:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 92
    iget v2, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 98
    :goto_0
    return-object v0

    .line 94
    :cond_0
    const-string v2, "0"

    aput-object v2, v0, v3

    .line 95
    const-string v2, "0"

    aput-object v2, v0, v4

    goto :goto_0
.end method

.method public getZoomPoint()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 76
    iget v1, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointX:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointY:I

    if-ltz v1, :cond_0

    .line 77
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointX:I

    iget v2, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointY:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 80
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public monitorTransAnim(Z)V
    .locals 2
    .parameter "isStart"

    .prologue
    const/4 v1, 0x3

    .line 104
    iget-object v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mZoomEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mZoomExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-nez v0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    if-eqz p1, :cond_3

    .line 110
    invoke-virtual {p0}, Lcom/htc/view/animation/HtcGlZoomTransAnim;->getLayerType()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 111
    iget-object v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mZoomEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    goto :goto_0

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mZoomExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    goto :goto_0

    .line 116
    :cond_3
    invoke-virtual {p0}, Lcom/htc/view/animation/HtcGlZoomTransAnim;->getLayerType()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 117
    iget-object v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mZoomEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    goto :goto_0

    .line 119
    :cond_4
    iget-object v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mZoomExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    goto :goto_0
.end method

.method public setOpenOrClose(Z)V
    .locals 2
    .parameter "isOpen"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setOpenOrClose(Z)V

    .line 56
    invoke-virtual {p0}, Lcom/htc/view/animation/HtcGlZoomTransAnim;->getTransitType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 57
    const-wide/16 v0, 0x0

    invoke-super {p0, v0, v1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setAnimDuration(J)V

    .line 59
    :cond_0
    return-void
.end method

.method public setZoomPoint(Landroid/graphics/Point;)V
    .locals 3
    .parameter "_point"

    .prologue
    .line 64
    iget v0, p1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointX:I

    .line 65
    iget v0, p1, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointY:I

    .line 67
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->DEBUG_ANIM_FAMILY:Z

    if-eqz v0, :cond_0

    .line 68
    const-string v0, "HtcGlAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "point is override to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 138
    invoke-super {p0, p1, p2}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->writeToParcel(Landroid/os/Parcel;I)V

    .line 140
    iget v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    return-void
.end method
