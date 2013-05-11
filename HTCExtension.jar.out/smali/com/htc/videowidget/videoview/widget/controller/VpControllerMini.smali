.class Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;
.super Ljava/lang/Object;
.source "VpControllerMini.java"

# interfaces
.implements Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "VpControllerMini"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentTimeText:Landroid/widget/TextView;

.field private mDurationText:Landroid/widget/TextView;

.field private mIsDurationMoreThanHour:Z

.field private mProgressBar:Lcom/htc/widget/HtcProgressBar;

.field private mRootView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1
    .parameter "context"
    .parameter "rootView"

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->mRootView:Landroid/view/ViewGroup;

    .line 27
    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->mProgressBar:Lcom/htc/widget/HtcProgressBar;

    .line 28
    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->mCurrentTimeText:Landroid/widget/TextView;

    .line 29
    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->mDurationText:Landroid/widget/TextView;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->mIsDurationMoreThanHour:Z

    .line 35
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->mRootView:Landroid/view/ViewGroup;

    .line 37
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->getView()V

    .line 38
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->initView()V

    .line 39
    return-void
.end method

.method private getView()V
    .locals 3

    .prologue
    .line 54
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->getResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    .line 55
    .local v0, res:Landroid/content/res/Resources;
    if-nez v0, :cond_1

    .line 57
    const-string v1, "VpControllerMini"

    const-string v2, "[getView] res is null"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->mRootView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->mRootView:Landroid/view/ViewGroup;

    const v2, 0x60b005c

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->mDurationText:Landroid/widget/TextView;

    .line 64
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->mRootView:Landroid/view/ViewGroup;

    const v2, 0x60b005b

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->mCurrentTimeText:Landroid/widget/TextView;

    .line 65
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->mRootView:Landroid/view/ViewGroup;

    const v2, 0x60b0059

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcProgressBar;

    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->mProgressBar:Lcom/htc/widget/HtcProgressBar;

    goto :goto_0
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 42
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->mDurationText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->mDurationText:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->stringForTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->mCurrentTimeText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->mCurrentTimeText:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->stringForTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    :cond_1
    return-void
.end method


# virtual methods
.method public dismissPopWindows()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->mRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->mRootView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 105
    :cond_0
    return-void
.end method

.method public invokeFunction(IZZ)V
    .locals 0
    .parameter "nFunctionID"
    .parameter "isEnable"
    .parameter "bToggleState"

    .prologue
    .line 188
    return-void
.end method

.method public isGrayOut(I)Z
    .locals 1
    .parameter "grayOutID"

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public isShowing()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 115
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->mRootView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 117
    :cond_0
    return v0
.end method

.method public setButtonIcon(II)V
    .locals 0
    .parameter "btnID"
    .parameter "resID"

    .prologue
    .line 144
    return-void
.end method

.method public setButtonVisibility(II)V
    .locals 1
    .parameter "btnID"
    .parameter "visibility"

    .prologue
    .line 149
    const/16 v0, 0x324

    if-ne p1, v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->mDurationText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->mDurationText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    :cond_0
    return-void
.end method

.method public setGrayOut(IZ)V
    .locals 0
    .parameter "grayOutID"
    .parameter "isEnable"

    .prologue
    .line 123
    return-void
.end method

.method public setListener(Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 134
    return-void
.end method

.method public setSeekBarParam(II)V
    .locals 2
    .parameter "seekbarID"
    .parameter "nn"

    .prologue
    .line 159
    packed-switch p1, :pswitch_data_0

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 162
    :pswitch_0
    const v0, 0x36ee80

    if-le p2, v0, :cond_2

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->mIsDurationMoreThanHour:Z

    .line 167
    :goto_1
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->mProgressBar:Lcom/htc/widget/HtcProgressBar;

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->mProgressBar:Lcom/htc/widget/HtcProgressBar;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcProgressBar;->setMax(I)V

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->mDurationText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->mDurationText:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->stringForTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 165
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->mIsDurationMoreThanHour:Z

    goto :goto_1

    .line 173
    :pswitch_1
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->mProgressBar:Lcom/htc/widget/HtcProgressBar;

    if-eqz v0, :cond_3

    .line 174
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->mProgressBar:Lcom/htc/widget/HtcProgressBar;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcProgressBar;->setProgress(I)V

    .line 175
    :cond_3
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->mCurrentTimeText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->mCurrentTimeText:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->stringForTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 179
    :pswitch_2
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->mProgressBar:Lcom/htc/widget/HtcProgressBar;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->mProgressBar:Lcom/htc/widget/HtcProgressBar;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcProgressBar;->setSecondaryProgress(I)V

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x385
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public show()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->mRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->mRootView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 98
    :cond_0
    return-void
.end method

.method public simpleHide()V
    .locals 0

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->hide()V

    .line 111
    return-void
.end method

.method protected stringForTime(I)Ljava/lang/String;
    .locals 12
    .parameter "timeMs"

    .prologue
    const/4 v7, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 71
    div-int/lit16 v5, p1, 0x3e8

    .line 72
    .local v5, totalSeconds:I
    rem-int/lit8 v4, v5, 0x3c

    .line 73
    .local v4, seconds:I
    div-int/lit8 v6, v5, 0x3c

    rem-int/lit8 v3, v6, 0x3c

    .line 74
    .local v3, minutes:I
    div-int/lit16 v0, v5, 0xe10

    .line 76
    .local v0, hours:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .local v1, mFormatBuilder:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v2, v1, v6}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 78
    .local v2, mFormatter:Ljava/util/Formatter;
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 79
    if-lez v0, :cond_0

    .line 81
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

    .line 89
    :goto_0
    return-object v6

    .line 86
    :cond_0
    iget-boolean v6, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;->mIsDurationMoreThanHour:Z

    if-eqz v6, :cond_1

    .line 87
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

    .line 89
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
