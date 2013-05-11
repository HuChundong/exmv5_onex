.class Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;
.super Ljava/lang/Object;
.source "SlowMotionButtonArea.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mLeftDiv:Landroid/widget/ImageView;

.field protected mListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

.field private mOnSlowMotionBtnClickListener:Landroid/view/View$OnClickListener;

.field private mRightDiv:Landroid/widget/ImageView;

.field private mRootView:Landroid/view/View;

.field private mSlowMotionBtn:Lcom/htc/widget/HtcIconButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v2, "SlowMotionButtonArea"

    iput-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->TAG:Ljava/lang/String;

    .line 24
    iput-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->mRootView:Landroid/view/View;

    .line 26
    iput-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->mContext:Landroid/content/Context;

    .line 28
    iput-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->mSlowMotionBtn:Lcom/htc/widget/HtcIconButton;

    .line 29
    iput-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->mLeftDiv:Landroid/widget/ImageView;

    .line 30
    iput-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->mRightDiv:Landroid/widget/ImageView;

    .line 32
    iput-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->mListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

    .line 34
    new-instance v2, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea$1;

    invoke-direct {v2, p0}, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea$1;-><init>(Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;)V

    iput-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->mOnSlowMotionBtnClickListener:Landroid/view/View$OnClickListener;

    .line 45
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->mContext:Landroid/content/Context;

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 47
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->getResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v1

    .line 48
    .local v1, res:Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    .line 50
    const v2, 0x6030002

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->mRootView:Landroid/view/View;

    .line 51
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->mRootView:Landroid/view/View;

    const v3, 0x60b0008

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcIconButton;

    iput-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->mSlowMotionBtn:Lcom/htc/widget/HtcIconButton;

    .line 52
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->mSlowMotionBtn:Lcom/htc/widget/HtcIconButton;

    const v3, 0x6020002

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcIconButton;->setIconResource(I)V

    .line 53
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->mRootView:Landroid/view/View;

    const v3, 0x60b0007

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->mLeftDiv:Landroid/widget/ImageView;

    .line 54
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->mRootView:Landroid/view/View;

    const v3, 0x60b0009

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->mRightDiv:Landroid/widget/ImageView;

    .line 58
    :goto_0
    return-void

    .line 57
    :cond_0
    const-string v2, "SlowMotionButtonArea"

    const-string v3, "[SlowMotionButtonArea], res = null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 133
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public initView()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->mSlowMotionBtn:Lcom/htc/widget/HtcIconButton;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->mSlowMotionBtn:Lcom/htc/widget/HtcIconButton;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->mOnSlowMotionBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcIconButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    :cond_0
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .parameter "resID"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->mSlowMotionBtn:Lcom/htc/widget/HtcIconButton;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->mSlowMotionBtn:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcIconButton;->setIconResource(I)V

    .line 75
    :cond_0
    return-void
.end method

.method public setLeftDividerVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->mLeftDiv:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->mLeftDiv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->mLeftDiv:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    :cond_0
    return-void
.end method

.method public setListener(Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->mListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

    .line 80
    return-void
.end method

.method public setRightDividerVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->mRightDiv:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->mRightDiv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->mRightDiv:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 127
    :cond_0
    return-void
.end method

.method public setWidth(I)V
    .locals 5
    .parameter "width"

    .prologue
    .line 84
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->mRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 85
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 86
    const/4 v3, -0x1

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 87
    instance-of v3, v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 88
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x10

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 89
    :cond_0
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->mRootView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    move v0, p1

    .line 92
    .local v0, btnWidth:I
    const/4 v1, 0x2

    .line 93
    .local v1, dividerWidth:I
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    .line 94
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2080036

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 95
    :cond_1
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->mLeftDiv:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 96
    sub-int/2addr v0, v1

    .line 97
    :cond_2
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->mRightDiv:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 98
    sub-int/2addr v0, v1

    .line 99
    :cond_3
    if-lez v0, :cond_4

    .line 101
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->mSlowMotionBtn:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v3}, Lcom/htc/widget/HtcIconButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 102
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 103
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->mSlowMotionBtn:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcIconButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    :cond_4
    return-void
.end method
