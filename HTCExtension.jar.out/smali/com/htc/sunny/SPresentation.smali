.class public Lcom/htc/sunny/SPresentation;
.super Lcom/htc/sunny/SAdapterView;
.source "SPresentation.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny/SPresentation$18;,
        Lcom/htc/sunny/SPresentation$ContainerHitFeedback;,
        Lcom/htc/sunny/SPresentation$FakeAnimationControl;,
        Lcom/htc/sunny/SPresentation$AnimationInfo;,
        Lcom/htc/sunny/SPresentation$OnItemLongClickListener;,
        Lcom/htc/sunny/SPresentation$PresentationListener;,
        Lcom/htc/sunny/SPresentation$INTERPOLATE;,
        Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;,
        Lcom/htc/sunny/SPresentation$DIRECTION;,
        Lcom/htc/sunny/SPresentation$ItemContainer;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field protected static final ANIMATION_FLING:I = 0x1

.field protected static final ANIMATION_HOMING:I = 0x3

.field protected static final ANIMATION_ROTATE_SELF:I = 0x4

.field protected static final ANIMATION_SCROLL:I = 0x2

.field protected static final ANIMATION_UNKNOW:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "3DGlideMode"

.field public static final STATE_BOUNCING:I = 0x7

.field public static final STATE_BOUNCING_END:I = 0x8

.field public static final STATE_FLING:I = 0x3

.field public static final STATE_FLING_END:I = 0x4

.field public static final STATE_HOMING:I = 0x5

.field public static final STATE_HOMING_END:I = 0x6

.field public static final STATE_IDLE:I = 0x12

.field public static final STATE_MOUSE_DOWN:I = 0x0

.field public static final STATE_MOUSE_PAN:I = 0x2

.field public static final STATE_MOUSE_UP:I = 0x1

.field public static final STATE_ROTATE_SELF:I = 0xb

.field public static final STATE_ROTATE_SELF_END:I = 0xc

.field public static final STATE_SCROLL:I = 0x9

.field public static final STATE_SCROLL_END:I = 0xa

.field public static final STATE_UNKNOW:I = -0x1


# instance fields
.field protected DURATION_BOUNCING:I

.field protected DURATION_FLING:I

.field protected DURATION_HOMING:I

.field protected DURATION_ROTATE_SELF:I

.field protected DURATION_SCROLL_NEXT:I

.field protected DURATION_SCROLL_PREVIOUS:I

.field protected DURATION_SCROLL_TO:I

.field protected TIMESLOT_INTERVAL:I

.field protected TIMESLOT_INTERVAL_HALF:I

.field protected mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

.field protected mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

.field protected mBlockScroll:Z

.field protected mClipSizeB:I

.field protected mClipSizeL:I

.field protected mClipSizeR:I

.field protected mClipSizeT:I

.field protected mContainerCount:I

.field protected mContainerHitFeedback:Lcom/htc/sunny/SPresentation$ContainerHitFeedback;

.field protected mDataCount:I

.field protected mDataUpdated:Z

.field protected mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

.field protected mDisplacement:F

.field protected mEnableHitFeedback:Z

.field protected mEnableTouchEvent:Z

.field protected mEnabledAnimation:Z

.field protected mEnabledLargeSensorArea:Z

.field protected mEnabledOpeningAnimation:Z

.field protected mEnabledReflection:Z

.field protected mEnlargeSensorRatioH:F

.field protected mEnlargeSensorRatioW:F

.field protected mEventListener:Lcom/htc/sunny/SPresentation$PresentationListener;

.field protected mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

.field protected mFakeNextUpdateIndex:I

.field protected mFocusPosV:Lcom/htc/sunny/Vector3F;

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field protected mGradualBmp:I

.field protected mGradualBmpResId:I

.field protected mGradualNode:I

.field protected mGradualPosX:I

.field protected mGradualPosY:I

.field protected mGradualSpirte:I

.field protected mGradualTexture:I

.field protected mGradualTranslation:Lcom/htc/sunny/Vector3F;

.field protected mGradualVisible:Z

.field private mHashCode:I

.field protected mHitFeedbackRatio:F

.field protected mIsBouncingState:Z

.field protected mIsFirstRender:Z

.field private mIsPressed:Z

.field protected mIsSingleTapUp:Z

.field protected mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

.field protected mItemLongClickListener:Lcom/htc/sunny/SPresentation$OnItemLongClickListener;

.field protected mItemScrollRatio:F

.field protected mOldSelectedPos:I

.field protected mOpeningAnimationStart:Z

.field protected mPerformOpeningAnimation:Z

.field protected mPosX:I

.field protected mPosY:I

.field protected mPresentationState:I

.field protected mPressContainerId:I

.field protected mPressStartSelectedPos:I

.field protected mReflectionColorB:I

.field protected mReflectionColorG:I

.field protected mReflectionColorR:I

.field protected mReflectionGap:I

.field protected mReflectionHeight:I

.field protected mReorderItem:I

.field protected mReorderRegion:I

.field protected mResIdShadow:I

.field protected mRotateClockwise:Z

.field protected mSelectedPos:I

.field protected mShadowH:I

.field protected mShadowTexture:I

.field protected mShadowW:I

.field protected mShiftOneItem:Z

.field protected mTimeSlot:I

.field protected mViewHeight:I

.field protected mViewHeight_H:I

.field protected mViewWidth:I

.field protected mViewWidth_H:I

.field protected mVisibleContainerCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V
    .locals 6
    .parameter "context"
    .parameter "surfaceView"

    .prologue
    const/16 v5, 0x26

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 755
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny/SAdapterView;-><init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V

    .line 321
    iput-object v3, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    .line 326
    iput-object v3, p0, Lcom/htc/sunny/SPresentation;->mEventListener:Lcom/htc/sunny/SPresentation$PresentationListener;

    .line 331
    iput-object v3, p0, Lcom/htc/sunny/SPresentation;->mItemLongClickListener:Lcom/htc/sunny/SPresentation$OnItemLongClickListener;

    .line 336
    iput-object v3, p0, Lcom/htc/sunny/SPresentation;->mGestureDetector:Landroid/view/GestureDetector;

    .line 341
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    .line 346
    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mPerformOpeningAnimation:Z

    .line 351
    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mOpeningAnimationStart:Z

    .line 358
    const/16 v0, 0xfa

    iput v0, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    .line 363
    iget v0, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL_HALF:I

    .line 368
    const/16 v0, 0x28

    iput v0, p0, Lcom/htc/sunny/SPresentation;->DURATION_SCROLL_TO:I

    .line 373
    const/16 v0, 0x1e

    iput v0, p0, Lcom/htc/sunny/SPresentation;->DURATION_SCROLL_NEXT:I

    .line 378
    iget v0, p0, Lcom/htc/sunny/SPresentation;->DURATION_SCROLL_NEXT:I

    iput v0, p0, Lcom/htc/sunny/SPresentation;->DURATION_SCROLL_PREVIOUS:I

    .line 383
    const/16 v0, 0x28

    iput v0, p0, Lcom/htc/sunny/SPresentation;->DURATION_BOUNCING:I

    .line 388
    const/16 v0, 0x28

    iput v0, p0, Lcom/htc/sunny/SPresentation;->DURATION_HOMING:I

    .line 393
    const/16 v0, 0x8c

    iput v0, p0, Lcom/htc/sunny/SPresentation;->DURATION_FLING:I

    .line 398
    const/16 v0, 0x32

    iput v0, p0, Lcom/htc/sunny/SPresentation;->DURATION_ROTATE_SELF:I

    .line 505
    new-instance v0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;-><init>(Lcom/htc/sunny/SPresentation;)V

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    .line 510
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mFakeNextUpdateIndex:I

    .line 515
    new-instance v0, Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SPresentation$AnimationInfo;-><init>(Lcom/htc/sunny/SPresentation;)V

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    .line 520
    iput-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mRotateClockwise:Z

    .line 526
    new-instance v0, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;-><init>(Lcom/htc/sunny/SPresentation;)V

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mContainerHitFeedback:Lcom/htc/sunny/SPresentation$ContainerHitFeedback;

    .line 531
    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mDataUpdated:Z

    .line 537
    iput v4, p0, Lcom/htc/sunny/SPresentation;->mPressStartSelectedPos:I

    .line 542
    iput v4, p0, Lcom/htc/sunny/SPresentation;->mPressContainerId:I

    .line 547
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mDisplacement:F

    .line 550
    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mIsPressed:Z

    .line 555
    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mIsSingleTapUp:Z

    .line 560
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    .line 565
    iput v4, p0, Lcom/htc/sunny/SPresentation;->mOldSelectedPos:I

    .line 570
    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    .line 575
    iput-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mEnabledAnimation:Z

    .line 580
    iput-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mEnableTouchEvent:Z

    .line 585
    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mIsFirstRender:Z

    .line 591
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mReorderRegion:I

    .line 596
    iput v4, p0, Lcom/htc/sunny/SPresentation;->mReorderItem:I

    .line 602
    iput-object v3, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    .line 607
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    .line 612
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    .line 617
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mVisibleContainerCount:I

    .line 623
    iput v4, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    .line 628
    sget-object v0, Lcom/htc/sunny/SPresentation$DIRECTION;->D_UNKNOWN:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    .line 631
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mViewWidth:I

    iput v2, p0, Lcom/htc/sunny/SPresentation;->mViewHeight:I

    .line 632
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mViewWidth_H:I

    iput v2, p0, Lcom/htc/sunny/SPresentation;->mViewHeight_H:I

    .line 637
    iput-object v3, p0, Lcom/htc/sunny/SPresentation;->mFocusPosV:Lcom/htc/sunny/Vector3F;

    .line 643
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mGradualNode:I

    .line 648
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mGradualSpirte:I

    .line 653
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mGradualTexture:I

    .line 658
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    .line 663
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mGradualBmpResId:I

    .line 664
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mGradualPosX:I

    iput v2, p0, Lcom/htc/sunny/SPresentation;->mGradualPosY:I

    .line 669
    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mGradualTranslation:Lcom/htc/sunny/Vector3F;

    .line 674
    iput-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mGradualVisible:Z

    .line 679
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mShadowTexture:I

    .line 681
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mHashCode:I

    .line 684
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mClipSizeL:I

    iput v2, p0, Lcom/htc/sunny/SPresentation;->mClipSizeT:I

    iput v2, p0, Lcom/htc/sunny/SPresentation;->mClipSizeR:I

    iput v2, p0, Lcom/htc/sunny/SPresentation;->mClipSizeB:I

    .line 689
    iput-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mEnabledOpeningAnimation:Z

    .line 694
    iput-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mEnabledReflection:Z

    .line 699
    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mEnabledLargeSensorArea:Z

    .line 704
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mReflectionHeight:I

    .line 705
    iput v5, p0, Lcom/htc/sunny/SPresentation;->mReflectionColorR:I

    iput v5, p0, Lcom/htc/sunny/SPresentation;->mReflectionColorG:I

    iput v5, p0, Lcom/htc/sunny/SPresentation;->mReflectionColorB:I

    .line 710
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mReflectionGap:I

    .line 715
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mResIdShadow:I

    .line 716
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mShadowH:I

    .line 722
    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mShiftOneItem:Z

    .line 727
    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mBlockScroll:Z

    .line 732
    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mEnableHitFeedback:Z

    .line 737
    const v0, 0x3f733333

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mHitFeedbackRatio:F

    .line 742
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mEnlargeSensorRatioH:F

    .line 747
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mEnlargeSensorRatioW:F

    .line 752
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mItemScrollRatio:F

    .line 756
    invoke-super {p0, v1}, Lcom/htc/sunny/SAdapterView;->enableMaskNode(Z)V

    .line 758
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mGestureDetector:Landroid/view/GestureDetector;

    .line 759
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 760
    return-void
.end method

.method private getSpriteIndex(I)I
    .locals 1
    .parameter "nTag"

    .prologue
    const/4 v0, -0x1

    .line 1180
    if-gt p1, v0, :cond_0

    .line 1181
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mHashCode:I

    sub-int v0, p1, v0

    goto :goto_0
.end method

.method private getSpriteTag(I)I
    .locals 1
    .parameter "nSpriteIndex"

    .prologue
    .line 1176
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mHashCode:I

    add-int/2addr v0, p1

    return v0
.end method

.method protected static nextPowerOf2(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 1248
    add-int/lit8 p0, p0, -0x1

    .line 1249
    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 1250
    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 1251
    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 1252
    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 1253
    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 1254
    add-int/lit8 v0, p0, 0x1

    return v0
.end method


# virtual methods
.method protected Get2DY(I)I
    .locals 1
    .parameter "n3DY"

    .prologue
    .line 3497
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mViewHeight_H:I

    sub-int/2addr v0, p1

    return v0
.end method

.method protected Get3DX(I)I
    .locals 1
    .parameter "n2DX"

    .prologue
    .line 3513
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mViewWidth_H:I

    sub-int v0, p1, v0

    return v0
.end method

.method protected Get3DY(I)I
    .locals 1
    .parameter "n2DY"

    .prologue
    .line 3505
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mViewHeight_H:I

    sub-int v0, p1, v0

    return v0
.end method

.method protected clear3DView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 767
    invoke-virtual {p0, v1}, Lcom/htc/sunny/SPresentation;->enableAnimation(Z)V

    .line 768
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->destroyAllResource()V

    .line 769
    iput v1, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    .line 770
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    .line 771
    iput v1, p0, Lcom/htc/sunny/SPresentation;->mVisibleContainerCount:I

    .line 772
    return-void
.end method

.method protected createGradualMask(III)V
    .locals 12
    .parameter "nPosX"
    .parameter "nPosY"
    .parameter "nBitmapResId"

    .prologue
    .line 1262
    if-nez p3, :cond_1

    .line 1309
    :cond_0
    :goto_0
    return-void

    .line 1264
    :cond_1
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1265
    .local v11, opts:Landroid/graphics/BitmapFactory$Options;
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v11, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1266
    iget-object v0, p0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p3, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1267
    .local v7, bmpGradual:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_0

    .line 1268
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 1269
    .local v8, nBmpWidth:I
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1271
    .local v4, nBmpHeight:I
    if-lez v8, :cond_2

    if-gtz v4, :cond_3

    .line 1272
    :cond_2
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 1273
    const/4 v7, 0x0

    .line 1274
    goto :goto_0

    .line 1277
    :cond_3
    invoke-static {v8}, Lcom/htc/sunny/SPresentation;->nextPowerOf2(I)I

    move-result v10

    .line 1278
    .local v10, nMaxWidth:I
    invoke-static {v4}, Lcom/htc/sunny/SPresentation;->nextPowerOf2(I)I

    move-result v9

    .line 1280
    .local v9, nMaxHeight:I
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    if-eqz v0, :cond_4

    .line 1281
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    invoke-static {v0}, Lcom/htc/sunny/SunnyEngine;->destroyBitmap(I)V

    .line 1282
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    .line 1285
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v1}, Lcom/htc/sunny/SunnyEngine;->getGlobalRootNode()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny/SunnyEngine;->createNode(IZ)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mGradualNode:I

    .line 1289
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mGradualNode:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny/SunnyEngine;->createSprite(II)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mGradualSpirte:I

    .line 1290
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mGradualSpirte:I

    const/4 v2, 0x0

    add-int/lit8 v3, v8, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/sunny/SunnyEngine;->setupSpriteGeometry(IIIIII)V

    .line 1291
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v0}, Lcom/htc/sunny/SunnyEngine;->createTexture()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mGradualTexture:I

    .line 1292
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mGradualSpirte:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mGradualTexture:I

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/htc/sunny/SunnyEngine;->setTexturetoSprite(IIII)Z

    .line 1294
    const/4 v0, 0x0

    invoke-static {v7, v10, v9, v0}, Lcom/htc/sunny/SunnyEngine;->createAlphaBitmap(Landroid/graphics/Bitmap;III)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    .line 1295
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    if-eqz v0, :cond_5

    .line 1296
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mGradualTexture:I

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    .line 1297
    :cond_5
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mGradualNode:I

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny/SunnyEngine;->setNodeOrder(II)V

    .line 1298
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mGradualNode:I

    int-to-float v2, p1

    int-to-float v3, p2

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/htc/sunny/SunnyEngine;->setNodePosition(IFFF)V

    .line 1299
    iput p1, p0, Lcom/htc/sunny/SPresentation;->mGradualPosX:I

    .line 1300
    iput p2, p0, Lcom/htc/sunny/SPresentation;->mGradualPosY:I

    .line 1302
    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mGradualVisible:Z

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->setGradualVisibility(Z)V

    .line 1303
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mGradualNode:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/htc/sunny/SunnyEngine;->setNodeRotate(IFFF)V

    .line 1306
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 1307
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method protected createResource()V
    .locals 1

    .prologue
    .line 2856
    invoke-super {p0}, Lcom/htc/sunny/SAdapterView;->createResource()V

    .line 2857
    iget-boolean v0, p0, Lcom/htc/sunny/SView;->mIsSurfaceBinded:Z

    if-nez v0, :cond_0

    .line 2859
    :goto_0
    return-void

    .line 2858
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->initContainers()V

    goto :goto_0
.end method

.method protected destroyAllResource()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1189
    iget-object v4, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v4, :cond_0

    .line 1213
    :goto_0
    return-void

    .line 1191
    :cond_0
    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    if-eqz v4, :cond_2

    .line 1192
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    .local v0, arr$:[Lcom/htc/sunny/SPresentation$ItemContainer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 1193
    .local v1, container:Lcom/htc/sunny/SPresentation$ItemContainer;
    if-nez v1, :cond_1

    .line 1192
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1194
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageTexture:I

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SunnyEngine;->destroyTexture(I)V

    .line 1195
    iget-object v4, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mTouchSprite:I

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SunnyEngine;->destroySprite(I)V

    .line 1196
    iget-object v4, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageSprite:I

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SunnyEngine;->destroySprite(I)V

    .line 1197
    iget-object v4, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mReflectSprite:I

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SunnyEngine;->destroySprite(I)V

    .line 1198
    iget-object v4, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mParentNode:I

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SunnyEngine;->destroyNode(I)V

    .line 1199
    invoke-virtual {p0, v1}, Lcom/htc/sunny/SPresentation;->removeView(Lcom/htc/sunny/SView;)V

    goto :goto_2

    .line 1203
    .end local v0           #arr$:[Lcom/htc/sunny/SPresentation$ItemContainer;
    .end local v1           #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_2
    iget-object v4, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mShadowTexture:I

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SunnyEngine;->destroyTexture(I)V

    .line 1204
    iput v6, p0, Lcom/htc/sunny/SPresentation;->mShadowTexture:I

    .line 1205
    iget-object v4, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mGradualTexture:I

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SunnyEngine;->destroyTexture(I)V

    .line 1206
    iput v6, p0, Lcom/htc/sunny/SPresentation;->mGradualTexture:I

    .line 1207
    iget-object v4, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mGradualSpirte:I

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SunnyEngine;->destroySprite(I)V

    .line 1208
    iput v6, p0, Lcom/htc/sunny/SPresentation;->mGradualSpirte:I

    .line 1209
    iget-object v4, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mGradualNode:I

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SunnyEngine;->destroyNode(I)V

    .line 1210
    iput v6, p0, Lcom/htc/sunny/SPresentation;->mGradualNode:I

    .line 1211
    iget v4, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    invoke-static {v4}, Lcom/htc/sunny/SunnyEngine;->destroyBitmap(I)V

    .line 1212
    iput v6, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2887
    invoke-super {p0, p1}, Lcom/htc/sunny/SAdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 2889
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 2890
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledTouchEvent()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2891
    :cond_0
    const-string v0, "3DGlideMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SPresentation] fake: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-virtual {v2}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->isFakeAnimation()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " touch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledTouchEvent()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2914
    :cond_1
    :goto_0
    return-void

    .line 2895
    :cond_2
    const/4 v0, -0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/sunny/SPresentation;->getContainerId(II)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny/SPresentation;->mPressContainerId:I

    if-eq v0, v1, :cond_3

    .line 2896
    iput-boolean v4, p0, Lcom/htc/sunny/SPresentation;->mIsPressed:Z

    .line 2897
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny/SPresentation;->getContainerId(II)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mPressContainerId:I

    .line 2898
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mPressStartSelectedPos:I

    .line 2899
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mPressContainerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SPresentation;->Get3DX(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny/SPresentation;->getDisplacementToContainer(IF)F

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mDisplacement:F

    .line 2903
    :cond_3
    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mIsPressed:Z

    if-eqz v0, :cond_1

    .line 2907
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2909
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v4, v0, :cond_1

    .line 2910
    invoke-virtual {p0, p1}, Lcom/htc/sunny/SPresentation;->onUpW(Landroid/view/MotionEvent;)V

    .line 2911
    iput-boolean v3, p0, Lcom/htc/sunny/SPresentation;->mIsPressed:Z

    .line 2912
    iput-boolean v3, p0, Lcom/htc/sunny/SPresentation;->mBlockScroll:Z

    goto :goto_0
.end method

.method protected enableAnimation(Z)V
    .locals 0
    .parameter "bEnalbed"

    .prologue
    .line 3177
    iput-boolean p1, p0, Lcom/htc/sunny/SPresentation;->mEnabledAnimation:Z

    .line 3178
    return-void
.end method

.method public enableHitFeedback(Z)V
    .locals 0
    .parameter "enableHitFeedback"

    .prologue
    .line 3190
    iput-boolean p1, p0, Lcom/htc/sunny/SPresentation;->mEnableHitFeedback:Z

    .line 3191
    return-void
.end method

.method public enabledLayoutAnimateIn(Z)V
    .locals 0
    .parameter "bEnabled"

    .prologue
    .line 1082
    iput-boolean p1, p0, Lcom/htc/sunny/SPresentation;->mEnabledOpeningAnimation:Z

    .line 1083
    return-void
.end method

.method public enabledReflection(Z)V
    .locals 0
    .parameter "bEnabled"

    .prologue
    .line 1168
    iput-boolean p1, p0, Lcom/htc/sunny/SPresentation;->mEnabledReflection:Z

    .line 1169
    return-void
.end method

.method public enabledTouchEvent(Z)V
    .locals 0
    .parameter "bEnabled"

    .prologue
    .line 3221
    iput-boolean p1, p0, Lcom/htc/sunny/SPresentation;->mEnableTouchEvent:Z

    .line 3222
    return-void
.end method

.method public enlargeSensorArea(F)V
    .locals 0
    .parameter "ratio"

    .prologue
    .line 1141
    iput p1, p0, Lcom/htc/sunny/SPresentation;->mEnlargeSensorRatioH:F

    .line 1142
    return-void
.end method

.method public enlargeSensorAreaWidth(F)V
    .locals 0
    .parameter "ratio"

    .prologue
    .line 1155
    iput p1, p0, Lcom/htc/sunny/SPresentation;->mEnlargeSensorRatioW:F

    .line 1156
    return-void
.end method

.method public fling(I)V
    .locals 1
    .parameter "nVelocity"

    .prologue
    .line 2138
    new-instance v0, Lcom/htc/sunny/SPresentation$14;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SPresentation$14;-><init>(Lcom/htc/sunny/SPresentation;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 2143
    return-void
.end method

.method protected flingW(I)V
    .locals 11
    .parameter "nVelocity"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 2151
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v6

    if-nez v6, :cond_0

    .line 2152
    const/16 v6, 0x12

    invoke-virtual {p0, v6}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 2259
    :goto_0
    return-void

    .line 2156
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->stopAnimation()V

    .line 2158
    iget-boolean v6, p0, Lcom/htc/sunny/SPresentation;->mShiftOneItem:Z

    if-eq v9, v6, :cond_1

    iget-boolean v6, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    if-ne v9, v6, :cond_2

    .line 2159
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->homing()V

    goto :goto_0

    .line 2163
    :cond_2
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v6}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    .line 2164
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 2165
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v9, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    .line 2167
    iget-object v6, p0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    .line 2168
    .local v1, VELOCITY_MIN:I
    const/16 v0, 0xbb8

    .line 2169
    .local v0, VELOCITY_MAX:I
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v6, v6, -0x2

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2170
    .local v2, nMaxPosOffset:I
    int-to-float v6, v2

    sub-int v7, v0, v1

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int/2addr v7, v1

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v4, v6

    .line 2171
    .local v4, nPosOffset:I
    move v3, v4

    .line 2173
    .local v3, nOrgPosOffset:I
    if-lez p1, :cond_b

    .line 2174
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gtz v6, :cond_3

    .line 2175
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onAnimationEnd()V

    goto :goto_0

    .line 2177
    :cond_3
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    sub-int/2addr v6, v4

    if-gtz v6, :cond_9

    .line 2178
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v6, :cond_8

    .line 2179
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    add-int/lit8 v4, v6, -0x1

    .line 2209
    :cond_4
    :goto_1
    iget v6, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    mul-int v5, v6, v4

    .line 2212
    .local v5, nTimeSlotOffset:I
    if-lez p1, :cond_12

    .line 2213
    sget-object v6, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v6, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    .line 2214
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v6, :cond_10

    .line 2215
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    sub-int/2addr v7, v8

    add-int/2addr v7, v5

    iput v7, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 2233
    :goto_2
    iget-boolean v6, p0, Lcom/htc/sunny/SPresentation;->mShiftOneItem:Z

    if-ne v9, v6, :cond_15

    .line 2234
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny/SPresentation;->DURATION_SCROLL_NEXT:I

    iput v7, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 2240
    :goto_3
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gtz v6, :cond_16

    sget-object v6, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iget-object v7, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v6, v7, :cond_16

    .line 2241
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v10, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 2245
    :cond_5
    :goto_4
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget-object v7, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v7, v7, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    iget-object v8, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v8, v8, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-virtual {p0, v7, v8}, Lcom/htc/sunny/SPresentation;->getRefineDuration(II)I

    move-result v7

    iput v7, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 2247
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v6, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-gtz v6, :cond_6

    .line 2248
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    const/4 v7, 0x0

    iput v7, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 2250
    :cond_6
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v6, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-lez v6, :cond_7

    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v6, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    if-nez v6, :cond_17

    .line 2251
    :cond_7
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onAnimationEnd()V

    goto/16 :goto_0

    .line 2181
    .end local v5           #nTimeSlotOffset:I
    :cond_8
    iget v4, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    goto :goto_1

    .line 2183
    :cond_9
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    sub-int/2addr v7, v4

    if-gt v6, v7, :cond_4

    .line 2184
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-gez v6, :cond_a

    .line 2185
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v7, v7, -0x1

    sub-int v4, v6, v7

    goto :goto_1

    .line 2187
    :cond_a
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v7, v7, -0x1

    sub-int v4, v6, v7

    goto :goto_1

    .line 2191
    :cond_b
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gt v6, v7, :cond_c

    .line 2192
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onAnimationEnd()V

    goto/16 :goto_0

    .line 2194
    :cond_c
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    add-int/2addr v7, v4

    if-gt v6, v7, :cond_e

    .line 2195
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-gez v6, :cond_d

    .line 2196
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    sub-int/2addr v6, v7

    add-int/lit8 v4, v6, -0x1

    goto/16 :goto_1

    .line 2198
    :cond_d
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    sub-int v4, v6, v7

    goto/16 :goto_1

    .line 2200
    :cond_e
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    add-int/2addr v6, v4

    if-gtz v6, :cond_4

    .line 2201
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v6, :cond_f

    .line 2202
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v4

    goto/16 :goto_1

    .line 2204
    :cond_f
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    goto/16 :goto_1

    .line 2216
    .restart local v5       #nTimeSlotOffset:I
    :cond_10
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-gez v6, :cond_11

    .line 2217
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v7, v5

    iput v7, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_2

    .line 2219
    :cond_11
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v5, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_2

    .line 2222
    :cond_12
    sget-object v6, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v6, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    .line 2223
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v6, :cond_13

    .line 2224
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    add-int/2addr v7, v5

    iput v7, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_2

    .line 2225
    :cond_13
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-gez v6, :cond_14

    .line 2226
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    sub-int/2addr v7, v8

    add-int/2addr v7, v5

    iput v7, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_2

    .line 2228
    :cond_14
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v5, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_2

    .line 2236
    :cond_15
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny/SPresentation;->DURATION_FLING:I

    iput v7, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    goto/16 :goto_3

    .line 2242
    :cond_16
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gt v6, v7, :cond_5

    sget-object v6, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iget-object v7, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v6, v7, :cond_5

    .line 2243
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v10, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    goto/16 :goto_4

    .line 2255
    :cond_17
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget-object v7, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v7, v7, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    iget-object v8, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v8, v8, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 2256
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    sget-object v7, Lcom/htc/sunny/SPresentation$INTERPOLATE;->EASEOUT_CUBIC:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    iput-object v7, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    .line 2258
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    goto/16 :goto_0
.end method

.method protected freeResource()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2868
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->stopAnimation()V

    .line 2870
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    if-eqz v0, :cond_0

    .line 2871
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    invoke-static {v0}, Lcom/htc/sunny/SunnyEngine;->destroyBitmap(I)V

    .line 2872
    iput v1, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    .line 2875
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->destroyAllResource()V

    .line 2876
    iput v1, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    .line 2877
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    .line 2878
    invoke-super {p0}, Lcom/htc/sunny/SAdapterView;->freeResource()V

    .line 2879
    return-void
.end method

.method public getAnimationDirection()Lcom/htc/sunny/SPresentation$DIRECTION;
    .locals 1

    .prologue
    .line 1563
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    return-object v0
.end method

.method protected getContainerByDataIndex(I)Lcom/htc/sunny/SPresentation$ItemContainer;
    .locals 6
    .parameter "nDataIndex"

    .prologue
    const/4 v4, 0x0

    .line 2659
    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    if-nez v5, :cond_0

    move-object v1, v4

    .line 2668
    :goto_0
    return-object v1

    .line 2661
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    .local v0, arr$:[Lcom/htc/sunny/SPresentation$ItemContainer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 2662
    .local v1, container:Lcom/htc/sunny/SPresentation$ItemContainer;
    if-nez v1, :cond_2

    .line 2661
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2664
    :cond_2
    iget v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    if-ne p1, v5, :cond_1

    goto :goto_0

    .end local v1           #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    :cond_3
    move-object v1, v4

    .line 2668
    goto :goto_0
.end method

.method protected getContainerByLayoutPos(I)Lcom/htc/sunny/SPresentation$ItemContainer;
    .locals 6
    .parameter "nUIPos"

    .prologue
    const/4 v4, 0x0

    .line 2642
    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    if-nez v5, :cond_0

    move-object v1, v4

    .line 2651
    :goto_0
    return-object v1

    .line 2644
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    .local v0, arr$:[Lcom/htc/sunny/SPresentation$ItemContainer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 2645
    .local v1, container:Lcom/htc/sunny/SPresentation$ItemContainer;
    if-nez v1, :cond_2

    .line 2644
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2647
    :cond_2
    iget v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    if-ne p1, v5, :cond_1

    goto :goto_0

    .end local v1           #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    :cond_3
    move-object v1, v4

    .line 2651
    goto :goto_0
.end method

.method protected getContainerId(II)I
    .locals 4
    .parameter "n2DX"
    .parameter "n2DY"

    .prologue
    const/4 v2, -0x1

    .line 3478
    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v3, :cond_1

    move v1, v2

    .line 3489
    :cond_0
    :goto_0
    return v1

    .line 3480
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v3, p1, p2}, Lcom/htc/sunny/SunnyEngine;->getHitSprite(II)I

    move-result v0

    .line 3481
    .local v0, nSpriteId:I
    if-ne v2, v0, :cond_2

    move v1, v2

    .line 3482
    goto :goto_0

    .line 3485
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v3, v0, v2}, Lcom/htc/sunny/SunnyEngine;->getTag(II)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/htc/sunny/SPresentation;->getSpriteIndex(I)I

    move-result v1

    .line 3486
    .local v1, nSpriteIndex:I
    if-ltz v1, :cond_3

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-lt v1, v3, :cond_0

    :cond_3
    move v1, v2

    .line 3489
    goto :goto_0
.end method

.method public getContainerView(I)Lcom/htc/sunny/SView;
    .locals 1
    .parameter "nUIPos"

    .prologue
    .line 1069
    invoke-virtual {p0, p1}, Lcom/htc/sunny/SPresentation;->getContainerByLayoutPos(I)Lcom/htc/sunny/SPresentation$ItemContainer;

    move-result-object v0

    return-object v0
.end method

.method protected getDisplacementToContainer(IF)F
    .locals 3
    .parameter "ContainerId"
    .parameter "n3DX"

    .prologue
    .line 3455
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 3458
    :goto_0
    return v1

    .line 3457
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mTouchSprite:I

    invoke-virtual {v1, v2}, Lcom/htc/sunny/SunnyEngine;->getSpritePosition(I)Lcom/htc/sunny/Vector3F;

    move-result-object v0

    .line 3458
    .local v0, pos3DV:Lcom/htc/sunny/Vector3F;
    iget v1, v0, Lcom/htc/sunny/Vector3F;->mX:F

    sub-float v1, p2, v1

    goto :goto_0
.end method

.method protected getInterpolateResult(FFFFLcom/htc/sunny/SPresentation$INTERPOLATE;)F
    .locals 11
    .parameter "current"
    .parameter "start"
    .parameter "total"
    .parameter "duration"
    .parameter "interpolate"

    .prologue
    .line 2799
    const/4 v3, 0x0

    .line 2800
    .local v3, nRes:F
    const/4 v6, 0x0

    .local v6, ts:F
    const/4 v5, 0x0

    .line 2801
    .local v5, tc:F
    move v4, p1

    .line 2802
    .local v4, t:F
    move v0, p2

    .line 2803
    .local v0, b:F
    move v1, p3

    .line 2804
    .local v1, c:F
    move v2, p4

    .line 2806
    .local v2, d:F
    sget-object v7, Lcom/htc/sunny/SPresentation$18;->$SwitchMap$com$htc$sunny$SPresentation$INTERPOLATE:[I

    invoke-virtual/range {p5 .. p5}, Lcom/htc/sunny/SPresentation$INTERPOLATE;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 2829
    :goto_0
    return v3

    .line 2808
    :pswitch_0
    div-float v7, v1, v2

    mul-float/2addr v7, v4

    add-float v3, v7, v0

    .line 2809
    goto :goto_0

    .line 2811
    :pswitch_1
    div-float/2addr v4, v2

    .line 2812
    mul-float v6, v4, v4

    .line 2813
    mul-float v5, v6, v4

    .line 2814
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

    .line 2815
    goto :goto_0

    .line 2824
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

    .line 2825
    goto :goto_0

    .line 2806
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getPressPosition(IF)F
    .locals 3
    .parameter "pressedContainerId"
    .parameter "dispalcement"

    .prologue
    .line 3466
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 3470
    :goto_0
    return v1

    .line 3468
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mTouchSprite:I

    invoke-virtual {v1, v2}, Lcom/htc/sunny/SunnyEngine;->getSpritePosition(I)Lcom/htc/sunny/Vector3F;

    move-result-object v0

    .line 3470
    .local v0, pos3DV:Lcom/htc/sunny/Vector3F;
    iget v1, v0, Lcom/htc/sunny/Vector3F;->mX:F

    add-float/2addr v1, p2

    goto :goto_0
.end method

.method protected getRefineDuration(II)I
    .locals 0
    .parameter "nDuration"
    .parameter "nTotalTimeSlot"

    .prologue
    .line 2619
    if-gtz p1, :cond_0

    .line 2620
    const/4 p1, 0x2

    .line 2634
    .end local p1
    :cond_0
    return p1
.end method

.method public getSelection()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1588
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gez v1, :cond_1

    .line 1596
    :cond_0
    :goto_0
    return v0

    .line 1590
    :cond_1
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-lt v1, v2, :cond_2

    .line 1591
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-gez v1, :cond_0

    .line 1593
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1596
    :cond_2
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 1575
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    return v0
.end method

.method protected getTimeSlotOffsetX(IF)I
    .locals 8
    .parameter "nBaseUIPos"
    .parameter "nOffsetX"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 3366
    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    if-nez v4, :cond_1

    move v0, v3

    .line 3447
    :cond_0
    :goto_0
    return v0

    .line 3368
    :cond_1
    if-ltz p1, :cond_2

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-lt p1, v4, :cond_3

    :cond_2
    move v0, v3

    .line 3369
    goto :goto_0

    .line 3373
    :cond_3
    const/4 v0, 0x0

    .line 3374
    .local v0, nTimeSlotOffset:I
    iget v4, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v4, :cond_b

    .line 3376
    if-ltz p1, :cond_4

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v4, v4, -0x1

    if-le p1, v4, :cond_5

    :cond_4
    move v0, v3

    .line 3377
    goto :goto_0

    .line 3378
    :cond_5
    iget v4, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_8

    .line 3379
    cmpg-float v4, p2, v5

    if-gez v4, :cond_7

    .line 3380
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    invoke-virtual {v3, p1}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v3, v3, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v4, v4, Lcom/htc/sunny/Vector3F;->mX:F

    sub-float v2, v3, v4

    .line 3381
    .local v2, nXInterval:F
    iget v3, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    div-float/2addr v3, v2

    float-to-int v0, v3

    .line 3424
    .end local v2           #nXInterval:F
    :cond_6
    :goto_1
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v3, v3, -0x2

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3425
    .local v1, nVisibleItems:I
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mPressStartSelectedPos:I

    if-lez v3, :cond_13

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mPressStartSelectedPos:I

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_13

    .line 3426
    if-lez v0, :cond_12

    .line 3427
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mPressStartSelectedPos:I

    if-gt v3, v4, :cond_0

    .line 3428
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v4, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .end local v1           #nVisibleItems:I
    :cond_7
    move v0, v3

    .line 3383
    goto :goto_0

    .line 3385
    :cond_8
    if-nez p1, :cond_a

    .line 3386
    cmpl-float v4, p2, v5

    if-lez v4, :cond_9

    .line 3387
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v3, v3, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    invoke-virtual {v4, p1}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v4, v4, Lcom/htc/sunny/Vector3F;->mX:F

    sub-float v2, v3, v4

    .line 3388
    .restart local v2       #nXInterval:F
    iget v3, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    div-float/2addr v3, v2

    float-to-int v0, v3

    .line 3389
    goto :goto_1

    .line 3390
    .end local v2           #nXInterval:F
    :cond_9
    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v4, v4, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    invoke-virtual {v5, p1}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v5, v5, Lcom/htc/sunny/Vector3F;->mX:F

    sub-float v2, v4, v5

    .line 3391
    .restart local v2       #nXInterval:F
    iget v4, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v4, v4

    mul-float/2addr v4, p2

    div-float/2addr v4, v2

    float-to-int v0, v4

    .line 3392
    iget v4, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    add-int/2addr v4, v0

    if-gtz v4, :cond_6

    move v0, v3

    .line 3393
    goto/16 :goto_0

    .line 3397
    .end local v2           #nXInterval:F
    :cond_a
    iget v3, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v4, v4, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    invoke-virtual {v5, p1}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v5, v5, Lcom/htc/sunny/Vector3F;->mX:F

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    float-to-int v0, v3

    goto/16 :goto_1

    .line 3401
    :cond_b
    if-ltz p1, :cond_c

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v4, v4, -0x1

    if-le p1, v4, :cond_d

    :cond_c
    move v0, v3

    .line 3402
    goto/16 :goto_0

    .line 3403
    :cond_d
    iget v4, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_f

    .line 3404
    cmpg-float v4, p2, v5

    if-gez v4, :cond_e

    .line 3405
    iget v3, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    invoke-virtual {v4, p1}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v4, v4, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    add-int/lit8 v6, p1, -0x1

    invoke-virtual {v5, v6}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v5, v5, Lcom/htc/sunny/Vector3F;->mX:F

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    float-to-int v0, v3

    goto/16 :goto_1

    .line 3407
    :cond_e
    iget v4, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v4, v4

    mul-float/2addr v4, p2

    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    invoke-virtual {v5, p1}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v5, v5, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    add-int/lit8 v7, p1, -0x1

    invoke-virtual {v6, v7}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v6

    iget-object v6, v6, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v6, v6, Lcom/htc/sunny/Vector3F;->mX:F

    sub-float/2addr v5, v6

    div-float/2addr v4, v5

    float-to-int v0, v4

    .line 3408
    iget v4, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    add-int/2addr v4, v0

    if-ltz v4, :cond_6

    move v0, v3

    .line 3409
    goto/16 :goto_0

    .line 3412
    :cond_f
    if-nez p1, :cond_11

    .line 3413
    cmpl-float v4, p2, v5

    if-lez v4, :cond_10

    .line 3414
    iget v3, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v4, v4, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    invoke-virtual {v5, p1}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v5, v5, Lcom/htc/sunny/Vector3F;->mX:F

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    float-to-int v0, v3

    goto/16 :goto_1

    :cond_10
    move v0, v3

    .line 3416
    goto/16 :goto_0

    .line 3419
    :cond_11
    iget v3, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    invoke-virtual {v4, p1}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v4, v4, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    add-int/lit8 v6, p1, -0x1

    invoke-virtual {v5, v6}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v5, v5, Lcom/htc/sunny/Vector3F;->mX:F

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    float-to-int v0, v3

    goto/16 :goto_1

    .line 3430
    .restart local v1       #nVisibleItems:I
    :cond_12
    if-gez v0, :cond_0

    .line 3431
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mPressStartSelectedPos:I

    if-lt v3, v4, :cond_0

    .line 3432
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    neg-int v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto/16 :goto_0

    .line 3436
    :cond_13
    add-int/lit8 v3, v1, 0x1

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-ge v3, v4, :cond_14

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mPressStartSelectedPos:I

    if-nez v3, :cond_14

    if-gez v0, :cond_14

    .line 3437
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v4, v4, -0x2

    if-lt v3, v4, :cond_0

    .line 3438
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    neg-int v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto/16 :goto_0

    .line 3441
    :cond_14
    add-int/lit8 v3, v1, 0x1

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-ge v3, v4, :cond_0

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mPressStartSelectedPos:I

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_0

    if-lez v0, :cond_0

    .line 3442
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    const/4 v4, 0x1

    if-gt v3, v4, :cond_0

    .line 3443
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v4, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto/16 :goto_0
.end method

.method public hasAnimation()Z
    .locals 2

    .prologue
    .line 3521
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    if-eqz v0, :cond_0

    .line 3522
    const/4 v0, 0x1

    .line 3524
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected homing()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1786
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-gtz v1, :cond_0

    .line 1787
    invoke-virtual {p0, v6}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 1788
    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 1792
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v1}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    .line 1794
    iget-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    if-nez v1, :cond_10

    .line 1795
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    sget-object v2, Lcom/htc/sunny/SPresentation$INTERPOLATE;->EASEINOUT_CUBIC:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    iput-object v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    .line 1796
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-nez v1, :cond_4

    .line 1797
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v7, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1886
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 1887
    .local v0, nDuration:I
    iget-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    if-ne v6, v1, :cond_18

    .line 1888
    iget v0, p0, Lcom/htc/sunny/SPresentation;->DURATION_BOUNCING:I

    .line 1893
    :goto_1
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny/SPresentation;->getRefineDuration(II)I

    move-result v0

    .line 1895
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-gtz v1, :cond_2

    .line 1896
    const/4 v0, 0x0

    .line 1899
    :cond_2
    iget-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    if-ne v6, v1, :cond_19

    .line 1900
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 1905
    :goto_2
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    const/4 v2, 0x3

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    .line 1906
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-lez v1, :cond_3

    if-gtz v0, :cond_1a

    .line 1907
    :cond_3
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onAnimationEnd()V

    .line 1918
    :goto_3
    return-void

    .line 1798
    .end local v0           #nDuration:I
    :cond_4
    const/4 v1, 0x4

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v1, v2, :cond_8

    .line 1800
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v1, v2, :cond_6

    .line 1801
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_5

    .line 1802
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_0

    .line 1804
    :cond_5
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_0

    .line 1807
    :cond_6
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v1, v2, :cond_1

    .line 1808
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_7

    .line 1809
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_0

    .line 1811
    :cond_7
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_0

    .line 1814
    :cond_8
    iget-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mShiftOneItem:Z

    if-ne v6, v1, :cond_c

    .line 1815
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v1, v2, :cond_a

    .line 1816
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_9

    .line 1817
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    .line 1819
    :cond_9
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    .line 1822
    :cond_a
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v1, v2, :cond_1

    .line 1823
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_b

    .line 1824
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    .line 1826
    :cond_b
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    .line 1831
    :cond_c
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL_HALF:I

    if-gt v1, v2, :cond_e

    .line 1832
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_d

    .line 1833
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    .line 1837
    :goto_4
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    .line 1835
    :cond_d
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    goto :goto_4

    .line 1839
    :cond_e
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_f

    .line 1840
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    .line 1844
    :goto_5
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    .line 1842
    :cond_f
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    goto :goto_5

    .line 1849
    :cond_10
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    sget-object v2, Lcom/htc/sunny/SPresentation$INTERPOLATE;->EASEOUT_CUBIC:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    iput-object v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    .line 1850
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-nez v1, :cond_12

    .line 1851
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-ltz v1, :cond_11

    .line 1852
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1853
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    goto/16 :goto_0

    .line 1855
    :cond_11
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    neg-int v2, v2

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1856
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    goto/16 :goto_0

    .line 1858
    :cond_12
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gez v1, :cond_14

    .line 1859
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-ltz v1, :cond_13

    .line 1860
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    iget v3, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1864
    :goto_6
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-eqz v1, :cond_1

    .line 1865
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    goto/16 :goto_0

    .line 1862
    :cond_13
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_6

    .line 1867
    :cond_14
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-ne v1, v2, :cond_15

    .line 1868
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1869
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-eqz v1, :cond_1

    .line 1870
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    goto/16 :goto_0

    .line 1872
    :cond_15
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-ge v1, v2, :cond_17

    .line 1873
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_16

    .line 1874
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    sub-int/2addr v4, v5

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1878
    :goto_7
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-eqz v1, :cond_1

    .line 1879
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    goto/16 :goto_0

    .line 1876
    :cond_16
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_7

    .line 1882
    :cond_17
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v7, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    .line 1890
    .restart local v0       #nDuration:I
    :cond_18
    iget v0, p0, Lcom/htc/sunny/SPresentation;->DURATION_HOMING:I

    goto/16 :goto_1

    .line 1902
    :cond_19
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    goto/16 :goto_2

    .line 1911
    :cond_1a
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v0, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 1912
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    sget-object v2, Lcom/htc/sunny/SPresentation$INTERPOLATE;->EASEOUT_CUBIC:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    iput-object v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    .line 1914
    iget-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    if-ne v6, v1, :cond_1b

    .line 1915
    invoke-virtual {p0, v7}, Lcom/htc/sunny/SPresentation;->enableAnimation(Z)V

    .line 1917
    :cond_1b
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    goto/16 :goto_3
.end method

.method protected initContainers()V
    .locals 1

    .prologue
    .line 779
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->initContainers(Z)V

    .line 780
    return-void
.end method

.method protected initContainers(Z)V
    .locals 17
    .parameter "bForceUpdated"

    .prologue
    .line 783
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v1, :cond_1

    .line 933
    :cond_0
    :goto_0
    return-void

    .line 784
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    if-nez v1, :cond_2

    .line 785
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny/SPresentation;->clear3DView()V

    .line 786
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    goto :goto_0

    .line 790
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    invoke-virtual {v1}, Lcom/htc/sunny/SPresentationAdapterBase;->getItemCount()I

    move-result v13

    .line 791
    .local v13, nDataCount:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    invoke-virtual {v1}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerCount()I

    move-result v10

    .line 792
    .local v10, containerCount:I
    if-eqz v13, :cond_3

    if-nez v10, :cond_4

    .line 793
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny/SPresentation;->clear3DView()V

    .line 794
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    goto :goto_0

    .line 800
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SView;->mViewNodeId:I

    if-nez v1, :cond_6

    .line 801
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny/SPresentation;->clear3DView()V

    .line 804
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-eq v13, v1, :cond_0

    .line 805
    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    .line 806
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-lt v1, v2, :cond_5

    .line 807
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    .line 809
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gez v1, :cond_0

    .line 810
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    goto :goto_0

    .line 816
    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-ne v10, v1, :cond_7

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-ne v13, v1, :cond_7

    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v1, v0, :cond_13

    .line 817
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny/SPresentation;->stopAnimation()V

    .line 818
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny/SPresentation;->destroyAllResource()V

    .line 819
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    .line 821
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-eq v13, v1, :cond_9

    .line 822
    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    .line 823
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-lt v1, v2, :cond_8

    .line 824
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    .line 826
    :cond_8
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gez v1, :cond_9

    .line 827
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    .line 831
    :cond_9
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-eq v10, v1, :cond_a

    .line 832
    move-object/from16 v0, p0

    iput v10, v0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    .line 834
    :cond_a
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mVisibleContainerCount:I

    .line 835
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    new-array v1, v1, [Lcom/htc/sunny/SPresentation$ItemContainer;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    .line 836
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/sunny/SPresentation;->mDataUpdated:Z

    .line 839
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mResIdShadow:I

    if-eqz v1, :cond_b

    .line 840
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v1}, Lcom/htc/sunny/SunnyEngine;->createTexture()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mShadowTexture:I

    .line 841
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny/SPresentation;->mResIdShadow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 842
    .local v12, mShadowDrawable:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mShadowW:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny/SPresentation;->mShadowH:I

    invoke-static {v12, v1, v2}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/drawable/Drawable;II)Lcom/htc/sunny/SBitmap;

    move-result-object v8

    .line 843
    .local v8, bmp:Lcom/htc/sunny/SBitmap;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny/SPresentation;->mShadowTexture:I

    invoke-virtual {v8}, Lcom/htc/sunny/SBitmap;->getBmpId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    .line 844
    invoke-virtual {v8}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 849
    .end local v8           #bmp:Lcom/htc/sunny/SBitmap;
    .end local v12           #mShadowDrawable:Landroid/graphics/drawable/Drawable;
    :cond_b
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-ge v11, v1, :cond_12

    .line 850
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    new-instance v9, Lcom/htc/sunny/SPresentation$ItemContainer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny/SView;->mSurfaceView:Lcom/htc/sunny/SSurfaceView;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v2, v3}, Lcom/htc/sunny/SPresentation$ItemContainer;-><init>(Lcom/htc/sunny/SPresentation;Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V

    aput-object v9, v1, v11

    .line 851
    .local v9, container:Lcom/htc/sunny/SPresentation$ItemContainer;
    iput v11, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mID:I

    .line 852
    iput v11, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    .line 854
    iget-object v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    iget v3, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    invoke-virtual {v2, v3}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/sunny/SPresentationContainerLayout;->setLayout(Lcom/htc/sunny/SPresentationContainerLayout;)V

    .line 855
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/sunny/SPresentation;->addView(Lcom/htc/sunny/SView;)V

    .line 857
    iget-object v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget v0, v1, Lcom/htc/sunny/SPresentationContainerLayout;->mWidth:I

    move/from16 v16, v0

    .line 858
    .local v16, nWidth:I
    iget-object v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget v15, v1, Lcom/htc/sunny/SPresentationContainerLayout;->mHeight:I

    .line 860
    .local v15, nHeight:I
    invoke-virtual {v9}, Lcom/htc/sunny/SPresentation$ItemContainer;->getViewNodeId()I

    move-result v1

    iput v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mParentNode:I

    .line 861
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v1}, Lcom/htc/sunny/SunnyEngine;->createTexture()I

    move-result v1

    iput v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageTexture:I

    .line 863
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mParentNode:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->createSprite(II)I

    move-result v1

    iput v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageSprite:I

    .line 864
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mParentNode:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->createSprite(II)I

    move-result v1

    iput v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mTouchSprite:I

    .line 865
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mTouchSprite:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    .line 866
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mTouchSprite:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->setSpriteTouchable(IZ)V

    .line 867
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mTouchSprite:I

    const/4 v3, 0x0

    move/from16 v0, v16

    int-to-float v4, v0

    const/high16 v5, 0x3f80

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny/SPresentation;->mEnlargeSensorRatioW:F

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v5, v15

    const/high16 v6, 0x3f80

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunny/SPresentation;->mEnlargeSensorRatioH:F

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const/4 v6, 0x0

    neg-int v7, v15

    div-int/lit8 v7, v7, 0x2

    invoke-virtual/range {v1 .. v7}, Lcom/htc/sunny/SunnyEngine;->setupSpriteGeometry(IIIIII)V

    .line 869
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageSprite:I

    const/4 v3, 0x0

    const/4 v6, 0x0

    neg-int v4, v15

    div-int/lit8 v7, v4, 0x2

    move/from16 v4, v16

    move v5, v15

    invoke-virtual/range {v1 .. v7}, Lcom/htc/sunny/SunnyEngine;->setupSpriteGeometry(IIIIII)V

    .line 870
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageSprite:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageTexture:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setTexturetoSprite(IIII)Z

    .line 872
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny/SPresentation;->mEnabledReflection:Z

    if-ne v1, v2, :cond_d

    .line 873
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mParentNode:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->createSprite(II)I

    move-result v1

    iput v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mReflectSprite:I

    .line 874
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mReflectionHeight:I

    if-nez v1, :cond_c

    .line 875
    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/sunny/SPresentation;->mReflectionHeight:I

    .line 877
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mReflectSprite:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny/SPresentation;->mReflectionHeight:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny/SPresentation;->mReflectionHeight:I

    neg-int v4, v4

    div-int/lit8 v7, v4, 0x2

    move/from16 v4, v16

    invoke-virtual/range {v1 .. v7}, Lcom/htc/sunny/SunnyEngine;->setupSpriteGeometry(IIIIII)V

    .line 878
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mReflectSprite:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny/SPresentation;->mReflectionHeight:I

    sub-int v4, v15, v4

    int-to-float v4, v4

    int-to-float v5, v15

    div-float/2addr v4, v5

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunny/SunnyEngine;->setTextureCoordinates(IFFFF)V

    .line 879
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mReflectSprite:I

    const/high16 v3, 0x4334

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setNodeRotate(IFFF)V

    .line 881
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mReflectSprite:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageTexture:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setTexturetoSprite(IIII)Z

    .line 882
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mReflectSprite:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny/SPresentation;->mReflectionColorR:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny/SPresentation;->mReflectionColorG:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny/SPresentation;->mReflectionColorB:I

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunny/SunnyEngine;->setSpriteAsShadow(IIIII)Z

    .line 884
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageSprite:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny/SPresentation;->mReflectionGap:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setNodePosition(IFFF)V

    .line 885
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mTouchSprite:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny/SPresentation;->mReflectionGap:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setNodePosition(IFFF)V

    .line 886
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mReflectSprite:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny/SPresentation;->mReflectionGap:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny/SPresentation;->mReflectionGap:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    neg-int v4, v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setNodePosition(IFFF)V

    .line 890
    :cond_d
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mResIdShadow:I

    if-eqz v1, :cond_e

    .line 891
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mParentNode:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->createSprite(II)I

    move-result v1

    iput v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mShadowSprite:I

    .line 892
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mShadowSprite:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny/SPresentation;->mShadowW:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny/SPresentation;->mShadowH:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/htc/sunny/SunnyEngine;->setupSpriteGeometry(IIIIII)V

    .line 893
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mShadowSprite:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny/SPresentation;->mShadowTexture:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setTexturetoSprite(IIII)Z

    .line 894
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mShadowSprite:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny/SPresentation;->mPosX:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny/SPresentation;->mPosY:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setNodePosition(IFFF)V

    .line 897
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mTouchSprite:I

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/htc/sunny/SPresentation;->getSpriteTag(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->setTag(II)V

    .line 899
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v11, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    add-int v14, v1, v2

    .line 900
    .local v14, nDataIndex:I
    if-ltz v14, :cond_10

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-ge v14, v1, :cond_10

    .line 901
    iput v14, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    .line 902
    const/4 v1, 0x0

    iput-boolean v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    .line 908
    :goto_2
    iget-object v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget-boolean v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    if-nez v1, :cond_f

    iget-boolean v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mSkipItem:Z

    if-eqz v1, :cond_11

    :cond_f
    const/4 v1, 0x1

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v2, v1}, Lcom/htc/sunny/SPresentation;->updateContainerLayout(Lcom/htc/sunny/SPresentation$ItemContainer;Lcom/htc/sunny/SPresentationContainerLayout;Z)V

    .line 849
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 904
    :cond_10
    const/4 v1, -0x1

    iput v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    .line 905
    const/4 v1, 0x1

    iput-boolean v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    goto :goto_2

    .line 908
    :cond_11
    const/4 v1, 0x0

    goto :goto_3

    .line 911
    .end local v9           #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    .end local v14           #nDataIndex:I
    .end local v15           #nHeight:I
    .end local v16           #nWidth:I
    :cond_12
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-lez v1, :cond_13

    .line 912
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SPresentation;->mGradualTranslation:Lcom/htc/sunny/Vector3F;

    iget v1, v1, Lcom/htc/sunny/Vector3F;->mX:F

    float-to-int v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny/SPresentation;->mGradualTranslation:Lcom/htc/sunny/Vector3F;

    iget v2, v2, Lcom/htc/sunny/Vector3F;->mY:F

    float-to-int v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny/SPresentation;->mGradualBmpResId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny/SPresentation;->createGradualMask(III)V

    .line 916
    .end local v11           #i:I
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/sunny/SPresentation;->mDataUpdated:Z

    if-nez v1, :cond_14

    .line 917
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny/SPresentation;->updateAllContainersData()V

    .line 920
    :cond_14
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SPresentation;->moveToTimeSlot(I)V

    .line 921
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SPresentation;->updateContainersOrder(Z)V

    .line 923
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny/SPresentation;->mEnabledOpeningAnimation:Z

    if-ne v1, v2, :cond_15

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny/SPresentation;->mPerformOpeningAnimation:Z

    if-ne v1, v2, :cond_15

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/sunny/SPresentation;->mOpeningAnimationStart:Z

    if-nez v1, :cond_15

    .line 926
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/sunny/SPresentation;->mOpeningAnimationStart:Z

    .line 927
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny/SPresentation;->openingAnimation()V

    goto/16 :goto_0

    .line 929
    :cond_15
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SPresentation;->enableAnimation(Z)V

    .line 930
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SPresentation;->enabledTouchEvent(Z)V

    goto/16 :goto_0
.end method

.method protected isEnabledAnimation()Z
    .locals 2

    .prologue
    .line 3203
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-virtual {v1}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->isFakeAnimation()Z

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 3205
    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mEnabledAnimation:Z

    goto :goto_0
.end method

.method public isEnabledTouchEvent()Z
    .locals 1

    .prologue
    .line 3213
    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mEnableTouchEvent:Z

    return v0
.end method

.method protected moveContainers(I)V
    .locals 13
    .parameter "nTimeSlot"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 2549
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    if-nez v0, :cond_1

    .line 2595
    :cond_0
    :goto_0
    return-void

    .line 2551
    :cond_1
    const/4 v10, -0x1

    .line 2552
    .local v10, nSkipCID:I
    if-lez p1, :cond_3

    .line 2553
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->getContainerByLayoutPos(I)Lcom/htc/sunny/SPresentation$ItemContainer;

    move-result-object v8

    .line 2554
    .local v8, container:Lcom/htc/sunny/SPresentation$ItemContainer;
    if-eqz v8, :cond_2

    .line 2555
    iget v10, v8, Lcom/htc/sunny/SPresentation$ItemContainer;->mID:I

    .line 2566
    .end local v8           #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    :cond_2
    :goto_1
    const/4 v3, 0x0

    .local v3, nCurPos:I
    const/4 v4, 0x0

    .line 2567
    .local v4, nNextPos:I
    const/4 v7, 0x0

    .local v7, cid:I
    :goto_2
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-ge v7, v0, :cond_b

    .line 2568
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v8, v0, v7

    .line 2569
    .restart local v8       #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    if-nez v8, :cond_5

    .line 2567
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2557
    .end local v3           #nCurPos:I
    .end local v4           #nNextPos:I
    .end local v7           #cid:I
    .end local v8           #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    :cond_3
    if-gez p1, :cond_4

    .line 2558
    invoke-virtual {p0, v11}, Lcom/htc/sunny/SPresentation;->getContainerByLayoutPos(I)Lcom/htc/sunny/SPresentation$ItemContainer;

    move-result-object v8

    .line 2559
    .restart local v8       #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    if-eqz v8, :cond_2

    .line 2560
    iget v10, v8, Lcom/htc/sunny/SPresentation$ItemContainer;->mID:I

    goto :goto_1

    .line 2563
    .end local v8           #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    :cond_4
    const/4 v10, -0x1

    goto :goto_1

    .line 2571
    .restart local v3       #nCurPos:I
    .restart local v4       #nNextPos:I
    .restart local v7       #cid:I
    .restart local v8       #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    :cond_5
    iget v3, v8, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    .line 2572
    move v4, v3

    .line 2573
    if-gez p1, :cond_8

    .line 2574
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v0, v3

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    rem-int v4, v0, v1

    .line 2578
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v1, v1, v7

    iget-object v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget-boolean v6, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/sunny/SPresentationAdapterBase;->updateLayoutAtTimeSlot(IIIILcom/htc/sunny/SPresentationContainerLayout;Z)V

    .line 2580
    if-ne v10, v7, :cond_9

    .line 2581
    iput-boolean v12, v8, Lcom/htc/sunny/SPresentation$ItemContainer;->mSkipItem:Z

    .line 2586
    :goto_5
    iget-object v1, v8, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget-boolean v0, v8, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    if-nez v0, :cond_7

    iget-boolean v0, v8, Lcom/htc/sunny/SPresentation$ItemContainer;->mSkipItem:Z

    if-eqz v0, :cond_a

    :cond_7
    move v0, v12

    :goto_6
    invoke-virtual {p0, v8, v1, v0}, Lcom/htc/sunny/SPresentation;->updateContainerLayout(Lcom/htc/sunny/SPresentation$ItemContainer;Lcom/htc/sunny/SPresentationContainerLayout;Z)V

    goto :goto_3

    .line 2575
    :cond_8
    if-lez p1, :cond_6

    .line 2576
    add-int/lit8 v0, v3, 0x1

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    rem-int v4, v0, v1

    goto :goto_4

    .line 2583
    :cond_9
    iput-boolean v11, v8, Lcom/htc/sunny/SPresentation$ItemContainer;->mSkipItem:Z

    goto :goto_5

    :cond_a
    move v0, v11

    .line 2586
    goto :goto_6

    .line 2589
    .end local v8           #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    :cond_b
    if-nez p1, :cond_0

    .line 2591
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->getContainerByLayoutPos(I)Lcom/htc/sunny/SPresentation$ItemContainer;

    move-result-object v9

    .line 2592
    .local v9, focusContainer:Lcom/htc/sunny/SPresentation$ItemContainer;
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mTouchSprite:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->getSpritePosition(I)Lcom/htc/sunny/Vector3F;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mFocusPosV:Lcom/htc/sunny/Vector3F;

    goto :goto_0
.end method

.method protected moveToTimeSlot(I)V
    .locals 5
    .parameter "nTimeSlot"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1673
    sget-object v0, Lcom/htc/sunny/SPresentation$DIRECTION;->D_UNKNOWN:Lcom/htc/sunny/SPresentation$DIRECTION;

    .line 1675
    .local v0, newDirection:Lcom/htc/sunny/SPresentation$DIRECTION;
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    if-lt v1, v2, :cond_6

    .line 1676
    iget v1, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    if-lt p1, v1, :cond_2

    .line 1677
    sget-object v0, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    .line 1682
    :goto_0
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_3

    if-gez p1, :cond_3

    .line 1683
    iput v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    .line 1696
    :cond_0
    :goto_1
    iget-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mShiftOneItem:Z

    if-ne v4, v1, :cond_1

    const/4 v1, 0x2

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v1, v2, :cond_1

    .line 1697
    const/4 p1, 0x0

    .line 1698
    iput-boolean v4, p0, Lcom/htc/sunny/SPresentation;->mBlockScroll:Z

    .line 1700
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateBouncingState()V

    .line 1701
    invoke-virtual {p0, p1}, Lcom/htc/sunny/SPresentation;->moveToTimeSlot(I)V

    .line 1702
    invoke-virtual {p0, v3}, Lcom/htc/sunny/SPresentation;->updateContainersOrder(Z)V

    .line 1711
    :goto_2
    return-void

    .line 1679
    :cond_2
    sget-object v0, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    goto :goto_0

    .line 1684
    :cond_3
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-gez v1, :cond_4

    if-lez p1, :cond_4

    .line 1685
    iput v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    goto :goto_1

    .line 1686
    :cond_4
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-ltz v1, :cond_5

    if-ltz p1, :cond_5

    .line 1687
    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifyPositionChange(Lcom/htc/sunny/SPresentation$DIRECTION;)V

    .line 1689
    iget v1, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    sub-int/2addr p1, v1

    goto :goto_1

    .line 1690
    :cond_5
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-gtz v1, :cond_0

    if-gtz p1, :cond_0

    .line 1691
    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifyPositionChange(Lcom/htc/sunny/SPresentation$DIRECTION;)V

    .line 1693
    iget v1, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    add-int/2addr p1, v1

    goto :goto_1

    .line 1706
    :cond_6
    iput p1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    .line 1707
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateBouncingState()V

    .line 1708
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SPresentation;->moveContainers(I)V

    .line 1710
    invoke-virtual {p0, v3}, Lcom/htc/sunny/SPresentation;->updateContainersOrder(Z)V

    goto :goto_2
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 1392
    new-instance v0, Lcom/htc/sunny/SPresentation$7;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SPresentation$7;-><init>(Lcom/htc/sunny/SPresentation;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1397
    return-void
.end method

.method public notifyDataSetChanged(I)V
    .locals 1
    .parameter "nSelection"

    .prologue
    .line 1414
    new-instance v0, Lcom/htc/sunny/SPresentation$8;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SPresentation$8;-><init>(Lcom/htc/sunny/SPresentation;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1419
    return-void
.end method

.method protected notifyDataSetChangedW()V
    .locals 2

    .prologue
    .line 1404
    const-string v0, "3DGlideMode"

    const-string v1, "notifyDataSetChangedW() +"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    if-nez v0, :cond_1

    .line 1411
    :cond_0
    :goto_0
    return-void

    .line 1407
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->initContainers()V

    .line 1408
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateAllContainersData()V

    .line 1409
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    .line 1410
    const-string v0, "3DGlideMode"

    const-string v1, "notifyDataSetChangedW() -"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected notifyDataSetChangedW(I)V
    .locals 3
    .parameter "nSelection"

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    if-nez v0, :cond_1

    .line 1429
    :cond_0
    :goto_0
    return-void

    .line 1423
    :cond_1
    const-string v0, "3DGlideMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyDataSetChangedW() + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    iput p1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    .line 1425
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->initContainers(Z)V

    .line 1426
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateAllContainersData()V

    .line 1427
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    .line 1428
    const-string v0, "3DGlideMode"

    const-string v1, "notifyDataSetChangedW() -"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected notifyPositionChange(Lcom/htc/sunny/SPresentation$DIRECTION;)V
    .locals 3
    .parameter "eDirection"

    .prologue
    .line 1630
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-virtual {v2}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->isFakeAnimation()Z

    move-result v2

    if-ne v1, v2, :cond_3

    .line 1633
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mFakeNextUpdateIndex:I

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-virtual {v2}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->getLastUpdateIndex()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1634
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-virtual {v1}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->getTargetFocusIndex()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    .line 1653
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/htc/sunny/SPresentation;->updateContainerLayoutPos(Lcom/htc/sunny/SPresentation$DIRECTION;)V

    .line 1655
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    .line 1656
    .local v0, nSelectionPos:I
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gez v1, :cond_5

    .line 1657
    const/4 v0, 0x0

    .line 1664
    :goto_1
    invoke-virtual {p0, p1}, Lcom/htc/sunny/SPresentation;->updateNewContainer(Lcom/htc/sunny/SPresentation$DIRECTION;)V

    .line 1666
    .end local v0           #nSelectionPos:I
    :goto_2
    return-void

    .line 1636
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/sunny/SPresentation;->updateContainerLayoutPos(Lcom/htc/sunny/SPresentation$DIRECTION;)V

    .line 1638
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mFakeNextUpdateIndex:I

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mFakeNextUpdateIndex:I

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-ge v1, v2, :cond_2

    .line 1639
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mFakeNextUpdateIndex:I

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SPresentation;->notifySelectionChange(I)V

    .line 1641
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/sunny/SPresentation;->updateNewContainer(Lcom/htc/sunny/SPresentation$DIRECTION;)V

    goto :goto_2

    .line 1646
    :cond_3
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v1, p1, :cond_4

    .line 1647
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    goto :goto_0

    .line 1648
    :cond_4
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v1, p1, :cond_0

    .line 1649
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    goto :goto_0

    .line 1658
    .restart local v0       #nSelectionPos:I
    :cond_5
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-lt v1, v2, :cond_6

    .line 1659
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v0, v1, -0x1

    goto :goto_1

    .line 1661
    :cond_6
    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifySelectionChange(I)V

    goto :goto_1
.end method

.method protected notifySelectionChange(I)V
    .locals 1
    .parameter "nPos"

    .prologue
    .line 1604
    iput p1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    .line 1605
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mEventListener:Lcom/htc/sunny/SPresentation$PresentationListener;

    if-eqz v0, :cond_0

    .line 1606
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mEventListener:Lcom/htc/sunny/SPresentation$PresentationListener;

    invoke-interface {v0, p1}, Lcom/htc/sunny/SPresentation$PresentationListener;->onPresentationSelectionChange(I)V

    .line 1608
    :cond_0
    return-void
.end method

.method protected notifyStateChange(I)V
    .locals 1
    .parameter "nState"

    .prologue
    .line 1615
    const/16 v0, 0x12

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-eqz v0, :cond_0

    .line 1616
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v0}, Lcom/htc/sunny/SunnyEngine;->logStatus()V

    .line 1618
    :cond_0
    iput p1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    .line 1619
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mEventListener:Lcom/htc/sunny/SPresentation$PresentationListener;

    if-eqz v0, :cond_1

    .line 1620
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mEventListener:Lcom/htc/sunny/SPresentation$PresentationListener;

    invoke-interface {v0, p1}, Lcom/htc/sunny/SPresentation$PresentationListener;->onPresentationStateChange(I)V

    .line 1622
    :cond_1
    return-void
.end method

.method public notifyUpdateItem(I)V
    .locals 1
    .parameter "nPos"

    .prologue
    .line 1441
    new-instance v0, Lcom/htc/sunny/SPresentation$9;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SPresentation$9;-><init>(Lcom/htc/sunny/SPresentation;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1446
    return-void
.end method

.method protected notifyUpdateItemW(I)V
    .locals 8
    .parameter "nPos"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1453
    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/htc/sunny/SPresentation;->mDataUpdated:Z

    if-nez v5, :cond_1

    .line 1478
    :cond_0
    :goto_0
    return-void

    .line 1456
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/sunny/SPresentation;->getContainerByDataIndex(I)Lcom/htc/sunny/SPresentation$ItemContainer;

    move-result-object v2

    .line 1457
    .local v2, container:Lcom/htc/sunny/SPresentation$ItemContainer;
    if-eqz v2, :cond_6

    .line 1458
    iget v5, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    if-ltz v5, :cond_7

    iget v5, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    iget v6, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-ge v5, v6, :cond_7

    .line 1460
    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    invoke-virtual {v5, p1}, Lcom/htc/sunny/SPresentationAdapterBase;->getItemBitmap(I)Lcom/htc/sunny/SBitmap;

    move-result-object v0

    .line 1461
    .local v0, bmp:Lcom/htc/sunny/SBitmap;
    if-eqz v0, :cond_3

    .line 1462
    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->cloneSBitmap()Lcom/htc/sunny/SBitmap;

    move-result-object v1

    .line 1463
    .local v1, bmpClone:Lcom/htc/sunny/SBitmap;
    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1464
    iget-object v5, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v6, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageTexture:I

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->getBmpId()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    .line 1465
    iput-boolean v4, p0, Lcom/htc/sunny/SPresentation;->mIsFirstRender:Z

    .line 1467
    :cond_2
    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->releaseClone()V

    .line 1469
    .end local v1           #bmpClone:Lcom/htc/sunny/SBitmap;
    :cond_3
    iput-boolean v3, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    .line 1475
    .end local v0           #bmp:Lcom/htc/sunny/SBitmap;
    :goto_1
    iget-object v5, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget-boolean v6, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    if-nez v6, :cond_4

    iget-boolean v6, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mSkipItem:Z

    if-eqz v6, :cond_5

    :cond_4
    move v3, v4

    :cond_5
    invoke-virtual {p0, v2, v5, v3}, Lcom/htc/sunny/SPresentation;->updateContainerLayout(Lcom/htc/sunny/SPresentation$ItemContainer;Lcom/htc/sunny/SPresentationContainerLayout;Z)V

    .line 1477
    :cond_6
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    goto :goto_0

    .line 1471
    :cond_7
    iput-boolean v4, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    .line 1472
    const/4 v5, -0x1

    iput v5, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    goto :goto_1
.end method

.method protected onAnimationEnd()V
    .locals 2

    .prologue
    .line 2743
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->reset()V

    .line 2745
    const/16 v0, 0x9

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v0, v1, :cond_1

    .line 2746
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onScrollAnimationEnd()V

    .line 2754
    :cond_0
    :goto_0
    return-void

    .line 2747
    :cond_1
    const/4 v0, 0x5

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-eq v0, v1, :cond_2

    const/4 v0, 0x7

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v0, v1, :cond_3

    .line 2748
    :cond_2
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onHomingAnimationEnd()V

    goto :goto_0

    .line 2749
    :cond_3
    const/4 v0, 0x3

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v0, v1, :cond_4

    .line 2750
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onFlingAnimationEnd()V

    goto :goto_0

    .line 2751
    :cond_4
    const/16 v0, 0xb

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v0, v1, :cond_0

    .line 2752
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onRotateSelfEnd()V

    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x0

    .line 3126
    const-string v0, "3DGlideMode"

    const-string v1, "[SPresentation] onDown()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3128
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledTouchEvent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3139
    :cond_0
    :goto_0
    return v2

    .line 3132
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->hasAnimation()Z

    move-result v1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mShiftOneItem:Z

    if-nez v0, :cond_2

    .line 3133
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->stopAnimation()V

    .line 3136
    :cond_2
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 3137
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 3148
    const-string v0, "3DGlideMode"

    const-string v1, "[SPresentation] onFling()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3150
    float-to-int v0, p3

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->flingW(I)V

    .line 3152
    const/4 v0, 0x0

    return v0
.end method

.method protected onFlingAnimationEnd()V
    .locals 1

    .prologue
    .line 2763
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateBouncingState()V

    .line 2765
    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-nez v0, :cond_0

    .line 2766
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->stopAnimation()V

    .line 2773
    :goto_0
    return-void

    .line 2768
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    .line 2769
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 2770
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->homing()V

    goto :goto_0
.end method

.method protected onHomingAnimationEnd()V
    .locals 0

    .prologue
    .line 2676
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->stopAnimation()V

    .line 2677
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
    .line 2838
    invoke-super/range {p0 .. p5}, Lcom/htc/sunny/SAdapterView;->onLayout(ZIIII)V

    .line 2840
    sub-int v0, p4, p2

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mViewWidth:I

    .line 2841
    sub-int v0, p5, p3

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mViewHeight:I

    .line 2843
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mViewWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mViewWidth_H:I

    .line 2844
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mViewHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mViewHeight_H:I

    .line 2845
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateViewLayout()V

    .line 2847
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    .line 2848
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 3315
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mItemLongClickListener:Lcom/htc/sunny/SPresentation$OnItemLongClickListener;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-nez v1, :cond_0

    .line 3316
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/sunny/SPresentation;->getContainerId(II)I

    move-result v0

    .line 3317
    .local v0, nContainerId:I
    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    .line 3318
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    if-ne v1, v2, :cond_0

    .line 3319
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mItemLongClickListener:Lcom/htc/sunny/SPresentation$OnItemLongClickListener;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    invoke-interface {v1, v2}, Lcom/htc/sunny/SPresentation$OnItemLongClickListener;->onPresentationItemLongClick(I)V

    .line 3324
    .end local v0           #nContainerId:I
    :cond_0
    return-void
.end method

.method protected onRotateSelf()V
    .locals 10

    .prologue
    .line 2314
    const/4 v2, 0x0

    .line 2315
    .local v2, nRStartY:F
    const/high16 v9, -0x3c4c

    .line 2317
    .local v9, nREndY:F
    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mRotateClockwise:Z

    if-nez v0, :cond_0

    .line 2318
    const/high16 v9, 0x43b4

    .line 2321
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v7, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nArgs:I

    .line 2322
    .local v7, nContainerId:I
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    if-eqz v0, :cond_1

    if-ltz v7, :cond_1

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v0, v0, -0x1

    if-le v7, v0, :cond_2

    .line 2351
    :cond_1
    :goto_0
    return-void

    .line 2326
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v6, v0, v7

    .line 2327
    .local v6, container:Lcom/htc/sunny/SPresentation$ItemContainer;
    if-eqz v6, :cond_1

    .line 2329
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    if-lt v0, v1, :cond_3

    .line 2330
    iget-object v0, v6, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget-object v0, v0, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iput v2, v0, Lcom/htc/sunny/Vector3F;->mY:F

    .line 2331
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onAnimationEnd()V

    goto :goto_0

    .line 2335
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    .line 2337
    const/4 v8, 0x0

    .line 2339
    .local v8, nNextRY:F
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    if-gt v0, v1, :cond_1

    .line 2341
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    if-ge v0, v1, :cond_6

    .line 2342
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    int-to-float v1, v0

    sub-float v3, v9, v2

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget-object v5, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny/SPresentation;->getInterpolateResult(FFFFLcom/htc/sunny/SPresentation$INTERPOLATE;)F

    move-result v8

    .line 2346
    :cond_4
    :goto_1
    iget-object v0, v6, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget-object v0, v0, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iput v8, v0, Lcom/htc/sunny/Vector3F;->mY:F

    .line 2349
    iget-object v1, v6, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget-boolean v0, v6, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    if-nez v0, :cond_5

    iget-boolean v0, v6, Lcom/htc/sunny/SPresentation$ItemContainer;->mSkipItem:Z

    if-eqz v0, :cond_7

    :cond_5
    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p0, v6, v1, v0}, Lcom/htc/sunny/SPresentation;->updateContainerLayout(Lcom/htc/sunny/SPresentation$ItemContainer;Lcom/htc/sunny/SPresentationContainerLayout;Z)V

    goto :goto_0

    .line 2343
    :cond_6
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    if-ne v0, v1, :cond_4

    .line 2344
    move v8, v9

    goto :goto_1

    .line 2349
    :cond_7
    const/4 v0, 0x0

    goto :goto_2
.end method

.method protected onRotateSelfEnd()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 2359
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->stopAnimation()V

    .line 2360
    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->enableAnimation(Z)V

    .line 2361
    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->enabledTouchEvent(Z)V

    .line 2362
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 11
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 3230
    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mIsPressed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mBlockScroll:Z

    if-ne v9, v0, :cond_1

    .line 3231
    :cond_0
    const-string v0, "3DGlideMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SPresentation] onScroll() enable animation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " block scroll:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mBlockScroll:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 3246
    :goto_0
    return v0

    .line 3235
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->hasAnimation()Z

    move-result v0

    if-ne v9, v0, :cond_2

    .line 3236
    const-string v0, "3DGlideMode"

    const-string v1, "[SPresentation] onScroll() has animation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3237
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->stopAnimation()V

    .line 3240
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 3241
    .local v7, nStart2DX:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 3243
    .local v8, nStart2DY:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v1, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v2, v0

    float-to-int v3, v7

    float-to-int v4, v8

    move-object v0, p0

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/htc/sunny/SPresentation;->onScrollPresentation(IIIIFF)Z

    .line 3245
    iput-boolean v10, p0, Lcom/htc/sunny/SPresentation;->mIsSingleTapUp:Z

    move v0, v9

    .line 3246
    goto :goto_0
.end method

.method protected onScrollAnimation()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 2686
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    if-lt v0, v1, :cond_0

    .line 2687
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onAnimationEnd()V

    .line 2736
    :goto_0
    return-void

    .line 2691
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    .line 2692
    const/4 v9, 0x0

    .line 2693
    .local v9, nTimeSlotOffset:I
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    if-ge v0, v1, :cond_8

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-ge v0, v1, :cond_8

    .line 2694
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget-object v5, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny/SPresentation;->getInterpolateResult(FFFFLcom/htc/sunny/SPresentation$INTERPOLATE;)F

    move-result v0

    float-to-int v7, v0

    .line 2695
    .local v7, nCurTimeSlot:I
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v1, v0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget-object v5, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny/SPresentation;->getInterpolateResult(FFFFLcom/htc/sunny/SPresentation$INTERPOLATE;)F

    move-result v0

    float-to-int v8, v0

    .line 2697
    .local v8, nPreTimeSlot:I
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_2

    .line 2698
    sub-int v0, v7, v8

    neg-int v9, v0

    .line 2707
    :goto_1
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    sub-int v6, v8, v0

    .line 2709
    .local v6, nAccuracy:I
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_4

    .line 2710
    sub-int/2addr v9, v6

    .line 2715
    :cond_1
    :goto_2
    if-nez v9, :cond_6

    .line 2716
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_5

    .line 2717
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onScrollAnimation()V

    goto :goto_0

    .line 2699
    .end local v6           #nAccuracy:I
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_3

    .line 2700
    sub-int v9, v7, v8

    goto :goto_1

    .line 2702
    :cond_3
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onAnimationEnd()V

    .line 2703
    const-string v0, "3DGlideMode"

    const-string v1, "[SPresentation] onScrollAnimation() wrong direction"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2711
    .restart local v6       #nAccuracy:I
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_1

    .line 2712
    add-int/2addr v9, v6

    goto :goto_2

    .line 2719
    :cond_5
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_6

    .line 2720
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onScrollAnimation()V

    goto/16 :goto_0

    .line 2724
    :cond_6
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    .line 2735
    .end local v6           #nAccuracy:I
    .end local v7           #nCurTimeSlot:I
    .end local v8           #nPreTimeSlot:I
    :cond_7
    :goto_3
    invoke-virtual {p0, v9}, Lcom/htc/sunny/SPresentation;->scrollByOffset(I)V

    goto/16 :goto_0

    .line 2726
    :cond_8
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    if-ne v0, v1, :cond_7

    .line 2727
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    sub-int v9, v0, v1

    .line 2728
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_9

    .line 2729
    mul-int/lit8 v9, v9, -0x1

    goto :goto_3

    .line 2730
    :cond_9
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_7

    goto :goto_3
.end method

.method protected onScrollAnimationEnd()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 2780
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateBouncingState()V

    .line 2782
    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->enableAnimation(Z)V

    .line 2783
    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->enabledTouchEvent(Z)V

    .line 2785
    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-nez v0, :cond_0

    .line 2786
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->stopAnimation()V

    .line 2792
    :goto_0
    return-void

    .line 2788
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    .line 2789
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 2790
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->homing()V

    goto :goto_0
.end method

.method protected onScrollPresentation(IIIIFF)Z
    .locals 10
    .parameter "n2DX1"
    .parameter "n2DY1"
    .parameter "n2DX2"
    .parameter "n2DY2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 3256
    invoke-virtual {p0, p3}, Lcom/htc/sunny/SPresentation;->Get3DX(I)I

    move-result v1

    .line 3258
    .local v1, n3DX2:I
    const/4 v7, -0x1

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mPressContainerId:I

    if-ne v7, v8, :cond_0

    .line 3259
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny/SPresentation;->getContainerId(II)I

    move-result v7

    iput v7, p0, Lcom/htc/sunny/SPresentation;->mPressContainerId:I

    .line 3260
    iget v7, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iput v7, p0, Lcom/htc/sunny/SPresentation;->mPressStartSelectedPos:I

    .line 3263
    :cond_0
    const/4 v7, -0x1

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mPressContainerId:I

    if-eq v7, v8, :cond_7

    .line 3264
    iget-object v7, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget-object v8, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    iget v9, p0, Lcom/htc/sunny/SPresentation;->mPressContainerId:I

    aget-object v8, v8, v9

    iget v8, v8, Lcom/htc/sunny/SPresentation$ItemContainer;->mTouchSprite:I

    invoke-virtual {v7, v8}, Lcom/htc/sunny/SunnyEngine;->getSpritePosition(I)Lcom/htc/sunny/Vector3F;

    move-result-object v7

    iget v7, v7, Lcom/htc/sunny/Vector3F;->mX:F

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mDisplacement:F

    add-float v5, v7, v8

    .line 3265
    .local v5, nPrevious3DX:F
    int-to-float v2, v1

    .line 3267
    .local v2, nNext3DX:F
    sub-float v3, v2, v5

    .line 3268
    .local v3, nOffsetX:F
    const/4 v7, 0x0

    cmpl-float v7, v7, v3

    if-nez v7, :cond_1

    .line 3269
    const/4 v7, 0x1

    .line 3306
    .end local v2           #nNext3DX:F
    .end local v3           #nOffsetX:F
    .end local v5           #nPrevious3DX:F
    :goto_0
    return v7

    .line 3272
    .restart local v2       #nNext3DX:F
    .restart local v3       #nOffsetX:F
    .restart local v5       #nPrevious3DX:F
    :cond_1
    iget-object v7, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mPressContainerId:I

    aget-object v7, v7, v8

    iget v7, v7, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    invoke-virtual {p0, v7, v3}, Lcom/htc/sunny/SPresentation;->getTimeSlotOffsetX(IF)I

    move-result v6

    .line 3274
    .local v6, nTimeSlotOffset:I
    const/4 v0, 0x0

    .line 3275
    .local v0, bLimitScroll:Z
    const/high16 v7, 0x3f80

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mItemScrollRatio:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_2

    .line 3276
    iget v7, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gtz v7, :cond_4

    if-lez v6, :cond_4

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v7, :cond_4

    .line 3277
    const/4 v0, 0x1

    .line 3282
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 3283
    iget v7, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v7, v7

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mItemScrollRatio:F

    mul-float/2addr v7, v8

    float-to-int v4, v7

    .line 3284
    .local v4, nOneItemLimitTimeSlot:I
    iget v7, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    add-int/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-lt v7, v4, :cond_3

    .line 3285
    if-lez v6, :cond_5

    .line 3286
    iget v7, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    sub-int v6, v4, v7

    .line 3293
    .end local v4           #nOneItemLimitTimeSlot:I
    :cond_3
    :goto_2
    if-nez v6, :cond_6

    .line 3294
    const/4 v7, 0x1

    goto :goto_0

    .line 3278
    :cond_4
    iget v7, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v7, v8, :cond_2

    if-gez v6, :cond_2

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-gez v7, :cond_2

    .line 3279
    const/4 v0, 0x1

    goto :goto_1

    .line 3288
    .restart local v4       #nOneItemLimitTimeSlot:I
    :cond_5
    neg-int v7, v4

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    sub-int v6, v7, v8

    goto :goto_2

    .line 3297
    .end local v4           #nOneItemLimitTimeSlot:I
    :cond_6
    iget-object v7, p0, Lcom/htc/sunny/SPresentation;->mContainerHitFeedback:Lcom/htc/sunny/SPresentation$ContainerHitFeedback;

    invoke-virtual {v7}, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;->reset()V

    .line 3299
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 3301
    invoke-virtual {p0, v6}, Lcom/htc/sunny/SPresentation;->scrollByOffset(I)V

    .line 3303
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    .line 3306
    .end local v0           #bLimitScroll:Z
    .end local v2           #nNext3DX:F
    .end local v3           #nOffsetX:F
    .end local v5           #nPrevious3DX:F
    .end local v6           #nTimeSlotOffset:I
    :cond_7
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 3332
    const-string v1, "3DGlideMode"

    const-string v2, "[SPresentation] onShowPress()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3333
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3342
    :goto_0
    return-void

    .line 3337
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/sunny/SPresentation;->getContainerId(II)I

    move-result v0

    .line 3338
    .local v0, nContainerId:I
    const/4 v1, -0x1

    if-eq v1, v0, :cond_1

    .line 3339
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mContainerHitFeedback:Lcom/htc/sunny/SPresentation$ContainerHitFeedback;

    invoke-virtual {v1, v0}, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;->press(I)V

    .line 3341
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    const/4 v1, 0x1

    .line 3350
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3355
    :goto_0
    return v1

    .line 3354
    :cond_0
    iput-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mIsSingleTapUp:Z

    goto :goto_0
.end method

.method public onUpW(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "e"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 3076
    iput v4, p0, Lcom/htc/sunny/SPresentation;->mPressContainerId:I

    .line 3077
    iput v4, p0, Lcom/htc/sunny/SPresentation;->mPressStartSelectedPos:I

    .line 3079
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mContainerHitFeedback:Lcom/htc/sunny/SPresentation$ContainerHitFeedback;

    invoke-virtual {v1}, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;->reset()V

    .line 3081
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->hasAnimation()Z

    move-result v1

    if-ne v3, v1, :cond_4

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    if-ne v3, v1, :cond_4

    .line 3087
    :cond_0
    iget-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mIsSingleTapUp:Z

    if-ne v3, v1, :cond_7

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-nez v1, :cond_7

    .line 3088
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/sunny/SPresentation;->getContainerId(II)I

    move-result v0

    .line 3089
    .local v0, nContainerId:I
    if-eq v4, v0, :cond_2

    .line 3090
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    if-ne v1, v2, :cond_5

    .line 3091
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mEventListener:Lcom/htc/sunny/SPresentation$PresentationListener;

    if-eqz v1, :cond_1

    .line 3092
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mEventListener:Lcom/htc/sunny/SPresentation$PresentationListener;

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    invoke-interface {v1, v2}, Lcom/htc/sunny/SPresentation$PresentationListener;->onPresentationItemClick(I)V

    .line 3094
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->homing()V

    .line 3116
    .end local v0           #nContainerId:I
    :cond_2
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mIsSingleTapUp:Z

    .line 3118
    :cond_3
    :goto_1
    return-void

    .line 3083
    :cond_4
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledTouchEvent()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 3096
    .restart local v0       #nContainerId:I
    :cond_5
    iget-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mShiftOneItem:Z

    if-nez v1, :cond_6

    .line 3097
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SPresentation;->scrollToW(I)V

    goto :goto_0

    .line 3099
    :cond_6
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->homing()V

    goto :goto_0

    .line 3103
    .end local v0           #nContainerId:I
    :cond_7
    const/4 v1, 0x2

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v1, v2, :cond_8

    .line 3104
    invoke-virtual {p0, v3}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 3105
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->homing()V

    goto :goto_0

    .line 3106
    :cond_8
    const/4 v1, 0x3

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-eq v1, v2, :cond_2

    const/4 v1, 0x4

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-eq v1, v2, :cond_2

    .line 3108
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-nez v1, :cond_2

    .line 3109
    invoke-virtual {p0, v3}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 3110
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->homing()V

    goto :goto_0
.end method

.method protected openingAnimation()V
    .locals 10

    .prologue
    const v8, 0x3e4ccccd

    const/4 v9, 0x0

    .line 982
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    div-int/lit8 v4, v6, 0x2

    .line 983
    .local v4, nCenterPos:I
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    invoke-virtual {v6, v4}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v2

    .line 984
    .local v2, focusLayout:Lcom/htc/sunny/SPresentationContainerLayout;
    new-instance v5, Lcom/htc/sunny/Vector3F;

    iget-object v6, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    iget v6, v6, Lcom/htc/sunny/Vector3F;->mX:F

    add-float/2addr v6, v8

    iget-object v7, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    iget v7, v7, Lcom/htc/sunny/Vector3F;->mY:F

    add-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/htc/sunny/Vector3F;-><init>(FFF)V

    .line 987
    .local v5, startScale:Lcom/htc/sunny/Vector3F;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-ge v3, v6, :cond_2

    .line 988
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v1, v6, v3

    .line 989
    .local v1, container:Lcom/htc/sunny/SPresentation$ItemContainer;
    if-nez v1, :cond_0

    .line 987
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 991
    :cond_0
    iget-object v6, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v6, v6, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v7, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v7, v7, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v8, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v8, v8, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {v1, v6, v7, v8}, Lcom/htc/sunny/SPresentation$ItemContainer;->setPosition(FFF)V

    .line 992
    invoke-virtual {v1, v9}, Lcom/htc/sunny/SPresentation$ItemContainer;->setAlpha(I)V

    .line 993
    iget-object v6, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    iget v6, v6, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v7, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    iget v7, v7, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v8, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    iget v8, v8, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {v1, v6, v7, v8}, Lcom/htc/sunny/SPresentation$ItemContainer;->setScale(FFF)V

    .line 994
    iget-object v6, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget v6, v6, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v7, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget v7, v7, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v8, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget v8, v8, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {v1, v6, v7, v8}, Lcom/htc/sunny/SPresentation$ItemContainer;->setRotation(FFF)V

    .line 996
    new-instance v0, Lcom/htc/sunny/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunny/SAnimationController;-><init>()V

    .line 997
    .local v0, animationController:Lcom/htc/sunny/SAnimationController;
    if-ne v4, v3, :cond_1

    .line 998
    iget-object v6, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, v5, v6}, Lcom/htc/sunny/SAnimationController;->setScaleAnimation(Lcom/htc/sunny/Vector3F;Lcom/htc/sunny/Vector3F;)V

    .line 999
    const/16 v6, 0xff

    invoke-virtual {v0, v9, v6}, Lcom/htc/sunny/SAnimationController;->setAlphaAnimation(II)V

    .line 1000
    new-instance v6, Lcom/htc/sunny/SPresentation$3;

    invoke-direct {v6, p0}, Lcom/htc/sunny/SPresentation$3;-><init>(Lcom/htc/sunny/SPresentation;)V

    invoke-virtual {v0, v6}, Lcom/htc/sunny/SAnimationController;->setAnimationListener(Lcom/htc/sunny/SAnimationController$AnimationListener;)V

    .line 1018
    :goto_2
    const-wide/16 v6, 0x190

    invoke-virtual {v0, v6, v7}, Lcom/htc/sunny/SAnimationController;->setDuration(J)V

    .line 1019
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/htc/sunny/SAnimationController;->setFillAfter(Z)V

    .line 1020
    sget-object v6, Lcom/htc/sunny/SAnimationController$INTERPOLATOR;->EASEINOUT_CUBIC:Lcom/htc/sunny/SAnimationController$INTERPOLATOR;

    invoke-virtual {v0, v6}, Lcom/htc/sunny/SAnimationController;->setInterpolator(Lcom/htc/sunny/SAnimationController$INTERPOLATOR;)V

    .line 1021
    invoke-virtual {v1, v0}, Lcom/htc/sunny/SPresentation$ItemContainer;->startAnimation(Lcom/htc/sunny/SAnimationController;)V

    goto :goto_1

    .line 1014
    :cond_1
    iget-object v6, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, v5, v6}, Lcom/htc/sunny/SAnimationController;->setScaleAnimation(Lcom/htc/sunny/Vector3F;Lcom/htc/sunny/Vector3F;)V

    .line 1015
    invoke-virtual {v0, v9, v9}, Lcom/htc/sunny/SAnimationController;->setAlphaAnimation(II)V

    goto :goto_2

    .line 1023
    .end local v0           #animationController:Lcom/htc/sunny/SAnimationController;
    .end local v1           #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    :cond_2
    return-void
.end method

.method protected openingAnimation2()V
    .locals 6

    .prologue
    .line 1031
    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v2

    .line 1033
    .local v2, focusLayout:Lcom/htc/sunny/SPresentationContainerLayout;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget v4, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-ge v3, v4, :cond_1

    .line 1034
    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v1, v4, v3

    .line 1035
    .local v1, container:Lcom/htc/sunny/SPresentation$ItemContainer;
    new-instance v0, Lcom/htc/sunny/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunny/SAnimationController;-><init>()V

    .line 1036
    .local v0, animationController:Lcom/htc/sunny/SAnimationController;
    iget-object v4, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget-object v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget-object v5, v5, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, v4, v5}, Lcom/htc/sunny/SAnimationController;->setPositionAnimation(Lcom/htc/sunny/Vector3F;Lcom/htc/sunny/Vector3F;)V

    .line 1037
    iget-object v4, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget v4, v4, Lcom/htc/sunny/SPresentationContainerLayout;->mAlpha:I

    iget-object v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget v5, v5, Lcom/htc/sunny/SPresentationContainerLayout;->mAlpha:I

    invoke-virtual {v0, v4, v5}, Lcom/htc/sunny/SAnimationController;->setAlphaAnimation(II)V

    .line 1038
    iget-object v4, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget-object v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget-object v5, v5, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, v4, v5}, Lcom/htc/sunny/SAnimationController;->setRotationAnimation(Lcom/htc/sunny/Vector3F;Lcom/htc/sunny/Vector3F;)V

    .line 1039
    iget-object v4, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    iget-object v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget-object v5, v5, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, v4, v5}, Lcom/htc/sunny/SAnimationController;->setScaleAnimation(Lcom/htc/sunny/Vector3F;Lcom/htc/sunny/Vector3F;)V

    .line 1040
    sget-object v4, Lcom/htc/sunny/SAnimationController$INTERPOLATOR;->EASEINOUT_CUBIC:Lcom/htc/sunny/SAnimationController$INTERPOLATOR;

    invoke-virtual {v0, v4}, Lcom/htc/sunny/SAnimationController;->setInterpolator(Lcom/htc/sunny/SAnimationController$INTERPOLATOR;)V

    .line 1041
    const-wide/16 v4, 0x2bc

    invoke-virtual {v0, v4, v5}, Lcom/htc/sunny/SAnimationController;->setDuration(J)V

    .line 1042
    if-nez v3, :cond_0

    .line 1043
    new-instance v4, Lcom/htc/sunny/SPresentation$4;

    invoke-direct {v4, p0}, Lcom/htc/sunny/SPresentation$4;-><init>(Lcom/htc/sunny/SPresentation;)V

    invoke-virtual {v0, v4}, Lcom/htc/sunny/SAnimationController;->setAnimationListener(Lcom/htc/sunny/SAnimationController$AnimationListener;)V

    .line 1056
    :cond_0
    invoke-virtual {v1, v0}, Lcom/htc/sunny/SPresentation$ItemContainer;->startAnimation(Lcom/htc/sunny/SAnimationController;)V

    .line 1033
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1058
    .end local v0           #animationController:Lcom/htc/sunny/SAnimationController;
    .end local v1           #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    :cond_1
    return-void
.end method

.method public renderAndUpdate3D()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2921
    invoke-super {p0}, Lcom/htc/sunny/SAdapterView;->renderAndUpdate3D()V

    .line 2923
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->hasAnimation()Z

    move-result v0

    if-ne v1, v0, :cond_0

    .line 2924
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    packed-switch v0, :pswitch_data_0

    .line 2943
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mContainerHitFeedback:Lcom/htc/sunny/SPresentation$ContainerHitFeedback;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;->animate()V

    .line 2944
    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mIsFirstRender:Z

    if-ne v1, v0, :cond_1

    .line 2946
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mIsFirstRender:Z

    .line 2947
    const-string v0, "3DGlideMode"

    const-string v1, "update and render"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2949
    :cond_1
    return-void

    .line 2931
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onScrollAnimation()V

    .line 2932
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    goto :goto_0

    .line 2935
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onRotateSelf()V

    .line 2936
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    goto :goto_0

    .line 2924
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public rotateSelf(IZ)V
    .locals 1
    .parameter "nPosition"
    .parameter "bClockwise"

    .prologue
    .line 2271
    new-instance v0, Lcom/htc/sunny/SPresentation$15;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny/SPresentation$15;-><init>(Lcom/htc/sunny/SPresentation;IZ)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 2276
    return-void
.end method

.method protected rotateSelfW(IZ)V
    .locals 4
    .parameter "nPosition"
    .parameter "bClockwise"

    .prologue
    const/16 v2, 0x12

    const/4 v3, 0x0

    .line 2284
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2285
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 2307
    :goto_0
    return-void

    .line 2289
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/sunny/SPresentation;->getContainerByDataIndex(I)Lcom/htc/sunny/SPresentation$ItemContainer;

    move-result-object v0

    .line 2290
    .local v0, container:Lcom/htc/sunny/SPresentation$ItemContainer;
    if-nez v0, :cond_1

    .line 2291
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    .line 2295
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v1}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    .line 2297
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, v0, Lcom/htc/sunny/SPresentation$ItemContainer;->mID:I

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nArgs:I

    .line 2298
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->DURATION_ROTATE_SELF:I

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 2299
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    sget-object v2, Lcom/htc/sunny/SPresentation$INTERPOLATE;->EASEINOUT_CUBIC:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    iput-object v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    .line 2300
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    const/4 v2, 0x4

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    .line 2301
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 2303
    iput-boolean p2, p0, Lcom/htc/sunny/SPresentation;->mRotateClockwise:Z

    .line 2304
    invoke-virtual {p0, v3}, Lcom/htc/sunny/SPresentation;->enableAnimation(Z)V

    .line 2305
    invoke-virtual {p0, v3}, Lcom/htc/sunny/SPresentation;->enabledTouchEvent(Z)V

    .line 2306
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    goto :goto_0
.end method

.method protected scrollByOffset(I)V
    .locals 1
    .parameter "nTimeSlotOffset"

    .prologue
    .line 1773
    if-lez p1, :cond_1

    .line 1774
    sget-object v0, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    .line 1778
    :cond_0
    :goto_0
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->moveToTimeSlot(I)V

    .line 1779
    return-void

    .line 1775
    :cond_1
    if-gez p1, :cond_0

    .line 1776
    sget-object v0, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    goto :goto_0
.end method

.method public scrollTo(I)V
    .locals 1
    .parameter "nPos"

    .prologue
    .line 2040
    new-instance v0, Lcom/htc/sunny/SPresentation$13;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SPresentation$13;-><init>(Lcom/htc/sunny/SPresentation;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 2045
    return-void
.end method

.method public scrollToLeft()V
    .locals 1

    .prologue
    .line 1928
    new-instance v0, Lcom/htc/sunny/SPresentation$11;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SPresentation$11;-><init>(Lcom/htc/sunny/SPresentation;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1933
    return-void
.end method

.method protected scrollToLeftW()V
    .locals 3

    .prologue
    const/16 v2, 0x12

    .line 1940
    const/4 v0, 0x1

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-lt v0, v1, :cond_0

    .line 1941
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 1973
    :goto_0
    return-void

    .line 1945
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1946
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    .line 1950
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    .line 1952
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    if-ne v0, v1, :cond_3

    .line 1953
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1954
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->DURATION_SCROLL_NEXT:I

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, v2, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 1966
    :cond_2
    :goto_1
    sget-object v0, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    .line 1967
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    sget-object v1, Lcom/htc/sunny/SPresentation$INTERPOLATE;->EASEINOUT_CUBIC:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    iput-object v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    .line 1968
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    const/4 v1, 0x2

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    .line 1970
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 1972
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    goto :goto_0

    .line 1956
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_4

    .line 1958
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->stopAnimation()V

    goto :goto_0

    .line 1960
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_2

    .line 1961
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, v2, Lcom/htc/sunny/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    rem-int/2addr v1, v2

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1962
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->DURATION_SCROLL_NEXT:I

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, v2, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    goto :goto_1
.end method

.method public scrollToRight()V
    .locals 1

    .prologue
    .line 1983
    new-instance v0, Lcom/htc/sunny/SPresentation$12;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SPresentation$12;-><init>(Lcom/htc/sunny/SPresentation;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1988
    return-void
.end method

.method protected scrollToRightW()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x12

    .line 1995
    const/4 v0, 0x1

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-lt v0, v1, :cond_0

    .line 1996
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 2030
    :goto_0
    return-void

    .line 2000
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2001
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    .line 2005
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    .line 2007
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    if-ne v0, v1, :cond_3

    .line 2008
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 2009
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->DURATION_SCROLL_PREVIOUS:I

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, v2, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 2010
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v3, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    .line 2011
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v3, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    .line 2023
    :cond_2
    :goto_1
    sget-object v0, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    .line 2024
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    sget-object v1, Lcom/htc/sunny/SPresentation$INTERPOLATE;->EASEINOUT_CUBIC:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    iput-object v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    .line 2025
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    const/4 v1, 0x2

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    .line 2027
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 2029
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    goto :goto_0

    .line 2013
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_4

    .line 2015
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    .line 2017
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_2

    .line 2018
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, v2, Lcom/htc/sunny/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    rem-int/2addr v1, v2

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 2019
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->DURATION_SCROLL_PREVIOUS:I

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, v2, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    goto :goto_1
.end method

.method protected scrollToW(I)V
    .locals 9
    .parameter "nPos"

    .prologue
    const/16 v6, 0x12

    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 2052
    const-string v3, "3DGlideMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scrollToW() + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    sub-int v0, p1, v3

    .line 2055
    .local v0, nOffset:I
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-ge p1, v3, :cond_0

    if-ltz p1, :cond_0

    if-nez v0, :cond_1

    .line 2058
    :cond_0
    invoke-virtual {p0, v6}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 2059
    const-string v3, "3DGlideMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scrollToW() -1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2131
    :goto_0
    return-void

    .line 2063
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2064
    invoke-virtual {p0, v6}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 2065
    const-string v3, "3DGlideMode"

    const-string v4, "scrollToW() -2 disable animation"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2069
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    iget v6, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    invoke-virtual {v3, v4, v0, v5, v6}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->init(IIII)V

    .line 2071
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-virtual {v4}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->isFakeAnimation()Z

    move-result v4

    if-ne v3, v4, :cond_3

    .line 2072
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-virtual {v3}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->getFirstUpdateIndex()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny/SPresentation;->mFakeNextUpdateIndex:I

    .line 2073
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-virtual {v3}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->getPosOffset()I

    move-result v0

    .line 2076
    :cond_3
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 2077
    .local v1, nPosOffset:I
    iget v3, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    mul-int v2, v1, v3

    .line 2079
    .local v2, nTimeSlotOffset:I
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v3}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    .line 2081
    if-gez v0, :cond_9

    .line 2082
    sget-object v3, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v3, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    .line 2083
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v3, :cond_7

    .line 2084
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v4, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    sub-int/2addr v4, v5

    add-int/lit8 v5, v1, -0x1

    iget v6, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 2102
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v4, p0, Lcom/htc/sunny/SPresentation;->DURATION_SCROLL_TO:I

    iput v4, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 2104
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gtz v3, :cond_c

    sget-object v3, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v3, v4, :cond_c

    .line 2105
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v8, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 2109
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v4, v4, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v5, v5, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-virtual {p0, v4, v5}, Lcom/htc/sunny/SPresentation;->getRefineDuration(II)I

    move-result v4

    iput v4, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 2111
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v3, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-gtz v3, :cond_5

    .line 2112
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v7, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 2115
    :cond_5
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 2117
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v3, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-lez v3, :cond_6

    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v3, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    if-nez v3, :cond_d

    .line 2118
    :cond_6
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onAnimationEnd()V

    goto/16 :goto_0

    .line 2085
    :cond_7
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-gez v3, :cond_8

    .line 2086
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v4, v2

    iput v4, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_1

    .line 2088
    :cond_8
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v2, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_1

    .line 2091
    :cond_9
    sget-object v3, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v3, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    .line 2092
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v3, :cond_a

    .line 2093
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    add-int/2addr v4, v2

    iput v4, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_1

    .line 2094
    :cond_a
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-gez v3, :cond_b

    .line 2095
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v4, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v2

    iput v4, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_1

    .line 2097
    :cond_b
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v2, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_1

    .line 2106
    :cond_c
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gt v3, v4, :cond_4

    sget-object v3, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v3, v4, :cond_4

    .line 2107
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v8, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    goto :goto_2

    .line 2122
    :cond_d
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v4, v4, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v5, v5, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 2123
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    sget-object v4, Lcom/htc/sunny/SPresentation$INTERPOLATE;->EASEINOUT_CUBIC:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    iput-object v4, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    .line 2124
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    const/4 v4, 0x2

    iput v4, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    .line 2126
    invoke-virtual {p0, v7}, Lcom/htc/sunny/SPresentation;->enableAnimation(Z)V

    .line 2127
    invoke-virtual {p0, v7}, Lcom/htc/sunny/SPresentation;->enabledTouchEvent(Z)V

    .line 2129
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    .line 2130
    const-string v3, "3DGlideMode"

    const-string v4, "scrollToW() - "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setAdapter(Lcom/htc/sunny/SPresentationAdapterBase;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 1321
    new-instance v0, Lcom/htc/sunny/SPresentation$6;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SPresentation$6;-><init>(Lcom/htc/sunny/SPresentation;Lcom/htc/sunny/SPresentationAdapterBase;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1326
    return-void
.end method

.method protected setAdapterW(Lcom/htc/sunny/SPresentationAdapterBase;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 1334
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->stopAnimation()V

    .line 1335
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    if-eqz v0, :cond_0

    .line 1336
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    iget-object v1, p0, Lcom/htc/sunny/SAdapterView;->mDataSetObserver:Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SPresentationAdapterBase;->unregisterDataSetObserver(Lcom/htc/sunny/SDataSetObserver;)V

    .line 1337
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny/SAdapterView;->mDataSetObserver:Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;

    .line 1339
    :cond_0
    iput-object p1, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    .line 1340
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    if-eqz v0, :cond_1

    .line 1341
    new-instance v0, Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;-><init>(Lcom/htc/sunny/SAdapterView;)V

    iput-object v0, p0, Lcom/htc/sunny/SAdapterView;->mDataSetObserver:Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;

    .line 1342
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    iget-object v1, p0, Lcom/htc/sunny/SAdapterView;->mDataSetObserver:Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SPresentationAdapterBase;->registerDataSetObserver(Lcom/htc/sunny/SDataSetObserver;)V

    .line 1345
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mPerformOpeningAnimation:Z

    .line 1347
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->initContainers()V

    .line 1349
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    .line 1350
    return-void
.end method

.method public setClipSize(IIII)V
    .locals 6
    .parameter "nLeft"
    .parameter "nTop"
    .parameter "nRight"
    .parameter "nBottom"

    .prologue
    .line 2377
    new-instance v0, Lcom/htc/sunny/SPresentation$16;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny/SPresentation$16;-><init>(Lcom/htc/sunny/SPresentation;IIII)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 2386
    return-void
.end method

.method public setEdgeItemScrollRatio(F)V
    .locals 3
    .parameter "nRatio"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 1121
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    .line 1122
    iput v1, p0, Lcom/htc/sunny/SPresentation;->mItemScrollRatio:F

    .line 1128
    :goto_0
    return-void

    .line 1123
    :cond_0
    cmpl-float v0, p1, v2

    if-lez v0, :cond_1

    .line 1124
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mItemScrollRatio:F

    goto :goto_0

    .line 1126
    :cond_1
    iput p1, p0, Lcom/htc/sunny/SPresentation;->mItemScrollRatio:F

    goto :goto_0
.end method

.method public setGradualReflection(ILcom/htc/sunny/Vector3F;)V
    .locals 1
    .parameter "nBitmapResId"
    .parameter "translation"

    .prologue
    .line 1220
    iput p1, p0, Lcom/htc/sunny/SPresentation;->mGradualBmpResId:I

    .line 1221
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mGradualTranslation:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, p2}, Lcom/htc/sunny/Vector3F;->setVector3F(Lcom/htc/sunny/Vector3F;)V

    .line 1222
    return-void
.end method

.method public setGradualVisibility(Z)V
    .locals 1
    .parameter "bVisible"

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_0

    .line 1241
    :goto_0
    return-void

    .line 1231
    :cond_0
    new-instance v0, Lcom/htc/sunny/SPresentation$5;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SPresentation$5;-><init>(Lcom/htc/sunny/SPresentation;Z)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setItemShadow(IIIII)V
    .locals 7
    .parameter "nPressResId"
    .parameter "nPosX"
    .parameter "nPosY"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 940
    new-instance v0, Lcom/htc/sunny/SPresentation$1;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/htc/sunny/SPresentation$1;-><init>(Lcom/htc/sunny/SPresentation;IIIII)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 951
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/htc/sunny/SPresentation$OnItemLongClickListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 1363
    iput-object p1, p0, Lcom/htc/sunny/SPresentation;->mItemLongClickListener:Lcom/htc/sunny/SPresentation$OnItemLongClickListener;

    .line 1364
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemLongClickListener:Lcom/htc/sunny/SPresentation$OnItemLongClickListener;

    if-nez v0, :cond_0

    .line 1365
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 1369
    :goto_0
    return-void

    .line 1367
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    goto :goto_0
.end method

.method public setPresentationListener(Lcom/htc/sunny/SPresentation$PresentationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1380
    iput-object p1, p0, Lcom/htc/sunny/SPresentation;->mEventListener:Lcom/htc/sunny/SPresentation$PresentationListener;

    .line 1381
    return-void
.end method

.method public setReflectionColor(III)V
    .locals 1
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 958
    new-instance v0, Lcom/htc/sunny/SPresentation$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/htc/sunny/SPresentation$2;-><init>(Lcom/htc/sunny/SPresentation;III)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 974
    return-void
.end method

.method public setReflectionGap(I)V
    .locals 0
    .parameter "nGap"

    .prologue
    .line 1108
    iput p1, p0, Lcom/htc/sunny/SPresentation;->mReflectionGap:I

    .line 1109
    return-void
.end method

.method public setReflectionHeight(I)V
    .locals 0
    .parameter "nReflectionHeight"

    .prologue
    .line 1095
    iput p1, p0, Lcom/htc/sunny/SPresentation;->mReflectionHeight:I

    .line 1096
    return-void
.end method

.method public setSelection(IZ)V
    .locals 3
    .parameter "nUIPos"
    .parameter "bAnimated"

    .prologue
    .line 1491
    const-string v0, "3DGlideMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSelection()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    new-instance v0, Lcom/htc/sunny/SPresentation$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny/SPresentation$10;-><init>(Lcom/htc/sunny/SPresentation;IZ)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1497
    return-void
.end method

.method protected setSelectionW(IZ)V
    .locals 9
    .parameter "position"
    .parameter "bAnimated"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1504
    const-string v4, "3DGlideMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setSelectionW() + "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    if-ltz p1, :cond_0

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-ge p1, v4, :cond_0

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-ne v4, p1, :cond_1

    .line 1506
    :cond_0
    const-string v4, "3DGlideMode"

    const-string v5, "setSelectionW() -1"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    :goto_0
    return-void

    .line 1510
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1511
    const/4 p2, 0x0

    .line 1515
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/sunny/SPresentation;->getContainerByDataIndex(I)Lcom/htc/sunny/SPresentation$ItemContainer;

    move-result-object v3

    .line 1516
    .local v3, itemContainer:Lcom/htc/sunny/SPresentation$ItemContainer;
    if-ne v7, p2, :cond_3

    iget-boolean v4, p0, Lcom/htc/sunny/SPresentation;->mDataUpdated:Z

    if-ne v7, v4, :cond_3

    if-eqz v3, :cond_3

    iget-boolean v4, p0, Lcom/htc/sunny/SPresentation;->mShiftOneItem:Z

    if-nez v4, :cond_3

    .line 1517
    const-string v4, "3DGlideMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setSelectionW() -2 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    iget v4, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    invoke-virtual {p0, v4}, Lcom/htc/sunny/SPresentation;->scrollToW(I)V

    goto :goto_0

    .line 1522
    :cond_3
    iput p1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    .line 1523
    sget-object v4, Lcom/htc/sunny/SPresentation$DIRECTION;->D_UNKNOWN:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v4, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    .line 1525
    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/htc/sunny/SPresentation;->mDataUpdated:Z

    if-ne v7, v4, :cond_8

    .line 1526
    const/4 v2, -0x1

    .line 1527
    .local v2, dataIndex:I
    const/4 v0, 0x0

    .local v0, cid:I
    :goto_1
    iget v4, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-ge v0, v4, :cond_7

    .line 1528
    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->getContainerByLayoutPos(I)Lcom/htc/sunny/SPresentation$ItemContainer;

    move-result-object v1

    .line 1529
    .local v1, container:Lcom/htc/sunny/SPresentation$ItemContainer;
    if-nez v1, :cond_4

    .line 1527
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1531
    :cond_4
    iget v4, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v4, v4, -0x1

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v0, v4

    add-int v2, v4, p1

    .line 1533
    if-ltz v2, :cond_5

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-lt v2, v4, :cond_6

    .line 1534
    :cond_5
    iput-boolean v7, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    .line 1535
    const/4 v4, -0x1

    iput v4, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    goto :goto_2

    .line 1537
    :cond_6
    iput-boolean v8, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    .line 1538
    iput v2, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    goto :goto_2

    .line 1542
    .end local v1           #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    :cond_7
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateAllContainersData()V

    .line 1545
    .end local v0           #cid:I
    .end local v2           #dataIndex:I
    :cond_8
    invoke-virtual {p0, v8}, Lcom/htc/sunny/SPresentation;->moveToTimeSlot(I)V

    .line 1546
    invoke-virtual {p0, v7}, Lcom/htc/sunny/SPresentation;->updateContainersOrder(Z)V

    .line 1548
    invoke-virtual {p0, p1}, Lcom/htc/sunny/SPresentation;->notifySelectionChange(I)V

    .line 1549
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    .line 1550
    const-string v4, "3DGlideMode"

    const-string v5, "setSelectionW() -3"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setShiftOneItemMode(Z)V
    .locals 0
    .parameter "bEnabled"

    .prologue
    .line 3169
    iput-boolean p1, p0, Lcom/htc/sunny/SPresentation;->mShiftOneItem:Z

    .line 3170
    return-void
.end method

.method public stopAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0x12

    .line 3535
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->hasAnimation()Z

    move-result v0

    if-ne v3, v0, :cond_0

    .line 3537
    const/4 v0, 0x3

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v0, v1, :cond_1

    .line 3538
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    .line 3539
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 3540
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 3560
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/htc/sunny/SPresentation;->enableAnimation(Z)V

    .line 3561
    return-void

    .line 3541
    :cond_1
    const/4 v0, 0x5

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v0, v1, :cond_2

    .line 3542
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    .line 3543
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 3544
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    .line 3545
    :cond_2
    const/4 v0, 0x7

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v0, v1, :cond_3

    .line 3546
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    .line 3547
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 3548
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    .line 3549
    :cond_3
    const/16 v0, 0x9

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v0, v1, :cond_4

    .line 3550
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    .line 3551
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 3552
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    .line 3553
    :cond_4
    const/16 v0, 0xb

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v0, v1, :cond_0

    .line 3554
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    .line 3555
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 3556
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    goto :goto_0
.end method

.method protected updateAllContainersData()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 2496
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v6, :cond_1

    .line 2520
    :cond_0
    :goto_0
    return-void

    .line 2498
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    .local v0, arr$:[Lcom/htc/sunny/SPresentation$ItemContainer;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_8

    aget-object v3, v0, v4

    .line 2499
    .local v3, container:Lcom/htc/sunny/SPresentation$ItemContainer;
    if-nez v3, :cond_2

    .line 2498
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2501
    :cond_2
    iget v6, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    if-ltz v6, :cond_6

    iget v6, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    iget v9, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-ge v6, v9, :cond_6

    .line 2502
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    iget v9, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    invoke-virtual {v6, v9}, Lcom/htc/sunny/SPresentationAdapterBase;->getItemBitmap(I)Lcom/htc/sunny/SBitmap;

    move-result-object v1

    .line 2503
    .local v1, bmp:Lcom/htc/sunny/SBitmap;
    if-eqz v1, :cond_4

    .line 2504
    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->cloneSBitmap()Lcom/htc/sunny/SBitmap;

    move-result-object v2

    .line 2505
    .local v2, bmpClone:Lcom/htc/sunny/SBitmap;
    invoke-virtual {v2}, Lcom/htc/sunny/SBitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_3

    .line 2506
    iget-object v6, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v9, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageTexture:I

    invoke-virtual {v2}, Lcom/htc/sunny/SBitmap;->getBmpId()I

    move-result v10

    invoke-virtual {v6, v9, v10}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    .line 2508
    :cond_3
    invoke-virtual {v2}, Lcom/htc/sunny/SBitmap;->releaseClone()V

    .line 2510
    .end local v2           #bmpClone:Lcom/htc/sunny/SBitmap;
    :cond_4
    iput-boolean v7, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    .line 2515
    .end local v1           #bmp:Lcom/htc/sunny/SBitmap;
    :goto_3
    iget-object v9, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget-boolean v6, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    if-nez v6, :cond_5

    iget-boolean v6, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mSkipItem:Z

    if-eqz v6, :cond_7

    :cond_5
    move v6, v8

    :goto_4
    invoke-virtual {p0, v3, v9, v6}, Lcom/htc/sunny/SPresentation;->updateContainerLayout(Lcom/htc/sunny/SPresentation$ItemContainer;Lcom/htc/sunny/SPresentationContainerLayout;Z)V

    goto :goto_2

    .line 2512
    :cond_6
    iput-boolean v8, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    .line 2513
    const/4 v6, -0x1

    iput v6, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    goto :goto_3

    :cond_7
    move v6, v7

    .line 2515
    goto :goto_4

    .line 2518
    .end local v3           #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    :cond_8
    iput-boolean v8, p0, Lcom/htc/sunny/SPresentation;->mIsFirstRender:Z

    .line 2519
    iput-boolean v8, p0, Lcom/htc/sunny/SPresentation;->mDataUpdated:Z

    goto :goto_0
.end method

.method public updateAllContainersLayout()V
    .locals 1

    .prologue
    .line 2527
    new-instance v0, Lcom/htc/sunny/SPresentation$17;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SPresentation$17;-><init>(Lcom/htc/sunny/SPresentation;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 2541
    return-void
.end method

.method protected updateBouncingState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2603
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-lt v0, v1, :cond_1

    .line 2604
    :cond_0
    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    .line 2612
    :goto_0
    return-void

    .line 2605
    :cond_1
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v0, :cond_2

    .line 2606
    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    goto :goto_0

    .line 2607
    :cond_2
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-gez v0, :cond_3

    .line 2608
    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    goto :goto_0

    .line 2610
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    goto :goto_0
.end method

.method protected updateContainerLayout(Lcom/htc/sunny/SPresentation$ItemContainer;Lcom/htc/sunny/SPresentationContainerLayout;Z)V
    .locals 6
    .parameter "container"
    .parameter "layout"
    .parameter "bForceHidden"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3568
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_1

    .line 3587
    :cond_0
    :goto_0
    return-void

    .line 3569
    :cond_1
    iget-object v0, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v0, v0, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v1, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v1, v1, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v2, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v2, v2, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/sunny/SPresentation$ItemContainer;->setPosition(FFF)V

    .line 3571
    iget-object v0, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget v0, v0, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v1, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget v1, v1, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v2, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget v2, v2, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/sunny/SPresentation$ItemContainer;->setRotation(FFF)V

    .line 3572
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p1, Lcom/htc/sunny/SPresentation$ItemContainer;->mReflectSprite:I

    const/high16 v2, 0x4334

    iget-object v3, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget v3, v3, Lcom/htc/sunny/Vector3F;->mX:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2, v4, v4}, Lcom/htc/sunny/SunnyEngine;->setNodeRotate(IFFF)V

    .line 3574
    iget-object v0, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    iget v0, v0, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v1, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    iget v1, v1, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v2, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    iget v2, v2, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/sunny/SPresentation$ItemContainer;->setScale(FFF)V

    .line 3576
    if-ne v5, p3, :cond_2

    .line 3577
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/sunny/SPresentation$ItemContainer;->setVisibility(Z)V

    .line 3581
    :goto_1
    iget v0, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mAlpha:I

    invoke-virtual {p1, v0}, Lcom/htc/sunny/SPresentation$ItemContainer;->setAlpha(I)V

    .line 3583
    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mPerformOpeningAnimation:Z

    if-ne v5, v0, :cond_0

    .line 3584
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateViewLayout()V

    goto :goto_0

    .line 3579
    :cond_2
    iget-boolean v0, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mVisible:Z

    invoke-virtual {p1, v0}, Lcom/htc/sunny/SPresentation$ItemContainer;->setVisibility(Z)V

    goto :goto_1
.end method

.method protected updateContainerLayoutPos(Lcom/htc/sunny/SPresentation$DIRECTION;)V
    .locals 4
    .parameter "eNextDirection"

    .prologue
    .line 2480
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne p1, v1, :cond_0

    .line 2481
    const/4 v0, 0x0

    .local v0, cid:I
    :goto_0
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-ge v0, v1, :cond_1

    .line 2482
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    rem-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    .line 2481
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2484
    .end local v0           #cid:I
    :cond_0
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne p1, v1, :cond_1

    .line 2485
    const/4 v0, 0x0

    .restart local v0       #cid:I
    :goto_1
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-ge v0, v1, :cond_1

    .line 2486
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    rem-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    .line 2485
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2489
    .end local v0           #cid:I
    :cond_1
    return-void
.end method

.method protected updateContainersOrder()V
    .locals 10

    .prologue
    .line 1747
    iget-object v6, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v6, :cond_1

    .line 1766
    :cond_0
    return-void

    .line 1749
    :cond_1
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v6, v6, -0x1

    div-int/lit8 v4, v6, 0x2

    .line 1750
    .local v4, nCenterPos:I
    iget v6, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    div-int/lit8 v5, v6, 0x2

    .line 1751
    .local v5, nHalfTimeSlot:I
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-gt v6, v5, :cond_2

    .line 1752
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    .local v0, arr$:[Lcom/htc/sunny/SPresentation$ItemContainer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 1753
    .local v1, container:Lcom/htc/sunny/SPresentation$ItemContainer;
    iget-object v6, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v7, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mParentNode:I

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    iget v9, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    sub-int/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/htc/sunny/SunnyEngine;->setNodeOrder(II)V

    .line 1752
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1755
    .end local v0           #arr$:[Lcom/htc/sunny/SPresentation$ItemContainer;
    .end local v1           #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_2
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v6, :cond_3

    .line 1756
    add-int/lit8 v4, v4, -0x1

    .line 1757
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    .restart local v0       #arr$:[Lcom/htc/sunny/SPresentation$ItemContainer;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 1758
    .restart local v1       #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    iget-object v6, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v7, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mParentNode:I

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    iget v9, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    sub-int/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/htc/sunny/SunnyEngine;->setNodeOrder(II)V

    .line 1757
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1760
    .end local v0           #arr$:[Lcom/htc/sunny/SPresentation$ItemContainer;
    .end local v1           #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_3
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-gez v6, :cond_0

    .line 1761
    add-int/lit8 v4, v4, 0x1

    .line 1762
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    .restart local v0       #arr$:[Lcom/htc/sunny/SPresentation$ItemContainer;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_2
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 1763
    .restart local v1       #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    iget-object v6, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v7, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mParentNode:I

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    iget v9, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    sub-int/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/htc/sunny/SunnyEngine;->setNodeOrder(II)V

    .line 1762
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method protected updateContainersOrder(Z)V
    .locals 3
    .parameter "bForce"

    .prologue
    .line 1719
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    if-nez v1, :cond_1

    .line 1740
    :cond_0
    :goto_0
    return-void

    .line 1721
    :cond_1
    const/4 v0, 0x0

    .line 1723
    .local v0, nRegion:I
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL_HALF:I

    if-gt v1, v2, :cond_2

    .line 1724
    const/4 v0, 0x1

    .line 1729
    :goto_1
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mReorderRegion:I

    if-eq v0, v1, :cond_3

    .line 1730
    iput v0, p0, Lcom/htc/sunny/SPresentation;->mReorderRegion:I

    .line 1731
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iput v1, p0, Lcom/htc/sunny/SPresentation;->mReorderItem:I

    .line 1732
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateContainersOrder()V

    goto :goto_0

    .line 1726
    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    .line 1733
    :cond_3
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mReorderItem:I

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-eq v1, v2, :cond_4

    .line 1734
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iput v1, p0, Lcom/htc/sunny/SPresentation;->mReorderItem:I

    .line 1735
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateContainersOrder()V

    goto :goto_0

    .line 1736
    :cond_4
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 1737
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateContainersOrder()V

    goto :goto_0
.end method

.method protected updateNewContainer(Lcom/htc/sunny/SPresentation$DIRECTION;)V
    .locals 10
    .parameter "eNextDirection"

    .prologue
    const/4 v9, 0x1

    .line 2418
    const/4 v4, -0x1

    .line 2420
    .local v4, nLayoutPos:I
    sget-object v6, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v6, p1, :cond_1

    .line 2421
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v4, v6, -0x1

    .line 2428
    :goto_0
    invoke-virtual {p0, v4}, Lcom/htc/sunny/SPresentation;->getContainerByLayoutPos(I)Lcom/htc/sunny/SPresentation$ItemContainer;

    move-result-object v3

    .line 2429
    .local v3, container:Lcom/htc/sunny/SPresentation$ItemContainer;
    if-nez v3, :cond_2

    .line 2473
    .end local v3           #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    :cond_0
    :goto_1
    return-void

    .line 2422
    :cond_1
    sget-object v6, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v6, p1, :cond_0

    .line 2423
    const/4 v4, 0x0

    goto :goto_0

    .line 2431
    .restart local v3       #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    :cond_2
    const/4 v5, -0x1

    .line 2433
    .local v5, nNewDataIndex:I
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-virtual {v6}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->isFakeAnimation()Z

    move-result v6

    if-ne v9, v6, :cond_7

    .line 2434
    iget v5, p0, Lcom/htc/sunny/SPresentation;->mFakeNextUpdateIndex:I

    .line 2435
    sget-object v6, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v6, p1, :cond_6

    .line 2436
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mFakeNextUpdateIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/htc/sunny/SPresentation;->mFakeNextUpdateIndex:I

    .line 2444
    :cond_3
    :goto_2
    if-ltz v5, :cond_4

    iget v6, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-lt v5, v6, :cond_8

    .line 2445
    :cond_4
    iput-boolean v9, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    .line 2446
    const/4 v6, -0x1

    iput v6, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    .line 2455
    :goto_3
    iget v6, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    if-eq v6, v5, :cond_0

    .line 2456
    iput v5, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    .line 2457
    if-ltz v5, :cond_0

    iget v6, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-ge v5, v6, :cond_0

    .line 2458
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    invoke-virtual {v6, v5}, Lcom/htc/sunny/SPresentationAdapterBase;->getItemBitmap(I)Lcom/htc/sunny/SBitmap;

    move-result-object v1

    .line 2459
    .local v1, bmp:Lcom/htc/sunny/SBitmap;
    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-eqz v6, :cond_0

    .line 2460
    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->cloneSBitmap()Lcom/htc/sunny/SBitmap;

    move-result-object v2

    .line 2461
    .local v2, bmpClone:Lcom/htc/sunny/SBitmap;
    invoke-virtual {v2}, Lcom/htc/sunny/SBitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_5

    .line 2462
    iget-object v6, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v7, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageTexture:I

    invoke-virtual {v2}, Lcom/htc/sunny/SBitmap;->getBmpId()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    move-result v0

    .line 2463
    .local v0, bRes:Z
    iput-boolean v9, p0, Lcom/htc/sunny/SPresentation;->mIsFirstRender:Z

    .line 2464
    if-nez v0, :cond_5

    .line 2465
    const-string v6, "3DGlideMode"

    const-string v7, "[SPresentation] updateNewContainer() fail to set texture"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    .end local v0           #bRes:Z
    :cond_5
    invoke-virtual {v2}, Lcom/htc/sunny/SBitmap;->releaseClone()V

    goto :goto_1

    .line 2437
    .end local v1           #bmp:Lcom/htc/sunny/SBitmap;
    .end local v2           #bmpClone:Lcom/htc/sunny/SBitmap;
    :cond_6
    sget-object v6, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v6, p1, :cond_3

    .line 2438
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mFakeNextUpdateIndex:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/htc/sunny/SPresentation;->mFakeNextUpdateIndex:I

    goto :goto_2

    .line 2441
    :cond_7
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v6, v6, -0x1

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v4, v6

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    add-int v5, v6, v7

    goto :goto_2

    .line 2448
    :cond_8
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-virtual {v6}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->isFakeAnimation()Z

    move-result v6

    if-ne v9, v6, :cond_9

    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-virtual {v6, v5}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->isForceHidden(I)Z

    move-result v6

    if-ne v9, v6, :cond_9

    .line 2449
    iput-boolean v9, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    goto :goto_3

    .line 2451
    :cond_9
    const/4 v6, 0x0

    iput-boolean v6, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    goto :goto_3
.end method

.method protected updateViewLayout()V
    .locals 11

    .prologue
    .line 2394
    invoke-super {p0}, Lcom/htc/sunny/SAdapterView;->updateViewLayout()V

    .line 2396
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_0

    .line 2411
    :goto_0
    return-void

    .line 2398
    :cond_0
    const/4 v6, 0x0

    .local v6, nOffsetX:I
    const/4 v7, 0x0

    .line 2399
    .local v7, nOffsetY:I
    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny/SAnimationController;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny/SAnimationController;->isFillAfter()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny/SAnimationController;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2400
    :cond_1
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v1}, Lcom/htc/sunny/SAnimationController;->isPositionAnimation()Z

    move-result v1

    if-ne v0, v1, :cond_2

    .line 2401
    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny/SAnimationController;->getCurrentPosition()Lcom/htc/sunny/Vector3F;

    move-result-object v8

    .line 2402
    .local v8, v:Lcom/htc/sunny/Vector3F;
    iget v0, v8, Lcom/htc/sunny/Vector3F;->mX:F

    float-to-int v6, v0

    .line 2403
    iget v0, v8, Lcom/htc/sunny/Vector3F;->mY:F

    float-to-int v7, v0

    .line 2410
    .end local v8           #v:Lcom/htc/sunny/Vector3F;
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mClipSizeL:I

    add-int/2addr v2, v6

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mClipSizeT:I

    sub-int/2addr v3, v7

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mViewWidth:I

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mClipSizeL:I

    iget v9, p0, Lcom/htc/sunny/SPresentation;->mClipSizeR:I

    add-int/2addr v5, v9

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mViewHeight:I

    iget v9, p0, Lcom/htc/sunny/SPresentation;->mClipSizeT:I

    iget v10, p0, Lcom/htc/sunny/SPresentation;->mClipSizeB:I

    add-int/2addr v9, v10

    sub-int/2addr v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny/SunnyEngine;->setClipArea(IIIII)V

    goto :goto_0

    .line 2406
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny/SView;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v0, v0, Lcom/htc/sunny/Vector3F;->mX:F

    float-to-int v6, v0

    .line 2407
    iget-object v0, p0, Lcom/htc/sunny/SView;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v0, v0, Lcom/htc/sunny/Vector3F;->mY:F

    float-to-int v7, v0

    goto :goto_1
.end method
