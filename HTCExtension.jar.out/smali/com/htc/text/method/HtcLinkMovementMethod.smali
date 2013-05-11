.class public Lcom/htc/text/method/HtcLinkMovementMethod;
.super Landroid/text/method/LinkMovementMethod;
.source "HtcLinkMovementMethod.java"


# static fields
.field private static final TOUCH_SLOP:I = 0x10

.field private static sBackgroundColor:I

.field private static sDownEvent:Landroid/view/MotionEvent;

.field private static sDownView:Landroid/widget/TextView;

.field private static sForegroundColor:I

.field private static sInstance:Lcom/htc/text/method/HtcLinkMovementMethod;


# instance fields
.field private mBgSpan:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/style/BackgroundColorSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mFgSpan:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/style/ForegroundColorSpan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 184
    sput-object v0, Lcom/htc/text/method/HtcLinkMovementMethod;->sDownEvent:Landroid/view/MotionEvent;

    .line 185
    sput-object v0, Lcom/htc/text/method/HtcLinkMovementMethod;->sDownView:Landroid/widget/TextView;

    .line 186
    const/4 v0, -0x1

    sput v0, Lcom/htc/text/method/HtcLinkMovementMethod;->sForegroundColor:I

    .line 187
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2060002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/htc/text/method/HtcLinkMovementMethod;->sBackgroundColor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/text/method/HtcLinkMovementMethod;->mFgSpan:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/text/method/HtcLinkMovementMethod;->mBgSpan:Ljava/util/ArrayList;

    return-void
.end method

.method public static getInstance()Landroid/text/method/MovementMethod;
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/htc/text/method/HtcLinkMovementMethod;->sInstance:Lcom/htc/text/method/HtcLinkMovementMethod;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Lcom/htc/text/method/HtcLinkMovementMethod;

    invoke-direct {v0}, Lcom/htc/text/method/HtcLinkMovementMethod;-><init>()V

    sput-object v0, Lcom/htc/text/method/HtcLinkMovementMethod;->sInstance:Lcom/htc/text/method/HtcLinkMovementMethod;

    .line 170
    :cond_0
    sget-object v0, Lcom/htc/text/method/HtcLinkMovementMethod;->sInstance:Lcom/htc/text/method/HtcLinkMovementMethod;

    return-object v0
.end method

.method public static getInstance(II)Landroid/text/method/MovementMethod;
    .locals 1
    .parameter "highlight_fg_color"
    .parameter "highlight_bg_color"

    .prologue
    .line 174
    sget-object v0, Lcom/htc/text/method/HtcLinkMovementMethod;->sInstance:Lcom/htc/text/method/HtcLinkMovementMethod;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Lcom/htc/text/method/HtcLinkMovementMethod;

    invoke-direct {v0}, Lcom/htc/text/method/HtcLinkMovementMethod;-><init>()V

    sput-object v0, Lcom/htc/text/method/HtcLinkMovementMethod;->sInstance:Lcom/htc/text/method/HtcLinkMovementMethod;

    .line 177
    :cond_0
    sput p0, Lcom/htc/text/method/HtcLinkMovementMethod;->sForegroundColor:I

    .line 178
    sput p1, Lcom/htc/text/method/HtcLinkMovementMethod;->sBackgroundColor:I

    .line 180
    sget-object v0, Lcom/htc/text/method/HtcLinkMovementMethod;->sInstance:Lcom/htc/text/method/HtcLinkMovementMethod;

    return-object v0
.end method

.method private reset(Landroid/text/Spannable;)V
    .locals 2
    .parameter "buffer"

    .prologue
    const/4 v1, 0x0

    .line 109
    sget-object v0, Lcom/htc/text/method/HtcLinkMovementMethod;->sDownView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lcom/htc/text/method/HtcLinkMovementMethod;->sDownView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 111
    invoke-virtual {p0, p1}, Lcom/htc/text/method/HtcLinkMovementMethod;->removeHighlightSpans(Landroid/text/Spannable;)V

    .line 112
    sput-object v1, Lcom/htc/text/method/HtcLinkMovementMethod;->sDownView:Landroid/widget/TextView;

    .line 114
    :cond_0
    sput-object v1, Lcom/htc/text/method/HtcLinkMovementMethod;->sDownEvent:Landroid/view/MotionEvent;

    .line 115
    invoke-static {p1}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 116
    return-void
.end method


# virtual methods
.method public canSelectArbitrarily()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 15
    .parameter "widget"
    .parameter "buffer"
    .parameter "event"

    .prologue
    .line 38
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 40
    .local v1, action:I
    sget-object v13, Lcom/htc/text/method/HtcLinkMovementMethod;->sDownView:Landroid/widget/TextView;

    if-eqz v13, :cond_0

    sget-object v13, Lcom/htc/text/method/HtcLinkMovementMethod;->sDownView:Landroid/widget/TextView;

    move-object/from16 v0, p1

    if-eq v13, v0, :cond_0

    .line 41
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/htc/text/method/HtcLinkMovementMethod;->reset(Landroid/text/Spannable;)V

    .line 42
    const/4 v13, 0x0

    .line 105
    :goto_0
    return v13

    .line 44
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v13

    if-nez v13, :cond_1

    .line 45
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/htc/text/method/HtcLinkMovementMethod;->reset(Landroid/text/Spannable;)V

    .line 46
    const/4 v13, 0x0

    goto :goto_0

    .line 48
    :cond_1
    const/4 v13, 0x1

    if-eq v1, v13, :cond_2

    if-nez v1, :cond_6

    .line 49
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    float-to-int v11, v13

    .line 50
    .local v11, x:I
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v12, v13

    .line 52
    .local v12, y:I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v13

    sub-int/2addr v11, v13

    .line 53
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v13

    sub-int/2addr v12, v13

    .line 55
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v13

    add-int/2addr v11, v13

    .line 56
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v13

    add-int/2addr v12, v13

    .line 58
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    .line 59
    .local v5, layout:Landroid/text/Layout;
    invoke-virtual {v5, v12}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v6

    .line 60
    .local v6, line:I
    int-to-float v13, v11

    invoke-virtual {v5, v6, v13}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v9

    .line 62
    .local v9, off:I
    const-class v13, Landroid/text/style/ClickableSpan;

    move-object/from16 v0, p2

    invoke-interface {v0, v9, v9, v13}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/ClickableSpan;

    .line 64
    .local v7, link:[Landroid/text/style/ClickableSpan;
    array-length v13, v7

    if-eqz v13, :cond_9

    .line 65
    const/4 v13, 0x1

    if-ne v1, v13, :cond_7

    sget-object v13, Lcom/htc/text/method/HtcLinkMovementMethod;->sDownEvent:Landroid/view/MotionEvent;

    if-eqz v13, :cond_7

    sget-object v13, Lcom/htc/text/method/HtcLinkMovementMethod;->sDownView:Landroid/widget/TextView;

    move-object/from16 v0, p1

    if-ne v13, v0, :cond_7

    .line 66
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    sget-object v14, Lcom/htc/text/method/HtcLinkMovementMethod;->sDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v14}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    sub-float v3, v13, v14

    .line 67
    .local v3, dx:F
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    sget-object v14, Lcom/htc/text/method/HtcLinkMovementMethod;->sDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v14}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    sub-float v4, v13, v14

    .line 69
    .local v4, dy:F
    const/16 v10, 0x10

    .line 70
    .local v10, slop:I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 71
    .local v2, context:Landroid/content/Context;
    if-eqz v2, :cond_3

    .line 72
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v10

    .line 75
    :cond_3
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v13

    int-to-float v14, v10

    cmpg-float v13, v13, v14

    if-gez v13, :cond_4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v13

    int-to-float v14, v10

    cmpg-float v13, v13, v14

    if-gez v13, :cond_4

    const/4 v8, 0x1

    .line 77
    .local v8, notScrolling:Z
    :goto_1
    if-eqz v8, :cond_5

    .line 78
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 79
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/htc/text/method/HtcLinkMovementMethod;->removeHighlightSpans(Landroid/text/Spannable;)V

    .line 80
    const/4 v13, 0x0

    aget-object v13, v7, v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 81
    const/4 v13, 0x0

    sput-object v13, Lcom/htc/text/method/HtcLinkMovementMethod;->sDownView:Landroid/widget/TextView;

    .line 82
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 75
    .end local v8           #notScrolling:Z
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 84
    .restart local v8       #notScrolling:Z
    :cond_5
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/htc/text/method/HtcLinkMovementMethod;->reset(Landroid/text/Spannable;)V

    .line 105
    .end local v2           #context:Landroid/content/Context;
    .end local v3           #dx:F
    .end local v4           #dy:F
    .end local v5           #layout:Landroid/text/Layout;
    .end local v6           #line:I
    .end local v7           #link:[Landroid/text/style/ClickableSpan;
    .end local v8           #notScrolling:Z
    .end local v9           #off:I
    .end local v10           #slop:I
    .end local v11           #x:I
    .end local v12           #y:I
    :cond_6
    :goto_2
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 86
    .restart local v5       #layout:Landroid/text/Layout;
    .restart local v6       #line:I
    .restart local v7       #link:[Landroid/text/style/ClickableSpan;
    .restart local v9       #off:I
    .restart local v11       #x:I
    .restart local v12       #y:I
    :cond_7
    if-nez v1, :cond_8

    .line 88
    sput-object p1, Lcom/htc/text/method/HtcLinkMovementMethod;->sDownView:Landroid/widget/TextView;

    .line 89
    invoke-static/range {p3 .. p3}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v13

    sput-object v13, Lcom/htc/text/method/HtcLinkMovementMethod;->sDownEvent:Landroid/view/MotionEvent;

    .line 94
    const/4 v13, 0x0

    aget-object v13, v7, v13

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    const/4 v14, 0x0

    aget-object v14, v7, v14

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {p0, v0, v13, v14}, Lcom/htc/text/method/HtcLinkMovementMethod;->setHighlightSpans(Landroid/text/Spannable;II)V

    .line 96
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 98
    :cond_8
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/htc/text/method/HtcLinkMovementMethod;->reset(Landroid/text/Spannable;)V

    goto :goto_2

    .line 101
    :cond_9
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/htc/text/method/HtcLinkMovementMethod;->reset(Landroid/text/Spannable;)V

    goto :goto_2
.end method

.method public removeHighlightSpans(Landroid/text/Spannable;)V
    .locals 4
    .parameter "buffer"

    .prologue
    .line 143
    if-eqz p1, :cond_2

    .line 144
    iget-object v3, p0, Lcom/htc/text/method/HtcLinkMovementMethod;->mBgSpan:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/style/BackgroundColorSpan;

    .line 145
    .local v0, bg:Landroid/text/style/BackgroundColorSpan;
    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0

    .line 147
    .end local v0           #bg:Landroid/text/style/BackgroundColorSpan;
    :cond_0
    iget-object v3, p0, Lcom/htc/text/method/HtcLinkMovementMethod;->mFgSpan:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/style/ForegroundColorSpan;

    .line 148
    .local v1, fg:Landroid/text/style/ForegroundColorSpan;
    invoke-interface {p1, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_1

    .line 151
    .end local v1           #fg:Landroid/text/style/ForegroundColorSpan;
    :cond_1
    iget-object v3, p0, Lcom/htc/text/method/HtcLinkMovementMethod;->mBgSpan:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 152
    iget-object v3, p0, Lcom/htc/text/method/HtcLinkMovementMethod;->mFgSpan:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 154
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public setHighlightSpans(Landroid/text/Spannable;II)V
    .locals 4
    .parameter "buffer"
    .parameter "start"
    .parameter "end"

    .prologue
    const/16 v3, 0x21

    .line 125
    if-eqz p1, :cond_0

    .line 126
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    sget v2, Lcom/htc/text/method/HtcLinkMovementMethod;->sBackgroundColor:I

    invoke-direct {v0, v2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 127
    .local v0, bg:Landroid/text/style/BackgroundColorSpan;
    invoke-interface {p1, v0, p2, p3, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 128
    iget-object v2, p0, Lcom/htc/text/method/HtcLinkMovementMethod;->mBgSpan:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    sget v2, Lcom/htc/text/method/HtcLinkMovementMethod;->sForegroundColor:I

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 130
    .local v1, fg:Landroid/text/style/ForegroundColorSpan;
    invoke-interface {p1, v1, p2, p3, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 131
    iget-object v2, p0, Lcom/htc/text/method/HtcLinkMovementMethod;->mFgSpan:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v0           #bg:Landroid/text/style/BackgroundColorSpan;
    .end local v1           #fg:Landroid/text/style/ForegroundColorSpan;
    :cond_0
    return-void
.end method
