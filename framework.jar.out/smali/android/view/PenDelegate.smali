.class public Landroid/view/PenDelegate;
.super Ljava/lang/Object;
.source "PenDelegate.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ABOVE:I = 0x1

.field public static final BELOW:I = 0x2

.field public static final TO_LEFT:I = 0x4

.field public static final TO_RIGHT:I = 0x8


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private mDelegateTargeted:Z

.field private mDelegateView:Landroid/view/View;

.field private mSlop:I

.field private mSlopBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 3
    .parameter "bounds"
    .parameter "delegateView"

    .prologue
    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Landroid/view/PenDelegate;->mBounds:Landroid/graphics/Rect;

    .line 98
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/view/PenDelegate;->mSlop:I

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/view/PenDelegate;->mSlopBounds:Landroid/graphics/Rect;

    .line 100
    iget-object v0, p0, Landroid/view/PenDelegate;->mSlopBounds:Landroid/graphics/Rect;

    iget v1, p0, Landroid/view/PenDelegate;->mSlop:I

    neg-int v1, v1

    iget v2, p0, Landroid/view/PenDelegate;->mSlop:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 101
    iput-object p2, p0, Landroid/view/PenDelegate;->mDelegateView:Landroid/view/View;

    .line 102
    return-void
.end method


# virtual methods
.method public onPenEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .line 114
    .local v7, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 115
    .local v8, y:I
    const/4 v4, 0x0

    .line 116
    .local v4, sendToDelegate:Z
    const/4 v3, 0x1

    .line 117
    .local v3, hit:Z
    const/4 v2, 0x0

    .line 119
    .local v2, handled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 143
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 144
    iget-object v1, p0, Landroid/view/PenDelegate;->mDelegateView:Landroid/view/View;

    .line 146
    .local v1, delegateView:Landroid/view/View;
    if-eqz v3, :cond_2

    .line 148
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 159
    .end local v1           #delegateView:Landroid/view/View;
    :cond_1
    :goto_1
    return v2

    .line 121
    :pswitch_0
    iget-object v0, p0, Landroid/view/PenDelegate;->mBounds:Landroid/graphics/Rect;

    .line 123
    .local v0, bounds:Landroid/graphics/Rect;
    invoke-virtual {v0, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 124
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/view/PenDelegate;->mDelegateTargeted:Z

    .line 125
    const/4 v4, 0x1

    goto :goto_0

    .line 130
    .end local v0           #bounds:Landroid/graphics/Rect;
    :pswitch_1
    iget-boolean v4, p0, Landroid/view/PenDelegate;->mDelegateTargeted:Z

    .line 131
    if-eqz v4, :cond_0

    .line 132
    iget-object v6, p0, Landroid/view/PenDelegate;->mSlopBounds:Landroid/graphics/Rect;

    .line 133
    .local v6, slopBounds:Landroid/graphics/Rect;
    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-nez v9, :cond_0

    .line 134
    const/4 v3, 0x0

    goto :goto_0

    .line 139
    .end local v6           #slopBounds:Landroid/graphics/Rect;
    :pswitch_2
    iget-boolean v4, p0, Landroid/view/PenDelegate;->mDelegateTargeted:Z

    .line 140
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/view/PenDelegate;->mDelegateTargeted:Z

    goto :goto_0

    .line 152
    .restart local v1       #delegateView:Landroid/view/View;
    :cond_2
    iget v5, p0, Landroid/view/PenDelegate;->mSlop:I

    .line 153
    .local v5, slop:I
    mul-int/lit8 v9, v5, 0x2

    neg-int v9, v9

    int-to-float v9, v9

    mul-int/lit8 v10, v5, 0x2

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_1

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
