.class Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;
.super Ljava/lang/Object;
.source "SeekbarArea.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field protected mCurrentTimePop:Landroid/widget/TextView;

.field private mCurrentTimeText:Landroid/widget/TextView;

.field private mDurationText:Landroid/widget/TextView;

.field private mIsDurationMoreThanHour:Z

.field private mListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

.field private mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mPopupContent:Landroid/view/View;

.field private mRootView:Landroid/widget/RelativeLayout;

.field protected mSeekBarPopupWindow:Lcom/htc/widget/HtcSeekBarPopupWindowListener;

.field private mSeekbar:Lcom/htc/widget/HtcSeekBar;

.field private mTimeAreaRow:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v2, "SeekbarArea"

    iput-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->TAG:Ljava/lang/String;

    .line 32
    iput-object v6, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mContext:Landroid/content/Context;

    .line 34
    iput-object v6, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mRootView:Landroid/widget/RelativeLayout;

    .line 36
    iput-object v6, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mSeekbar:Lcom/htc/widget/HtcSeekBar;

    .line 37
    iput-object v6, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mCurrentTimeText:Landroid/widget/TextView;

    .line 38
    iput-object v6, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mDurationText:Landroid/widget/TextView;

    .line 39
    iput-object v6, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mTimeAreaRow:Landroid/widget/RelativeLayout;

    .line 41
    iput-object v6, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mPopupContent:Landroid/view/View;

    .line 42
    iput-object v6, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mSeekBarPopupWindow:Lcom/htc/widget/HtcSeekBarPopupWindowListener;

    .line 43
    iput-object v6, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mCurrentTimePop:Landroid/widget/TextView;

    .line 45
    iput-object v6, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

    .line 46
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mIsDurationMoreThanHour:Z

    .line 48
    new-instance v2, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea$1;

    invoke-direct {v2, p0}, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea$1;-><init>(Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;)V

    iput-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 81
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mContext:Landroid/content/Context;

    .line 83
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 84
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->getResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v1

    .line 85
    .local v1, res:Landroid/content/res/Resources;
    if-eqz v1, :cond_1

    .line 87
    const v2, 0x6030001

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mRootView:Landroid/widget/RelativeLayout;

    .line 88
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mRootView:Landroid/widget/RelativeLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mRootView:Landroid/widget/RelativeLayout;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 90
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mRootView:Landroid/widget/RelativeLayout;

    const v3, 0x60b0004

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mTimeAreaRow:Landroid/widget/RelativeLayout;

    .line 91
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mRootView:Landroid/widget/RelativeLayout;

    const v3, 0x60b0003

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcSeekBar;

    iput-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mSeekbar:Lcom/htc/widget/HtcSeekBar;

    .line 92
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mRootView:Landroid/widget/RelativeLayout;

    const v3, 0x60b0005

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mCurrentTimeText:Landroid/widget/TextView;

    .line 93
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mRootView:Landroid/widget/RelativeLayout;

    const v3, 0x60b0006

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mDurationText:Landroid/widget/TextView;

    .line 94
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x603000c

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mPopupContent:Landroid/view/View;

    .line 97
    new-instance v2, Lcom/htc/widget/HtcSeekBarPopupWindowListener;

    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mSeekBarPopupWindow:Lcom/htc/widget/HtcSeekBarPopupWindowListener;

    .line 98
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mSeekBarPopupWindow:Lcom/htc/widget/HtcSeekBarPopupWindowListener;

    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mPopupContent:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->setContentView(Landroid/view/View;)V

    .line 99
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mPopupContent:Landroid/view/View;

    const v3, 0x60b0038

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mCurrentTimePop:Landroid/widget/TextView;

    .line 108
    :goto_0
    return-void

    .line 101
    :cond_0
    const-string v2, "SeekbarArea"

    const-string v3, "do not pop up time stamp while seek"

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_1
    const-string v2, "SeekbarArea"

    const-string v3, "[SeekbarArea], res = null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;)Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->stringForTime(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mDurationText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mCurrentTimeText:Landroid/widget/TextView;

    return-object v0
.end method

.method private stringForTime(I)Ljava/lang/String;
    .locals 12
    .parameter "timeMs"

    .prologue
    const/4 v7, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 198
    div-int/lit16 v5, p1, 0x3e8

    .line 199
    .local v5, totalSeconds:I
    rem-int/lit8 v4, v5, 0x3c

    .line 200
    .local v4, seconds:I
    div-int/lit8 v6, v5, 0x3c

    rem-int/lit8 v3, v6, 0x3c

    .line 201
    .local v3, minutes:I
    div-int/lit16 v0, v5, 0xe10

    .line 203
    .local v0, hours:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .local v1, mFormatBuilder:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v2, v1, v6}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 205
    .local v2, mFormatter:Ljava/util/Formatter;
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 206
    if-lez v0, :cond_0

    .line 208
    const-string v6, "%d:%02d:%02d"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v2, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v6

    .line 216
    :goto_0
    return-object v6

    .line 213
    :cond_0
    iget-boolean v6, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mIsDurationMoreThanHour:Z

    if-eqz v6, :cond_1

    .line 214
    const-string v6, "%d:%02d:%02d"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v2, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 216
    :cond_1
    const-string v6, "%02d:%02d"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v2, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method


# virtual methods
.method public getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mRootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public initView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 117
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mSeekbar:Lcom/htc/widget/HtcSeekBar;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mSeekbar:Lcom/htc/widget/HtcSeekBar;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 120
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mSeekBarPopupWindow:Lcom/htc/widget/HtcSeekBarPopupWindowListener;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mSeekbar:Lcom/htc/widget/HtcSeekBar;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mSeekBarPopupWindow:Lcom/htc/widget/HtcSeekBarPopupWindowListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSeekBar;->setHtcSeekBarPopupWindowListener(Lcom/htc/widget/HtcSeekBar$OnHtcSeekBarChangeListener;)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mDurationText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mDurationText:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->stringForTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mCurrentTimeText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mCurrentTimeText:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->stringForTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :cond_2
    return-void
.end method

.method public isGrayOut()Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mSeekbar:Lcom/htc/widget/HtcSeekBar;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mSeekbar:Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v0}, Lcom/htc/widget/HtcSeekBar;->isEnabled()Z

    move-result v0

    .line 144
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDurationTextVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mDurationText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mDurationText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    :cond_0
    return-void
.end method

.method public setGrayOut(Z)V
    .locals 1
    .parameter "isGrayOut"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mSeekbar:Lcom/htc/widget/HtcSeekBar;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mSeekbar:Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcSeekBar;->setEnabled(Z)V

    .line 138
    :cond_0
    return-void
.end method

.method public setListener(Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

    .line 132
    return-void
.end method

.method public setMarginLeftAndRight(I)V
    .locals 3
    .parameter "margin"

    .prologue
    const/4 v2, 0x0

    .line 188
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mSeekbar:Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v1, p1, v2, p1, v2}, Lcom/htc/widget/HtcSeekBar;->setPadding(IIII)V

    .line 190
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mTimeAreaRow:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 191
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 192
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 193
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mTimeAreaRow:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    return-void
.end method

.method public setMax(I)V
    .locals 2
    .parameter "duration"

    .prologue
    .line 155
    const v0, 0x36ee80

    if-le p1, v0, :cond_2

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mIsDurationMoreThanHour:Z

    .line 160
    :goto_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mSeekbar:Lcom/htc/widget/HtcSeekBar;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mSeekbar:Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcSeekBar;->setMax(I)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mDurationText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mDurationText:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->stringForTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :cond_1
    return-void

    .line 158
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mIsDurationMoreThanHour:Z

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mSeekbar:Lcom/htc/widget/HtcSeekBar;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mSeekbar:Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcSeekBar;->setProgress(I)V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mCurrentTimeText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mCurrentTimeText:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->stringForTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    :cond_1
    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mSeekbar:Lcom/htc/widget/HtcSeekBar;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->mSeekbar:Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcSeekBar;->setSecondaryProgress(I)V

    .line 184
    :cond_0
    return-void
.end method
