.class Landroid/widget/Editor$SelectionModifierCursorController;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$CursorController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectionModifierCursorController"
.end annotation


# static fields
.field private static final DELAY_BEFORE_REPLACE_ACTION:I = 0xc8


# instance fields
.field private mDownPositionX:F

.field private mDownPositionY:F

.field private mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

.field private mGestureStayedInTapRegion:Z

.field private mIsShowing:Z

.field private mMaxTouchOffset:I

.field private mMinTouchOffset:I

.field private mPreviousTapUpTime:J

.field private mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method constructor <init>(Landroid/widget/Editor;)V
    .locals 2
    .parameter

    .prologue
    .line 5397
    iput-object p1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5390
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mPreviousTapUpTime:J

    .line 5398
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 5399
    return-void
.end method

.method static synthetic access$5400(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionStartHandleView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5381
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    return-object v0
.end method

.method static synthetic access$5500(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionEndHandleView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5381
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    return-object v0
.end method

.method private initDrawables()V
    .locals 3

    .prologue
    .line 5442
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/Editor;->access$5200(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5443
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget v2, v2, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    #setter for: Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Landroid/widget/Editor;->access$5202(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 5446
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/Editor;->access$5300(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5447
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget v2, v2, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    #setter for: Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Landroid/widget/Editor;->access$5302(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 5450
    :cond_1
    return-void
.end method

.method private initHandles()V
    .locals 4

    .prologue
    .line 5454
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-nez v0, :cond_0

    .line 5455
    new-instance v0, Landroid/widget/Editor$SelectionStartHandleView;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/Editor;->access$5200(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Landroid/widget/Editor;->access$5300(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Editor$SelectionStartHandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    .line 5457
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-nez v0, :cond_1

    .line 5458
    new-instance v0, Landroid/widget/Editor$SelectionModifierCursorController$1;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Landroid/widget/Editor;->access$5300(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/Editor;->access$5200(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/Editor$SelectionModifierCursorController$1;-><init>(Landroid/widget/Editor$SelectionModifierCursorController;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    .line 5471
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->show()V

    .line 5472
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionEndHandleView;->show()V

    .line 5474
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5477
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/widget/Editor$SelectionStartHandleView;->showActionPopupWindow(I)V

    .line 5478
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionStartHandleView;->getActionPopupWindow()Landroid/widget/Editor$ActionPopupWindow;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Editor$SelectionEndHandleView;->setActionPopupWindow(Landroid/widget/Editor$ActionPopupWindow;)V

    .line 5480
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->hideInsertionPointCursorController()V
    invoke-static {v0}, Landroid/widget/Editor;->access$5100(Landroid/widget/Editor;)V

    .line 5481
    return-void
.end method

.method private updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    .line 5706
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 5707
    .local v2, pointerCount:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 5708
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    .line 5709
    .local v1, offset:I
    iget v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    if-ge v1, v3, :cond_0

    iput v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 5710
    :cond_0
    iget v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    if-le v1, v3, :cond_1

    iput v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    .line 5707
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5712
    .end local v1           #offset:I
    :cond_2
    return-void
.end method


# virtual methods
.method protected forceShow()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5432
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    .line 5433
    iget-object v4, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mTempCoords:[I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 5434
    iget-object v4, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mTempCoords:[I

    aget v4, v4, v2

    iget-object v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v5}, Landroid/widget/Editor;->access$1300(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v5

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mTempCoords:[I

    aget v4, v4, v3

    iget-object v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v5}, Landroid/widget/Editor;->access$1300(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v5

    if-eq v4, v5, :cond_1

    :cond_0
    move v0, v3

    .line 5435
    .local v0, positionHasChanged:Z
    :goto_0
    iget-object v4, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v4}, Landroid/widget/Editor;->access$1300(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Editor$PositionListener;->isScrollChanged()Z

    move-result v1

    .line 5436
    .local v1, scrollChanged:Z
    iget-object v4, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    iget-object v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mTempCoords:[I

    aget v5, v5, v2

    iget-object v6, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v6, v6, Landroid/widget/Editor;->mTempCoords:[I

    aget v6, v6, v3

    invoke-virtual {v4, v5, v6, v0, v1}, Landroid/widget/Editor$SelectionStartHandleView;->updatePosition(IIZZ)V

    .line 5437
    iget-object v4, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    iget-object v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mTempCoords:[I

    aget v2, v5, v2

    iget-object v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mTempCoords:[I

    aget v3, v5, v3

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/widget/Editor$SelectionEndHandleView;->updatePosition(IIZZ)V

    .line 5438
    return-void

    .end local v0           #positionHasChanged:Z
    .end local v1           #scrollChanged:Z
    :cond_1
    move v0, v2

    .line 5434
    goto :goto_0
.end method

.method public getMaxTouchOffset()I
    .locals 1

    .prologue
    .line 5731
    iget v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    return v0
.end method

.method public getMinTouchOffset()I
    .locals 1

    .prologue
    .line 5727
    iget v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5484
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->hide()V

    .line 5485
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionEndHandleView;->hide()V

    .line 5488
    :cond_1
    iput-boolean v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mIsShowing:Z

    .line 5489
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5490
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v0, v0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v0, v1}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissQuickAction(Z)V

    .line 5492
    :cond_2
    return-void
.end method

.method public isAllDownAnchor()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5413
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-nez v1, :cond_1

    .line 5416
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    iget-boolean v1, v1, Landroid/widget/Editor$SelectionStartHandleView;->mPositionOnTop:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    iget-boolean v1, v1, Landroid/widget/Editor$SelectionEndHandleView;->mPositionOnTop:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isDragging()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5750
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-nez v1, :cond_1

    .line 5753
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionStartHandleView;->isDragging()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionEndHandleView;->isDragging()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSelectionStartDragged()Z
    .locals 1

    .prologue
    .line 5742
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 5762
    iget-boolean v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mIsShowing:Z

    return v0
.end method

.method public onDetached()V
    .locals 2

    .prologue
    .line 5801
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 5802
    .local v0, observer:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 5804
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionStartHandleView;->onDetached()V

    .line 5805
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionEndHandleView;->onDetached()V

    .line 5806
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 14
    .parameter "event"

    .prologue
    .line 5499
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    float-to-int v11, v11

    #setter for: Landroid/widget/Editor;->mLastTouchDownRawX:I
    invoke-static {v10, v11}, Landroid/widget/Editor;->access$5602(Landroid/widget/Editor;I)I

    .line 5500
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    float-to-int v11, v11

    #setter for: Landroid/widget/Editor;->mLastTouchDownRawY:I
    invoke-static {v10, v11}, Landroid/widget/Editor;->access$5702(Landroid/widget/Editor;I)I

    .line 5505
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 5700
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 5532
    :pswitch_1
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mIsLongPressed:Z
    invoke-static {v10}, Landroid/widget/Editor;->access$2900(Landroid/widget/Editor;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v10}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 5535
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v8, v10

    .line 5536
    .local v8, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v9, v10

    .line 5539
    .local v9, y:I
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    int-to-float v11, v8

    int-to-float v12, v9

    invoke-virtual {v10, v11, v12}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v10

    iput v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 5541
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 5543
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    iget-object v10, v10, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/htc/textselection/HtcTextSelectionManager;->checkAutoScroll(FF)V

    .line 5584
    .end local v8           #x:I
    .end local v9           #y:I
    :cond_1
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 5585
    .local v8, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 5588
    .local v9, y:F
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v10

    iput v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 5591
    iget-boolean v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    if-eqz v10, :cond_2

    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 5592
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mPreviousTapUpTime:J

    sub-long v4, v10, v12

    .line 5593
    .local v4, duration:J
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v4, v10

    if-gtz v10, :cond_2

    .line 5594
    iget v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionX:F

    sub-float v0, v8, v10

    .line 5595
    .local v0, deltaX:F
    iget v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionY:F

    sub-float v1, v9, v10

    .line 5596
    .local v1, deltaY:F
    mul-float v10, v0, v0

    mul-float v11, v1, v1

    add-float v2, v10, v11

    .line 5598
    .local v2, distanceSquared:F
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    .line 5600
    .local v7, viewConfiguration:Landroid/view/ViewConfiguration;
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v3

    .line 5601
    .local v3, doubleTapSlop:I
    mul-int v10, v3, v3

    int-to-float v10, v10

    cmpg-float v10, v2, v10

    if-gez v10, :cond_3

    const/4 v6, 0x1

    .line 5603
    .local v6, stayedInArea:Z
    :goto_1
    if-eqz v6, :cond_2

    .line 5614
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v10}, Landroid/widget/Editor;->startSelectionActionMode()Z

    .line 5615
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    .line 5621
    .end local v0           #deltaX:F
    .end local v1           #deltaY:F
    .end local v2           #distanceSquared:F
    .end local v3           #doubleTapSlop:I
    .end local v4           #duration:J
    .end local v6           #stayedInArea:Z
    .end local v7           #viewConfiguration:Landroid/view/ViewConfiguration;
    :cond_2
    iput v8, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionX:F

    .line 5622
    iput v9, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionY:F

    .line 5623
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    goto/16 :goto_0

    .line 5601
    .restart local v0       #deltaX:F
    .restart local v1       #deltaY:F
    .restart local v2       #distanceSquared:F
    .restart local v3       #doubleTapSlop:I
    .restart local v4       #duration:J
    .restart local v7       #viewConfiguration:Landroid/view/ViewConfiguration;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 5638
    .end local v0           #deltaX:F
    .end local v1           #deltaY:F
    .end local v2           #distanceSquared:F
    .end local v3           #doubleTapSlop:I
    .end local v4           #duration:J
    .end local v7           #viewConfiguration:Landroid/view/ViewConfiguration;
    .end local v8           #x:F
    .end local v9           #y:F
    :pswitch_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mPreviousTapUpTime:J

    goto/16 :goto_0

    .line 5661
    :pswitch_4
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v10}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 5662
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    iget-object v10, v10, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v10}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissMagnifier()V

    .line 5663
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    iget-object v10, v10, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v10}, Lcom/htc/textselection/HtcTextSelectionManager;->stopAutoScroll()V

    .line 5666
    :cond_4
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    const/4 v11, 0x0

    #setter for: Landroid/widget/Editor;->mIsLongPressed:Z
    invoke-static {v10, v11}, Landroid/widget/Editor;->access$2902(Landroid/widget/Editor;Z)Z

    .line 5667
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    const/4 v11, 0x0

    iput-boolean v11, v10, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    .line 5668
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    const/4 v11, 0x0

    #calls: Landroid/widget/Editor;->disallowInterceptTouchEvent(Z)V
    invoke-static {v10, v11}, Landroid/widget/Editor;->access$5800(Landroid/widget/Editor;Z)V

    goto/16 :goto_0

    .line 5676
    :pswitch_5
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 5678
    invoke-direct {p0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 5505
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 0
    .parameter "isInTouchMode"

    .prologue
    .line 5794
    if-nez p1, :cond_0

    .line 5795
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 5797
    :cond_0
    return-void
.end method

.method public resetDragging()V
    .locals 1

    .prologue
    .line 5757
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->resetDragging()V

    .line 5758
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionEndHandleView;->resetDragging()V

    .line 5759
    return-void
.end method

.method public resetTouchOffsets()V
    .locals 1

    .prologue
    .line 5735
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 5736
    return-void
.end method

.method public setMinAndMaxOffset(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 5722
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 5723
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 5402
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5409
    :goto_0
    return-void

    .line 5405
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->initDrawables()V

    .line 5406
    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->initHandles()V

    .line 5407
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->hideInsertionPointCursorController()V
    invoke-static {v0}, Landroid/widget/Editor;->access$5100(Landroid/widget/Editor;)V

    .line 5408
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mIsShowing:Z

    goto :goto_0
.end method

.method public updatePosition()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5766
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5789
    :goto_0
    return-void

    .line 5770
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 5771
    .local v1, selectionStart:I
    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 5773
    .local v0, selectionEnd:I
    if-ltz v1, :cond_1

    if-gez v0, :cond_2

    .line 5775
    :cond_1
    const-string v2, "Editor"

    const-string v3, "Update selection controller position called with no cursor"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5776
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    goto :goto_0

    .line 5780
    :cond_2
    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-nez v2, :cond_4

    .line 5782
    :cond_3
    const-string v2, "HtcTextSelection"

    const-string v3, "HandleView has not been created before SMCC.updatePosition() "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5786
    :cond_4
    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v2, v1, v3}, Landroid/widget/Editor$SelectionStartHandleView;->positionAtCursorOffset(IZ)V

    .line 5787
    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v2, v0, v3}, Landroid/widget/Editor$SelectionEndHandleView;->positionAtCursorOffset(IZ)V

    goto :goto_0
.end method
