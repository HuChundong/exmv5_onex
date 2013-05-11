.class public Lcom/htc/sunny/SGallery;
.super Lcom/htc/sunny/SAdapterView;
.source "SGallery.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny/SGallery$13;,
        Lcom/htc/sunny/SGallery$OnScrollListener;,
        Lcom/htc/sunny/SGallery$AnimationInfo;,
        Lcom/htc/sunny/SGallery$INTERPOLATE;,
        Lcom/htc/sunny/SGallery$ItemContainer;,
        Lcom/htc/sunny/SGallery$DIRECTION;,
        Lcom/htc/sunny/SGallery$OnClickListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field protected static final ANIMATION_FLING:I = 0x1

.field protected static final ANIMATION_HOMING:I = 0x2

.field protected static final ANIMATION_UNKNOW:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "3DGlideMode"

.field public static final STATE_BOUNCING:I = 0x7

.field public static final STATE_BOUNCING_END:I = 0x8

.field public static final STATE_FLING:I = 0x3

.field public static final STATE_FLING_END:I = 0x4

.field public static final STATE_HOMING:I = 0x5

.field public static final STATE_HOMING_END:I = 0x6

.field public static final STATE_IDLE:I = 0x9

.field public static final STATE_MOUSE_DOWN:I = 0x0

.field public static final STATE_MOUSE_PAN:I = 0x2

.field public static final STATE_MOUSE_UP:I = 0x1

.field public static final STATE_UNKNOW:I = -0x1


# instance fields
.field protected DURATION_BOUNCING:I

.field protected DURATION_FLING:I

.field protected DURATION_HOMING:I

.field protected mAdapter:Lcom/htc/sunny/SGalleryAdapter;

.field protected mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

.field protected mClickListener:Lcom/htc/sunny/SGallery$OnClickListener;

.field protected mClipSize:I

.field protected mContainerCount:I

.field protected mCurrentPosition:I

.field protected mDataCount:I

.field protected mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

.field protected mDividerHeight:I

.field protected mDividerTextureId:I

.field protected mDividerWidth:I

.field protected mEnableScrollBar:Z

.field protected mEnableSelector:Z

.field protected mEnabledClip:Z

.field protected mEnabledDivider:Z

.field protected mEndDataIndex:I

.field protected mForceLayout:Z

.field protected mGalleryState:I

.field protected mGalleryVisibility:Z

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field private mHashCode:I

.field protected mHeight_H:I

.field protected mIsBlockDown:Z

.field protected mIsBlockTop:Z

.field protected mIsOverBottomBoundary:Z

.field protected mIsOverTopBoundary:Z

.field private mIsPressed:Z

.field protected mIsSingleTapUp:Z

.field protected mIsTouchable:Z

.field protected mIsVerticalGallery:Z

.field protected mItemBackgroundPressTextureId:I

.field protected mItemBackgroundRestTextureId:I

.field protected mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

.field protected mItemHeight:I

.field protected mItemWidth:I

.field protected mLowerBoundPosition:I

.field protected mPaddingBottom:I

.field protected mPaddingLeft:I

.field protected mPaddingRight:I

.field protected mPaddingTop:I

.field private mPressedContainerId:I

.field protected mScrollBarView:Lcom/htc/sunny/SScrollBarView;

.field protected mScrollListener:Lcom/htc/sunny/SGallery$OnScrollListener;

.field protected mSelectorPressDrawable:Landroid/graphics/drawable/Drawable;

.field protected mSelectorRenderOrder:I

.field protected mSelectorRestDrawable:Landroid/graphics/drawable/Drawable;

.field protected mSpacing:I

.field protected mStartDataIndex:I

.field protected mTotalItemsLength:I

.field protected mUpperBoundPosition:I

.field protected mViewColumnCount:I

.field protected mViewHeight:I

.field protected mViewWidth:I

.field protected mWidth_H:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V
    .locals 1
    .parameter "context"
    .parameter "surfaceView"

    .prologue
    .line 510
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/sunny/SGallery;-><init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;Z)V

    .line 511
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;Z)V
    .locals 5
    .parameter "context"
    .parameter "surfaceView"
    .parameter "bEnableClip"

    .prologue
    const/16 v4, 0x28

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 514
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny/SAdapterView;-><init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V

    .line 195
    iput-object v1, p0, Lcom/htc/sunny/SGallery;->mAdapter:Lcom/htc/sunny/SGalleryAdapter;

    .line 200
    iput-object v1, p0, Lcom/htc/sunny/SGallery;->mGestureDetector:Landroid/view/GestureDetector;

    .line 205
    iput-object v1, p0, Lcom/htc/sunny/SGallery;->mClickListener:Lcom/htc/sunny/SGallery$OnClickListener;

    .line 210
    iput-object v1, p0, Lcom/htc/sunny/SGallery;->mScrollListener:Lcom/htc/sunny/SGallery$OnScrollListener;

    .line 289
    new-instance v0, Lcom/htc/sunny/SGallery$AnimationInfo;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SGallery$AnimationInfo;-><init>(Lcom/htc/sunny/SGallery;)V

    iput-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    .line 295
    iput-object v1, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    .line 300
    iput v2, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundPressTextureId:I

    .line 305
    iput v2, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundRestTextureId:I

    .line 310
    iput v2, p0, Lcom/htc/sunny/SGallery;->mDividerTextureId:I

    .line 311
    iput v2, p0, Lcom/htc/sunny/SGallery;->mDividerWidth:I

    iput v2, p0, Lcom/htc/sunny/SGallery;->mDividerHeight:I

    .line 316
    iput-object v1, p0, Lcom/htc/sunny/SGallery;->mSelectorPressDrawable:Landroid/graphics/drawable/Drawable;

    .line 321
    iput-object v1, p0, Lcom/htc/sunny/SGallery;->mSelectorRestDrawable:Landroid/graphics/drawable/Drawable;

    .line 326
    const/16 v0, -0xc8

    iput v0, p0, Lcom/htc/sunny/SGallery;->mSelectorRenderOrder:I

    .line 331
    iput-object v1, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    .line 336
    iput v2, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    .line 341
    iput v2, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    .line 346
    iput v3, p0, Lcom/htc/sunny/SGallery;->mViewColumnCount:I

    .line 351
    iput-boolean v3, p0, Lcom/htc/sunny/SGallery;->mGalleryVisibility:Z

    .line 353
    iput v2, p0, Lcom/htc/sunny/SGallery;->mViewWidth:I

    iput v2, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    .line 354
    iput v2, p0, Lcom/htc/sunny/SGallery;->mWidth_H:I

    iput v2, p0, Lcom/htc/sunny/SGallery;->mHeight_H:I

    .line 360
    iput-boolean v3, p0, Lcom/htc/sunny/SGallery;->mIsTouchable:Z

    .line 365
    iput v2, p0, Lcom/htc/sunny/SGallery;->mTotalItemsLength:I

    .line 370
    iput v2, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    .line 375
    iput v2, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    .line 380
    iput v2, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    .line 382
    iput v2, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    iput v2, p0, Lcom/htc/sunny/SGallery;->mEndDataIndex:I

    .line 384
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SGallery;->mHashCode:I

    .line 387
    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsPressed:Z

    .line 388
    iput v2, p0, Lcom/htc/sunny/SGallery;->mPressedContainerId:I

    .line 393
    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsSingleTapUp:Z

    .line 394
    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsOverTopBoundary:Z

    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsOverBottomBoundary:Z

    .line 395
    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsBlockTop:Z

    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsBlockDown:Z

    .line 400
    sget-object v0, Lcom/htc/sunny/SGallery$DIRECTION;->D_UNKNOWN:Lcom/htc/sunny/SGallery$DIRECTION;

    iput-object v0, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    .line 405
    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mForceLayout:Z

    .line 410
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mGalleryState:I

    .line 417
    iput-boolean v3, p0, Lcom/htc/sunny/SGallery;->mEnabledClip:Z

    .line 422
    iput v2, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    .line 423
    iput v2, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    iput v2, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    .line 428
    iput v2, p0, Lcom/htc/sunny/SGallery;->mSpacing:I

    .line 433
    iput v2, p0, Lcom/htc/sunny/SGallery;->mPaddingLeft:I

    .line 438
    iput v2, p0, Lcom/htc/sunny/SGallery;->mPaddingTop:I

    .line 443
    iput v2, p0, Lcom/htc/sunny/SGallery;->mPaddingRight:I

    .line 448
    iput v2, p0, Lcom/htc/sunny/SGallery;->mPaddingBottom:I

    .line 453
    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    .line 458
    iput-boolean v3, p0, Lcom/htc/sunny/SGallery;->mEnabledDivider:Z

    .line 463
    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mEnableScrollBar:Z

    .line 468
    iput-boolean v3, p0, Lcom/htc/sunny/SGallery;->mEnableSelector:Z

    .line 473
    iput v4, p0, Lcom/htc/sunny/SGallery;->DURATION_BOUNCING:I

    .line 478
    iput v4, p0, Lcom/htc/sunny/SGallery;->DURATION_HOMING:I

    .line 483
    const/16 v0, 0x64

    iput v0, p0, Lcom/htc/sunny/SGallery;->DURATION_FLING:I

    .line 515
    invoke-super {p0, p3}, Lcom/htc/sunny/SAdapterView;->enableMaskNode(Z)V

    .line 516
    iput-boolean p3, p0, Lcom/htc/sunny/SGallery;->mEnabledClip:Z

    .line 518
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/htc/sunny/SGallery;->mGestureDetector:Landroid/view/GestureDetector;

    .line 519
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 520
    return-void
.end method

.method private getSpriteIndex(I)I
    .locals 1
    .parameter "nTag"

    .prologue
    const/4 v0, -0x1

    .line 1108
    if-gt p1, v0, :cond_0

    .line 1109
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/sunny/SGallery;->mHashCode:I

    sub-int v0, p1, v0

    goto :goto_0
.end method

.method private getSpriteTag(I)I
    .locals 1
    .parameter "nSpriteIndex"

    .prologue
    .line 1104
    iget v0, p0, Lcom/htc/sunny/SGallery;->mHashCode:I

    add-int/2addr v0, p1

    return v0
.end method

.method private updateContainer(Lcom/htc/sunny/SGallery$ItemContainer;)V
    .locals 2
    .parameter "container"

    .prologue
    .line 1235
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAdapter:Lcom/htc/sunny/SGalleryAdapter;

    if-nez v0, :cond_1

    .line 1239
    :cond_0
    :goto_0
    return-void

    .line 1237
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAdapter:Lcom/htc/sunny/SGalleryAdapter;

    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {p1}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/htc/sunny/SGalleryAdapter;->getView(Lcom/htc/sunny/SView;I)Lcom/htc/sunny/SView;

    .line 1238
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/sunny/SGallery$ItemContainer;->setValid(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected Get2DX(F)F
    .locals 1
    .parameter "n3DX"

    .prologue
    .line 1905
    iget v0, p0, Lcom/htc/sunny/SGallery;->mWidth_H:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    return v0
.end method

.method protected Get2DY(F)F
    .locals 1
    .parameter "n3DY"

    .prologue
    .line 1897
    iget v0, p0, Lcom/htc/sunny/SGallery;->mHeight_H:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    return v0
.end method

.method protected Get3DX(F)F
    .locals 1
    .parameter "n2DX"

    .prologue
    .line 1921
    iget v0, p0, Lcom/htc/sunny/SGallery;->mWidth_H:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    return v0
.end method

.method protected Get3DY(F)F
    .locals 1
    .parameter "n2DY"

    .prologue
    .line 1913
    iget v0, p0, Lcom/htc/sunny/SGallery;->mHeight_H:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    return v0
.end method

.method protected addNewContainers()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 828
    iget-object v7, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    if-nez v7, :cond_1

    .line 869
    :cond_0
    return-void

    .line 830
    :cond_1
    iget v4, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    .local v4, index:I
    :goto_0
    iget v7, p0, Lcom/htc/sunny/SGallery;->mEndDataIndex:I

    if-gt v4, v7, :cond_0

    .line 832
    const/4 v1, 0x0

    .line 833
    .local v1, bUpdated:Z
    const/4 v6, 0x0

    .line 834
    .local v6, updatedContainer:Lcom/htc/sunny/SGallery$ItemContainer;
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    .local v0, arr$:[Lcom/htc/sunny/SGallery$ItemContainer;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v5, :cond_4

    aget-object v2, v0, v3

    .line 835
    .local v2, container:Lcom/htc/sunny/SGallery$ItemContainer;
    if-nez v2, :cond_3

    .line 834
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 837
    :cond_3
    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v2}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v7

    if-ne v7, v4, :cond_5

    invoke-virtual {v2}, Lcom/htc/sunny/SGallery$ItemContainer;->isValid()Z

    move-result v7

    if-ne v9, v7, :cond_5

    .line 838
    const/4 v1, 0x1

    .line 846
    .end local v2           #container:Lcom/htc/sunny/SGallery$ItemContainer;
    :cond_4
    :goto_2
    if-ne v9, v1, :cond_6

    .line 830
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 840
    .restart local v2       #container:Lcom/htc/sunny/SGallery$ItemContainer;
    :cond_5
    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v2}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v7

    if-ne v7, v4, :cond_2

    invoke-virtual {v2}, Lcom/htc/sunny/SGallery$ItemContainer;->isValid()Z

    move-result v7

    if-nez v7, :cond_2

    .line 841
    move-object v6, v2

    .line 842
    goto :goto_2

    .line 850
    .end local v2           #container:Lcom/htc/sunny/SGallery$ItemContainer;
    :cond_6
    if-nez v6, :cond_7

    .line 852
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    array-length v5, v0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v5, :cond_7

    aget-object v2, v0, v3

    .line 853
    .restart local v2       #container:Lcom/htc/sunny/SGallery$ItemContainer;
    if-eqz v2, :cond_8

    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v2}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_8

    .line 854
    move-object v6, v2

    .line 861
    .end local v2           #container:Lcom/htc/sunny/SGallery$ItemContainer;
    :cond_7
    if-eqz v6, :cond_9

    .line 862
    #setter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v6, v4}, Lcom/htc/sunny/SGallery$ItemContainer;->access$002(Lcom/htc/sunny/SGallery$ItemContainer;I)I

    .line 863
    invoke-direct {p0, v6}, Lcom/htc/sunny/SGallery;->updateContainer(Lcom/htc/sunny/SGallery$ItemContainer;)V

    goto :goto_3

    .line 852
    .restart local v2       #container:Lcom/htc/sunny/SGallery$ItemContainer;
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 865
    .end local v2           #container:Lcom/htc/sunny/SGallery$ItemContainer;
    :cond_9
    const-string v7, "3DGlideMode"

    const-string v8, "[SGallery] SGalleryaddNewContainers() can\'t find free container !!!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method protected caculateMeasurement()V
    .locals 3

    .prologue
    .line 898
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v0, v1, :cond_3

    .line 899
    iget v0, p0, Lcom/htc/sunny/SGallery;->mPaddingTop:I

    neg-int v0, v0

    iget v1, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    .line 900
    iget v0, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny/SGallery;->mSpacing:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mTotalItemsLength:I

    .line 901
    iget v0, p0, Lcom/htc/sunny/SGallery;->mTotalItemsLength:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    iget v2, p0, Lcom/htc/sunny/SGallery;->mPaddingTop:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/sunny/SGallery;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_2

    .line 902
    iget v0, p0, Lcom/htc/sunny/SGallery;->mTotalItemsLength:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny/SGallery;->mPaddingBottom:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    .line 916
    :goto_0
    iget v0, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    if-le v0, v1, :cond_5

    .line 917
    iget v0, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    iput v0, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    .line 922
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    if-eqz v0, :cond_1

    .line 923
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    iget v1, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    iget v2, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SScrollBarView;->setScrollViewRange(I)V

    .line 925
    :cond_1
    return-void

    .line 904
    :cond_2
    iget v0, p0, Lcom/htc/sunny/SGallery;->mPaddingTop:I

    neg-int v0, v0

    iget v1, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    goto :goto_0

    .line 907
    :cond_3
    iget v0, p0, Lcom/htc/sunny/SGallery;->mPaddingLeft:I

    neg-int v0, v0

    iget v1, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    .line 908
    iget v0, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny/SGallery;->mSpacing:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mTotalItemsLength:I

    .line 909
    iget v0, p0, Lcom/htc/sunny/SGallery;->mTotalItemsLength:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mViewWidth:I

    iget v2, p0, Lcom/htc/sunny/SGallery;->mPaddingLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/sunny/SGallery;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_4

    .line 910
    iget v0, p0, Lcom/htc/sunny/SGallery;->mTotalItemsLength:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mViewWidth:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny/SGallery;->mPaddingRight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    goto :goto_0

    .line 912
    :cond_4
    iget v0, p0, Lcom/htc/sunny/SGallery;->mPaddingLeft:I

    neg-int v0, v0

    iget v1, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    goto :goto_0

    .line 918
    :cond_5
    iget v0, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    if-le v0, v1, :cond_0

    .line 919
    iget v0, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    iput v0, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    goto :goto_1
.end method

.method protected createResource()V
    .locals 1

    .prologue
    .line 1541
    invoke-super {p0}, Lcom/htc/sunny/SAdapterView;->createResource()V

    .line 1542
    iget-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsSurfaceBinded:Z

    if-nez v0, :cond_0

    .line 1545
    :goto_0
    return-void

    .line 1544
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->initContainers()V

    goto :goto_0
.end method

.method protected destroyContainers()V
    .locals 5

    .prologue
    .line 1117
    iget-object v4, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    if-eqz v4, :cond_1

    .line 1118
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    .local v0, arr$:[Lcom/htc/sunny/SGallery$ItemContainer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 1119
    .local v1, container:Lcom/htc/sunny/SGallery$ItemContainer;
    if-nez v1, :cond_0

    .line 1118
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1120
    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/sunny/SGallery;->removeView(Lcom/htc/sunny/SView;)V

    goto :goto_1

    .line 1123
    .end local v0           #arr$:[Lcom/htc/sunny/SGallery$ItemContainer;
    .end local v1           #container:Lcom/htc/sunny/SGallery$ItemContainer;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->freeItemResource()V

    .line 1124
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    .line 1125
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    .line 1126
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1568
    invoke-super {p0, p1}, Lcom/htc/sunny/SAdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 1570
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 1572
    iget-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsTouchable:Z

    if-ne v4, v1, :cond_0

    .line 1573
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/sunny/SGallery;->getContainerId(II)I

    move-result v0

    .line 1574
    .local v0, nContainerId:I
    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    .line 1575
    iput-boolean v4, p0, Lcom/htc/sunny/SGallery;->mIsPressed:Z

    .line 1576
    iput v0, p0, Lcom/htc/sunny/SGallery;->mPressedContainerId:I

    .line 1580
    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    iget v2, p0, Lcom/htc/sunny/SGallery;->mPressedContainerId:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Lcom/htc/sunny/SGallery$ItemContainer;->onFocusChanged(Z)V

    .line 1585
    .end local v0           #nContainerId:I
    :cond_0
    iget-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsPressed:Z

    if-nez v1, :cond_2

    .line 1595
    :cond_1
    :goto_0
    return-void

    .line 1587
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1589
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v4, v1, :cond_1

    .line 1590
    invoke-virtual {p0, p1}, Lcom/htc/sunny/SGallery;->onUpR(Landroid/view/MotionEvent;)V

    .line 1591
    iput-boolean v3, p0, Lcom/htc/sunny/SGallery;->mIsPressed:Z

    .line 1592
    iput v3, p0, Lcom/htc/sunny/SGallery;->mPressedContainerId:I

    goto :goto_0
.end method

.method public enableScrollBar(Z)V
    .locals 1
    .parameter "bEnable"

    .prologue
    .line 932
    new-instance v0, Lcom/htc/sunny/SGallery$4;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SGallery$4;-><init>(Lcom/htc/sunny/SGallery;Z)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 940
    return-void
.end method

.method public enableSelector(Z)V
    .locals 1
    .parameter "bEnable"

    .prologue
    .line 996
    new-instance v0, Lcom/htc/sunny/SGallery$6;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SGallery$6;-><init>(Lcom/htc/sunny/SGallery;Z)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1004
    return-void
.end method

.method public enableVerticalDisplay(Z)V
    .locals 1
    .parameter "bVertical"

    .prologue
    .line 947
    iput-boolean p1, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    .line 948
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    invoke-virtual {v0, p1}, Lcom/htc/sunny/SScrollBarView;->enableVerticalDisplay(Z)V

    .line 951
    :cond_0
    return-void
.end method

.method protected flingR(I)V
    .locals 9
    .parameter "nVelocity"

    .prologue
    const/4 v7, 0x1

    .line 1291
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->stopAnimation()V

    .line 1293
    if-lez p1, :cond_0

    iget-boolean v6, p0, Lcom/htc/sunny/SGallery;->mIsOverBottomBoundary:Z

    if-ne v7, v6, :cond_0

    .line 1294
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->homingR()V

    .line 1354
    :goto_0
    return-void

    .line 1296
    :cond_0
    if-gez p1, :cond_1

    iget-boolean v6, p0, Lcom/htc/sunny/SGallery;->mIsOverTopBoundary:Z

    if-ne v7, v6, :cond_1

    .line 1297
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->homingR()V

    goto :goto_0

    .line 1301
    :cond_1
    iget-object v6, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    invoke-virtual {v6}, Lcom/htc/sunny/SGallery$AnimationInfo;->reset()V

    .line 1302
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    .line 1303
    iget-object v6, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iput v7, v6, Lcom/htc/sunny/SGallery$AnimationInfo;->type:I

    .line 1305
    iget-object v6, p0, Lcom/htc/sunny/SGallery;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    .line 1306
    .local v1, VELOCITY_MIN:I
    const/16 v0, 0xbb8

    .line 1307
    .local v0, VELOCITY_MAX:I
    const/4 v4, 0x0

    .line 1308
    .local v4, nMaxPosOffset:I
    iget-boolean v6, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v7, v6, :cond_3

    .line 1309
    iget v6, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    iget v7, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v7, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    mul-int v4, v6, v7

    .line 1314
    :goto_1
    int-to-float v6, v4

    sub-int v7, v0, v1

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int/2addr v7, v1

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v5, v6

    .line 1316
    .local v5, nTotalOffset:I
    const/4 v2, 0x0

    .line 1317
    .local v2, bBounceBack:Z
    if-lez p1, :cond_4

    .line 1318
    sget-object v6, Lcom/htc/sunny/SGallery$DIRECTION;->D_PREVIOUSE:Lcom/htc/sunny/SGallery$DIRECTION;

    iput-object v6, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    .line 1319
    mul-int/lit8 v5, v5, -0x1

    .line 1320
    iget v6, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    add-int v3, v6, v5

    .line 1321
    .local v3, nEndPos:I
    iget v6, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    if-ge v3, v6, :cond_2

    .line 1323
    sget-object v6, Lcom/htc/sunny/SGallery$DIRECTION;->D_NEXT:Lcom/htc/sunny/SGallery$DIRECTION;

    iput-object v6, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    .line 1324
    iget v6, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    iget v7, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    sub-int v5, v6, v7

    .line 1325
    const/4 v2, 0x1

    .line 1338
    :cond_2
    :goto_2
    if-nez v5, :cond_5

    .line 1339
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->onAnimationEnd()V

    goto :goto_0

    .line 1311
    .end local v2           #bBounceBack:Z
    .end local v3           #nEndPos:I
    .end local v5           #nTotalOffset:I
    :cond_3
    iget v6, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    iget v7, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v7, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    mul-int v4, v6, v7

    goto :goto_1

    .line 1328
    .restart local v2       #bBounceBack:Z
    .restart local v5       #nTotalOffset:I
    :cond_4
    sget-object v6, Lcom/htc/sunny/SGallery$DIRECTION;->D_NEXT:Lcom/htc/sunny/SGallery$DIRECTION;

    iput-object v6, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    .line 1329
    iget v6, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    add-int v3, v6, v5

    .line 1330
    .restart local v3       #nEndPos:I
    iget v6, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    if-le v3, v6, :cond_2

    .line 1332
    sget-object v6, Lcom/htc/sunny/SGallery$DIRECTION;->D_PREVIOUSE:Lcom/htc/sunny/SGallery$DIRECTION;

    iput-object v6, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    .line 1333
    iget v6, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    iget v7, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    sub-int v5, v6, v7

    .line 1334
    const/4 v2, 0x1

    goto :goto_2

    .line 1343
    :cond_5
    iget-object v6, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    iput v7, v6, Lcom/htc/sunny/SGallery$AnimationInfo;->mStart:I

    .line 1344
    iget-object v6, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iput v5, v6, Lcom/htc/sunny/SGallery$AnimationInfo;->mTotal:I

    .line 1345
    iget-object v6, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    add-int/2addr v7, v5

    iput v7, v6, Lcom/htc/sunny/SGallery$AnimationInfo;->mEnd:I

    .line 1347
    if-nez v2, :cond_6

    .line 1348
    iget-object v6, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny/SGallery;->DURATION_FLING:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v6, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    .line 1352
    :goto_3
    iget-object v6, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    sget-object v7, Lcom/htc/sunny/SGallery$INTERPOLATE;->EASEOUT_CUBIC:Lcom/htc/sunny/SGallery$INTERPOLATE;

    iput-object v7, v6, Lcom/htc/sunny/SGallery$AnimationInfo;->interpolate:Lcom/htc/sunny/SGallery$INTERPOLATE;

    .line 1353
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->invalidate3DView()V

    goto/16 :goto_0

    .line 1350
    :cond_6
    iget-object v6, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny/SGallery;->DURATION_BOUNCING:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v6, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    goto :goto_3
.end method

.method protected freeItemResource()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 769
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_0

    .line 780
    :goto_0
    return-void

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundPressTextureId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->destroyTexture(I)V

    .line 772
    iput v2, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundPressTextureId:I

    .line 774
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundRestTextureId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->destroyTexture(I)V

    .line 775
    iput v2, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundRestTextureId:I

    .line 777
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SGallery;->mDividerTextureId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->destroyTexture(I)V

    .line 778
    iput v2, p0, Lcom/htc/sunny/SGallery;->mDividerTextureId:I

    goto :goto_0
.end method

.method protected freeResource()V
    .locals 0

    .prologue
    .line 1553
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->stopAnimation()V

    .line 1555
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->destroyContainers()V

    .line 1556
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->freeScrollBar()V

    .line 1557
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->freeItemResource()V

    .line 1559
    invoke-super {p0}, Lcom/htc/sunny/SAdapterView;->freeResource()V

    .line 1560
    return-void
.end method

.method protected freeScrollBar()V
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->removeView(Lcom/htc/sunny/SView;)V

    .line 559
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    .line 561
    :cond_0
    return-void
.end method

.method protected getContainerByDataIndex(I)Lcom/htc/sunny/SGallery$ItemContainer;
    .locals 6
    .parameter "nDataIndex"

    .prologue
    const/4 v4, 0x0

    .line 1374
    iget-object v5, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    if-nez v5, :cond_0

    move-object v1, v4

    .line 1383
    :goto_0
    return-object v1

    .line 1376
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    .local v0, arr$:[Lcom/htc/sunny/SGallery$ItemContainer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 1377
    .local v1, container:Lcom/htc/sunny/SGallery$ItemContainer;
    if-nez v1, :cond_2

    .line 1376
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1379
    :cond_2
    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v1}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v5

    if-ne p1, v5, :cond_1

    goto :goto_0

    .end local v1           #container:Lcom/htc/sunny/SGallery$ItemContainer;
    :cond_3
    move-object v1, v4

    .line 1383
    goto :goto_0
.end method

.method protected getContainerId(II)I
    .locals 4
    .parameter "n2DX"
    .parameter "n2DY"

    .prologue
    const/4 v2, -0x1

    .line 1878
    iget-object v3, p0, Lcom/htc/sunny/SGallery;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v3, :cond_1

    move v1, v2

    .line 1889
    :cond_0
    :goto_0
    return v1

    .line 1880
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny/SGallery;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v3, p1, p2}, Lcom/htc/sunny/SunnyEngine;->getHitSprite(II)I

    move-result v0

    .line 1881
    .local v0, nSpriteId:I
    if-ne v2, v0, :cond_2

    move v1, v2

    .line 1882
    goto :goto_0

    .line 1885
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny/SGallery;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v3, v0, v2}, Lcom/htc/sunny/SunnyEngine;->getTag(II)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/htc/sunny/SGallery;->getSpriteIndex(I)I

    move-result v1

    .line 1886
    .local v1, nSpriteIndex:I
    if-ltz v1, :cond_3

    iget v3, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    if-lt v1, v3, :cond_0

    :cond_3
    move v1, v2

    .line 1889
    goto :goto_0
.end method

.method protected getInterpolateResult(FFFFLcom/htc/sunny/SGallery$INTERPOLATE;)F
    .locals 11
    .parameter "current"
    .parameter "start"
    .parameter "total"
    .parameter "duration"
    .parameter "interpolate"

    .prologue
    .line 1485
    const/4 v3, 0x0

    .line 1486
    .local v3, nRes:F
    const/4 v6, 0x0

    .local v6, ts:F
    const/4 v5, 0x0

    .line 1487
    .local v5, tc:F
    move v4, p1

    .line 1488
    .local v4, t:F
    move v0, p2

    .line 1489
    .local v0, b:F
    move v1, p3

    .line 1490
    .local v1, c:F
    move v2, p4

    .line 1492
    .local v2, d:F
    sget-object v7, Lcom/htc/sunny/SGallery$13;->$SwitchMap$com$htc$sunny$SGallery$INTERPOLATE:[I

    invoke-virtual/range {p5 .. p5}, Lcom/htc/sunny/SGallery$INTERPOLATE;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 1515
    :goto_0
    return v3

    .line 1494
    :pswitch_0
    div-float v7, v1, v2

    mul-float/2addr v7, v4

    add-float v3, v7, v0

    .line 1495
    goto :goto_0

    .line 1497
    :pswitch_1
    div-float/2addr v4, v2

    .line 1498
    mul-float v6, v4, v4

    .line 1499
    mul-float v5, v6, v4

    .line 1500
    const/high16 v7, 0x3f80

    mul-float/2addr v7, v5

    mul-float/2addr v7, v6

    const/high16 v8, -0x3f60

    mul-float/2addr v8, v6

    mul-float/2addr v8, v6

    add-float/2addr v7, v8

    const/high16 v8, 0x4120

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    const/high16 v8, -0x3ee0

    mul-float/2addr v8, v6

    add-float/2addr v7, v8

    const/high16 v8, 0x40a0

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    mul-float/2addr v7, v1

    add-float v3, v7, v0

    .line 1501
    goto :goto_0

    .line 1510
    :pswitch_2
    div-float v7, v4, v2

    const/high16 v8, 0x3f80

    add-float/2addr v7, v8

    float-to-double v7, v7

    const-wide v9, 0x400921fb54442d18L

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    const-wide/high16 v9, 0x4000

    div-double/2addr v7, v9

    const-wide/high16 v9, 0x3fe0

    add-double/2addr v7, v9

    double-to-float v7, v7

    mul-float/2addr v7, v1

    add-float v3, v7, v0

    .line 1511
    goto :goto_0

    .line 1492
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getRefineDuration(II)I
    .locals 0
    .parameter "nDuration"
    .parameter "nTotalTimeSlot"

    .prologue
    .line 1361
    if-gtz p1, :cond_0

    .line 1362
    const/4 p1, 0x2

    .line 1365
    .end local p1
    :cond_0
    return p1
.end method

.method public hasAnimation()Z
    .locals 2

    .prologue
    .line 1929
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->type:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAdapter:Lcom/htc/sunny/SGalleryAdapter;

    if-eqz v0, :cond_0

    .line 1930
    const/4 v0, 0x1

    .line 1932
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected homingR()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1247
    iget-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsOverTopBoundary:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsOverBottomBoundary:Z

    if-nez v1, :cond_1

    .line 1284
    :cond_0
    :goto_0
    return-void

    .line 1251
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    invoke-virtual {v1}, Lcom/htc/sunny/SGallery$AnimationInfo;->reset()V

    .line 1252
    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    sget-object v2, Lcom/htc/sunny/SGallery$INTERPOLATE;->EASEOUT_CUBIC:Lcom/htc/sunny/SGallery$INTERPOLATE;

    iput-object v2, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->interpolate:Lcom/htc/sunny/SGallery$INTERPOLATE;

    .line 1254
    const/4 v0, 0x0

    .line 1255
    .local v0, nTotalOffset:I
    iget v1, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    iget v2, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    if-ge v1, v2, :cond_3

    .line 1256
    sget-object v1, Lcom/htc/sunny/SGallery$DIRECTION;->D_NEXT:Lcom/htc/sunny/SGallery$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    .line 1257
    iget v1, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    iget v2, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    sub-int v0, v1, v2

    .line 1265
    :goto_1
    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    iput v2, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->mStart:I

    .line 1266
    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iput v0, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->mTotal:I

    .line 1267
    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->mEnd:I

    .line 1269
    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    sget-object v2, Lcom/htc/sunny/SGallery$INTERPOLATE;->EASEOUT_CUBIC:Lcom/htc/sunny/SGallery$INTERPOLATE;

    iput-object v2, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->interpolate:Lcom/htc/sunny/SGallery$INTERPOLATE;

    .line 1271
    iget-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsOverTopBoundary:Z

    if-eq v3, v1, :cond_2

    iget-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsOverBottomBoundary:Z

    if-ne v3, v1, :cond_4

    .line 1272
    :cond_2
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    .line 1273
    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SGallery;->DURATION_BOUNCING:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    .line 1279
    :goto_2
    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    const/4 v2, 0x2

    iput v2, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->type:I

    .line 1280
    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    sget-object v2, Lcom/htc/sunny/SGallery$INTERPOLATE;->EASEOUT_CUBIC:Lcom/htc/sunny/SGallery$INTERPOLATE;

    iput-object v2, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->interpolate:Lcom/htc/sunny/SGallery$INTERPOLATE;

    .line 1282
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsTouchable:Z

    .line 1283
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->invalidate3DView()V

    goto :goto_0

    .line 1258
    :cond_3
    iget v1, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    iget v2, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    if-le v1, v2, :cond_0

    .line 1259
    sget-object v1, Lcom/htc/sunny/SGallery$DIRECTION;->D_PREVIOUSE:Lcom/htc/sunny/SGallery$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    .line 1260
    iget v1, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    iget v2, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    sub-int v0, v1, v2

    goto :goto_1

    .line 1275
    :cond_4
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    .line 1276
    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SGallery;->DURATION_HOMING:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    goto :goto_2
.end method

.method protected initContainers()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 568
    iget-object v5, p0, Lcom/htc/sunny/SGallery;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v5, :cond_0

    .line 650
    :goto_0
    return-void

    .line 570
    :cond_0
    iget-object v5, p0, Lcom/htc/sunny/SGallery;->mAdapter:Lcom/htc/sunny/SGalleryAdapter;

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/htc/sunny/SGallery;->mViewNodeId:I

    if-nez v5, :cond_2

    .line 571
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->destroyContainers()V

    .line 572
    iput v10, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    .line 573
    invoke-super {p0, v10}, Lcom/htc/sunny/SAdapterView;->setVisibility(Z)V

    goto :goto_0

    .line 577
    :cond_2
    iget-object v5, p0, Lcom/htc/sunny/SGallery;->mAdapter:Lcom/htc/sunny/SGalleryAdapter;

    invoke-virtual {v5}, Lcom/htc/sunny/SGalleryAdapter;->getItemCount()I

    move-result v4

    .line 578
    .local v4, nNewDataCount:I
    const/4 v3, 0x0

    .line 579
    .local v3, nCountainerCount:I
    iget-boolean v5, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v9, v5, :cond_4

    .line 580
    iget v5, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    iget v6, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    div-int/2addr v5, v6

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    add-int/lit8 v3, v5, 0x2

    .line 584
    :goto_1
    iget v5, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    if-eq v4, v5, :cond_3

    .line 585
    iput v4, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    .line 587
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->caculateMeasurement()V

    .line 590
    :cond_3
    iget v5, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    if-nez v5, :cond_5

    .line 591
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->destroyContainers()V

    .line 592
    invoke-super {p0, v10}, Lcom/htc/sunny/SAdapterView;->setVisibility(Z)V

    goto :goto_0

    .line 582
    :cond_4
    iget v5, p0, Lcom/htc/sunny/SGallery;->mViewWidth:I

    iget v6, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    div-int/2addr v5, v6

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    add-int/lit8 v3, v5, 0x2

    goto :goto_1

    .line 596
    :cond_5
    iget-boolean v5, p0, Lcom/htc/sunny/SGallery;->mGalleryVisibility:Z

    invoke-virtual {p0, v5}, Lcom/htc/sunny/SGallery;->setVisibility(Z)V

    .line 598
    iget v5, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    if-ne v3, v5, :cond_6

    iget-boolean v5, p0, Lcom/htc/sunny/SGallery;->mForceLayout:Z

    if-ne v9, v5, :cond_d

    .line 600
    :cond_6
    iget-boolean v5, p0, Lcom/htc/sunny/SGallery;->mForceLayout:Z

    if-ne v9, v5, :cond_7

    .line 601
    iget v5, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    iput v5, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    .line 603
    :cond_7
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->destroyContainers()V

    .line 605
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->initItemResource()V

    .line 606
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->initScrollBar()V

    .line 608
    iput v3, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    .line 609
    iget v5, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    new-array v5, v5, [Lcom/htc/sunny/SGallery$ItemContainer;

    iput-object v5, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    .line 611
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget v5, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    if-ge v2, v5, :cond_b

    .line 612
    iget-object v5, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    new-instance v0, Lcom/htc/sunny/SGallery$ItemContainer;

    iget-object v6, p0, Lcom/htc/sunny/SGallery;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/htc/sunny/SGallery;->mSurfaceView:Lcom/htc/sunny/SSurfaceView;

    invoke-direct {v0, p0, v6, v7}, Lcom/htc/sunny/SGallery$ItemContainer;-><init>(Lcom/htc/sunny/SGallery;Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V

    aput-object v0, v5, v2

    .line 613
    .local v0, container:Lcom/htc/sunny/SGallery$ItemContainer;
    invoke-virtual {p0, v0, v10}, Lcom/htc/sunny/SGallery;->addView(Lcom/htc/sunny/SView;Z)V

    .line 615
    iget v5, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    iget v6, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    invoke-virtual {v0, v5, v6}, Lcom/htc/sunny/SGallery$ItemContainer;->setBackgroundDisplaySize(II)V

    .line 616
    iget-boolean v5, p0, Lcom/htc/sunny/SGallery;->mEnableSelector:Z

    if-ne v9, v5, :cond_8

    .line 617
    iget v5, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundPressTextureId:I

    iget v6, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundRestTextureId:I

    iget v7, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    iget v8, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/htc/sunny/SGallery$ItemContainer;->setBackgroundImageByTexture(IIII)V

    .line 618
    iget v5, p0, Lcom/htc/sunny/SGallery;->mSelectorRenderOrder:I

    invoke-virtual {p0, v5}, Lcom/htc/sunny/SGallery;->setSelectorRenderOrder(I)V

    .line 620
    :cond_8
    invoke-virtual {v0, v9}, Lcom/htc/sunny/SGallery$ItemContainer;->setTouchable(Z)V

    .line 621
    iget-object v5, p0, Lcom/htc/sunny/SGallery;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v6, v0, Lcom/htc/sunny/SGallery$ItemContainer;->mTouchSensorSpriteId:I

    invoke-direct {p0, v2}, Lcom/htc/sunny/SGallery;->getSpriteTag(I)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/htc/sunny/SunnyEngine;->setTag(II)V

    .line 622
    iget v5, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    if-ge v2, v5, :cond_a

    .line 623
    #setter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v0, v2}, Lcom/htc/sunny/SGallery$ItemContainer;->access$002(Lcom/htc/sunny/SGallery$ItemContainer;I)I

    .line 629
    :goto_3
    iget-boolean v5, p0, Lcom/htc/sunny/SGallery;->mEnabledDivider:Z

    if-ne v9, v5, :cond_9

    iget-boolean v5, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v9, v5, :cond_9

    .line 630
    new-instance v1, Lcom/htc/sunny/SView;

    iget-object v5, p0, Lcom/htc/sunny/SGallery;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/sunny/SGallery;->mSurfaceView:Lcom/htc/sunny/SSurfaceView;

    invoke-direct {v1, v5, v6}, Lcom/htc/sunny/SView;-><init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V

    .line 631
    .local v1, dividerView:Lcom/htc/sunny/SView;
    invoke-virtual {v0, v1, v9}, Lcom/htc/sunny/SGallery$ItemContainer;->addView(Lcom/htc/sunny/SView;Z)V

    .line 632
    iget v5, p0, Lcom/htc/sunny/SGallery;->mDividerTextureId:I

    iget v6, p0, Lcom/htc/sunny/SGallery;->mDividerWidth:I

    iget v7, p0, Lcom/htc/sunny/SGallery;->mDividerHeight:I

    invoke-virtual {v1, v10, v5, v6, v7}, Lcom/htc/sunny/SView;->setBackgroundImageByTexture(IIII)V

    .line 633
    iget v5, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v1, v11, v5, v11}, Lcom/htc/sunny/SView;->setPosition(FFF)V

    .line 611
    .end local v1           #dividerView:Lcom/htc/sunny/SView;
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 625
    :cond_a
    const/4 v5, -0x1

    #setter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v0, v5}, Lcom/htc/sunny/SGallery$ItemContainer;->access$002(Lcom/htc/sunny/SGallery$ItemContainer;I)I

    goto :goto_3

    .line 637
    .end local v0           #container:Lcom/htc/sunny/SGallery$ItemContainer;
    :cond_b
    iput-boolean v10, p0, Lcom/htc/sunny/SGallery;->mForceLayout:Z

    .line 647
    :cond_c
    iget v5, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    invoke-virtual {p0, v5}, Lcom/htc/sunny/SGallery;->updateNewPosition(I)V

    .line 649
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->invalidate3DView()V

    goto/16 :goto_0

    .line 639
    .end local v2           #i:I
    :cond_d
    const/4 v0, 0x0

    .line 640
    .restart local v0       #container:Lcom/htc/sunny/SGallery$ItemContainer;
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    iget v5, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    if-ge v2, v5, :cond_c

    .line 641
    iget-object v5, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    aget-object v0, v5, v2

    .line 642
    if-eqz v0, :cond_e

    .line 643
    invoke-virtual {v0, v10}, Lcom/htc/sunny/SGallery$ItemContainer;->setValid(Z)V

    .line 640
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method protected initItemResource()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 711
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->freeItemResource()V

    .line 714
    iget-boolean v8, p0, Lcom/htc/sunny/SGallery;->mEnableSelector:Z

    if-ne v11, v8, :cond_1

    .line 716
    iget-object v8, p0, Lcom/htc/sunny/SGallery;->mSelectorPressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_3

    .line 717
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mSelectorPressDrawable:Landroid/graphics/drawable/Drawable;

    .line 726
    .local v0, backgroundPress:Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_0

    .line 727
    iget v8, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    iget v9, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    invoke-static {v0, v8, v9}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/drawable/Drawable;II)Lcom/htc/sunny/SBitmap;

    move-result-object v4

    .line 728
    .local v4, itemBackgroundBitmapPress:Lcom/htc/sunny/SBitmap;
    iget-object v8, p0, Lcom/htc/sunny/SGallery;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v8}, Lcom/htc/sunny/SunnyEngine;->createTexture()I

    move-result v8

    iput v8, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundPressTextureId:I

    .line 729
    iget-object v8, p0, Lcom/htc/sunny/SGallery;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v9, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundPressTextureId:I

    invoke-virtual {v4}, Lcom/htc/sunny/SBitmap;->getBmpId()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    .line 730
    invoke-virtual {v4}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 734
    .end local v4           #itemBackgroundBitmapPress:Lcom/htc/sunny/SBitmap;
    :cond_0
    iget-object v8, p0, Lcom/htc/sunny/SGallery;->mSelectorRestDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_5

    .line 735
    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mSelectorRestDrawable:Landroid/graphics/drawable/Drawable;

    .line 739
    .local v1, backgroundRest:Landroid/graphics/drawable/Drawable;
    :goto_1
    if-eqz v1, :cond_1

    .line 740
    iget v8, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    iget v9, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    invoke-static {v1, v8, v9}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/drawable/Drawable;II)Lcom/htc/sunny/SBitmap;

    move-result-object v5

    .line 741
    .local v5, itemBackgroundBitmapRest:Lcom/htc/sunny/SBitmap;
    iget-object v8, p0, Lcom/htc/sunny/SGallery;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v8}, Lcom/htc/sunny/SunnyEngine;->createTexture()I

    move-result v8

    iput v8, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundRestTextureId:I

    .line 742
    iget-object v8, p0, Lcom/htc/sunny/SGallery;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v9, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundRestTextureId:I

    invoke-virtual {v5}, Lcom/htc/sunny/SBitmap;->getBmpId()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    .line 743
    invoke-virtual {v5}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 749
    .end local v0           #backgroundPress:Landroid/graphics/drawable/Drawable;
    .end local v1           #backgroundRest:Landroid/graphics/drawable/Drawable;
    .end local v5           #itemBackgroundBitmapRest:Lcom/htc/sunny/SBitmap;
    :cond_1
    iget-boolean v8, p0, Lcom/htc/sunny/SGallery;->mEnabledDivider:Z

    if-ne v11, v8, :cond_2

    iget-boolean v8, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v11, v8, :cond_2

    .line 750
    const/4 v2, 0x0

    .line 751
    .local v2, divider:Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/htc/sunny/SGallery;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x2080041

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 752
    iget v8, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    iput v8, p0, Lcom/htc/sunny/SGallery;->mDividerWidth:I

    .line 753
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    iput v8, p0, Lcom/htc/sunny/SGallery;->mDividerHeight:I

    .line 754
    iget v8, p0, Lcom/htc/sunny/SGallery;->mDividerWidth:I

    iget v9, p0, Lcom/htc/sunny/SGallery;->mDividerHeight:I

    invoke-static {v2, v8, v9}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/drawable/Drawable;II)Lcom/htc/sunny/SBitmap;

    move-result-object v3

    .line 756
    .local v3, dividerBmp:Lcom/htc/sunny/SBitmap;
    iget-object v8, p0, Lcom/htc/sunny/SGallery;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v8}, Lcom/htc/sunny/SunnyEngine;->createTexture()I

    move-result v8

    iput v8, p0, Lcom/htc/sunny/SGallery;->mDividerTextureId:I

    .line 757
    iget-object v8, p0, Lcom/htc/sunny/SGallery;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v9, p0, Lcom/htc/sunny/SGallery;->mDividerTextureId:I

    invoke-virtual {v3}, Lcom/htc/sunny/SBitmap;->getBmpId()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    .line 759
    invoke-virtual {v3}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 762
    .end local v2           #divider:Landroid/graphics/drawable/Drawable;
    .end local v3           #dividerBmp:Lcom/htc/sunny/SBitmap;
    :cond_2
    return-void

    .line 719
    :cond_3
    iget-object v8, p0, Lcom/htc/sunny/SGallery;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 720
    .local v6, res:Landroid/content/res/Resources;
    const-string v8, "list_selector_background_pressed"

    const-string v9, "drawable"

    const-string v10, "com.htc"

    invoke-virtual {v6, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 721
    .local v7, resId:I
    iget-object v8, p0, Lcom/htc/sunny/SGallery;->mContext:Landroid/content/Context;

    const-string v9, "list_selector_background_pressed"

    invoke-static {v8, v9, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 722
    if-nez v7, :cond_4

    const/4 v0, 0x0

    .restart local v0       #backgroundPress:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 723
    .end local v0           #backgroundPress:Landroid/graphics/drawable/Drawable;
    :cond_4
    iget-object v8, p0, Lcom/htc/sunny/SGallery;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #backgroundPress:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 737
    .end local v6           #res:Landroid/content/res/Resources;
    .end local v7           #resId:I
    :cond_5
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v8, 0x0

    invoke-direct {v1, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .restart local v1       #backgroundRest:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1
.end method

.method protected initScrollBar()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 535
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny/SGallery;->mEnableScrollBar:Z

    if-ne v3, v0, :cond_0

    .line 536
    new-instance v0, Lcom/htc/sunny/SScrollBarView;

    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/sunny/SGallery;->mSurfaceView:Lcom/htc/sunny/SSurfaceView;

    invoke-direct {v0, v1, v2}, Lcom/htc/sunny/SScrollBarView;-><init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V

    iput-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    .line 537
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->addView(Lcom/htc/sunny/SView;)V

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    if-eqz v0, :cond_1

    .line 541
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    iget-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SScrollBarView;->enableVerticalDisplay(Z)V

    .line 542
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    iget v1, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    iget v2, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SScrollBarView;->setScrollViewRange(I)V

    .line 543
    iget-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v3, v0, :cond_2

    .line 544
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SScrollBarView;->setScrolledViewBoundary(Landroid/graphics/Rect;)V

    .line 549
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->invalidate3DView()V

    .line 550
    return-void

    .line 546
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/htc/sunny/SGallery;->mViewWidth:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/htc/sunny/SGallery;->mViewWidth:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SScrollBarView;->setScrolledViewBoundary(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 1170
    new-instance v0, Lcom/htc/sunny/SGallery$11;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SGallery$11;-><init>(Lcom/htc/sunny/SGallery;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1175
    return-void
.end method

.method protected notifyDataSetChangedW()V
    .locals 5

    .prologue
    .line 1182
    iget-object v4, p0, Lcom/htc/sunny/SGallery;->mAdapter:Lcom/htc/sunny/SGalleryAdapter;

    if-nez v4, :cond_1

    .line 1197
    :cond_0
    return-void

    .line 1184
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    if-eqz v4, :cond_3

    .line 1185
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    .local v0, arr$:[Lcom/htc/sunny/SGallery$ItemContainer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 1186
    .local v1, container:Lcom/htc/sunny/SGallery$ItemContainer;
    if-nez v1, :cond_2

    .line 1185
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1187
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/htc/sunny/SGallery$ItemContainer;->setLayoutAnimation(Z)V

    goto :goto_1

    .line 1190
    .end local v0           #arr$:[Lcom/htc/sunny/SGallery$ItemContainer;
    .end local v1           #container:Lcom/htc/sunny/SGallery$ItemContainer;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_3
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->initContainers()V

    .line 1191
    iget-object v4, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    if-eqz v4, :cond_0

    .line 1192
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    .restart local v0       #arr$:[Lcom/htc/sunny/SGallery$ItemContainer;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_2
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 1193
    .restart local v1       #container:Lcom/htc/sunny/SGallery$ItemContainer;
    if-nez v1, :cond_4

    .line 1192
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1194
    :cond_4
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/htc/sunny/SGallery$ItemContainer;->setLayoutAnimation(Z)V

    goto :goto_3
.end method

.method protected notifyStateChange(I)V
    .locals 1
    .parameter "nState"

    .prologue
    .line 1602
    const/16 v0, 0x9

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-eqz v0, :cond_0

    .line 1603
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v0}, Lcom/htc/sunny/SunnyEngine;->logStatus()V

    .line 1605
    :cond_0
    iput p1, p0, Lcom/htc/sunny/SGallery;->mGalleryState:I

    .line 1606
    return-void
.end method

.method public notifyUpdateItem(I)V
    .locals 1
    .parameter "nPos"

    .prologue
    .line 1209
    new-instance v0, Lcom/htc/sunny/SGallery$12;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SGallery$12;-><init>(Lcom/htc/sunny/SGallery;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1214
    return-void
.end method

.method protected notifyUpdateItemW(I)V
    .locals 3
    .parameter "nPos"

    .prologue
    .line 1221
    invoke-virtual {p0, p1}, Lcom/htc/sunny/SGallery;->getContainerByDataIndex(I)Lcom/htc/sunny/SGallery$ItemContainer;

    move-result-object v0

    .line 1222
    .local v0, container:Lcom/htc/sunny/SGallery$ItemContainer;
    if-eqz v0, :cond_0

    .line 1224
    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v0}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v1

    if-ltz v1, :cond_1

    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v0}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v1

    iget v2, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    if-ge v1, v2, :cond_1

    .line 1225
    invoke-direct {p0, v0}, Lcom/htc/sunny/SGallery;->updateContainer(Lcom/htc/sunny/SGallery$ItemContainer;)V

    .line 1231
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->invalidate3DView()V

    .line 1232
    return-void

    .line 1227
    :cond_1
    const/4 v1, -0x1

    #setter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v0, v1}, Lcom/htc/sunny/SGallery$ItemContainer;->access$002(Lcom/htc/sunny/SGallery$ItemContainer;I)I

    goto :goto_0
.end method

.method protected onAnimationEnd()V
    .locals 2

    .prologue
    .line 1464
    const/4 v0, 0x5

    iget v1, p0, Lcom/htc/sunny/SGallery;->mGalleryState:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x7

    iget v1, p0, Lcom/htc/sunny/SGallery;->mGalleryState:I

    if-ne v0, v1, :cond_2

    .line 1465
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->onHomingAnimationEnd()V

    .line 1469
    :cond_1
    :goto_0
    return-void

    .line 1466
    :cond_2
    const/4 v0, 0x3

    iget v1, p0, Lcom/htc/sunny/SGallery;->mGalleryState:I

    if-ne v0, v1, :cond_1

    .line 1467
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->onFlingAnimationEnd()V

    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1678
    const-string v0, "3DGlideMode"

    const-string v3, "[SGallery] onDown()"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    iget-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsOverTopBoundary:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsBlockTop:Z

    .line 1681
    iget-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsOverBottomBoundary:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsBlockDown:Z

    .line 1683
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->hasAnimation()Z

    move-result v0

    if-ne v1, v0, :cond_0

    .line 1684
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->stopAnimation()V

    .line 1687
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    .line 1688
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->invalidate3DView()V

    .line 1690
    return v2

    :cond_1
    move v0, v2

    .line 1680
    goto :goto_0

    :cond_2
    move v0, v2

    .line 1681
    goto :goto_1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 1699
    const-string v0, "3DGlideMode"

    const-string v1, "[SGallery]  onFling()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v0, v1, :cond_0

    .line 1702
    float-to-int v0, p4

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->flingR(I)V

    .line 1706
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1704
    :cond_0
    float-to-int v0, p3

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->flingR(I)V

    goto :goto_0
.end method

.method protected onFlingAnimationEnd()V
    .locals 0

    .prologue
    .line 1477
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->stopAnimation()V

    .line 1478
    return-void
.end method

.method protected onHomingAnimationEnd()V
    .locals 1

    .prologue
    .line 1391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsTouchable:Z

    .line 1392
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->stopAnimation()V

    .line 1393
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1524
    invoke-super/range {p0 .. p5}, Lcom/htc/sunny/SAdapterView;->onLayout(ZIIII)V

    .line 1526
    sub-int v0, p4, p2

    iput v0, p0, Lcom/htc/sunny/SGallery;->mViewWidth:I

    .line 1527
    sub-int v0, p5, p3

    iput v0, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    .line 1528
    iget v0, p0, Lcom/htc/sunny/SGallery;->mViewWidth:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mWidth_H:I

    .line 1529
    iget v0, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mHeight_H:I

    .line 1530
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->initContainers()V

    .line 1532
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->invalidate3DView()V

    .line 1533
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 1716
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1725
    iget-boolean v3, p0, Lcom/htc/sunny/SGallery;->mIsPressed:Z

    if-nez v3, :cond_0

    .line 1742
    :goto_0
    return v1

    .line 1729
    :cond_0
    const/4 v3, -0x1

    iget v4, p0, Lcom/htc/sunny/SGallery;->mPressedContainerId:I

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    if-eqz v3, :cond_1

    .line 1730
    iget-object v3, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    iget v4, p0, Lcom/htc/sunny/SGallery;->mPressedContainerId:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v1}, Lcom/htc/sunny/SGallery$ItemContainer;->onFocusChanged(Z)V

    .line 1731
    iput v1, p0, Lcom/htc/sunny/SGallery;->mPressedContainerId:I

    .line 1734
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->hasAnimation()Z

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->stopAnimation()V

    .line 1736
    :cond_2
    float-to-int v3, p3

    float-to-int v4, p4

    invoke-virtual {p0, v3, v4}, Lcom/htc/sunny/SGallery;->scrollGallery(II)Z

    move-result v0

    .line 1737
    .local v0, bScrolled:Z
    if-ne v2, v0, :cond_3

    .line 1738
    iput-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsSingleTapUp:Z

    .line 1739
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->invalidate3DView()V

    :cond_3
    move v1, v2

    .line 1742
    goto :goto_0
.end method

.method protected onScrollAnimation()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1402
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    if-lt v0, v1, :cond_0

    .line 1403
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->onAnimationEnd()V

    .line 1457
    :goto_0
    return-void

    .line 1407
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v1, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->nInFrame:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->nInFrame:I

    .line 1408
    const/4 v7, 0x0

    .line 1409
    .local v7, nNextPos:I
    iget v8, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    .line 1410
    .local v8, nPrePos:I
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    if-ge v0, v1, :cond_4

    .line 1411
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->nInFrame:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->mStart:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->mTotal:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget-object v5, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->interpolate:Lcom/htc/sunny/SGallery$INTERPOLATE;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny/SGallery;->getInterpolateResult(FFFFLcom/htc/sunny/SGallery$INTERPOLATE;)F

    move-result v0

    float-to-int v7, v0

    .line 1416
    :cond_1
    :goto_1
    sub-int v6, v7, v8

    .line 1419
    .local v6, diff:I
    sget-object v0, Lcom/htc/sunny/SGallery$DIRECTION;->D_PREVIOUSE:Lcom/htc/sunny/SGallery$DIRECTION;

    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    if-ne v0, v1, :cond_7

    .line 1420
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->mEnd:I

    if-ge v0, v7, :cond_6

    .line 1421
    if-nez v6, :cond_5

    .line 1422
    add-int/lit8 v7, v7, -0x1

    .line 1430
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->mEnd:I

    if-gt v7, v0, :cond_3

    .line 1431
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v7, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->mEnd:I

    .line 1432
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    iput v1, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->nInFrame:I

    .line 1451
    :cond_3
    :goto_3
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v0, v1, :cond_b

    .line 1452
    iget v0, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    sub-int v0, v7, v0

    invoke-virtual {p0, v9, v0}, Lcom/htc/sunny/SGallery;->scrollGallery(II)Z

    goto :goto_0

    .line 1412
    .end local v6           #diff:I
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    if-ne v0, v1, :cond_1

    .line 1413
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v7, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->mEnd:I

    goto :goto_1

    .line 1423
    .restart local v6       #diff:I
    :cond_5
    if-lez v6, :cond_2

    .line 1424
    add-int/lit8 v7, v8, -0x1

    goto :goto_2

    .line 1427
    :cond_6
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v7, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->mEnd:I

    goto :goto_2

    .line 1435
    :cond_7
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->mEnd:I

    if-le v0, v7, :cond_a

    .line 1436
    if-nez v6, :cond_9

    .line 1437
    add-int/lit8 v7, v7, 0x1

    .line 1445
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->mEnd:I

    if-lt v7, v0, :cond_3

    .line 1446
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v7, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->mEnd:I

    .line 1447
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    iput v1, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->nInFrame:I

    goto :goto_3

    .line 1438
    :cond_9
    if-gez v6, :cond_8

    .line 1439
    add-int/lit8 v7, v8, 0x1

    goto :goto_4

    .line 1442
    :cond_a
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    iput v1, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->nInFrame:I

    goto :goto_4

    .line 1454
    :cond_b
    iget v0, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    sub-int v0, v7, v0

    invoke-virtual {p0, v0, v9}, Lcom/htc/sunny/SGallery;->scrollGallery(II)Z

    goto/16 :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .line 1852
    const-string v0, "3DGlideMode"

    const-string v1, "[SGallery] onShowPress()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    iget-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsTouchable:Z

    if-ne v2, v0, :cond_0

    .line 1855
    const/4 v0, -0x1

    iget v1, p0, Lcom/htc/sunny/SGallery;->mPressedContainerId:I

    if-eq v0, v1, :cond_0

    .line 1856
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    iget v1, p0, Lcom/htc/sunny/SGallery;->mPressedContainerId:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/htc/sunny/SGallery$ItemContainer;->onFocusChanged(Z)V

    .line 1859
    :cond_0
    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsSingleTapUp:Z

    .line 1860
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 1868
    const-string v0, "3DGlideMode"

    const-string v1, "[SGallery] onSingleTapUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    const/4 v0, 0x1

    return v0
.end method

.method public onUpR(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "e"

    .prologue
    const/4 v4, 0x1

    .line 1646
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->hasAnimation()Z

    move-result v2

    if-ne v4, v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v2, v2, Lcom/htc/sunny/SGallery$AnimationInfo;->type:I

    if-ne v4, v2, :cond_0

    .line 1650
    :cond_0
    iget-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsSingleTapUp:Z

    if-ne v4, v2, :cond_3

    .line 1651
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/htc/sunny/SGallery;->getContainerId(II)I

    move-result v0

    .line 1652
    .local v0, nContainerId:I
    const/4 v2, -0x1

    if-eq v2, v0, :cond_1

    iget-object v2, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    if-eqz v2, :cond_1

    .line 1653
    iget-object v2, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    aget-object v2, v2, v0

    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v2}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v1

    .line 1655
    .local v1, nPressItem:I
    iget-object v2, p0, Lcom/htc/sunny/SGallery;->mClickListener:Lcom/htc/sunny/SGallery$OnClickListener;

    if-eqz v2, :cond_1

    .line 1656
    iget-object v2, p0, Lcom/htc/sunny/SGallery;->mClickListener:Lcom/htc/sunny/SGallery$OnClickListener;

    invoke-interface {v2, v1}, Lcom/htc/sunny/SGallery$OnClickListener;->onClick(I)V

    .line 1659
    .end local v1           #nPressItem:I
    :cond_1
    invoke-virtual {p0, v4}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    .line 1669
    .end local v0           #nContainerId:I
    :cond_2
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsSingleTapUp:Z

    .line 1670
    return-void

    .line 1660
    :cond_3
    const/4 v2, 0x2

    iget v3, p0, Lcom/htc/sunny/SGallery;->mGalleryState:I

    if-ne v2, v3, :cond_4

    .line 1661
    invoke-virtual {p0, v4}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    .line 1662
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->homingR()V

    goto :goto_0

    .line 1663
    :cond_4
    iget v2, p0, Lcom/htc/sunny/SGallery;->mGalleryState:I

    if-nez v2, :cond_2

    .line 1664
    invoke-virtual {p0, v4}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    .line 1665
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->homingR()V

    goto :goto_0
.end method

.method public renderAndUpdate3D()V
    .locals 2

    .prologue
    .line 1613
    invoke-super {p0}, Lcom/htc/sunny/SAdapterView;->renderAndUpdate3D()V

    .line 1615
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->hasAnimation()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1616
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->type:I

    packed-switch v0, :pswitch_data_0

    .line 1629
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1622
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->onScrollAnimation()V

    .line 1623
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->invalidate3DView()V

    goto :goto_0

    .line 1616
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected resetUselessContainers()V
    .locals 6

    .prologue
    .line 876
    iget-object v5, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    if-nez v5, :cond_1

    .line 891
    :cond_0
    return-void

    .line 880
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    .local v0, arr$:[Lcom/htc/sunny/SGallery$ItemContainer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 881
    .local v1, container:Lcom/htc/sunny/SGallery$ItemContainer;
    if-nez v1, :cond_3

    .line 880
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 883
    :cond_3
    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v1}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v4

    .line 885
    .local v4, nIndex:I
    iget v5, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    if-gt v5, v4, :cond_4

    iget v5, p0, Lcom/htc/sunny/SGallery;->mEndDataIndex:I

    if-le v4, v5, :cond_2

    .line 886
    :cond_4
    const/4 v5, -0x1

    #setter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v1, v5}, Lcom/htc/sunny/SGallery$ItemContainer;->access$002(Lcom/htc/sunny/SGallery$ItemContainer;I)I

    .line 887
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/htc/sunny/SGallery$ItemContainer;->setValid(Z)V

    goto :goto_1
.end method

.method protected scrollGallery(II)Z
    .locals 5
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 1750
    const/4 v0, 0x0

    .line 1751
    .local v0, bScrolled:Z
    const/4 v1, 0x0

    .line 1752
    .local v1, nNewPosition:I
    iget-boolean v3, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v4, v3, :cond_6

    .line 1753
    if-nez p2, :cond_1

    .line 1788
    :cond_0
    :goto_0
    return v2

    .line 1755
    :cond_1
    iget v2, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    add-int v1, v2, p2

    .line 1756
    if-lez p2, :cond_5

    .line 1757
    sget-object v2, Lcom/htc/sunny/SGallery$DIRECTION;->D_NEXT:Lcom/htc/sunny/SGallery$DIRECTION;

    iput-object v2, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    .line 1772
    :goto_1
    iget-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsBlockTop:Z

    if-ne v4, v2, :cond_2

    .line 1773
    iget v2, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    if-ge v1, v2, :cond_2

    .line 1774
    iget v1, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    .line 1777
    :cond_2
    iget-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsBlockDown:Z

    if-ne v4, v2, :cond_3

    .line 1778
    iget v2, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    if-le v1, v2, :cond_3

    .line 1779
    iget v1, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    .line 1783
    :cond_3
    iget v2, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    if-eq v1, v2, :cond_4

    .line 1784
    invoke-virtual {p0, v1}, Lcom/htc/sunny/SGallery;->updateNewPosition(I)V

    .line 1785
    const/4 v0, 0x1

    :cond_4
    move v2, v0

    .line 1788
    goto :goto_0

    .line 1759
    :cond_5
    sget-object v2, Lcom/htc/sunny/SGallery$DIRECTION;->D_PREVIOUSE:Lcom/htc/sunny/SGallery$DIRECTION;

    iput-object v2, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    goto :goto_1

    .line 1762
    :cond_6
    if-eqz p1, :cond_0

    .line 1764
    iget v2, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    add-int v1, v2, p1

    .line 1765
    if-lez p1, :cond_7

    .line 1766
    sget-object v2, Lcom/htc/sunny/SGallery$DIRECTION;->D_NEXT:Lcom/htc/sunny/SGallery$DIRECTION;

    iput-object v2, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    goto :goto_1

    .line 1768
    :cond_7
    sget-object v2, Lcom/htc/sunny/SGallery$DIRECTION;->D_PREVIOUSE:Lcom/htc/sunny/SGallery$DIRECTION;

    iput-object v2, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    goto :goto_1
.end method

.method public setAdapter(Lcom/htc/sunny/SGalleryAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 1133
    new-instance v0, Lcom/htc/sunny/SGallery$10;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SGallery$10;-><init>(Lcom/htc/sunny/SGallery;Lcom/htc/sunny/SGalleryAdapter;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1138
    return-void
.end method

.method protected setAdapterW(Lcom/htc/sunny/SGalleryAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 1146
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->stopAnimation()V

    .line 1147
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAdapter:Lcom/htc/sunny/SGalleryAdapter;

    if-eqz v0, :cond_0

    .line 1148
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAdapter:Lcom/htc/sunny/SGalleryAdapter;

    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mDataSetObserver:Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SGalleryAdapter;->unregisterDataSetObserver(Lcom/htc/sunny/SDataSetObserver;)V

    .line 1150
    :cond_0
    iput-object p1, p0, Lcom/htc/sunny/SGallery;->mAdapter:Lcom/htc/sunny/SGalleryAdapter;

    .line 1151
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAdapter:Lcom/htc/sunny/SGalleryAdapter;

    if-eqz v0, :cond_1

    .line 1152
    new-instance v0, Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;-><init>(Lcom/htc/sunny/SAdapterView;)V

    iput-object v0, p0, Lcom/htc/sunny/SGallery;->mDataSetObserver:Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;

    .line 1153
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAdapter:Lcom/htc/sunny/SGalleryAdapter;

    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mDataSetObserver:Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SGalleryAdapter;->registerDataSetObserver(Lcom/htc/sunny/SDataSetObserver;)V

    .line 1156
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->initContainers()V

    .line 1158
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->invalidate3DView()V

    .line 1159
    return-void
.end method

.method public setClipSize(I)V
    .locals 1
    .parameter "nSize"

    .prologue
    .line 979
    new-instance v0, Lcom/htc/sunny/SGallery$5;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SGallery$5;-><init>(Lcom/htc/sunny/SGallery;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 989
    return-void
.end method

.method public setItemSize(II)V
    .locals 1
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1011
    new-instance v0, Lcom/htc/sunny/SGallery$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny/SGallery$7;-><init>(Lcom/htc/sunny/SGallery;II)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1020
    return-void
.end method

.method public setOnClickListener(Lcom/htc/sunny/SGallery$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1637
    iput-object p1, p0, Lcom/htc/sunny/SGallery;->mClickListener:Lcom/htc/sunny/SGallery$OnClickListener;

    .line 1638
    return-void
.end method

.method public setOnScrollListener(Lcom/htc/sunny/SGallery$OnScrollListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 527
    iput-object p1, p0, Lcom/htc/sunny/SGallery;->mScrollListener:Lcom/htc/sunny/SGallery$OnScrollListener;

    .line 528
    return-void
.end method

.method public setPadding(IIII)V
    .locals 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1092
    new-instance v0, Lcom/htc/sunny/SGallery$9;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny/SGallery$9;-><init>(Lcom/htc/sunny/SGallery;IIII)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1101
    return-void
.end method

.method public setSelector(II)V
    .locals 1
    .parameter "nPressResId"
    .parameter "nRestResId"

    .prologue
    .line 657
    new-instance v0, Lcom/htc/sunny/SGallery$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/htc/sunny/SGallery$1;-><init>(Lcom/htc/sunny/SGallery;II)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 668
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawablePress"
    .parameter "drawableRest"

    .prologue
    .line 698
    new-instance v0, Lcom/htc/sunny/SGallery$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny/SGallery$3;-><init>(Lcom/htc/sunny/SGallery;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 704
    return-void
.end method

.method public setSelectorRenderOrder(I)V
    .locals 1
    .parameter "nOrder"

    .prologue
    .line 680
    new-instance v0, Lcom/htc/sunny/SGallery$2;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SGallery$2;-><init>(Lcom/htc/sunny/SGallery;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 691
    return-void
.end method

.method public setSpacing(I)V
    .locals 1
    .parameter "spacing"

    .prologue
    .line 1073
    new-instance v0, Lcom/htc/sunny/SGallery$8;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SGallery$8;-><init>(Lcom/htc/sunny/SGallery;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1085
    return-void
.end method

.method public setVisibility(Z)V
    .locals 0
    .parameter "bVisible"

    .prologue
    .line 963
    invoke-super {p0, p1}, Lcom/htc/sunny/SAdapterView;->setVisibility(Z)V

    .line 964
    iput-boolean p1, p0, Lcom/htc/sunny/SGallery;->mGalleryVisibility:Z

    .line 965
    return-void
.end method

.method public stopAnimation()V
    .locals 3

    .prologue
    const/16 v2, 0x9

    .line 1943
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->hasAnimation()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1945
    const/4 v0, 0x3

    iget v1, p0, Lcom/htc/sunny/SGallery;->mGalleryState:I

    if-ne v0, v1, :cond_1

    .line 1946
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SGallery$AnimationInfo;->reset()V

    .line 1947
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    .line 1948
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    .line 1959
    :cond_0
    :goto_0
    return-void

    .line 1949
    :cond_1
    const/4 v0, 0x5

    iget v1, p0, Lcom/htc/sunny/SGallery;->mGalleryState:I

    if-ne v0, v1, :cond_2

    .line 1950
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SGallery$AnimationInfo;->reset()V

    .line 1951
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    .line 1952
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    goto :goto_0

    .line 1953
    :cond_2
    const/4 v0, 0x7

    iget v1, p0, Lcom/htc/sunny/SGallery;->mGalleryState:I

    if-ne v0, v1, :cond_0

    .line 1954
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SGallery$AnimationInfo;->reset()V

    .line 1955
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    .line 1956
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    goto :goto_0
.end method

.method protected updateAllContainerLayout()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 787
    iget-object v8, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    if-nez v8, :cond_1

    .line 812
    :cond_0
    return-void

    .line 789
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    .local v0, arr$:[Lcom/htc/sunny/SGallery$ItemContainer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 790
    .local v1, container:Lcom/htc/sunny/SGallery$ItemContainer;
    if-nez v1, :cond_2

    .line 789
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 792
    :cond_2
    const/4 v8, -0x1

    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v1}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v9

    if-eq v8, v9, :cond_4

    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v1}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v8

    if-ltz v8, :cond_4

    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v1}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v8

    iget v9, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    if-ge v8, v9, :cond_4

    .line 793
    iget-boolean v8, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v12, v8, :cond_3

    .line 794
    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v1}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v8

    iget v9, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    mul-int/2addr v8, v9

    iget v9, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    iget v10, p0, Lcom/htc/sunny/SGallery;->mSpacing:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    int-to-float v5, v8

    .line 795
    .local v5, n2DY:F
    invoke-virtual {p0, v5}, Lcom/htc/sunny/SGallery;->Get3DY(F)F

    move-result v7

    .line 796
    .local v7, n3DY:F
    invoke-virtual {v1, v11, v7, v11}, Lcom/htc/sunny/SGallery$ItemContainer;->setPosition(FFF)V

    .line 803
    .end local v5           #n2DY:F
    .end local v7           #n3DY:F
    :goto_2
    invoke-virtual {v1, v12}, Lcom/htc/sunny/SGallery$ItemContainer;->setVisibility(Z)V

    goto :goto_1

    .line 798
    :cond_3
    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v1}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v8

    iget v9, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    mul-int/2addr v8, v9

    iget v9, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    iget v10, p0, Lcom/htc/sunny/SGallery;->mSpacing:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    int-to-float v4, v8

    .line 799
    .local v4, n2DX:F
    invoke-virtual {p0, v4}, Lcom/htc/sunny/SGallery;->Get3DX(F)F

    move-result v6

    .line 800
    .local v6, n3DX:F
    invoke-virtual {v1, v6, v11, v11}, Lcom/htc/sunny/SGallery$ItemContainer;->setPosition(FFF)V

    goto :goto_2

    .line 806
    .end local v4           #n2DX:F
    .end local v6           #n3DX:F
    :cond_4
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/htc/sunny/SGallery$ItemContainer;->setVisibility(Z)V

    goto :goto_1
.end method

.method protected updateAllContainersData()V
    .locals 0

    .prologue
    .line 819
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->resetUselessContainers()V

    .line 820
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->addNewContainers()V

    .line 821
    return-void
.end method

.method protected updateNewPosition(I)V
    .locals 4
    .parameter "nPosition"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1796
    iput p1, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    .line 1798
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    if-eqz v0, :cond_0

    .line 1799
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    iget v1, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SScrollBarView;->setCurrentViewPosition(I)V

    .line 1802
    :cond_0
    iget v0, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    if-lt v0, v1, :cond_4

    .line 1803
    iput-boolean v3, p0, Lcom/htc/sunny/SGallery;->mIsOverTopBoundary:Z

    .line 1808
    :goto_0
    iget v0, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    if-lt v0, v1, :cond_5

    .line 1809
    iput-boolean v3, p0, Lcom/htc/sunny/SGallery;->mIsOverBottomBoundary:Z

    .line 1814
    :goto_1
    iget-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v3, v0, :cond_6

    .line 1815
    iget v0, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    .line 1816
    iget v0, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    if-gez v0, :cond_1

    .line 1817
    iput v2, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    .line 1819
    :cond_1
    iget v0, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mEndDataIndex:I

    .line 1820
    iget v0, p0, Lcom/htc/sunny/SGallery;->mEndDataIndex:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    if-lt v0, v1, :cond_2

    .line 1821
    iget v0, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mEndDataIndex:I

    .line 1833
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollListener:Lcom/htc/sunny/SGallery$OnScrollListener;

    if-eqz v0, :cond_3

    .line 1835
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollListener:Lcom/htc/sunny/SGallery$OnScrollListener;

    if-eqz v0, :cond_3

    .line 1836
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollListener:Lcom/htc/sunny/SGallery$OnScrollListener;

    iget v1, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    iget v2, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    iget v3, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/htc/sunny/SGallery$OnScrollListener;->onScroll(Lcom/htc/sunny/SGallery;III)V

    .line 1841
    :cond_3
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->updateAllContainersData()V

    .line 1842
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->updateAllContainerLayout()V

    .line 1844
    return-void

    .line 1805
    :cond_4
    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsOverTopBoundary:Z

    goto :goto_0

    .line 1811
    :cond_5
    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsOverBottomBoundary:Z

    goto :goto_1

    .line 1823
    :cond_6
    iget v0, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    .line 1824
    iget v0, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    if-gez v0, :cond_7

    .line 1825
    iput v2, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    .line 1827
    :cond_7
    iget v0, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mEndDataIndex:I

    .line 1828
    iget v0, p0, Lcom/htc/sunny/SGallery;->mEndDataIndex:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    if-lt v0, v1, :cond_2

    .line 1829
    iget v0, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mEndDataIndex:I

    goto :goto_2
.end method

.method protected updateViewLayout()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x1

    .line 1028
    invoke-super {p0}, Lcom/htc/sunny/SAdapterView;->updateViewLayout()V

    .line 1030
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_1

    .line 1066
    :cond_0
    :goto_0
    return-void

    .line 1032
    :cond_1
    const/4 v9, 0x0

    .line 1033
    .local v9, nOffset:I
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny/SAnimationController;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny/SAnimationController;->isFillAfter()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny/SAnimationController;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1034
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny/SAnimationController;->isPositionAnimation()Z

    move-result v0

    if-ne v11, v0, :cond_3

    .line 1035
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny/SAnimationController;->getCurrentPosition()Lcom/htc/sunny/Vector3F;

    move-result-object v10

    .line 1036
    .local v10, v:Lcom/htc/sunny/Vector3F;
    iget-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v11, v0, :cond_5

    .line 1037
    iget v0, v10, Lcom/htc/sunny/Vector3F;->mY:F

    float-to-int v9, v0

    .line 1051
    .end local v10           #v:Lcom/htc/sunny/Vector3F;
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/htc/sunny/SGallery;->mEnabledClip:Z

    if-ne v11, v0, :cond_4

    .line 1052
    iget-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v11, v0, :cond_8

    .line 1053
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SGallery;->mViewNodeId:I

    iget v3, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    sub-int/2addr v3, v9

    iget v4, p0, Lcom/htc/sunny/SGallery;->mViewWidth:I

    iget v5, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    iget v6, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny/SunnyEngine;->setClipArea(IIIII)V

    .line 1059
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    if-eqz v0, :cond_0

    .line 1060
    iget-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v11, v0, :cond_9

    .line 1061
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SScrollBarView;->setScrolledViewBoundary(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1039
    .restart local v10       #v:Lcom/htc/sunny/Vector3F;
    :cond_5
    iget v0, v10, Lcom/htc/sunny/Vector3F;->mX:F

    float-to-int v9, v0

    goto :goto_1

    .line 1043
    .end local v10           #v:Lcom/htc/sunny/Vector3F;
    :cond_6
    iget-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v11, v0, :cond_7

    .line 1044
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v0, v0, Lcom/htc/sunny/Vector3F;->mY:F

    float-to-int v9, v0

    .line 1048
    :goto_3
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SGallery;->mViewNodeId:I

    iget-object v3, p0, Lcom/htc/sunny/SGallery;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v3, v3, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v4, p0, Lcom/htc/sunny/SGallery;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v4, v4, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v5, p0, Lcom/htc/sunny/SGallery;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v5, v5, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setNodePosition(IFFF)V

    goto :goto_1

    .line 1046
    :cond_7
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v0, v0, Lcom/htc/sunny/Vector3F;->mX:F

    float-to-int v9, v0

    goto :goto_3

    .line 1055
    :cond_8
    iget-object v3, p0, Lcom/htc/sunny/SGallery;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v4, p0, Lcom/htc/sunny/SGallery;->mViewNodeId:I

    iget v0, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    add-int v5, v0, v9

    iget v0, p0, Lcom/htc/sunny/SGallery;->mViewWidth:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v7, v0, v1

    iget v8, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    move v6, v2

    invoke-virtual/range {v3 .. v8}, Lcom/htc/sunny/SunnyEngine;->setClipArea(IIIII)V

    goto :goto_2

    .line 1063
    :cond_9
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/htc/sunny/SGallery;->mViewWidth:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/htc/sunny/SGallery;->mViewWidth:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SScrollBarView;->setScrolledViewBoundary(Landroid/graphics/Rect;)V

    goto/16 :goto_0
.end method
