.class Landroid/widget/HTCExtractEditText$ScaleDimDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "HTCExtractEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/HTCExtractEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleDimDrawable"
.end annotation


# static fields
.field private static final INDEX_DARK_BACKGROUND:I = 0x0

.field private static final INDEX_LIGHTFULL_BACKGROUND:I = 0x6

.field private static final INDEX_LIGHT_BACKGROUND:I = 0x3

.field private static final NUMBER_BACKGROUND_DRAWABLE:I = 0x3


# instance fields
.field private mColor:I

.field private mFrontDrawable:Landroid/graphics/drawable/Drawable;

.field private mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

.field private mOuterDrawable:Landroid/graphics/drawable/Drawable;

.field private mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mRestPadding:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/widget/HTCExtractEditText;


# direct methods
.method public constructor <init>(Landroid/widget/HTCExtractEditText;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter "context"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 476
    iput-object p1, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->this$0:Landroid/widget/HTCExtractEditText;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 477
    #getter for: Landroid/widget/HTCExtractEditText;->mMode:I
    invoke-static {p1}, Landroid/widget/HTCExtractEditText;->access$200(Landroid/widget/HTCExtractEditText;)I

    move-result v0

    #calls: Landroid/widget/HTCExtractEditText;->checkBackgroundAssets(I)V
    invoke-static {p1, v0}, Landroid/widget/HTCExtractEditText;->access$300(Landroid/widget/HTCExtractEditText;I)V

    .line 478
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mRestPadding:Landroid/graphics/Rect;

    .line 479
    #getter for: Landroid/widget/HTCExtractEditText;->mMode:I
    invoke-static {p1}, Landroid/widget/HTCExtractEditText;->access$200(Landroid/widget/HTCExtractEditText;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 480
    #getter for: Landroid/widget/HTCExtractEditText;->mAllBackgroundAssets:[Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Landroid/widget/HTCExtractEditText;->access$400(Landroid/widget/HTCExtractEditText;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 481
    #getter for: Landroid/widget/HTCExtractEditText;->mAllBackgroundAssets:[Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Landroid/widget/HTCExtractEditText;->access$400(Landroid/widget/HTCExtractEditText;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    .line 482
    #getter for: Landroid/widget/HTCExtractEditText;->mAllBackgroundAssets:[Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Landroid/widget/HTCExtractEditText;->access$400(Landroid/widget/HTCExtractEditText;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v2

    iput-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    .line 483
    #getter for: Landroid/widget/HTCExtractEditText;->mAllBackgroundAssets:[Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Landroid/widget/HTCExtractEditText;->access$400(Landroid/widget/HTCExtractEditText;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v3

    iput-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    .line 486
    :cond_0
    iget-boolean v0, p1, Landroid/widget/HTCExtractEditText;->mIsDefaultPaddingEnabled:Z

    if-nez v0, :cond_1

    .line 487
    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mRestPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 488
    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mRestPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    #setter for: Landroid/widget/HTCExtractEditText;->DARK_PADDING_TOP:I
    invoke-static {p1, v0}, Landroid/widget/HTCExtractEditText;->access$502(Landroid/widget/HTCExtractEditText;I)I

    .line 489
    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mRestPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #setter for: Landroid/widget/HTCExtractEditText;->DARK_PADDING_BOTTOM:I
    invoke-static {p1, v0}, Landroid/widget/HTCExtractEditText;->access$602(Landroid/widget/HTCExtractEditText;I)I

    .line 492
    :cond_1
    #getter for: Landroid/widget/HTCExtractEditText;->DARK_PADDING_TOP:I
    invoke-static {p1}, Landroid/widget/HTCExtractEditText;->access$500(Landroid/widget/HTCExtractEditText;)I

    move-result v0

    #setter for: Landroid/widget/HTCExtractEditText;->mDefaultPaddingTop:I
    invoke-static {p1, v0}, Landroid/widget/HTCExtractEditText;->access$702(Landroid/widget/HTCExtractEditText;I)I

    .line 493
    #getter for: Landroid/widget/HTCExtractEditText;->DARK_PADDING_BOTTOM:I
    invoke-static {p1}, Landroid/widget/HTCExtractEditText;->access$600(Landroid/widget/HTCExtractEditText;)I

    move-result v0

    #setter for: Landroid/widget/HTCExtractEditText;->mDefaultPaddingBottom:I
    invoke-static {p1, v0}, Landroid/widget/HTCExtractEditText;->access$802(Landroid/widget/HTCExtractEditText;I)I

    .line 525
    :goto_0
    #getter for: Landroid/widget/HTCExtractEditText;->mMultiplyColor:I
    invoke-static {p1}, Landroid/widget/HTCExtractEditText;->access$1100(Landroid/widget/HTCExtractEditText;)I

    move-result v0

    iput v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mColor:I

    .line 526
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 527
    return-void

    .line 494
    :cond_2
    #getter for: Landroid/widget/HTCExtractEditText;->mMode:I
    invoke-static {p1}, Landroid/widget/HTCExtractEditText;->access$200(Landroid/widget/HTCExtractEditText;)I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 495
    #getter for: Landroid/widget/HTCExtractEditText;->mAllBackgroundAssets:[Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Landroid/widget/HTCExtractEditText;->access$400(Landroid/widget/HTCExtractEditText;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 496
    #getter for: Landroid/widget/HTCExtractEditText;->mAllBackgroundAssets:[Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Landroid/widget/HTCExtractEditText;->access$400(Landroid/widget/HTCExtractEditText;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x6

    aget-object v0, v0, v1

    iput-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    .line 497
    #getter for: Landroid/widget/HTCExtractEditText;->mAllBackgroundAssets:[Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Landroid/widget/HTCExtractEditText;->access$400(Landroid/widget/HTCExtractEditText;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x7

    aget-object v0, v0, v1

    iput-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    .line 498
    #getter for: Landroid/widget/HTCExtractEditText;->mAllBackgroundAssets:[Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Landroid/widget/HTCExtractEditText;->access$400(Landroid/widget/HTCExtractEditText;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x8

    aget-object v0, v0, v1

    iput-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    .line 501
    :cond_3
    iget-boolean v0, p1, Landroid/widget/HTCExtractEditText;->mIsDefaultPaddingEnabled:Z

    if-nez v0, :cond_4

    .line 502
    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mRestPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 503
    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mRestPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    #setter for: Landroid/widget/HTCExtractEditText;->DARK_PADDING_TOP:I
    invoke-static {p1, v0}, Landroid/widget/HTCExtractEditText;->access$502(Landroid/widget/HTCExtractEditText;I)I

    .line 504
    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mRestPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #setter for: Landroid/widget/HTCExtractEditText;->DARK_PADDING_BOTTOM:I
    invoke-static {p1, v0}, Landroid/widget/HTCExtractEditText;->access$602(Landroid/widget/HTCExtractEditText;I)I

    .line 507
    :cond_4
    #getter for: Landroid/widget/HTCExtractEditText;->DARK_PADDING_TOP:I
    invoke-static {p1}, Landroid/widget/HTCExtractEditText;->access$500(Landroid/widget/HTCExtractEditText;)I

    move-result v0

    #setter for: Landroid/widget/HTCExtractEditText;->mDefaultPaddingTop:I
    invoke-static {p1, v0}, Landroid/widget/HTCExtractEditText;->access$702(Landroid/widget/HTCExtractEditText;I)I

    .line 508
    #getter for: Landroid/widget/HTCExtractEditText;->DARK_PADDING_BOTTOM:I
    invoke-static {p1}, Landroid/widget/HTCExtractEditText;->access$600(Landroid/widget/HTCExtractEditText;)I

    move-result v0

    #setter for: Landroid/widget/HTCExtractEditText;->mDefaultPaddingBottom:I
    invoke-static {p1, v0}, Landroid/widget/HTCExtractEditText;->access$802(Landroid/widget/HTCExtractEditText;I)I

    goto :goto_0

    .line 510
    :cond_5
    #getter for: Landroid/widget/HTCExtractEditText;->mAllBackgroundAssets:[Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Landroid/widget/HTCExtractEditText;->access$400(Landroid/widget/HTCExtractEditText;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 511
    #getter for: Landroid/widget/HTCExtractEditText;->mAllBackgroundAssets:[Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Landroid/widget/HTCExtractEditText;->access$400(Landroid/widget/HTCExtractEditText;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iput-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    .line 512
    #getter for: Landroid/widget/HTCExtractEditText;->mAllBackgroundAssets:[Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Landroid/widget/HTCExtractEditText;->access$400(Landroid/widget/HTCExtractEditText;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iput-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    .line 513
    #getter for: Landroid/widget/HTCExtractEditText;->mAllBackgroundAssets:[Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Landroid/widget/HTCExtractEditText;->access$400(Landroid/widget/HTCExtractEditText;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iput-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    .line 516
    :cond_6
    iget-boolean v0, p1, Landroid/widget/HTCExtractEditText;->mIsDefaultPaddingEnabled:Z

    if-nez v0, :cond_7

    .line 517
    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mRestPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 518
    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mRestPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    #setter for: Landroid/widget/HTCExtractEditText;->BRIGHT_PADDING_TOP:I
    invoke-static {p1, v0}, Landroid/widget/HTCExtractEditText;->access$902(Landroid/widget/HTCExtractEditText;I)I

    .line 519
    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mRestPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #setter for: Landroid/widget/HTCExtractEditText;->BRIGHT_PADDING_BOTTOM:I
    invoke-static {p1, v0}, Landroid/widget/HTCExtractEditText;->access$1002(Landroid/widget/HTCExtractEditText;I)I

    .line 522
    :cond_7
    #getter for: Landroid/widget/HTCExtractEditText;->BRIGHT_PADDING_TOP:I
    invoke-static {p1}, Landroid/widget/HTCExtractEditText;->access$900(Landroid/widget/HTCExtractEditText;)I

    move-result v0

    #setter for: Landroid/widget/HTCExtractEditText;->mDefaultPaddingTop:I
    invoke-static {p1, v0}, Landroid/widget/HTCExtractEditText;->access$702(Landroid/widget/HTCExtractEditText;I)I

    .line 523
    #getter for: Landroid/widget/HTCExtractEditText;->BRIGHT_PADDING_BOTTOM:I
    invoke-static {p1}, Landroid/widget/HTCExtractEditText;->access$1000(Landroid/widget/HTCExtractEditText;)I

    move-result v0

    #setter for: Landroid/widget/HTCExtractEditText;->mDefaultPaddingBottom:I
    invoke-static {p1, v0}, Landroid/widget/HTCExtractEditText;->access$802(Landroid/widget/HTCExtractEditText;I)I

    goto/16 :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 535
    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 536
    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->this$0:Landroid/widget/HTCExtractEditText;

    #getter for: Landroid/widget/HTCExtractEditText;->mIsDown:Z
    invoke-static {v0}, Landroid/widget/HTCExtractEditText;->access$1200(Landroid/widget/HTCExtractEditText;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->this$0:Landroid/widget/HTCExtractEditText;

    invoke-virtual {v0}, Landroid/widget/HTCExtractEditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    :cond_0
    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 538
    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 542
    :goto_0
    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 543
    return-void

    .line 540
    :cond_1
    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method getMutiplyDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 551
    const/4 v0, 0x1

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "padding"

    .prologue
    .line 631
    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->this$0:Landroid/widget/HTCExtractEditText;

    #getter for: Landroid/widget/HTCExtractEditText;->mDefaultPaddingLeft:I
    invoke-static {v0}, Landroid/widget/HTCExtractEditText;->access$1500(Landroid/widget/HTCExtractEditText;)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 633
    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->this$0:Landroid/widget/HTCExtractEditText;

    #getter for: Landroid/widget/HTCExtractEditText;->mDefaultPaddingTop:I
    invoke-static {v0}, Landroid/widget/HTCExtractEditText;->access$700(Landroid/widget/HTCExtractEditText;)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 634
    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->this$0:Landroid/widget/HTCExtractEditText;

    #getter for: Landroid/widget/HTCExtractEditText;->mDefaultPaddingRight:I
    invoke-static {v0}, Landroid/widget/HTCExtractEditText;->access$1600(Landroid/widget/HTCExtractEditText;)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 635
    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->this$0:Landroid/widget/HTCExtractEditText;

    #getter for: Landroid/widget/HTCExtractEditText;->mDefaultPaddingBottom:I
    invoke-static {v0}, Landroid/widget/HTCExtractEditText;->access$800(Landroid/widget/HTCExtractEditText;)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 636
    const/4 v0, 0x1

    .line 638
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getRestPadding(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "padding"

    .prologue
    const/4 v1, 0x0

    .line 657
    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mRestPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 665
    :goto_0
    return-void

    .line 660
    :cond_0
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 661
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 662
    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 663
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 601
    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "bounds"

    .prologue
    .line 581
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 582
    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 583
    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 584
    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 585
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 592
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 560
    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->this$0:Landroid/widget/HTCExtractEditText;

    const/4 v1, 0x1

    #setter for: Landroid/widget/HTCExtractEditText;->mIsUserSetAlpha:Z
    invoke-static {v0, v1}, Landroid/widget/HTCExtractEditText;->access$1302(Landroid/widget/HTCExtractEditText;Z)Z

    .line 561
    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->this$0:Landroid/widget/HTCExtractEditText;

    #setter for: Landroid/widget/HTCExtractEditText;->mDrawableAlpha:I
    invoke-static {v0, p1}, Landroid/widget/HTCExtractEditText;->access$1402(Landroid/widget/HTCExtractEditText;I)I

    .line 562
    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 563
    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 564
    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 565
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 573
    return-void
.end method

.method setDisableAlpha()V
    .locals 2

    .prologue
    .line 649
    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->this$0:Landroid/widget/HTCExtractEditText;

    #getter for: Landroid/widget/HTCExtractEditText;->mDrawableDisableAlpha:I
    invoke-static {v0}, Landroid/widget/HTCExtractEditText;->access$1700(Landroid/widget/HTCExtractEditText;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->this$0:Landroid/widget/HTCExtractEditText;

    #getter for: Landroid/widget/HTCExtractEditText;->mDrawableAlpha:I
    invoke-static {v1}, Landroid/widget/HTCExtractEditText;->access$1400(Landroid/widget/HTCExtractEditText;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 650
    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->this$0:Landroid/widget/HTCExtractEditText;

    #getter for: Landroid/widget/HTCExtractEditText;->mDrawableDisableAlpha:I
    invoke-static {v1}, Landroid/widget/HTCExtractEditText;->access$1700(Landroid/widget/HTCExtractEditText;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 651
    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->this$0:Landroid/widget/HTCExtractEditText;

    #getter for: Landroid/widget/HTCExtractEditText;->mDrawableDisableAlpha:I
    invoke-static {v1}, Landroid/widget/HTCExtractEditText;->access$1700(Landroid/widget/HTCExtractEditText;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 652
    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->this$0:Landroid/widget/HTCExtractEditText;

    #getter for: Landroid/widget/HTCExtractEditText;->mDrawableDisableAlpha:I
    invoke-static {v1}, Landroid/widget/HTCExtractEditText;->access$1700(Landroid/widget/HTCExtractEditText;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 654
    :cond_0
    return-void
.end method

.method setEnableAlpha()V
    .locals 2

    .prologue
    .line 643
    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->this$0:Landroid/widget/HTCExtractEditText;

    #getter for: Landroid/widget/HTCExtractEditText;->mDrawableAlpha:I
    invoke-static {v1}, Landroid/widget/HTCExtractEditText;->access$1400(Landroid/widget/HTCExtractEditText;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 644
    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->this$0:Landroid/widget/HTCExtractEditText;

    #getter for: Landroid/widget/HTCExtractEditText;->mDrawableAlpha:I
    invoke-static {v1}, Landroid/widget/HTCExtractEditText;->access$1400(Landroid/widget/HTCExtractEditText;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 645
    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->this$0:Landroid/widget/HTCExtractEditText;

    #getter for: Landroid/widget/HTCExtractEditText;->mDrawableAlpha:I
    invoke-static {v1}, Landroid/widget/HTCExtractEditText;->access$1400(Landroid/widget/HTCExtractEditText;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 646
    return-void
.end method
