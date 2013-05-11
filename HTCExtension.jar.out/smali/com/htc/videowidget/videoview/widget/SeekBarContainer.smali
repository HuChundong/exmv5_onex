.class public Lcom/htc/videowidget/videoview/widget/SeekBarContainer;
.super Landroid/widget/RelativeLayout;
.source "SeekBarContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SeekBarContainer"


# instance fields
.field mSeekHeight:I

.field mSeekTop:I

.field mSeekbar:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/SeekBarContainer;->mSeekbar:Landroid/view/View;

    .line 26
    iput v1, p0, Lcom/htc/videowidget/videoview/widget/SeekBarContainer;->mSeekTop:I

    .line 27
    iput v1, p0, Lcom/htc/videowidget/videoview/widget/SeekBarContainer;->mSeekHeight:I

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/SeekBarContainer;->mSeekbar:Landroid/view/View;

    .line 26
    iput v1, p0, Lcom/htc/videowidget/videoview/widget/SeekBarContainer;->mSeekTop:I

    .line 27
    iput v1, p0, Lcom/htc/videowidget/videoview/widget/SeekBarContainer;->mSeekHeight:I

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/SeekBarContainer;->mSeekbar:Landroid/view/View;

    .line 26
    iput v1, p0, Lcom/htc/videowidget/videoview/widget/SeekBarContainer;->mSeekTop:I

    .line 27
    iput v1, p0, Lcom/htc/videowidget/videoview/widget/SeekBarContainer;->mSeekHeight:I

    .line 42
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v0, v3

    .line 48
    .local v0, event_y:I
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/SeekBarContainer;->mSeekbar:Landroid/view/View;

    if-nez v3, :cond_0

    .line 49
    const-string v3, "cmd_bar_seekbar"

    invoke-virtual {p0, v3}, Lcom/htc/videowidget/videoview/widget/SeekBarContainer;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 51
    .local v2, seekbar:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 52
    iput-object v2, p0, Lcom/htc/videowidget/videoview/widget/SeekBarContainer;->mSeekbar:Landroid/view/View;

    .line 53
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, p0, Lcom/htc/videowidget/videoview/widget/SeekBarContainer;->mSeekTop:I

    .line 54
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/htc/videowidget/videoview/widget/SeekBarContainer;->mSeekHeight:I

    .line 58
    .end local v2           #seekbar:Landroid/view/View;
    :cond_0
    iget v3, p0, Lcom/htc/videowidget/videoview/widget/SeekBarContainer;->mSeekTop:I

    if-lez v3, :cond_1

    iget v3, p0, Lcom/htc/videowidget/videoview/widget/SeekBarContainer;->mSeekHeight:I

    if-lez v3, :cond_1

    .line 59
    rsub-int/lit8 v3, v0, 0x0

    iget v4, p0, Lcom/htc/videowidget/videoview/widget/SeekBarContainer;->mSeekTop:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/videowidget/videoview/widget/SeekBarContainer;->mSeekHeight:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v1, v3

    .line 61
    .local v1, offset_y:F
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 63
    .end local v1           #offset_y:F
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 64
    const/4 v3, 0x1

    return v3
.end method
