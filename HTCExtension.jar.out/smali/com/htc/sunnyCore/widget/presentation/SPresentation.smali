.class public Lcom/htc/sunnyCore/widget/presentation/SPresentation;
.super Lcom/htc/sunnyCore/widget/presentation/SAdapterView;
.source "SPresentation.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunnyCore/widget/presentation/SPresentation$15;,
        Lcom/htc/sunnyCore/widget/presentation/SPresentation$ContainerHitFeedback;,
        Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;,
        Lcom/htc/sunnyCore/widget/presentation/SPresentation$SHandler;,
        Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;,
        Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnLayoutListener;,
        Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnContainerClickListener;,
        Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnSelectionChangeListener;,
        Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnStateListener;,
        Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;,
        Lcom/htc/sunnyCore/widget/presentation/SPresentation$PRESENTATION_ORIENTATION;,
        Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;,
        Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field protected static final ANIMATION_BOUNCING:I = 0x4

.field protected static final ANIMATION_FLING:I = 0x1

.field protected static final ANIMATION_HOMING:I = 0x3

.field protected static final ANIMATION_ROTATE_SELF:I = 0x5

.field protected static final ANIMATION_SCROLL:I = 0x2

.field protected static final ANIMATION_UNKNOW:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = null

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

.field protected mAdapter:Lcom/htc/sunnyCore/widget/presentation/SPresentationAdapterBase;

.field protected mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

.field protected mBlockScroll:Z

.field protected mClipSizeB:I

.field protected mClipSizeL:I

.field protected mClipSizeR:I

.field protected mClipSizeT:I

.field protected mContainerClickListener:Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnContainerClickListener;

.field protected mContainerCount:I

.field protected mContainerHitFeedback:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ContainerHitFeedback;

.field protected mDataCount:I

.field protected mDataUpdated:Z

.field protected mDefaultLayout:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

.field protected mDirection:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

.field protected mDisplacement:F

.field protected mEnableHitFeedback:Z

.field protected mEnableScroll:Z

.field protected mEnableTouchEvent:Z

.field protected mEnabledAnimation:Z

.field protected mEnabledBlockScroll:Z

.field protected mEnabledLargeSensorArea:Z

.field protected mEnabledOpeningAnimation:Z

.field protected mEnabledReflection:Z

.field protected mEnlargeSensorRatioH:F

.field protected mEnlargeSensorRatioW:F

.field protected mFakeAnimationControl:Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;

.field protected mFakeNextUpdateIndex:I

.field protected mFocusPosV:Lcom/htc/sunnyCore/view/Vector3F;

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field protected mHandler:Lcom/htc/sunnyCore/widget/presentation/SPresentation$SHandler;

.field private mHashCode:I

.field protected mHitFeedbackRatio:F

.field protected mIsBouncingState:Z

.field protected mIsContainerCountChanged:Z

.field protected mIsFirstRender:Z

.field private mIsPressed:Z

.field protected mIsSingleTapUp:Z

.field protected mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

.field protected mItemHeight:I

.field protected mItemScrollRatio:F

.field protected mItemWidth:I

.field protected mLayoutListener:Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnLayoutListener;

.field protected mListHeight:I

.field protected mListHeight_H:I

.field protected mListWidth:I

.field protected mListWidth_H:I

.field protected mOldSelectedPos:I

.field protected mOpeningAnimationStart:Z

.field protected mPerformOpeningAnimation:Z

.field protected mPresentationState:I

.field protected mPressContainerId:I

.field protected mPressStartSelectedPos:I

.field protected mReflectionColorB:I

.field protected mReflectionColorG:I

.field protected mReflectionColorR:I

.field protected mReflectionGap:I

.field protected mReflectionHeight:I

.field protected mRenderThread:Lcom/htc/sunnyCore/RenderThread;

.field protected mReorderItem:I

.field protected mReorderRegion:I

.field protected mRotateClockwise:Z

.field protected mSelectedPos:I

.field protected mSelectionChangeListener:Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnSelectionChangeListener;

.field protected mShiftOneItem:Z

.field protected mStateListener:Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnStateListener;

.field protected mSunnyEnvironment:Lcom/htc/sunnyCore/SunnyEnvironment;

.field protected mSurfaceViewHeight:I

.field protected mSurfaceViewHeight_H:I

.field protected mSurfaceViewWidth:I

.field protected mSurfaceViewWidth_H:I

.field protected mTimeSlot:I

.field protected mVisibleContainerCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V
    .locals 6
    .parameter "context"
    .parameter "sContext"

    .prologue
    const/16 v5, 0x26

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 385
    invoke-direct {p0, p1, p2, v3}, Lcom/htc/sunnyCore/widget/presentation/SAdapterView;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Z)V

    .line 245
    iput-object v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    .line 247
    iput-object v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mHandler:Lcom/htc/sunnyCore/widget/presentation/SPresentation$SHandler;

    .line 248
    iput-object v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunnyCore/widget/presentation/SPresentationAdapterBase;

    .line 250
    iput-object v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerClickListener:Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnContainerClickListener;

    .line 251
    iput-object v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mStateListener:Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnStateListener;

    .line 252
    iput-object v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectionChangeListener:Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnSelectionChangeListener;

    .line 253
    iput-object v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mLayoutListener:Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnLayoutListener;

    .line 254
    iput-object v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mGestureDetector:Landroid/view/GestureDetector;

    .line 255
    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    .line 256
    iput-boolean v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mPerformOpeningAnimation:Z

    .line 257
    iput-boolean v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mOpeningAnimationStart:Z

    .line 260
    const/16 v0, 0xfa

    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    .line 261
    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL_HALF:I

    .line 262
    const/16 v0, 0x28

    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->DURATION_SCROLL_TO:I

    .line 263
    const/16 v0, 0x1e

    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->DURATION_SCROLL_NEXT:I

    .line 264
    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->DURATION_SCROLL_NEXT:I

    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->DURATION_SCROLL_PREVIOUS:I

    .line 265
    const/16 v0, 0x28

    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->DURATION_BOUNCING:I

    .line 266
    const/16 v0, 0x28

    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->DURATION_HOMING:I

    .line 267
    const/16 v0, 0x8c

    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->DURATION_FLING:I

    .line 268
    const/16 v0, 0x32

    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->DURATION_ROTATE_SELF:I

    .line 315
    new-instance v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;

    invoke-direct {v0, p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;-><init>(Lcom/htc/sunnyCore/widget/presentation/SPresentation;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mFakeAnimationControl:Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;

    .line 316
    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mFakeNextUpdateIndex:I

    .line 317
    new-instance v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    invoke-direct {v0, p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;-><init>(Lcom/htc/sunnyCore/widget/presentation/SPresentation;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    .line 318
    iput-boolean v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mRotateClockwise:Z

    .line 320
    new-instance v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ContainerHitFeedback;

    invoke-direct {v0, p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ContainerHitFeedback;-><init>(Lcom/htc/sunnyCore/widget/presentation/SPresentation;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerHitFeedback:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ContainerHitFeedback;

    .line 321
    iput-boolean v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataUpdated:Z

    .line 323
    iput v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mPressStartSelectedPos:I

    .line 324
    iput v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mPressContainerId:I

    .line 325
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDisplacement:F

    .line 328
    iput-boolean v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mIsPressed:Z

    .line 329
    iput-boolean v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mIsSingleTapUp:Z

    .line 330
    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    .line 331
    iput v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mOldSelectedPos:I

    .line 332
    iput-boolean v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mIsBouncingState:Z

    .line 333
    iput-boolean v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mEnabledAnimation:Z

    .line 334
    iput-boolean v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mEnableTouchEvent:Z

    .line 335
    iput-boolean v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mEnableScroll:Z

    .line 336
    iput-boolean v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mIsFirstRender:Z

    .line 338
    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mReorderRegion:I

    .line 339
    iput v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mReorderItem:I

    .line 341
    iput-object v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    .line 342
    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    .line 343
    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    .line 344
    iput-boolean v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mIsContainerCountChanged:Z

    .line 345
    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mVisibleContainerCount:I

    .line 347
    iput v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mPresentationState:I

    .line 348
    sget-object v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_UNKNOWN:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    .line 351
    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSurfaceViewWidth:I

    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSurfaceViewHeight:I

    .line 352
    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSurfaceViewWidth_H:I

    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSurfaceViewHeight_H:I

    .line 353
    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemWidth:I

    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemHeight:I

    .line 354
    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mListWidth:I

    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mListHeight:I

    .line 355
    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mListWidth_H:I

    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mListHeight_H:I

    .line 356
    iput-object v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mFocusPosV:Lcom/htc/sunnyCore/view/Vector3F;

    .line 358
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mHashCode:I

    .line 361
    iput-object v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    .line 364
    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mClipSizeL:I

    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mClipSizeT:I

    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mClipSizeR:I

    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mClipSizeB:I

    .line 365
    iput-boolean v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mEnabledOpeningAnimation:Z

    .line 366
    iput-boolean v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mEnabledReflection:Z

    .line 367
    iput-boolean v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mEnabledLargeSensorArea:Z

    .line 368
    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mReflectionHeight:I

    .line 369
    iput v5, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mReflectionColorR:I

    iput v5, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mReflectionColorG:I

    iput v5, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mReflectionColorB:I

    .line 370
    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mReflectionGap:I

    .line 372
    iput-boolean v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mShiftOneItem:Z

    .line 373
    iput-boolean v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mEnabledBlockScroll:Z

    .line 374
    iput-boolean v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mBlockScroll:Z

    .line 375
    iput-boolean v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mEnableHitFeedback:Z

    .line 376
    const v0, 0x3f733333

    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mHitFeedbackRatio:F

    .line 377
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mEnlargeSensorRatioH:F

    .line 378
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mEnlargeSensorRatioW:F

    .line 379
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemScrollRatio:F

    .line 386
    invoke-static {}, Lcom/htc/sunnyCore/SunnyEnvironment;->instance()Lcom/htc/sunnyCore/SunnyEnvironment;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSunnyEnvironment:Lcom/htc/sunnyCore/SunnyEnvironment;

    .line 387
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;IIIII)V
    .locals 7
    .parameter "context"
    .parameter "sContext"
    .parameter "nViewWidth"
    .parameter "nViewHeight"
    .parameter "nItemWidth"
    .parameter "nItemHeight"
    .parameter "nContainerCount"

    .prologue
    const/16 v6, 0x26

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 393
    invoke-direct {p0, p1, p2, v4}, Lcom/htc/sunnyCore/widget/presentation/SAdapterView;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Z)V

    .line 245
    iput-object v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    .line 247
    iput-object v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mHandler:Lcom/htc/sunnyCore/widget/presentation/SPresentation$SHandler;

    .line 248
    iput-object v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunnyCore/widget/presentation/SPresentationAdapterBase;

    .line 250
    iput-object v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerClickListener:Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnContainerClickListener;

    .line 251
    iput-object v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mStateListener:Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnStateListener;

    .line 252
    iput-object v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectionChangeListener:Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnSelectionChangeListener;

    .line 253
    iput-object v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mLayoutListener:Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnLayoutListener;

    .line 254
    iput-object v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mGestureDetector:Landroid/view/GestureDetector;

    .line 255
    iput v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    .line 256
    iput-boolean v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mPerformOpeningAnimation:Z

    .line 257
    iput-boolean v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mOpeningAnimationStart:Z

    .line 260
    const/16 v1, 0xfa

    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    .line 261
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL_HALF:I

    .line 262
    const/16 v1, 0x28

    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->DURATION_SCROLL_TO:I

    .line 263
    const/16 v1, 0x1e

    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->DURATION_SCROLL_NEXT:I

    .line 264
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->DURATION_SCROLL_NEXT:I

    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->DURATION_SCROLL_PREVIOUS:I

    .line 265
    const/16 v1, 0x28

    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->DURATION_BOUNCING:I

    .line 266
    const/16 v1, 0x28

    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->DURATION_HOMING:I

    .line 267
    const/16 v1, 0x8c

    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->DURATION_FLING:I

    .line 268
    const/16 v1, 0x32

    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->DURATION_ROTATE_SELF:I

    .line 315
    new-instance v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;

    invoke-direct {v1, p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;-><init>(Lcom/htc/sunnyCore/widget/presentation/SPresentation;)V

    iput-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mFakeAnimationControl:Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;

    .line 316
    iput v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mFakeNextUpdateIndex:I

    .line 317
    new-instance v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    invoke-direct {v1, p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;-><init>(Lcom/htc/sunnyCore/widget/presentation/SPresentation;)V

    iput-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    .line 318
    iput-boolean v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mRotateClockwise:Z

    .line 320
    new-instance v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ContainerHitFeedback;

    invoke-direct {v1, p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ContainerHitFeedback;-><init>(Lcom/htc/sunnyCore/widget/presentation/SPresentation;)V

    iput-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerHitFeedback:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ContainerHitFeedback;

    .line 321
    iput-boolean v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataUpdated:Z

    .line 323
    iput v5, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mPressStartSelectedPos:I

    .line 324
    iput v5, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mPressContainerId:I

    .line 325
    const/high16 v1, -0x4080

    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDisplacement:F

    .line 328
    iput-boolean v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mIsPressed:Z

    .line 329
    iput-boolean v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mIsSingleTapUp:Z

    .line 330
    iput v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    .line 331
    iput v5, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mOldSelectedPos:I

    .line 332
    iput-boolean v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mIsBouncingState:Z

    .line 333
    iput-boolean v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mEnabledAnimation:Z

    .line 334
    iput-boolean v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mEnableTouchEvent:Z

    .line 335
    iput-boolean v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mEnableScroll:Z

    .line 336
    iput-boolean v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mIsFirstRender:Z

    .line 338
    iput v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mReorderRegion:I

    .line 339
    iput v5, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mReorderItem:I

    .line 341
    iput-object v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    .line 342
    iput v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    .line 343
    iput v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    .line 344
    iput-boolean v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mIsContainerCountChanged:Z

    .line 345
    iput v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mVisibleContainerCount:I

    .line 347
    iput v5, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mPresentationState:I

    .line 348
    sget-object v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_UNKNOWN:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    .line 351
    iput v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSurfaceViewWidth:I

    iput v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSurfaceViewHeight:I

    .line 352
    iput v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSurfaceViewWidth_H:I

    iput v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSurfaceViewHeight_H:I

    .line 353
    iput v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemWidth:I

    iput v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemHeight:I

    .line 354
    iput v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mListWidth:I

    iput v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mListHeight:I

    .line 355
    iput v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mListWidth_H:I

    iput v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mListHeight_H:I

    .line 356
    iput-object v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mFocusPosV:Lcom/htc/sunnyCore/view/Vector3F;

    .line 358
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mHashCode:I

    .line 361
    iput-object v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    .line 364
    iput v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mClipSizeL:I

    iput v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mClipSizeT:I

    iput v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mClipSizeR:I

    iput v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mClipSizeB:I

    .line 365
    iput-boolean v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mEnabledOpeningAnimation:Z

    .line 366
    iput-boolean v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mEnabledReflection:Z

    .line 367
    iput-boolean v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mEnabledLargeSensorArea:Z

    .line 368
    iput v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mReflectionHeight:I

    .line 369
    iput v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mReflectionColorR:I

    iput v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mReflectionColorG:I

    iput v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mReflectionColorB:I

    .line 370
    iput v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mReflectionGap:I

    .line 372
    iput-boolean v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mShiftOneItem:Z

    .line 373
    iput-boolean v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mEnabledBlockScroll:Z

    .line 374
    iput-boolean v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mBlockScroll:Z

    .line 375
    iput-boolean v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mEnableHitFeedback:Z

    .line 376
    const v1, 0x3f733333

    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mHitFeedbackRatio:F

    .line 377
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mEnlargeSensorRatioH:F

    .line 378
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mEnlargeSensorRatioW:F

    .line 379
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemScrollRatio:F

    .line 395
    iput p5, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemWidth:I

    .line 396
    iput p6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemHeight:I

    .line 397
    iput p3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mListWidth:I

    .line 398
    iput p4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mListHeight:I

    .line 399
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mListWidth:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mListWidth_H:I

    .line 400
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mListHeight:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mListHeight_H:I

    .line 401
    move v0, p7

    .line 402
    .local v0, nCount:I
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    .line 403
    sget-object v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set container count as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". It should be an odd number."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    add-int/lit8 v0, v0, -0x1

    .line 406
    :cond_0
    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    .line 408
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->initDefaultLayout()V

    .line 409
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getSpriteIndex(I)I
    .locals 3
    .parameter "nTag"

    .prologue
    const/4 v1, -0x1

    .line 792
    iget v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mHashCode:I

    sub-int v0, p1, v2

    .line 793
    .local v0, spriteIndex:I
    if-gt v0, v1, :cond_0

    move v0, v1

    .line 794
    .end local v0           #spriteIndex:I
    :cond_0
    return v0
.end method

.method private getSpriteTag(I)I
    .locals 1
    .parameter "nSpriteIndex"

    .prologue
    .line 788
    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mHashCode:I

    add-int/2addr v0, p1

    return v0
.end method

.method protected static interpolateLinear(FFFF)F
    .locals 2
    .parameter "current"
    .parameter "start"
    .parameter "total"
    .parameter "duration"

    .prologue
    const/4 v0, 0x0

    .line 3067
    cmpl-float v1, v0, p3

    if-nez v1, :cond_0

    .line 3069
    :goto_0
    return v0

    :cond_0
    div-float v0, p2, p3

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    goto :goto_0
.end method

.method protected static nextPowerOf2(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 836
    add-int/lit8 p0, p0, -0x1

    .line 837
    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 838
    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 839
    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 840
    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 841
    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 842
    add-int/lit8 v0, p0, 0x1

    return v0
.end method


# virtual methods
.method protected Get2DY(I)I
    .locals 1
    .parameter "n3DY"

    .prologue
    .line 2874
    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSurfaceViewHeight_H:I

    sub-int/2addr v0, p1

    return v0
.end method

.method protected Get3DX(I)I
    .locals 1
    .parameter "n2DX"

    .prologue
    .line 2888
    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSurfaceViewWidth_H:I

    sub-int v0, p1, v0

    return v0
.end method

.method protected Get3DY(I)I
    .locals 1
    .parameter "n2DY"

    .prologue
    .line 2881
    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSurfaceViewHeight_H:I

    sub-int v0, p1, v0

    return v0
.end method

.method protected animateView()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3076
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mHandler:Lcom/htc/sunnyCore/widget/presentation/SPresentation$SHandler;

    if-nez v0, :cond_1

    .line 3081
    :cond_0
    :goto_0
    return-void

    .line 3078
    :cond_1
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mHandler:Lcom/htc/sunnyCore/widget/presentation/SPresentation$SHandler;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$SHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3079
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mHandler:Lcom/htc/sunnyCore/widget/presentation/SPresentation$SHandler;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$SHandler;->sendEmptyMessage(I)V

    goto :goto_0
.end method

.method public applyAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2450
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->hasAnimation()Z

    move-result v0

    if-ne v1, v0, :cond_0

    .line 2451
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->type:I

    packed-switch v0, :pswitch_data_0

    .line 2471
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerHitFeedback:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ContainerHitFeedback;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ContainerHitFeedback;->animate()V

    .line 2472
    iget-boolean v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mIsFirstRender:Z

    if-ne v1, v0, :cond_1

    .line 2474
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mIsFirstRender:Z

    .line 2475
    sget-object v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "update and render"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2477
    :cond_1
    return-void

    .line 2459
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->onScrollAnimation()V

    .line 2460
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->animateView()V

    goto :goto_0

    .line 2463
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->onRotateSelf()V

    .line 2464
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->animateView()V

    goto :goto_0

    .line 2451
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected createResource()V
    .locals 4

    .prologue
    .line 2369
    sget-object v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createResource + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    invoke-super {p0}, Lcom/htc/sunnyCore/widget/presentation/SAdapterView;->createResource()V

    .line 2371
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getRenderThread()Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    .line 2372
    new-instance v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$SHandler;

    iget-object v1, p0, Lcom/htc/sunnyCore/view/SView;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SHandler-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getNodeId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getRenderThread()Lcom/htc/sunnyCore/RenderThread;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$SHandler;-><init>(Lcom/htc/sunnyCore/widget/presentation/SPresentation;Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunnyCore/RenderThread;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mHandler:Lcom/htc/sunnyCore/widget/presentation/SPresentation$SHandler;

    .line 2374
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_0

    .line 2375
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/htc/sunnyCore/view/SView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mGestureDetector:Landroid/view/GestureDetector;

    .line 2376
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 2381
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->initContainers()V

    .line 2382
    sget-object v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "createResource -"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2383
    return-void
.end method

.method protected destroyAllResource()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 802
    iget-object v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    if-eqz v4, :cond_6

    .line 803
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    .local v0, arr$:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_6

    aget-object v1, v0, v2

    .line 804
    .local v1, container:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    if-nez v1, :cond_0

    .line 803
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 806
    :cond_0
    iget-object v4, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mImageTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v4, :cond_1

    .line 807
    iget-object v4, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mImageTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 808
    iput-object v5, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mImageTexture:Lcom/htc/sunnyCore/Texture;

    .line 810
    :cond_1
    iget-object v4, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v4, :cond_2

    .line 811
    iget-object v4, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/Sprite;->release()V

    .line 812
    iput-object v5, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunnyCore/Sprite;

    .line 814
    :cond_2
    iget-object v4, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v4, :cond_3

    .line 815
    iget-object v4, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/Sprite;->release()V

    .line 816
    iput-object v5, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunnyCore/Sprite;

    .line 818
    :cond_3
    iget-object v4, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mImageSprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v4, :cond_4

    .line 819
    iget-object v4, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mImageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/Sprite;->release()V

    .line 820
    iput-object v5, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mImageSprite:Lcom/htc/sunnyCore/Sprite;

    .line 822
    :cond_4
    iget-object v4, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mReflectSprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v4, :cond_5

    .line 823
    iget-object v4, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mReflectSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/Sprite;->release()V

    .line 824
    iput-object v5, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mReflectSprite:Lcom/htc/sunnyCore/Sprite;

    .line 827
    :cond_5
    invoke-virtual {p0, v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->removeView(Lcom/htc/sunnyCore/view/SView;)V

    goto :goto_1

    .line 830
    .end local v0           #arr$:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    .end local v1           #container:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_6
    return-void
.end method

.method protected enableAnimation(Z)V
    .locals 0
    .parameter "bEnalbed"

    .prologue
    .line 2583
    iput-boolean p1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mEnabledAnimation:Z

    .line 2584
    return-void
.end method

.method public enableHitFeedback(Z)V
    .locals 0
    .parameter "enableHitFeedback"

    .prologue
    .line 2593
    iput-boolean p1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mEnableHitFeedback:Z

    .line 2594
    return-void
.end method

.method public enableLargeSensorArea(Z)V
    .locals 0
    .parameter "bEnabled"

    .prologue
    .line 784
    iput-boolean p1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mEnabledLargeSensorArea:Z

    .line 785
    return-void
.end method

.method public enableScroll(Z)V
    .locals 0
    .parameter "bEnabled"

    .prologue
    .line 2626
    iput-boolean p1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mEnableScroll:Z

    .line 2627
    return-void
.end method

.method public enabledLayoutAnimateIn(Z)V
    .locals 0
    .parameter "bEnabled"

    .prologue
    .line 696
    iput-boolean p1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mEnabledOpeningAnimation:Z

    .line 697
    return-void
.end method

.method public enabledReflection(Z)V
    .locals 0
    .parameter "bEnabled"

    .prologue
    .line 777
    iput-boolean p1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mEnabledReflection:Z

    .line 778
    return-void
.end method

.method public enabledTouchEvent(Z)V
    .locals 0
    .parameter "bEnabled"

    .prologue
    .line 2619
    iput-boolean p1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mEnableTouchEvent:Z

    .line 2620
    return-void
.end method

.method public enlargeSensorArea(F)V
    .locals 0
    .parameter "ratio"

    .prologue
    .line 756
    iput p1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mEnlargeSensorRatioH:F

    .line 757
    return-void
.end method

.method public enlargeSensorAreaWidth(F)V
    .locals 0
    .parameter "ratio"

    .prologue
    .line 767
    iput p1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mEnlargeSensorRatioW:F

    .line 768
    return-void
.end method

.method public fling(I)V
    .locals 1
    .parameter "nVelocity"

    .prologue
    .line 1667
    new-instance v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$10;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$10;-><init>(Lcom/htc/sunnyCore/widget/presentation/SPresentation;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1674
    return-void
.end method

.method protected flingW(I)V
    .locals 11
    .parameter "nVelocity"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 1681
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->isEnabledAnimation()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1682
    const/16 v6, 0x12

    invoke-virtual {p0, v6}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 1789
    :goto_0
    return-void

    .line 1686
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->stopAnimation()V

    .line 1688
    iget-boolean v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mShiftOneItem:Z

    if-eq v9, v6, :cond_1

    iget-boolean v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mIsBouncingState:Z

    if-ne v9, v6, :cond_2

    .line 1689
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->homing()V

    goto :goto_0

    .line 1693
    :cond_2
    iget-object v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    invoke-virtual {v6}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->reset()V

    .line 1694
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 1695
    iget-object v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iput v9, v6, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->type:I

    .line 1697
    iget-object v6, p0, Lcom/htc/sunnyCore/view/SView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    .line 1698
    .local v1, VELOCITY_MIN:I
    const/16 v0, 0xbb8

    .line 1699
    .local v0, VELOCITY_MAX:I
    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v6, v6, -0x2

    iget v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1700
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

    .line 1701
    .local v4, nPosOffset:I
    move v3, v4

    .line 1703
    .local v3, nOrgPosOffset:I
    if-lez p1, :cond_b

    .line 1704
    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    if-gtz v6, :cond_3

    .line 1705
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->onAnimationEnd()V

    goto :goto_0

    .line 1707
    :cond_3
    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    sub-int/2addr v6, v4

    if-gtz v6, :cond_9

    .line 1708
    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v6, :cond_8

    .line 1709
    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    add-int/lit8 v4, v6, -0x1

    .line 1739
    :cond_4
    :goto_1
    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    mul-int v5, v6, v4

    .line 1742
    .local v5, nTimeSlotOffset:I
    if-lez p1, :cond_12

    .line 1743
    sget-object v6, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    iput-object v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    .line 1744
    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v6, :cond_10

    .line 1745
    iget-object v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v8, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    sub-int/2addr v7, v8

    add-int/2addr v7, v5

    iput v7, v6, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1763
    :goto_2
    iget-boolean v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mShiftOneItem:Z

    if-ne v9, v6, :cond_15

    .line 1764
    iget-object v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->DURATION_SCROLL_NEXT:I

    iput v7, v6, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 1770
    :goto_3
    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    if-gtz v6, :cond_16

    sget-object v6, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    iget-object v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    if-ne v6, v7, :cond_16

    .line 1771
    iget-object v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iput v10, v6, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 1775
    :cond_5
    :goto_4
    iget-object v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget-object v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v7, v7, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    iget-object v8, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v8, v8, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-virtual {p0, v7, v8}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getRefineDuration(II)I

    move-result v7

    iput v7, v6, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 1777
    iget-object v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v6, v6, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-gtz v6, :cond_6

    .line 1778
    iget-object v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    const/4 v7, 0x0

    iput v7, v6, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 1780
    :cond_6
    iget-object v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v6, v6, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-lez v6, :cond_7

    iget-object v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v6, v6, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    if-nez v6, :cond_17

    .line 1781
    :cond_7
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->onAnimationEnd()V

    goto/16 :goto_0

    .line 1711
    .end local v5           #nTimeSlotOffset:I
    :cond_8
    iget v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    goto :goto_1

    .line 1713
    :cond_9
    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    sub-int/2addr v7, v4

    if-gt v6, v7, :cond_4

    .line 1714
    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    if-gez v6, :cond_a

    .line 1715
    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    iget v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v7, v7, -0x1

    sub-int v4, v6, v7

    goto :goto_1

    .line 1717
    :cond_a
    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v7, v7, -0x1

    sub-int v4, v6, v7

    goto :goto_1

    .line 1721
    :cond_b
    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    if-gt v6, v7, :cond_c

    .line 1722
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->onAnimationEnd()V

    goto/16 :goto_0

    .line 1724
    :cond_c
    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    add-int/2addr v7, v4

    if-gt v6, v7, :cond_e

    .line 1725
    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    if-gez v6, :cond_d

    .line 1726
    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    sub-int/2addr v6, v7

    add-int/lit8 v4, v6, -0x1

    goto/16 :goto_1

    .line 1728
    :cond_d
    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    sub-int v4, v6, v7

    goto/16 :goto_1

    .line 1730
    :cond_e
    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    add-int/2addr v6, v4

    if-gtz v6, :cond_4

    .line 1731
    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v6, :cond_f

    .line 1732
    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v4

    goto/16 :goto_1

    .line 1734
    :cond_f
    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    goto/16 :goto_1

    .line 1746
    .restart local v5       #nTimeSlotOffset:I
    :cond_10
    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    if-gez v6, :cond_11

    .line 1747
    iget-object v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v7, v5

    iput v7, v6, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_2

    .line 1749
    :cond_11
    iget-object v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iput v5, v6, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_2

    .line 1752
    :cond_12
    sget-object v6, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    iput-object v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    .line 1753
    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v6, :cond_13

    .line 1754
    iget-object v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    add-int/2addr v7, v5

    iput v7, v6, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_2

    .line 1755
    :cond_13
    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    if-gez v6, :cond_14

    .line 1756
    iget-object v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v8, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    sub-int/2addr v7, v8

    add-int/2addr v7, v5

    iput v7, v6, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_2

    .line 1758
    :cond_14
    iget-object v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iput v5, v6, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_2

    .line 1766
    :cond_15
    iget-object v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->DURATION_FLING:I

    iput v7, v6, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    goto/16 :goto_3

    .line 1772
    :cond_16
    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    if-gt v6, v7, :cond_5

    sget-object v6, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    iget-object v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    if-ne v6, v7, :cond_5

    .line 1773
    iget-object v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iput v10, v6, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    goto/16 :goto_4

    .line 1785
    :cond_17
    iget-object v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget-object v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v7, v7, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    iget-object v8, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v8, v8, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v6, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 1786
    iget-object v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    sget-object v7, Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;->EASEOUT_CUBIC:Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;

    iput-object v7, v6, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;

    .line 1788
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->animateView()V

    goto/16 :goto_0
.end method

.method protected freeResource()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2391
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->stopAnimation()V

    .line 2393
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->destroyAllResource()V

    .line 2395
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mHandler:Lcom/htc/sunnyCore/widget/presentation/SPresentation$SHandler;

    if-eqz v0, :cond_0

    .line 2396
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mHandler:Lcom/htc/sunnyCore/widget/presentation/SPresentation$SHandler;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$SHandler;->release()V

    .line 2397
    iput-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mHandler:Lcom/htc/sunnyCore/widget/presentation/SPresentation$SHandler;

    .line 2400
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    .line 2401
    iput-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    .line 2402
    invoke-super {p0}, Lcom/htc/sunnyCore/widget/presentation/SAdapterView;->freeResource()V

    .line 2403
    return-void
.end method

.method public getAnimationDirection()Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;
    .locals 1

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    return-object v0
.end method

.method protected getContainerByDataIndex(I)Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    .locals 6
    .parameter "nDataIndex"

    .prologue
    const/4 v4, 0x0

    .line 2175
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    if-nez v5, :cond_0

    move-object v1, v4

    .line 2184
    :goto_0
    return-object v1

    .line 2177
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    .local v0, arr$:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 2178
    .local v1, container:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    if-nez v1, :cond_2

    .line 2177
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2180
    :cond_2
    iget v5, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    if-ne p1, v5, :cond_1

    goto :goto_0

    .end local v1           #container:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    :cond_3
    move-object v1, v4

    .line 2184
    goto :goto_0
.end method

.method protected getContainerByLayoutPos(I)Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    .locals 6
    .parameter "nUIPos"

    .prologue
    const/4 v4, 0x0

    .line 2159
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    if-nez v5, :cond_0

    move-object v1, v4

    .line 2168
    :goto_0
    return-object v1

    .line 2161
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    .local v0, arr$:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 2162
    .local v1, container:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    if-nez v1, :cond_2

    .line 2161
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2164
    :cond_2
    iget v5, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mLayoutPos:I

    if-ne p1, v5, :cond_1

    goto :goto_0

    .end local v1           #container:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    :cond_3
    move-object v1, v4

    .line 2168
    goto :goto_0
.end method

.method protected getContainerId(I)I
    .locals 4
    .parameter "nHitSpriteId"

    .prologue
    const/4 v2, -0x1

    .line 2857
    if-ne v2, p1, :cond_1

    move v0, v2

    .line 2867
    :cond_0
    :goto_0
    return v0

    .line 2860
    :cond_1
    invoke-static {p1}, Lcom/htc/sunnyCore/Sprite;->search(I)Lcom/htc/sunnyCore/Sprite;

    move-result-object v1

    .line 2861
    .local v1, sprite:Lcom/htc/sunnyCore/Sprite;
    if-nez v1, :cond_2

    move v0, v2

    goto :goto_0

    .line 2863
    :cond_2
    invoke-virtual {v1}, Lcom/htc/sunnyCore/Sprite;->getUserFlag()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getSpriteIndex(I)I

    move-result v0

    .line 2864
    .local v0, nSpriteIndex:I
    if-ltz v0, :cond_3

    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    if-lt v0, v3, :cond_0

    :cond_3
    move v0, v2

    .line 2867
    goto :goto_0
.end method

.method protected getContainerLayout(I)Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;
    .locals 1
    .parameter "nPos"

    .prologue
    .line 3007
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mLayoutListener:Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnLayoutListener;

    if-eqz v0, :cond_0

    .line 3008
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mLayoutListener:Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnLayoutListener;

    invoke-interface {v0, p1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnLayoutListener;->getContainerLayout(I)Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    move-result-object v0

    .line 3011
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getContainerView(I)Lcom/htc/sunnyCore/view/SView;
    .locals 1
    .parameter "nUIPos"

    .prologue
    .line 686
    invoke-virtual {p0, p1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getContainerByLayoutPos(I)Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    move-result-object v0

    return-object v0
.end method

.method protected getDisplacementToContainer(IF)F
    .locals 3
    .parameter "ContainerId"
    .parameter "n3DX"

    .prologue
    .line 2837
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    if-lt p1, v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 2840
    :goto_0
    return v1

    .line 2839
    :cond_1
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->getSpritePosition(Lcom/htc/sunnyCore/Sprite;)Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v0

    .line 2840
    .local v0, pos3DV:Lcom/htc/sunnyCore/view/Vector3F;
    iget v1, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    sub-float v1, p2, v1

    goto :goto_0
.end method

.method protected getInterpolateResult(FFFFLcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;)F
    .locals 11
    .parameter "current"
    .parameter "start"
    .parameter "total"
    .parameter "duration"
    .parameter "interpolate"

    .prologue
    .line 2319
    const/4 v3, 0x0

    .line 2320
    .local v3, nRes:F
    const/4 v6, 0x0

    .local v6, ts:F
    const/4 v5, 0x0

    .line 2321
    .local v5, tc:F
    move v4, p1

    .line 2322
    .local v4, t:F
    move v0, p2

    .line 2323
    .local v0, b:F
    move v1, p3

    .line 2324
    .local v1, c:F
    move v2, p4

    .line 2326
    .local v2, d:F
    sget-object v7, Lcom/htc/sunnyCore/widget/presentation/SPresentation$15;->$SwitchMap$com$htc$sunnyCore$widget$presentation$SPresentation$INTERPOLATE:[I

    invoke-virtual/range {p5 .. p5}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 2341
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Not support interpolate typle !!!"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2328
    :pswitch_0
    div-float v7, v1, v2

    mul-float/2addr v7, v4

    add-float v3, v7, v0

    .line 2343
    :goto_0
    return v3

    .line 2331
    :pswitch_1
    div-float/2addr v4, v2

    .line 2332
    mul-float v6, v4, v4

    .line 2333
    mul-float v5, v6, v4

    .line 2334
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

    .line 2335
    goto :goto_0

    .line 2338
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

    .line 2339
    goto :goto_0

    .line 2326
    nop

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
    .line 2847
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    if-lt p1, v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 2850
    :goto_0
    return v1

    .line 2849
    :cond_1
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->getSpritePosition(Lcom/htc/sunnyCore/Sprite;)Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v0

    .line 2850
    .local v0, pos3DV:Lcom/htc/sunnyCore/view/Vector3F;
    iget v1, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    add-float/2addr v1, p2

    goto :goto_0
.end method

.method protected getRefineDuration(II)I
    .locals 4
    .parameter "nDuration"
    .parameter "nTotalTimeSlot"

    .prologue
    const/4 v1, 0x2

    .line 2137
    if-gtz p1, :cond_1

    move p1, v1

    .line 2152
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 2141
    .restart local p1
    :cond_1
    iget v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    div-int/2addr v2, p1

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 2142
    .local v0, nThreshold:I
    if-gtz v0, :cond_2

    move p1, v1

    .line 2143
    goto :goto_0

    .line 2146
    :cond_2
    if-ge p2, p1, :cond_3

    move p1, v1

    .line 2147
    goto :goto_0

    .line 2148
    :cond_3
    mul-int/lit8 v1, p1, 0x2

    if-ge p2, v1, :cond_0

    .line 2149
    const/4 p1, 0x3

    goto :goto_0
.end method

.method public getSelection()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1121
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    if-gez v1, :cond_1

    .line 1129
    :cond_0
    :goto_0
    return v0

    .line 1123
    :cond_1
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    iget v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    if-lt v1, v2, :cond_2

    .line 1124
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    if-gez v1, :cond_0

    .line 1126
    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1129
    :cond_2
    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 1111
    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mPresentationState:I

    return v0
.end method

.method protected getTimeSlotOffsetX(IF)I
    .locals 6
    .parameter "nBaseUIPos"
    .parameter "nOffsetX"

    .prologue
    const/4 v3, 0x0

    .line 2772
    iget-object v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunnyCore/widget/presentation/SPresentationAdapterBase;

    if-nez v4, :cond_1

    move v0, v3

    .line 2830
    :cond_0
    :goto_0
    return v0

    .line 2774
    :cond_1
    if-ltz p1, :cond_2

    iget v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    if-lt p1, v4, :cond_3

    :cond_2
    move v0, v3

    .line 2775
    goto :goto_0

    .line 2779
    :cond_3
    const/4 v0, 0x0

    .line 2780
    .local v0, nTimeSlotOffset:I
    iget v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v4, :cond_8

    .line 2782
    if-ltz p1, :cond_4

    iget v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v4, v4, -0x1

    if-le p1, v4, :cond_5

    :cond_4
    move v0, v3

    .line 2783
    goto :goto_0

    .line 2784
    :cond_5
    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_6

    .line 2785
    invoke-virtual {p0, p1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v3, v3, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {p0, v4}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v4, v4, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    sub-float v2, v3, v4

    .line 2786
    .local v2, nXInterval:F
    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    div-float/2addr v3, v2

    float-to-int v0, v3

    .line 2807
    .end local v2           #nXInterval:F
    :goto_1
    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v3, v3, -0x2

    iget v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2808
    .local v1, nVisibleItems:I
    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mPressStartSelectedPos:I

    if-lez v3, :cond_e

    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mPressStartSelectedPos:I

    iget v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_e

    .line 2809
    if-lez v0, :cond_d

    .line 2810
    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    iget v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mPressStartSelectedPos:I

    if-gt v3, v4, :cond_0

    .line 2811
    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    iget v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 2787
    .end local v1           #nVisibleItems:I
    :cond_6
    if-nez p1, :cond_7

    .line 2788
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v3, v3, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    invoke-virtual {p0, p1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v4, v4, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    sub-float v2, v3, v4

    .line 2789
    .restart local v2       #nXInterval:F
    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    div-float/2addr v3, v2

    float-to-int v0, v3

    .line 2790
    goto :goto_1

    .line 2791
    .end local v2           #nXInterval:F
    :cond_7
    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v4}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v4, v4, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    invoke-virtual {p0, p1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v5, v5, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    float-to-int v0, v3

    goto :goto_1

    .line 2795
    :cond_8
    if-ltz p1, :cond_9

    iget v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v4, v4, -0x1

    if-le p1, v4, :cond_a

    :cond_9
    move v0, v3

    .line 2796
    goto/16 :goto_0

    .line 2797
    :cond_a
    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_b

    .line 2798
    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    invoke-virtual {p0, p1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v4, v4, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v5, v5, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    float-to-int v0, v3

    goto/16 :goto_1

    .line 2799
    :cond_b
    if-nez p1, :cond_c

    .line 2800
    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v4}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v4, v4, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    invoke-virtual {p0, p1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v5, v5, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    float-to-int v0, v3

    goto/16 :goto_1

    .line 2802
    :cond_c
    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    invoke-virtual {p0, p1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v4, v4, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v5, v5, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    float-to-int v0, v3

    goto/16 :goto_1

    .line 2813
    .restart local v1       #nVisibleItems:I
    :cond_d
    if-gez v0, :cond_0

    .line 2814
    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    iget v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mPressStartSelectedPos:I

    if-lt v3, v4, :cond_0

    .line 2815
    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    iget v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    neg-int v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto/16 :goto_0

    .line 2819
    :cond_e
    add-int/lit8 v3, v1, 0x1

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    if-ge v3, v4, :cond_f

    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mPressStartSelectedPos:I

    if-nez v3, :cond_f

    if-gez v0, :cond_f

    .line 2820
    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    iget v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v4, v4, -0x2

    if-lt v3, v4, :cond_0

    .line 2821
    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    iget v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    neg-int v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto/16 :goto_0

    .line 2824
    :cond_f
    add-int/lit8 v3, v1, 0x1

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    if-ge v3, v4, :cond_0

    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mPressStartSelectedPos:I

    iget v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_0

    if-lez v0, :cond_0

    .line 2825
    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    const/4 v4, 0x1

    if-gt v3, v4, :cond_0

    .line 2826
    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    iget v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto/16 :goto_0
.end method

.method public hasAnimation()Z
    .locals 2

    .prologue
    .line 2895
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->type:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunnyCore/widget/presentation/SPresentationAdapterBase;

    if-eqz v0, :cond_0

    .line 2896
    const/4 v0, 0x1

    .line 2898
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected homing()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1323
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    if-gtz v1, :cond_0

    .line 1324
    invoke-virtual {p0, v6}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 1325
    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 1329
    :cond_0
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->reset()V

    .line 1331
    iget-boolean v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mIsBouncingState:Z

    if-nez v1, :cond_10

    .line 1332
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    sget-object v2, Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;->EASEINOUT_CUBIC:Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;

    iput-object v2, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;

    .line 1333
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    if-nez v1, :cond_4

    .line 1334
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iput v7, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1423
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 1424
    .local v0, nDuration:I
    iget-boolean v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mIsBouncingState:Z

    if-ne v6, v1, :cond_18

    .line 1425
    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->DURATION_BOUNCING:I

    .line 1430
    :goto_1
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getRefineDuration(II)I

    move-result v0

    .line 1432
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-gtz v1, :cond_2

    .line 1433
    const/4 v0, 0x0

    .line 1436
    :cond_2
    iget-boolean v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mIsBouncingState:Z

    if-ne v6, v1, :cond_19

    .line 1437
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 1438
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iput v8, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->type:I

    .line 1445
    :goto_2
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-lez v1, :cond_3

    if-gtz v0, :cond_1a

    .line 1446
    :cond_3
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->onAnimationEnd()V

    .line 1457
    :goto_3
    return-void

    .line 1335
    .end local v0           #nDuration:I
    :cond_4
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mPresentationState:I

    if-ne v8, v1, :cond_8

    .line 1337
    sget-object v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    if-ne v1, v2, :cond_6

    .line 1338
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_5

    .line 1339
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_0

    .line 1341
    :cond_5
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_0

    .line 1344
    :cond_6
    sget-object v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    if-ne v1, v2, :cond_1

    .line 1345
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_7

    .line 1346
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_0

    .line 1348
    :cond_7
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_0

    .line 1351
    :cond_8
    iget-boolean v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mShiftOneItem:Z

    if-ne v6, v1, :cond_c

    .line 1352
    sget-object v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    if-ne v1, v2, :cond_a

    .line 1353
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_9

    .line 1354
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    .line 1356
    :cond_9
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    .line 1359
    :cond_a
    sget-object v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    if-ne v1, v2, :cond_1

    .line 1360
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_b

    .line 1361
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    .line 1363
    :cond_b
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    .line 1368
    :cond_c
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL_HALF:I

    if-gt v1, v2, :cond_e

    .line 1369
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_d

    .line 1370
    sget-object v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    .line 1374
    :goto_4
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    .line 1372
    :cond_d
    sget-object v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    goto :goto_4

    .line 1376
    :cond_e
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_f

    .line 1377
    sget-object v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    .line 1381
    :goto_5
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    .line 1379
    :cond_f
    sget-object v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    goto :goto_5

    .line 1386
    :cond_10
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    sget-object v2, Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;->EASEOUT_CUBIC:Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;

    iput-object v2, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;

    .line 1387
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    if-nez v1, :cond_12

    .line 1388
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    if-ltz v1, :cond_11

    .line 1389
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    iput v2, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1390
    sget-object v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    goto/16 :goto_0

    .line 1392
    :cond_11
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    neg-int v2, v2

    iput v2, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1393
    sget-object v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    goto/16 :goto_0

    .line 1395
    :cond_12
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    if-gez v1, :cond_14

    .line 1396
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    if-ltz v1, :cond_13

    .line 1397
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1401
    :goto_6
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-eqz v1, :cond_1

    .line 1402
    sget-object v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    goto/16 :goto_0

    .line 1399
    :cond_13
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_6

    .line 1404
    :cond_14
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    if-ne v1, v2, :cond_15

    .line 1405
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1406
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-eqz v1, :cond_1

    .line 1407
    sget-object v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    goto/16 :goto_0

    .line 1409
    :cond_15
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    if-ge v1, v2, :cond_17

    .line 1410
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_16

    .line 1411
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    iget v5, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    sub-int/2addr v4, v5

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1415
    :goto_7
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-eqz v1, :cond_1

    .line 1416
    sget-object v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    goto/16 :goto_0

    .line 1413
    :cond_16
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    iget v5, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_7

    .line 1419
    :cond_17
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iput v7, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    .line 1427
    .restart local v0       #nDuration:I
    :cond_18
    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->DURATION_HOMING:I

    goto/16 :goto_1

    .line 1441
    :cond_19
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 1442
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    const/4 v2, 0x3

    iput v2, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->type:I

    goto/16 :goto_2

    .line 1450
    :cond_1a
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iput v0, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 1451
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    sget-object v2, Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;->EASEOUT_CUBIC:Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;

    iput-object v2, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;

    .line 1453
    iget-boolean v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mIsBouncingState:Z

    if-ne v6, v1, :cond_1b

    .line 1454
    invoke-virtual {p0, v7}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->enableAnimation(Z)V

    .line 1456
    :cond_1b
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->animateView()V

    goto/16 :goto_3
.end method

.method protected initContainers()V
    .locals 1

    .prologue
    .line 463
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->initContainers(Z)V

    .line 464
    return-void
.end method

.method protected initContainers(Z)V
    .locals 14
    .parameter "bForceUpdated"

    .prologue
    const/4 v10, 0x0

    const/high16 v13, 0x3f80

    const/4 v12, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 470
    sget-object v6, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v9, "initContainers +"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunnyCore/widget/presentation/SPresentationAdapterBase;

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/htc/sunnyCore/SceneNode;->mNodeId:I

    if-nez v6, :cond_1

    .line 472
    :cond_0
    invoke-virtual {p0, v7}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->enableAnimation(Z)V

    .line 473
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->destroyAllResource()V

    .line 474
    iput v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    .line 475
    invoke-virtual {p0, v7}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setContainerCount(I)V

    .line 476
    iput-object v10, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    .line 477
    iput v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mVisibleContainerCount:I

    .line 478
    sget-object v6, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v7, "initContainers 0-"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :goto_0
    return-void

    .line 482
    :cond_1
    iget-object v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunnyCore/widget/presentation/SPresentationAdapterBase;

    invoke-virtual {v6}, Lcom/htc/sunnyCore/widget/presentation/SPresentationAdapterBase;->getItemCount()I

    move-result v2

    .line 483
    .local v2, nDataCount:I
    iget-object v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mLayoutListener:Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnLayoutListener;

    if-eqz v6, :cond_2

    .line 484
    iget-object v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mLayoutListener:Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnLayoutListener;

    invoke-interface {v6}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnLayoutListener;->getContainerCount()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setContainerCount(I)V

    .line 486
    :cond_2
    if-lez v2, :cond_3

    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    if-gtz v6, :cond_4

    .line 487
    :cond_3
    invoke-virtual {p0, v7}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->enableAnimation(Z)V

    .line 488
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->destroyAllResource()V

    .line 489
    iput v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    .line 490
    invoke-virtual {p0, v7}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setContainerCount(I)V

    .line 491
    iput-object v10, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    .line 492
    iput v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mVisibleContainerCount:I

    .line 493
    sget-object v6, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v7, "initContainers 1-"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 497
    :cond_4
    iget-boolean v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mIsContainerCountChanged:Z

    if-eq v8, v6, :cond_5

    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    if-ne v2, v6, :cond_5

    if-ne v8, p1, :cond_d

    .line 498
    :cond_5
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->stopAnimation()V

    .line 499
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->destroyAllResource()V

    .line 500
    iput v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    .line 502
    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    if-eq v2, v6, :cond_7

    .line 503
    iput v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    .line 504
    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    iget v9, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    if-lt v6, v9, :cond_6

    .line 505
    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    .line 507
    :cond_6
    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    if-gez v6, :cond_7

    .line 508
    iput v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    .line 512
    :cond_7
    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    iget v9, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mVisibleContainerCount:I

    .line 513
    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    new-array v6, v6, [Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    iput-object v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    .line 514
    iput-boolean v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataUpdated:Z

    .line 517
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    if-ge v1, v6, :cond_d

    .line 518
    iget-object v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    new-instance v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    iget-object v9, p0, Lcom/htc/sunnyCore/view/SView;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/htc/sunnyCore/view/SView;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-direct {v0, p0, v9, v10}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;-><init>(Lcom/htc/sunnyCore/widget/presentation/SPresentation;Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    aput-object v0, v6, v1

    .line 520
    .local v0, container:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    iput v1, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mID:I

    .line 521
    iput v1, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mLayoutPos:I

    .line 523
    iget-object v6, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    iget v9, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mLayoutPos:I

    invoke-virtual {p0, v9}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->setLayout(Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;)V

    .line 524
    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->addView(Lcom/htc/sunnyCore/view/SView;)V

    .line 526
    iget-object v6, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    iget v5, v6, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mWidth:I

    .line 527
    .local v5, nWidth:I
    iget-object v6, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    iget v4, v6, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mHeight:I

    .line 529
    .local v4, nHeight:I
    invoke-static {v8}, Lcom/htc/sunnyCore/Sprite;->obtain(I)Lcom/htc/sunnyCore/Sprite;

    move-result-object v6

    iput-object v6, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mImageSprite:Lcom/htc/sunnyCore/Sprite;

    .line 530
    iget-object v6, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mImageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v6}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->addSprite(Lcom/htc/sunnyCore/Sprite;)V

    .line 531
    invoke-static {v8}, Lcom/htc/sunnyCore/Sprite;->obtain(I)Lcom/htc/sunnyCore/Sprite;

    move-result-object v6

    iput-object v6, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunnyCore/Sprite;

    .line 532
    iget-object v6, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v6}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->addSprite(Lcom/htc/sunnyCore/Sprite;)V

    .line 533
    iget-object v6, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v6, v7}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/htc/sunnyCore/Sprite$Layer;->setRenderable(Z)V

    .line 534
    iget-object v6, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v6, v8}, Lcom/htc/sunnyCore/Sprite;->setTouchable(Z)V

    .line 535
    iget-object v6, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunnyCore/Sprite;

    int-to-float v9, v5

    iget v10, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mEnlargeSensorRatioW:F

    add-float/2addr v10, v13

    mul-float/2addr v9, v10

    float-to-int v9, v9

    int-to-float v9, v9

    int-to-float v10, v4

    iget v11, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mEnlargeSensorRatioH:F

    add-float/2addr v11, v13

    mul-float/2addr v10, v11

    float-to-int v10, v10

    int-to-float v10, v10

    neg-int v11, v4

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {v6, v9, v10, v12, v11}, Lcom/htc/sunnyCore/Sprite;->setupGeometry(FFFF)V

    .line 536
    iget-object v6, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mImageSprite:Lcom/htc/sunnyCore/Sprite;

    int-to-float v9, v5

    int-to-float v10, v4

    neg-int v11, v4

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {v6, v9, v10, v12, v11}, Lcom/htc/sunnyCore/Sprite;->setupGeometry(FFFF)V

    .line 538
    invoke-static {}, Lcom/htc/sunnyCore/Texture;->createTexture()Lcom/htc/sunnyCore/Texture;

    move-result-object v6

    iput-object v6, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mImageTexture:Lcom/htc/sunnyCore/Texture;

    .line 539
    iget-object v6, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mImageSprite:Lcom/htc/sunnyCore/Sprite;

    iget-object v9, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mImageTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v6, v9}, Lcom/htc/sunnyCore/Sprite;->setTexture(Lcom/htc/sunnyCore/Texture;)V

    .line 541
    iget-boolean v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mEnabledReflection:Z

    if-ne v8, v6, :cond_9

    .line 542
    invoke-static {v8}, Lcom/htc/sunnyCore/Sprite;->obtain(I)Lcom/htc/sunnyCore/Sprite;

    move-result-object v6

    iput-object v6, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mReflectSprite:Lcom/htc/sunnyCore/Sprite;

    .line 543
    iget-object v6, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mReflectSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v6}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->addSprite(Lcom/htc/sunnyCore/Sprite;)V

    .line 544
    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mReflectionHeight:I

    if-nez v6, :cond_8

    .line 545
    iput v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mReflectionHeight:I

    .line 547
    :cond_8
    iget-object v6, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mReflectSprite:Lcom/htc/sunnyCore/Sprite;

    int-to-float v9, v5

    iget v10, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mReflectionHeight:I

    int-to-float v10, v10

    iget v11, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mReflectionHeight:I

    neg-int v11, v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {v6, v9, v10, v12, v11}, Lcom/htc/sunnyCore/Sprite;->setupGeometry(FFFF)V

    .line 548
    iget-object v6, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mReflectSprite:Lcom/htc/sunnyCore/Sprite;

    iget v9, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mReflectionHeight:I

    sub-int v9, v4, v9

    int-to-float v9, v9

    int-to-float v10, v4

    div-float/2addr v9, v10

    invoke-virtual {v6, v12, v9, v13, v13}, Lcom/htc/sunnyCore/Sprite;->setTextureCoordinatesBy2P(FFFF)V

    .line 549
    iget-object v6, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mReflectSprite:Lcom/htc/sunnyCore/Sprite;

    const/high16 v9, 0x4334

    invoke-virtual {v6, v9, v12, v12}, Lcom/htc/sunnyCore/Sprite;->setRotate(FFF)V

    .line 551
    iget-object v6, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunnyCore/Sprite;

    iget v9, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mReflectionGap:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v6, v12, v9, v12}, Lcom/htc/sunnyCore/Sprite;->setPosition(FFF)V

    .line 552
    iget-object v6, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mImageSprite:Lcom/htc/sunnyCore/Sprite;

    iget v9, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mReflectionGap:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v6, v12, v9, v12}, Lcom/htc/sunnyCore/Sprite;->setPosition(FFF)V

    .line 553
    iget-object v6, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mReflectSprite:Lcom/htc/sunnyCore/Sprite;

    iget v9, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mReflectionGap:I

    iget v10, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mReflectionGap:I

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v6, v12, v9, v12}, Lcom/htc/sunnyCore/Sprite;->setPosition(FFF)V

    .line 554
    iget-object v6, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mReflectSprite:Lcom/htc/sunnyCore/Sprite;

    iget-object v9, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mImageTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v6, v9}, Lcom/htc/sunnyCore/Sprite;->setTexture(Lcom/htc/sunnyCore/Texture;)V

    .line 557
    :cond_9
    iget-object v6, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-direct {p0, v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getSpriteTag(I)I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/htc/sunnyCore/Sprite;->setUserFlag(I)V

    .line 559
    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v6, v6, -0x1

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v1, v6

    iget v9, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    add-int v3, v6, v9

    .line 560
    .local v3, nDataIndex:I
    if-ltz v3, :cond_b

    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    if-ge v3, v6, :cond_b

    .line 561
    iput v3, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    .line 562
    iput-boolean v7, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    .line 568
    :goto_2
    iget-object v9, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    iget-boolean v6, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    if-nez v6, :cond_a

    iget-boolean v6, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mSkipItem:Z

    if-eqz v6, :cond_c

    :cond_a
    move v6, v8

    :goto_3
    invoke-virtual {p0, v0, v9, v6}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->updateContainerLayout(Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;Z)V

    .line 517
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 564
    :cond_b
    const/4 v6, -0x1

    iput v6, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    .line 565
    iput-boolean v8, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    goto :goto_2

    :cond_c
    move v6, v7

    .line 568
    goto :goto_3

    .line 572
    .end local v0           #container:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    .end local v1           #i:I
    .end local v3           #nDataIndex:I
    .end local v4           #nHeight:I
    .end local v5           #nWidth:I
    :cond_d
    iget-boolean v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataUpdated:Z

    if-nez v6, :cond_e

    .line 573
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->updateAllContainersData()V

    .line 576
    :cond_e
    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-virtual {p0, v6}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->moveToTimeSlot(I)V

    .line 577
    invoke-virtual {p0, v8}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->updateContainersOrder(Z)V

    .line 579
    iget-boolean v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mEnabledOpeningAnimation:Z

    if-ne v8, v6, :cond_f

    iget-boolean v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mPerformOpeningAnimation:Z

    if-ne v8, v6, :cond_f

    iget-boolean v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mOpeningAnimationStart:Z

    if-nez v6, :cond_f

    .line 582
    iput-boolean v8, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mOpeningAnimationStart:Z

    .line 583
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->openingAnimation()V

    .line 588
    :goto_4
    sget-object v6, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v7, "initContainers -"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 585
    :cond_f
    invoke-virtual {p0, v8}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->enableAnimation(Z)V

    .line 586
    invoke-virtual {p0, v8}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->enabledTouchEvent(Z)V

    goto :goto_4
.end method

.method protected initDefaultLayout()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 415
    iget-object v8, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mLayoutListener:Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnLayoutListener;

    if-nez v8, :cond_0

    iget v8, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    if-nez v8, :cond_2

    .line 416
    :cond_0
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    .line 448
    :cond_1
    return-void

    .line 420
    :cond_2
    iget v8, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    new-array v8, v8, [Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    iput-object v8, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    .line 422
    iget v8, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mListWidth_H:I

    iget v9, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemWidth:I

    div-int/lit8 v9, v9, 0x2

    add-int v1, v8, v9

    .line 423
    .local v1, listWidth_H:I
    iget v8, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v8, v8, -0x1

    div-int/lit8 v2, v8, 0x2

    .line 424
    .local v2, nCenterPos:I
    iget-object v8, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    new-instance v9, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    invoke-direct {v9}, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;-><init>()V

    aput-object v9, v8, v2

    .line 425
    iget-object v8, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v8, v8, v2

    iget v9, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemWidth:I

    iput v9, v8, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mWidth:I

    .line 426
    iget-object v8, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v8, v8, v2

    iget v9, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemHeight:I

    iput v9, v8, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mHeight:I

    .line 429
    iget v8, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v8, v8, -0x1

    div-int/lit8 v4, v8, 0x2

    .line 430
    .local v4, nOneSizeItemCount:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    if-gt v0, v4, :cond_1

    .line 432
    sub-int v3, v2, v0

    .line 433
    .local v3, nLeftPos:I
    int-to-float v8, v0

    int-to-float v9, v1

    int-to-float v10, v4

    invoke-virtual {p0, v8, v11, v9, v10}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->interpolateLayout(FFFF)F

    move-result v7

    .line 434
    .local v7, x:F
    const/high16 v8, 0x3f80

    const v9, 0x3dcccccd

    int-to-float v10, v0

    mul-float/2addr v9, v10

    sub-float v6, v8, v9

    .line 435
    .local v6, scale:F
    iget-object v8, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    new-instance v9, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    invoke-direct {v9}, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;-><init>()V

    aput-object v9, v8, v3

    .line 436
    iget-object v8, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v8, v8, v3

    iget-object v8, v8, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    neg-float v9, v7

    invoke-virtual {v8, v9, v11, v11}, Lcom/htc/sunnyCore/view/Vector3F;->setVector3F(FFF)V

    .line 437
    iget-object v8, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v8, v8, v3

    iget-object v8, v8, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-virtual {v8, v6, v6, v11}, Lcom/htc/sunnyCore/view/Vector3F;->setVector3F(FFF)V

    .line 438
    iget-object v8, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v8, v8, v3

    iget v9, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemWidth:I

    iput v9, v8, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mWidth:I

    .line 439
    iget-object v8, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v8, v8, v3

    iget v9, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemHeight:I

    iput v9, v8, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mHeight:I

    .line 441
    add-int v5, v2, v0

    .line 442
    .local v5, nRightPos:I
    iget-object v8, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    new-instance v9, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    invoke-direct {v9}, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;-><init>()V

    aput-object v9, v8, v5

    .line 443
    iget-object v8, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-virtual {v8, v7, v11, v11}, Lcom/htc/sunnyCore/view/Vector3F;->setVector3F(FFF)V

    .line 444
    iget-object v8, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-virtual {v8, v6, v6, v11}, Lcom/htc/sunnyCore/view/Vector3F;->setVector3F(FFF)V

    .line 445
    iget-object v8, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v8, v8, v5

    iget v9, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemWidth:I

    iput v9, v8, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mWidth:I

    .line 446
    iget-object v8, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    aget-object v8, v8, v5

    iget v9, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemHeight:I

    iput v9, v8, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mHeight:I

    .line 430
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected interpolateLayout(FFFF)F
    .locals 2
    .parameter "current"
    .parameter "start"
    .parameter "total"
    .parameter "duration"

    .prologue
    const/4 v0, 0x0

    .line 454
    cmpl-float v1, v0, p4

    if-nez v1, :cond_0

    .line 455
    :goto_0
    return v0

    :cond_0
    div-float v0, p3, p4

    mul-float/2addr v0, p1

    add-float/2addr v0, p2

    goto :goto_0
.end method

.method protected isEnabledAnimation()Z
    .locals 2

    .prologue
    .line 2603
    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunnyCore/widget/presentation/SPresentationAdapterBase;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mFakeAnimationControl:Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->isFakeAnimation()Z

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 2605
    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mEnabledAnimation:Z

    goto :goto_0
.end method

.method public isEnabledScroll()Z
    .locals 1

    .prologue
    .line 2633
    iget-boolean v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mEnableScroll:Z

    return v0
.end method

.method public isEnabledTouchEvent()Z
    .locals 1

    .prologue
    .line 2612
    iget-boolean v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mEnableTouchEvent:Z

    return v0
.end method

.method protected moveContainers(I)V
    .locals 13
    .parameter "nTimeSlot"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 2062
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunnyCore/widget/presentation/SPresentationAdapterBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    if-nez v0, :cond_1

    .line 2115
    :cond_0
    :goto_0
    return-void

    .line 2064
    :cond_1
    const/4 v10, -0x1

    .line 2065
    .local v10, nSkipCID:I
    if-lez p1, :cond_3

    .line 2066
    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getContainerByLayoutPos(I)Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    move-result-object v8

    .line 2067
    .local v8, container:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    if-eqz v8, :cond_2

    .line 2068
    iget v10, v8, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mID:I

    .line 2079
    .end local v8           #container:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    :cond_2
    :goto_1
    const/4 v3, 0x0

    .local v3, nCurPos:I
    const/4 v4, 0x0

    .line 2080
    .local v4, nNextPos:I
    const/4 v7, 0x0

    .local v7, cid:I
    :goto_2
    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    if-ge v7, v0, :cond_c

    .line 2081
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    aget-object v8, v0, v7

    .line 2082
    .restart local v8       #container:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    if-nez v8, :cond_5

    .line 2080
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2070
    .end local v3           #nCurPos:I
    .end local v4           #nNextPos:I
    .end local v7           #cid:I
    .end local v8           #container:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    :cond_3
    if-gez p1, :cond_4

    .line 2071
    invoke-virtual {p0, v11}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getContainerByLayoutPos(I)Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    move-result-object v8

    .line 2072
    .restart local v8       #container:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    if-eqz v8, :cond_2

    .line 2073
    iget v10, v8, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mID:I

    goto :goto_1

    .line 2076
    .end local v8           #container:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    :cond_4
    const/4 v10, -0x1

    goto :goto_1

    .line 2084
    .restart local v3       #nCurPos:I
    .restart local v4       #nNextPos:I
    .restart local v7       #cid:I
    .restart local v8       #container:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    :cond_5
    iget v3, v8, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mLayoutPos:I

    .line 2085
    move v4, v3

    .line 2086
    if-gez p1, :cond_8

    .line 2087
    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v0, v3

    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    rem-int v4, v0, v1

    .line 2092
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mLayoutListener:Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnLayoutListener;

    if-eqz v0, :cond_9

    .line 2093
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mLayoutListener:Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnLayoutListener;

    iget v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    aget-object v1, v1, v7

    iget-object v5, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    iget-boolean v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mIsBouncingState:Z

    move v1, p1

    invoke-interface/range {v0 .. v6}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnLayoutListener;->updateLayoutAtTimeSlot(IIIILcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;Z)V

    .line 2099
    :goto_5
    if-ne v10, v7, :cond_a

    .line 2100
    iput-boolean v12, v8, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mSkipItem:Z

    .line 2105
    :goto_6
    iget-object v1, v8, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    iget-boolean v0, v8, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    if-nez v0, :cond_7

    iget-boolean v0, v8, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mSkipItem:Z

    if-eqz v0, :cond_b

    :cond_7
    move v0, v12

    :goto_7
    invoke-virtual {p0, v8, v1, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->updateContainerLayout(Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;Z)V

    goto :goto_3

    .line 2088
    :cond_8
    if-lez p1, :cond_6

    .line 2089
    add-int/lit8 v0, v3, 0x1

    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    rem-int v4, v0, v1

    goto :goto_4

    .line 2096
    :cond_9
    iget v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    aget-object v0, v0, v7

    iget-object v5, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    iget-boolean v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mIsBouncingState:Z

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->updateLayoutAtTimeSlot(IIIILcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;Z)V

    goto :goto_5

    .line 2102
    :cond_a
    iput-boolean v11, v8, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mSkipItem:Z

    goto :goto_6

    :cond_b
    move v0, v11

    .line 2105
    goto :goto_7

    .line 2108
    .end local v8           #container:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    :cond_c
    if-nez p1, :cond_0

    .line 2110
    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getContainerByLayoutPos(I)Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    move-result-object v9

    .line 2111
    .local v9, focusContainer:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    if-eqz v9, :cond_0

    .line 2112
    iget-object v0, v9, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v9, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->getSpritePosition(Lcom/htc/sunnyCore/Sprite;)Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mFocusPosV:Lcom/htc/sunnyCore/view/Vector3F;

    goto/16 :goto_0
.end method

.method protected moveToTimeSlot(I)V
    .locals 6
    .parameter "nTimeSlot"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1203
    sget-object v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_UNKNOWN:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    .line 1205
    .local v0, newDirection:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;
    const/16 v1, 0x1d4c

    if-le p1, v1, :cond_0

    .line 1206
    sget-object v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nTimeSlot > 7500!! set to 7500 due to Not normal value!!nTimeSlot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    const/16 p1, 0x1d4c

    .line 1210
    :cond_0
    const/16 v1, -0x1d4c

    if-ge p1, v1, :cond_1

    .line 1211
    sget-object v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nTimeSlot < -7500!! set to -7500 due to Not normal value!!nTimeSlot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    const/16 p1, -0x1d4c

    .line 1216
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    if-lt v1, v2, :cond_8

    .line 1217
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    if-lt p1, v1, :cond_4

    .line 1218
    sget-object v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    .line 1223
    :goto_0
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_5

    if-gez p1, :cond_5

    .line 1224
    iput v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    .line 1237
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mShiftOneItem:Z

    if-ne v5, v1, :cond_3

    iget-boolean v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mEnabledBlockScroll:Z

    if-ne v5, v1, :cond_3

    const/4 v1, 0x2

    iget v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mPresentationState:I

    if-ne v1, v2, :cond_3

    .line 1238
    const/4 p1, 0x0

    .line 1239
    iput-boolean v5, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mBlockScroll:Z

    .line 1241
    :cond_3
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->updateBouncingState()V

    .line 1242
    invoke-virtual {p0, p1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->moveToTimeSlot(I)V

    .line 1243
    invoke-virtual {p0, v4}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->updateContainersOrder(Z)V

    .line 1252
    :goto_2
    return-void

    .line 1220
    :cond_4
    sget-object v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    goto :goto_0

    .line 1225
    :cond_5
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    if-gez v1, :cond_6

    if-lez p1, :cond_6

    .line 1226
    iput v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    goto :goto_1

    .line 1227
    :cond_6
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    if-ltz v1, :cond_7

    if-ltz p1, :cond_7

    .line 1228
    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyPositionChange(Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;)V

    .line 1230
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    sub-int/2addr p1, v1

    goto :goto_1

    .line 1231
    :cond_7
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    if-gtz v1, :cond_2

    if-gtz p1, :cond_2

    .line 1232
    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyPositionChange(Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;)V

    .line 1234
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    add-int/2addr p1, v1

    goto :goto_1

    .line 1247
    :cond_8
    iput p1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    .line 1248
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->updateBouncingState()V

    .line 1249
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-virtual {p0, v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->moveContainers(I)V

    .line 1251
    invoke-virtual {p0, v4}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->updateContainersOrder(Z)V

    goto :goto_2
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 939
    new-instance v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$3;

    invoke-direct {v0, p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$3;-><init>(Lcom/htc/sunnyCore/widget/presentation/SPresentation;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 946
    return-void
.end method

.method public notifyDataSetChanged(I)V
    .locals 1
    .parameter "nSelection"

    .prologue
    .line 964
    new-instance v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$4;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$4;-><init>(Lcom/htc/sunnyCore/widget/presentation/SPresentation;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 971
    return-void
.end method

.method protected notifyDataSetChangedW()V
    .locals 1

    .prologue
    .line 952
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunnyCore/widget/presentation/SPresentationAdapterBase;

    if-nez v0, :cond_0

    .line 958
    :goto_0
    return-void

    .line 953
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mPerformOpeningAnimation:Z

    .line 954
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mOpeningAnimationStart:Z

    .line 956
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->initContainers()V

    .line 957
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->updateAllContainersData()V

    goto :goto_0
.end method

.method protected notifyDataSetChangedW(I)V
    .locals 2
    .parameter "nSelection"

    .prologue
    const/4 v1, 0x1

    .line 977
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunnyCore/widget/presentation/SPresentationAdapterBase;

    if-nez v0, :cond_0

    .line 984
    :goto_0
    return-void

    .line 978
    :cond_0
    iput-boolean v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mPerformOpeningAnimation:Z

    .line 979
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mOpeningAnimationStart:Z

    .line 981
    iput p1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    .line 982
    invoke-virtual {p0, v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->initContainers(Z)V

    .line 983
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->updateAllContainersData()V

    goto :goto_0
.end method

.method protected notifyPositionChange(Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;)V
    .locals 3
    .parameter "eDirection"

    .prologue
    .line 1161
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mFakeAnimationControl:Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->isFakeAnimation()Z

    move-result v2

    if-ne v1, v2, :cond_3

    .line 1164
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mFakeNextUpdateIndex:I

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mFakeAnimationControl:Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->getLastUpdateIndex()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1165
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mFakeAnimationControl:Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->getTargetFocusIndex()I

    move-result v1

    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    .line 1184
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->updateContainerLayoutPos(Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;)V

    .line 1186
    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    .line 1187
    .local v0, nSelectionPos:I
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    if-gez v1, :cond_5

    .line 1188
    const/4 v0, 0x0

    .line 1195
    :goto_1
    invoke-virtual {p0, p1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->updateNewContainer(Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;)V

    .line 1197
    .end local v0           #nSelectionPos:I
    :goto_2
    return-void

    .line 1167
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->updateContainerLayoutPos(Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;)V

    .line 1169
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mFakeNextUpdateIndex:I

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mFakeNextUpdateIndex:I

    iget v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    if-ge v1, v2, :cond_2

    .line 1170
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mFakeNextUpdateIndex:I

    invoke-virtual {p0, v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifySelectionChange(I)V

    .line 1172
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->updateNewContainer(Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;)V

    goto :goto_2

    .line 1177
    :cond_3
    sget-object v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    if-ne v1, p1, :cond_4

    .line 1178
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    goto :goto_0

    .line 1179
    :cond_4
    sget-object v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    if-ne v1, p1, :cond_0

    .line 1180
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    goto :goto_0

    .line 1189
    .restart local v0       #nSelectionPos:I
    :cond_5
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    iget v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    if-lt v1, v2, :cond_6

    .line 1190
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v0, v1, -0x1

    goto :goto_1

    .line 1192
    :cond_6
    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifySelectionChange(I)V

    goto :goto_1
.end method

.method protected notifySelectionChange(I)V
    .locals 1
    .parameter "nPos"

    .prologue
    .line 1136
    iput p1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    .line 1137
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectionChangeListener:Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnSelectionChangeListener;

    if-eqz v0, :cond_0

    .line 1138
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectionChangeListener:Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnSelectionChangeListener;

    invoke-interface {v0, p1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnSelectionChangeListener;->onSelectionChange(I)V

    .line 1140
    :cond_0
    return-void
.end method

.method protected notifyStateChange(I)V
    .locals 1
    .parameter "nState"

    .prologue
    .line 1147
    const/16 v0, 0x12

    if-ne v0, p1, :cond_0

    .line 1148
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSunnyEnvironment:Lcom/htc/sunnyCore/SunnyEnvironment;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/SunnyEnvironment;->getHandler()I

    move-result v0

    invoke-static {v0}, Lcom/htc/sunnyCore/SunnyCore;->Environment_LogStatus(I)V

    .line 1150
    :cond_0
    iput p1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mPresentationState:I

    .line 1151
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mStateListener:Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnStateListener;

    if-eqz v0, :cond_1

    .line 1152
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mStateListener:Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnStateListener;

    invoke-interface {v0, p1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnStateListener;->onStateChange(I)V

    .line 1154
    :cond_1
    return-void
.end method

.method public notifyUpdateItem(I)V
    .locals 1
    .parameter "nPos"

    .prologue
    .line 993
    new-instance v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$5;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$5;-><init>(Lcom/htc/sunnyCore/widget/presentation/SPresentation;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1000
    return-void
.end method

.method protected notifyUpdateItemW(I)V
    .locals 7
    .parameter "nPos"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1006
    iget-object v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunnyCore/widget/presentation/SPresentationAdapterBase;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataUpdated:Z

    if-nez v4, :cond_1

    .line 1028
    :cond_0
    :goto_0
    return-void

    .line 1009
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getContainerByDataIndex(I)Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    move-result-object v1

    .line 1010
    .local v1, container:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    if-eqz v1, :cond_0

    .line 1011
    iget v4, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    if-ltz v4, :cond_5

    iget v4, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    iget v5, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    if-ge v4, v5, :cond_5

    .line 1013
    iget-object v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunnyCore/widget/presentation/SPresentationAdapterBase;

    invoke-virtual {v4, p1}, Lcom/htc/sunnyCore/widget/presentation/SPresentationAdapterBase;->getItemBitmap(I)Lcom/htc/sunnyCore/SBitmap;

    move-result-object v0

    .line 1014
    .local v0, bmp:Lcom/htc/sunnyCore/SBitmap;
    if-eqz v0, :cond_4

    .line 1015
    iget-object v4, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mImageTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v4, v0, v2}, Lcom/htc/sunnyCore/Texture;->setSBitmap(Lcom/htc/sunnyCore/SBitmap;Z)V

    .line 1019
    :goto_1
    iput-boolean v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mIsFirstRender:Z

    .line 1020
    iput-boolean v2, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    .line 1026
    .end local v0           #bmp:Lcom/htc/sunnyCore/SBitmap;
    :goto_2
    iget-object v4, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    iget-boolean v5, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    if-nez v5, :cond_2

    iget-boolean v5, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mSkipItem:Z

    if-eqz v5, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    invoke-virtual {p0, v1, v4, v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->updateContainerLayout(Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;Z)V

    goto :goto_0

    .line 1017
    .restart local v0       #bmp:Lcom/htc/sunnyCore/SBitmap;
    :cond_4
    sget-object v4, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "null bitmap "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1022
    .end local v0           #bmp:Lcom/htc/sunnyCore/SBitmap;
    :cond_5
    iput-boolean v3, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    .line 1023
    const/4 v4, -0x1

    iput v4, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    goto :goto_2
.end method

.method protected onAnimationEnd()V
    .locals 1

    .prologue
    .line 2255
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mFakeAnimationControl:Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->reset()V

    .line 2257
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->type:I

    packed-switch v0, :pswitch_data_0

    .line 2277
    :goto_0
    :pswitch_0
    return-void

    .line 2263
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->onHomingAnimationEnd()V

    goto :goto_0

    .line 2266
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->onFlingAnimationEnd()V

    goto :goto_0

    .line 2269
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->onScrollAnimationEnd()V

    goto :goto_0

    .line 2272
    :pswitch_4
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->onRotateSelfEnd()V

    goto :goto_0

    .line 2257
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x0

    .line 2529
    sget-object v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[SPresentation] onDown()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->isEnabledTouchEvent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2542
    :cond_0
    :goto_0
    return v2

    .line 2535
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->hasAnimation()Z

    move-result v1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mShiftOneItem:Z

    if-nez v0, :cond_2

    .line 2536
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->stopAnimation()V

    .line 2539
    :cond_2
    invoke-virtual {p0, v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 2540
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->animateView()V

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 2550
    sget-object v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[SPresentation] onFling()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2552
    float-to-int v0, p3

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->flingW(I)V

    .line 2554
    const/4 v0, 0x0

    return v0
.end method

.method protected onFlingAnimationEnd()V
    .locals 1

    .prologue
    .line 2285
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->updateBouncingState()V

    .line 2287
    iget-boolean v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mIsBouncingState:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    if-nez v0, :cond_0

    .line 2288
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->stopAnimation()V

    .line 2295
    :goto_0
    return-void

    .line 2290
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->reset()V

    .line 2291
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 2292
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->homing()V

    goto :goto_0
.end method

.method protected onHomingAnimationEnd()V
    .locals 0

    .prologue
    .line 2191
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->stopAnimation()V

    .line 2192
    return-void
.end method

.method protected onLayout(ZFFFII)V
    .locals 2
    .parameter "changed"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2352
    invoke-super/range {p0 .. p6}, Lcom/htc/sunnyCore/widget/presentation/SAdapterView;->onLayout(ZFFFII)V

    .line 2353
    sget-object v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onLayout +"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    iput p5, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSurfaceViewWidth:I

    .line 2356
    iput p6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSurfaceViewHeight:I

    .line 2358
    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSurfaceViewWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSurfaceViewWidth_H:I

    .line 2359
    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSurfaceViewHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSurfaceViewHeight_H:I

    .line 2360
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->updateViewLayout()V

    .line 2361
    sget-object v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onLayout -"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 2563
    return-void
.end method

.method protected onRotateSelf()V
    .locals 10

    .prologue
    .line 1841
    const/4 v2, 0x0

    .line 1842
    .local v2, nRStartY:F
    const/high16 v9, -0x3c4c

    .line 1844
    .local v9, nREndY:F
    iget-boolean v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mRotateClockwise:Z

    if-nez v0, :cond_0

    .line 1845
    const/high16 v9, 0x43b4

    .line 1848
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v7, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nArgs:I

    .line 1849
    .local v7, nContainerId:I
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    if-eqz v0, :cond_1

    if-ltz v7, :cond_1

    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v0, v0, -0x1

    if-le v7, v0, :cond_2

    .line 1878
    :cond_1
    :goto_0
    return-void

    .line 1853
    :cond_2
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    aget-object v6, v0, v7

    .line 1854
    .local v6, container:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    if-eqz v6, :cond_1

    .line 1856
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    if-lt v0, v1, :cond_3

    .line 1857
    iget-object v0, v6, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    iput v2, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 1858
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->onAnimationEnd()V

    goto :goto_0

    .line 1862
    :cond_3
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    .line 1864
    const/4 v8, 0x0

    .line 1866
    .local v8, nNextRY:F
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    if-gt v0, v1, :cond_1

    .line 1868
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    if-ge v0, v1, :cond_6

    .line 1869
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    int-to-float v1, v0

    sub-float v3, v9, v2

    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget-object v5, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getInterpolateResult(FFFFLcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;)F

    move-result v8

    .line 1873
    :cond_4
    :goto_1
    iget-object v0, v6, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    iput v8, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 1876
    iget-object v1, v6, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    iget-boolean v0, v6, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    if-nez v0, :cond_5

    iget-boolean v0, v6, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mSkipItem:Z

    if-eqz v0, :cond_7

    :cond_5
    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p0, v6, v1, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->updateContainerLayout(Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;Z)V

    goto :goto_0

    .line 1870
    :cond_6
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    if-ne v0, v1, :cond_4

    .line 1871
    move v8, v9

    goto :goto_1

    .line 1876
    :cond_7
    const/4 v0, 0x0

    goto :goto_2
.end method

.method protected onRotateSelfEnd()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1885
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->stopAnimation()V

    .line 1886
    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->enableAnimation(Z)V

    .line 1887
    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->enabledTouchEvent(Z)V

    .line 1888
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

    .line 2641
    iget-boolean v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mEnableScroll:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mIsPressed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mBlockScroll:Z

    if-ne v9, v0, :cond_1

    .line 2642
    :cond_0
    sget-object v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SPresentation] onScroll() enable animation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->isEnabledAnimation()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " block scroll:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mBlockScroll:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 2657
    :goto_0
    return v0

    .line 2646
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->hasAnimation()Z

    move-result v0

    if-ne v9, v0, :cond_2

    .line 2647
    sget-object v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[SPresentation] onScroll() has animation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2648
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->stopAnimation()V

    .line 2651
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 2652
    .local v7, nStart2DX:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 2654
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

    invoke-virtual/range {v0 .. v6}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->onScrollPresentation(IIIIFF)Z

    .line 2656
    iput-boolean v10, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mIsSingleTapUp:Z

    move v0, v9

    .line 2657
    goto :goto_0
.end method

.method protected onScrollAnimation()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 2199
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    if-lt v0, v1, :cond_0

    .line 2200
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->onAnimationEnd()V

    .line 2249
    :goto_0
    return-void

    .line 2204
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    .line 2205
    const/4 v9, 0x0

    .line 2206
    .local v9, nTimeSlotOffset:I
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    if-ge v0, v1, :cond_8

    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-ge v0, v1, :cond_8

    .line 2207
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget-object v5, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getInterpolateResult(FFFFLcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;)F

    move-result v0

    float-to-int v7, v0

    .line 2208
    .local v7, nCurTimeSlot:I
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v1, v0

    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget-object v5, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getInterpolateResult(FFFFLcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;)F

    move-result v0

    float-to-int v8, v0

    .line 2210
    .local v8, nPreTimeSlot:I
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_2

    .line 2211
    sub-int v0, v7, v8

    neg-int v9, v0

    .line 2220
    :goto_1
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    sub-int v6, v8, v0

    .line 2222
    .local v6, nAccuracy:I
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_4

    .line 2223
    sub-int/2addr v9, v6

    .line 2228
    :cond_1
    :goto_2
    if-nez v9, :cond_6

    .line 2229
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_5

    .line 2230
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->onScrollAnimation()V

    goto :goto_0

    .line 2212
    .end local v6           #nAccuracy:I
    :cond_2
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_3

    .line 2213
    sub-int v9, v7, v8

    goto :goto_1

    .line 2215
    :cond_3
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->onAnimationEnd()V

    .line 2216
    sget-object v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[SPresentation] onScrollAnimation() wrong direction"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2224
    .restart local v6       #nAccuracy:I
    :cond_4
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_1

    .line 2225
    add-int/2addr v9, v6

    goto :goto_2

    .line 2232
    :cond_5
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_6

    .line 2233
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->onScrollAnimation()V

    goto/16 :goto_0

    .line 2237
    :cond_6
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    .line 2248
    .end local v6           #nAccuracy:I
    .end local v7           #nCurTimeSlot:I
    .end local v8           #nPreTimeSlot:I
    :cond_7
    :goto_3
    invoke-virtual {p0, v9}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->scrollByOffset(I)V

    goto/16 :goto_0

    .line 2239
    :cond_8
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    if-ne v0, v1, :cond_7

    .line 2240
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    sub-int v9, v0, v1

    .line 2241
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_9

    .line 2242
    mul-int/lit8 v9, v9, -0x1

    goto :goto_3

    .line 2243
    :cond_9
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_7

    goto :goto_3
.end method

.method protected onScrollAnimationEnd()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 2301
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->updateBouncingState()V

    .line 2303
    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->enableAnimation(Z)V

    .line 2304
    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->enabledTouchEvent(Z)V

    .line 2306
    iget-boolean v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mIsBouncingState:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    if-nez v0, :cond_0

    .line 2307
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->stopAnimation()V

    .line 2313
    :goto_0
    return-void

    .line 2309
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->reset()V

    .line 2310
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 2311
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->homing()V

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
    .line 2666
    invoke-virtual {p0, p3}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->Get3DX(I)I

    move-result v1

    .line 2674
    .local v1, n3DX2:I
    const/4 v7, -0x1

    iget v8, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mPressContainerId:I

    if-eq v7, v8, :cond_a

    .line 2675
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    iget v8, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mPressContainerId:I

    aget-object v7, v7, v8

    iget-object v8, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    iget v9, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mPressContainerId:I

    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v7, v8}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->getSpritePosition(Lcom/htc/sunnyCore/Sprite;)Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v7

    iget v7, v7, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    iget v8, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDisplacement:F

    add-float v5, v7, v8

    .line 2676
    .local v5, nPrevious3DX:F
    int-to-float v2, v1

    .line 2678
    .local v2, nNext3DX:F
    sub-float v3, v2, v5

    .line 2679
    .local v3, nOffsetX:F
    const/4 v7, 0x0

    cmpl-float v7, v7, v3

    if-nez v7, :cond_0

    .line 2680
    const/4 v7, 0x1

    .line 2735
    .end local v2           #nNext3DX:F
    .end local v3           #nOffsetX:F
    .end local v5           #nPrevious3DX:F
    :goto_0
    return v7

    .line 2683
    .restart local v2       #nNext3DX:F
    .restart local v3       #nOffsetX:F
    .restart local v5       #nPrevious3DX:F
    :cond_0
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    iget v8, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mPressContainerId:I

    aget-object v7, v7, v8

    iget v7, v7, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mLayoutPos:I

    invoke-virtual {p0, v7, v3}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getTimeSlotOffsetX(IF)I

    move-result v6

    .line 2685
    .local v6, nTimeSlotOffset:I
    const/4 v0, 0x0

    .line 2688
    .local v0, bLimitScroll:Z
    iget v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemScrollRatio:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_6

    .line 2689
    iget v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    if-gtz v7, :cond_4

    if-lez v6, :cond_4

    .line 2690
    iget v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    if-ltz v7, :cond_3

    .line 2691
    const/4 v0, 0x1

    .line 2711
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 2712
    iget v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v7, v7

    iget v8, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemScrollRatio:F

    mul-float/2addr v7, v8

    float-to-int v4, v7

    .line 2713
    .local v4, nOneItemLimitTimeSlot:I
    iget v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    add-int/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-lt v7, v4, :cond_2

    .line 2714
    if-lez v6, :cond_8

    .line 2715
    iget v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    sub-int v6, v4, v7

    .line 2722
    .end local v4           #nOneItemLimitTimeSlot:I
    :cond_2
    :goto_2
    if-nez v6, :cond_9

    .line 2723
    const/4 v7, 0x1

    goto :goto_0

    .line 2692
    :cond_3
    iget v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    add-int/2addr v7, v6

    if-lez v7, :cond_1

    .line 2693
    neg-int v7, v6

    iput v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    goto :goto_1

    .line 2695
    :cond_4
    iget v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    iget v8, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v7, v8, :cond_1

    if-gez v6, :cond_1

    .line 2696
    iget v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    if-gtz v7, :cond_5

    .line 2697
    const/4 v0, 0x1

    goto :goto_1

    .line 2698
    :cond_5
    iget v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    add-int/2addr v7, v6

    if-gez v7, :cond_1

    .line 2699
    neg-int v7, v6

    iput v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    goto :goto_1

    .line 2703
    :cond_6
    const/high16 v7, 0x3f80

    iget v8, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemScrollRatio:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_1

    .line 2704
    iget v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    if-gtz v7, :cond_7

    if-lez v6, :cond_7

    iget v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v7, :cond_7

    .line 2705
    const/4 v0, 0x1

    goto :goto_1

    .line 2706
    :cond_7
    iget v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    iget v8, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v7, v8, :cond_1

    if-gez v6, :cond_1

    iget v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    if-gez v7, :cond_1

    .line 2707
    const/4 v0, 0x1

    goto :goto_1

    .line 2717
    .restart local v4       #nOneItemLimitTimeSlot:I
    :cond_8
    neg-int v7, v4

    iget v8, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    sub-int v6, v7, v8

    goto :goto_2

    .line 2726
    .end local v4           #nOneItemLimitTimeSlot:I
    :cond_9
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerHitFeedback:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ContainerHitFeedback;

    invoke-virtual {v7}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ContainerHitFeedback;->reset()V

    .line 2728
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 2730
    invoke-virtual {p0, v6}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->scrollByOffset(I)V

    .line 2732
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->animateView()V

    .line 2735
    .end local v0           #bLimitScroll:Z
    .end local v2           #nNext3DX:F
    .end local v3           #nOffsetX:F
    .end local v5           #nPrevious3DX:F
    .end local v6           #nTimeSlotOffset:I
    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 2743
    sget-object v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[SPresentation] onShowPress()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2744
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2752
    :goto_0
    return-void

    .line 2748
    :cond_0
    const/4 v0, -0x1

    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mPressContainerId:I

    if-eq v0, v1, :cond_1

    .line 2749
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerHitFeedback:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ContainerHitFeedback;

    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mPressContainerId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ContainerHitFeedback;->press(I)V

    .line 2751
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->animateView()V

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    const/4 v1, 0x1

    .line 2759
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2764
    :goto_0
    return v1

    .line 2763
    :cond_0
    iput-boolean v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mIsSingleTapUp:Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;I)Z
    .locals 4
    .parameter "event"
    .parameter "nHitSpriteId"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2411
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 2412
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->isEnabledTouchEvent()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2413
    :cond_0
    sget-object v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SPresentation] fake: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mFakeAnimationControl:Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->isFakeAnimation()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " touch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->isEnabledTouchEvent()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    :cond_1
    :goto_0
    return v3

    .line 2417
    :cond_2
    const/4 v0, -0x1

    invoke-virtual {p0, p2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getContainerId(I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mPressContainerId:I

    if-eq v0, v1, :cond_3

    .line 2418
    iput-boolean v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mIsPressed:Z

    .line 2419
    invoke-virtual {p0, p2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getContainerId(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mPressContainerId:I

    .line 2420
    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mPressStartSelectedPos:I

    .line 2421
    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mPressContainerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->Get3DX(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getDisplacementToContainer(IF)F

    move-result v0

    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDisplacement:F

    .line 2423
    iget-boolean v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mShiftOneItem:Z

    if-ne v2, v0, :cond_3

    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    if-nez v0, :cond_3

    .line 2424
    iput-boolean v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mEnabledBlockScroll:Z

    .line 2429
    :cond_3
    iget-boolean v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mIsPressed:Z

    if-eqz v0, :cond_1

    .line 2433
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2435
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 2436
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->onUpW(Landroid/view/MotionEvent;I)V

    .line 2437
    iput-boolean v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mIsPressed:Z

    .line 2438
    iput-boolean v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mBlockScroll:Z

    .line 2439
    iput-boolean v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mEnabledBlockScroll:Z

    goto :goto_0
.end method

.method public onUpW(Landroid/view/MotionEvent;I)V
    .locals 4
    .parameter "e"
    .parameter "nHitSpriteId"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 2486
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerHitFeedback:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ContainerHitFeedback;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ContainerHitFeedback;->reset()V

    .line 2488
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->hasAnimation()Z

    move-result v0

    if-ne v2, v0, :cond_4

    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->type:I

    if-ne v2, v0, :cond_4

    .line 2494
    :cond_0
    iget-boolean v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mIsSingleTapUp:Z

    if-ne v2, v0, :cond_7

    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    if-nez v0, :cond_7

    .line 2495
    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mPressContainerId:I

    if-eq v3, v0, :cond_2

    .line 2496
    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    iget v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mPressContainerId:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    if-ne v0, v1, :cond_5

    .line 2497
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerClickListener:Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnContainerClickListener;

    if-eqz v0, :cond_1

    .line 2498
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerClickListener:Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnContainerClickListener;

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    iget v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mPressContainerId:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    invoke-interface {v0, v1, v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnContainerClickListener;->onContainerClick(Lcom/htc/sunnyCore/view/SView;I)V

    .line 2500
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->homing()V

    .line 2519
    :cond_2
    :goto_0
    iput v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mPressContainerId:I

    .line 2520
    iput v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mPressStartSelectedPos:I

    .line 2521
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mIsSingleTapUp:Z

    .line 2522
    :cond_3
    :goto_1
    return-void

    .line 2490
    :cond_4
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->isEnabledTouchEvent()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2502
    :cond_5
    iget-boolean v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mShiftOneItem:Z

    if-nez v0, :cond_6

    .line 2503
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mPressContainerId:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->scrollToW(I)V

    goto :goto_0

    .line 2505
    :cond_6
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->homing()V

    goto :goto_0

    .line 2509
    :cond_7
    const/4 v0, 0x2

    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mPresentationState:I

    if-ne v0, v1, :cond_8

    .line 2510
    invoke-virtual {p0, v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 2511
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->homing()V

    goto :goto_0

    .line 2512
    :cond_8
    const/4 v0, 0x3

    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mPresentationState:I

    if-eq v0, v1, :cond_2

    const/4 v0, 0x4

    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mPresentationState:I

    if-eq v0, v1, :cond_2

    .line 2514
    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mPresentationState:I

    if-nez v0, :cond_2

    .line 2515
    invoke-virtual {p0, v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 2516
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->homing()V

    goto :goto_0
.end method

.method protected openingAnimation()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 596
    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    div-int/lit8 v4, v6, 0x2

    .line 597
    .local v4, nCenterPos:I
    invoke-virtual {p0, v4}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    move-result-object v2

    .line 599
    .local v2, focusLayout:Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;
    new-instance v5, Lcom/htc/sunnyCore/view/Vector3F;

    iget-object v6, v2, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    iget v6, v6, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    iget-object v7, v2, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    iget v7, v7, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    .line 602
    .local v5, startScale:Lcom/htc/sunnyCore/view/Vector3F;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    if-ge v3, v6, :cond_2

    .line 603
    iget-object v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    aget-object v1, v6, v3

    .line 604
    .local v1, container:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    if-nez v1, :cond_0

    .line 602
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 606
    :cond_0
    iget-object v6, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    iget-object v6, v6, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v6, v6, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    iget-object v7, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    iget-object v7, v7, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v7, v7, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iget-object v8, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    iget-object v8, v8, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v8, v8, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    invoke-virtual {v1, v6, v7, v8}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->setPosition(FFF)V

    .line 607
    invoke-virtual {v1, v9}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->setAlpha(I)V

    .line 608
    iget-object v6, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    iget-object v6, v6, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    iget v6, v6, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    iget-object v7, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    iget-object v7, v7, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    iget v7, v7, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iget-object v8, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    iget-object v8, v8, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    iget v8, v8, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    invoke-virtual {v1, v6, v7, v8}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->setScale(FFF)V

    .line 609
    iget-object v6, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    iget-object v6, v6, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v6, v6, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    iget-object v7, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    iget-object v7, v7, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v7, v7, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iget-object v8, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    iget-object v8, v8, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v8, v8, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    invoke-virtual {v1, v6, v7, v8}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->setRotate(FFF)V

    .line 611
    new-instance v0, Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;-><init>()V

    .line 612
    .local v0, animationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;
    if-ne v4, v3, :cond_1

    .line 614
    iget-object v6, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    iget v6, v6, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    invoke-virtual {v0, v9, v6}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setAlphaAnimation(II)V

    .line 615
    new-instance v6, Lcom/htc/sunnyCore/widget/presentation/SPresentation$1;

    invoke-direct {v6, p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$1;-><init>(Lcom/htc/sunnyCore/widget/presentation/SPresentation;)V

    invoke-virtual {v0, v6}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setAnimationListener(Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    .line 639
    :goto_2
    const-wide/16 v6, 0x64

    invoke-virtual {v0, v6, v7}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setDuration(J)V

    .line 640
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setFillAfter(Z)V

    .line 641
    sget-object v6, Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;->EASEINOUT_CUBIC:Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v0, v6}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;)V

    .line 642
    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->cancelAnimation()V

    .line 643
    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    goto :goto_1

    .line 636
    :cond_1
    iget-object v6, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    iget v6, v6, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    invoke-virtual {v0, v9, v6}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setAlphaAnimation(II)V

    goto :goto_2

    .line 645
    .end local v0           #animationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;
    .end local v1           #container:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    :cond_2
    return-void
.end method

.method public rotateSelf(IZ)V
    .locals 1
    .parameter "nPosition"
    .parameter "bClockwise"

    .prologue
    .line 1798
    new-instance v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$11;-><init>(Lcom/htc/sunnyCore/widget/presentation/SPresentation;IZ)V

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1805
    return-void
.end method

.method protected rotateSelfW(IZ)V
    .locals 4
    .parameter "nPosition"
    .parameter "bClockwise"

    .prologue
    const/16 v2, 0x12

    const/4 v3, 0x0

    .line 1812
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->isEnabledAnimation()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1813
    invoke-virtual {p0, v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 1835
    :goto_0
    return-void

    .line 1817
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getContainerByDataIndex(I)Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    move-result-object v0

    .line 1818
    .local v0, container:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    if-nez v0, :cond_1

    .line 1819
    invoke-virtual {p0, v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    .line 1823
    :cond_1
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->reset()V

    .line 1825
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v2, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mID:I

    iput v2, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nArgs:I

    .line 1826
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->DURATION_ROTATE_SELF:I

    iput v2, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 1827
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    sget-object v2, Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;->EASEINOUT_CUBIC:Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;

    iput-object v2, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;

    .line 1828
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    const/4 v2, 0x5

    iput v2, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->type:I

    .line 1829
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 1831
    iput-boolean p2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mRotateClockwise:Z

    .line 1832
    invoke-virtual {p0, v3}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->enableAnimation(Z)V

    .line 1833
    invoke-virtual {p0, v3}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->enabledTouchEvent(Z)V

    .line 1834
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->animateView()V

    goto :goto_0
.end method

.method protected runOnRenderThread(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "runnable"

    .prologue
    .line 849
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 850
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-ne v0, v1, :cond_0

    .line 851
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 858
    :goto_0
    return-void

    .line 853
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 856
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "runOnRenderThread() mSViewHandler == null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected scrollByOffset(I)V
    .locals 1
    .parameter "nTimeSlotOffset"

    .prologue
    .line 1311
    if-lez p1, :cond_1

    .line 1312
    sget-object v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    .line 1316
    :cond_0
    :goto_0
    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->moveToTimeSlot(I)V

    .line 1317
    return-void

    .line 1313
    :cond_1
    if-gez p1, :cond_0

    .line 1314
    sget-object v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    goto :goto_0
.end method

.method public scrollTo(I)V
    .locals 1
    .parameter "nPos"

    .prologue
    .line 1572
    new-instance v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$9;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$9;-><init>(Lcom/htc/sunnyCore/widget/presentation/SPresentation;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1579
    return-void
.end method

.method public scrollToLeft()V
    .locals 1

    .prologue
    .line 1464
    new-instance v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$7;

    invoke-direct {v0, p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$7;-><init>(Lcom/htc/sunnyCore/widget/presentation/SPresentation;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1471
    return-void
.end method

.method protected scrollToLeftW()V
    .locals 3

    .prologue
    const/16 v2, 0x12

    .line 1477
    const/4 v0, 0x1

    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    if-lt v0, v1, :cond_0

    .line 1478
    invoke-virtual {p0, v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 1510
    :goto_0
    return-void

    .line 1482
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1483
    invoke-virtual {p0, v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    .line 1487
    :cond_1
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->reset()V

    .line 1489
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->type:I

    if-ne v0, v1, :cond_3

    .line 1490
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iput v1, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1491
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->DURATION_SCROLL_NEXT:I

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v2, v2, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 1503
    :cond_2
    :goto_1
    sget-object v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    .line 1504
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    sget-object v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;->EASEINOUT_CUBIC:Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;

    iput-object v1, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;

    .line 1505
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    const/4 v1, 0x2

    iput v1, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->type:I

    .line 1507
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 1509
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->animateView()V

    goto :goto_0

    .line 1493
    :cond_3
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_4

    .line 1495
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->stopAnimation()V

    goto :goto_0

    .line 1497
    :cond_4
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_2

    .line 1498
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v2, v2, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    rem-int/2addr v1, v2

    iput v1, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1499
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->DURATION_SCROLL_NEXT:I

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v2, v2, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    goto :goto_1
.end method

.method public scrollToRight()V
    .locals 1

    .prologue
    .line 1517
    new-instance v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$8;

    invoke-direct {v0, p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$8;-><init>(Lcom/htc/sunnyCore/widget/presentation/SPresentation;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1524
    return-void
.end method

.method protected scrollToRightW()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x12

    .line 1530
    const/4 v0, 0x1

    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    if-lt v0, v1, :cond_0

    .line 1531
    invoke-virtual {p0, v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 1565
    :goto_0
    return-void

    .line 1535
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1536
    invoke-virtual {p0, v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    .line 1540
    :cond_1
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->reset()V

    .line 1542
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->type:I

    if-ne v0, v1, :cond_3

    .line 1543
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iput v1, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1544
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->DURATION_SCROLL_PREVIOUS:I

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v2, v2, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 1545
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iput v3, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    .line 1546
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iput v3, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    .line 1558
    :cond_2
    :goto_1
    sget-object v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    .line 1559
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    sget-object v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;->EASEINOUT_CUBIC:Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;

    iput-object v1, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;

    .line 1560
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    const/4 v1, 0x2

    iput v1, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->type:I

    .line 1562
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 1564
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->animateView()V

    goto :goto_0

    .line 1548
    :cond_3
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_4

    .line 1550
    invoke-virtual {p0, v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    .line 1552
    :cond_4
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_2

    .line 1553
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v2, v2, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    rem-int/2addr v1, v2

    iput v1, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1554
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->DURATION_SCROLL_PREVIOUS:I

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v2, v2, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    goto :goto_1
.end method

.method protected scrollToW(I)V
    .locals 9
    .parameter "nPos"

    .prologue
    const/16 v4, 0x12

    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 1586
    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    sub-int v0, p1, v3

    .line 1588
    .local v0, nOffset:I
    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    if-ge p1, v3, :cond_0

    if-ltz p1, :cond_0

    if-nez v0, :cond_1

    .line 1591
    :cond_0
    invoke-virtual {p0, v4}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 1661
    :goto_0
    return-void

    .line 1595
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->isEnabledAnimation()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1596
    invoke-virtual {p0, v4}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    .line 1600
    :cond_2
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mFakeAnimationControl:Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;

    iget v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    iget v5, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    invoke-virtual {v3, v4, v0, v5, v6}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->init(IIII)V

    .line 1602
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mFakeAnimationControl:Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->isFakeAnimation()Z

    move-result v4

    if-ne v3, v4, :cond_3

    .line 1603
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mFakeAnimationControl:Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->getFirstUpdateIndex()I

    move-result v3

    iput v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mFakeNextUpdateIndex:I

    .line 1604
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mFakeAnimationControl:Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->getPosOffset()I

    move-result v0

    .line 1607
    :cond_3
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1608
    .local v1, nPosOffset:I
    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    mul-int v2, v1, v3

    .line 1610
    .local v2, nTimeSlotOffset:I
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->reset()V

    .line 1612
    if-gez v0, :cond_9

    .line 1613
    sget-object v3, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    iput-object v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    .line 1614
    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v3, :cond_7

    .line 1615
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v5, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    sub-int/2addr v4, v5

    add-int/lit8 v5, v1, -0x1

    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v3, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1633
    :goto_1
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->DURATION_SCROLL_TO:I

    iput v4, v3, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 1635
    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    if-gtz v3, :cond_c

    sget-object v3, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    iget-object v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    if-ne v3, v4, :cond_c

    .line 1636
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iput v8, v3, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 1640
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget-object v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v4, v4, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    iget-object v5, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v5, v5, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-virtual {p0, v4, v5}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getRefineDuration(II)I

    move-result v4

    iput v4, v3, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 1642
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v3, v3, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-gtz v3, :cond_5

    .line 1643
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iput v7, v3, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 1646
    :cond_5
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 1648
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v3, v3, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-lez v3, :cond_6

    iget-object v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v3, v3, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    if-nez v3, :cond_d

    .line 1649
    :cond_6
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->onAnimationEnd()V

    goto/16 :goto_0

    .line 1616
    :cond_7
    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    if-gez v3, :cond_8

    .line 1617
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v4, v2

    iput v4, v3, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_1

    .line 1619
    :cond_8
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iput v2, v3, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_1

    .line 1622
    :cond_9
    sget-object v3, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    iput-object v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    .line 1623
    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v3, :cond_a

    .line 1624
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    add-int/2addr v4, v2

    iput v4, v3, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_1

    .line 1625
    :cond_a
    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    if-gez v3, :cond_b

    .line 1626
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v5, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v2

    iput v4, v3, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_1

    .line 1628
    :cond_b
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iput v2, v3, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_1

    .line 1637
    :cond_c
    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    if-gt v3, v4, :cond_4

    sget-object v3, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    iget-object v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    if-ne v3, v4, :cond_4

    .line 1638
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iput v8, v3, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    goto :goto_2

    .line 1653
    :cond_d
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget-object v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v4, v4, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    iget-object v5, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v5, v5, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 1654
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    sget-object v4, Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;->EASEINOUT_CUBIC:Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;

    iput-object v4, v3, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;

    .line 1655
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    const/4 v4, 0x2

    iput v4, v3, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->type:I

    .line 1657
    invoke-virtual {p0, v7}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->enableAnimation(Z)V

    .line 1658
    invoke-virtual {p0, v7}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->enabledTouchEvent(Z)V

    .line 1660
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->animateView()V

    goto/16 :goto_0
.end method

.method public setAdapter(Lcom/htc/sunnyCore/widget/presentation/SPresentationAdapterBase;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 866
    sget-object v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setAdapter +"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    new-instance v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$2;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$2;-><init>(Lcom/htc/sunnyCore/widget/presentation/SPresentation;Lcom/htc/sunnyCore/widget/presentation/SPresentationAdapterBase;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 874
    sget-object v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setAdapter -"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    return-void
.end method

.method protected setAdapterW(Lcom/htc/sunnyCore/widget/presentation/SPresentationAdapterBase;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 881
    sget-object v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setAdapterW +"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->stopAnimation()V

    .line 883
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunnyCore/widget/presentation/SPresentationAdapterBase;

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunnyCore/widget/presentation/SPresentationAdapterBase;

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SAdapterView;->mDataSetObserver:Lcom/htc/sunnyCore/widget/presentation/SAdapterView$SAdapterDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentationAdapterBase;->unregisterDataSetObserver(Lcom/htc/sunnyCore/widget/presentation/SDataSetObserver;)V

    .line 886
    :cond_0
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunnyCore/widget/presentation/SPresentationAdapterBase;

    .line 887
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunnyCore/widget/presentation/SPresentationAdapterBase;

    if-eqz v0, :cond_1

    .line 888
    new-instance v0, Lcom/htc/sunnyCore/widget/presentation/SAdapterView$SAdapterDataSetObserver;

    invoke-direct {v0, p0}, Lcom/htc/sunnyCore/widget/presentation/SAdapterView$SAdapterDataSetObserver;-><init>(Lcom/htc/sunnyCore/widget/presentation/SAdapterView;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SAdapterView;->mDataSetObserver:Lcom/htc/sunnyCore/widget/presentation/SAdapterView$SAdapterDataSetObserver;

    .line 889
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunnyCore/widget/presentation/SPresentationAdapterBase;

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SAdapterView;->mDataSetObserver:Lcom/htc/sunnyCore/widget/presentation/SAdapterView$SAdapterDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentationAdapterBase;->registerDataSetObserver(Lcom/htc/sunnyCore/widget/presentation/SDataSetObserver;)V

    .line 892
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mPerformOpeningAnimation:Z

    .line 893
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mOpeningAnimationStart:Z

    .line 895
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->initContainers()V

    .line 896
    sget-object v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setAdapterW -"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    return-void
.end method

.method public setClipSize(IIII)V
    .locals 6
    .parameter "nLeft"
    .parameter "nTop"
    .parameter "nRight"
    .parameter "nBottom"

    .prologue
    .line 1900
    new-instance v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$12;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$12;-><init>(Lcom/htc/sunnyCore/widget/presentation/SPresentation;IIII)V

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1911
    return-void
.end method

.method protected setContainerCount(I)V
    .locals 1
    .parameter "nContainerCount"

    .prologue
    .line 2985
    new-instance v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$14;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$14;-><init>(Lcom/htc/sunnyCore/widget/presentation/SPresentation;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 3001
    return-void
.end method

.method public setEdgeItemScrollRatio(F)V
    .locals 1
    .parameter "nRatio"

    .prologue
    .line 738
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemScrollRatio:F

    .line 746
    return-void
.end method

.method public setOnContainerClickListener(Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnContainerClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 904
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerClickListener:Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnContainerClickListener;

    .line 905
    return-void
.end method

.method public setOnLayoutListener(Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnLayoutListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 930
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mLayoutListener:Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnLayoutListener;

    .line 931
    return-void
.end method

.method public setOnSelectionChangeListener(Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnSelectionChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 913
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectionChangeListener:Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnSelectionChangeListener;

    .line 914
    return-void
.end method

.method public setOnStateListener(Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnStateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 922
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mStateListener:Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnStateListener;

    .line 923
    return-void
.end method

.method public setReflectionGap(I)V
    .locals 0
    .parameter "nGap"

    .prologue
    .line 727
    iput p1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mReflectionGap:I

    .line 728
    return-void
.end method

.method public setReflectionHeight(I)V
    .locals 0
    .parameter "nReflectionHeight"

    .prologue
    .line 717
    iput p1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mReflectionHeight:I

    .line 718
    return-void
.end method

.method public setSelection(IZ)V
    .locals 1
    .parameter "nUIPos"
    .parameter "bAnimated"

    .prologue
    .line 1038
    new-instance v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$6;-><init>(Lcom/htc/sunnyCore/widget/presentation/SPresentation;IZ)V

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1045
    return-void
.end method

.method protected setSelectionW(IZ)V
    .locals 7
    .parameter "position"
    .parameter "bAnimated"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1051
    if-ltz p1, :cond_0

    iget v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    if-ge p1, v4, :cond_0

    iget v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    if-ne v4, p1, :cond_1

    .line 1093
    :cond_0
    :goto_0
    return-void

    .line 1055
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->isEnabledAnimation()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1056
    const/4 p2, 0x0

    .line 1060
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getContainerByDataIndex(I)Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    move-result-object v3

    .line 1061
    .local v3, itemContainer:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    if-ne v5, p2, :cond_3

    iget-boolean v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataUpdated:Z

    if-ne v5, v4, :cond_3

    if-eqz v3, :cond_3

    iget-boolean v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mShiftOneItem:Z

    if-nez v4, :cond_3

    .line 1062
    iget v4, v3, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    invoke-virtual {p0, v4}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->scrollToW(I)V

    goto :goto_0

    .line 1066
    :cond_3
    iput p1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    .line 1067
    sget-object v4, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_UNKNOWN:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    iput-object v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    .line 1069
    iget-object v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataUpdated:Z

    if-ne v5, v4, :cond_8

    .line 1070
    const/4 v2, -0x1

    .line 1071
    .local v2, dataIndex:I
    const/4 v0, 0x0

    .local v0, cid:I
    :goto_1
    iget v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    if-ge v0, v4, :cond_7

    .line 1072
    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getContainerByLayoutPos(I)Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    move-result-object v1

    .line 1073
    .local v1, container:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    if-nez v1, :cond_4

    .line 1071
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1075
    :cond_4
    iget v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v4, v4, -0x1

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v0, v4

    add-int v2, v4, p1

    .line 1077
    if-ltz v2, :cond_5

    iget v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    if-lt v2, v4, :cond_6

    .line 1078
    :cond_5
    iput-boolean v5, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    .line 1079
    const/4 v4, -0x1

    iput v4, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    goto :goto_2

    .line 1081
    :cond_6
    iput-boolean v6, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    .line 1082
    iput v2, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    goto :goto_2

    .line 1086
    .end local v1           #container:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    :cond_7
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->updateAllContainersData()V

    .line 1089
    .end local v0           #cid:I
    .end local v2           #dataIndex:I
    :cond_8
    invoke-virtual {p0, v6}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->moveToTimeSlot(I)V

    .line 1090
    invoke-virtual {p0, v5}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->updateContainersOrder(Z)V

    .line 1092
    invoke-virtual {p0, p1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifySelectionChange(I)V

    goto :goto_0
.end method

.method public setShiftOneItemMode(Z)V
    .locals 0
    .parameter "bEnabled"

    .prologue
    .line 2576
    iput-boolean p1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mShiftOneItem:Z

    .line 2577
    return-void
.end method

.method public setTimeSlotInterval(I)V
    .locals 1
    .parameter "nTimeSlot"

    .prologue
    .line 706
    iput p1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    .line 707
    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL_HALF:I

    .line 708
    return-void
.end method

.method public stopAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/16 v1, 0x12

    .line 2907
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->hasAnimation()Z

    move-result v0

    if-ne v2, v0, :cond_0

    .line 2909
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->type:I

    packed-switch v0, :pswitch_data_0

    .line 2953
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->enableAnimation(Z)V

    .line 2954
    return-void

    .line 2915
    :pswitch_1
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->reset()V

    .line 2916
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 2917
    invoke-virtual {p0, v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    .line 2922
    :pswitch_2
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->reset()V

    .line 2923
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 2924
    invoke-virtual {p0, v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    .line 2929
    :pswitch_3
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->reset()V

    .line 2930
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 2931
    invoke-virtual {p0, v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    .line 2936
    :pswitch_4
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->reset()V

    .line 2937
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 2938
    invoke-virtual {p0, v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    .line 2943
    :pswitch_5
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->reset()V

    .line 2944
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 2945
    invoke-virtual {p0, v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    .line 2909
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method protected updateAllContainersData()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 2010
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunnyCore/widget/presentation/SPresentationAdapterBase;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    if-nez v5, :cond_1

    .line 2034
    :cond_0
    :goto_0
    return-void

    .line 2012
    :cond_1
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    .local v0, arr$:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_8

    aget-object v2, v0, v3

    .line 2013
    .local v2, container:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    if-nez v2, :cond_3

    .line 2012
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2015
    :cond_3
    iget v5, v2, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    if-ltz v5, :cond_6

    iget v5, v2, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    iget v8, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    if-ge v5, v8, :cond_6

    .line 2016
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunnyCore/widget/presentation/SPresentationAdapterBase;

    iget v8, v2, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    invoke-virtual {v5, v8}, Lcom/htc/sunnyCore/widget/presentation/SPresentationAdapterBase;->getItemBitmap(I)Lcom/htc/sunnyCore/SBitmap;

    move-result-object v1

    .line 2017
    .local v1, bmp:Lcom/htc/sunnyCore/SBitmap;
    if-eqz v1, :cond_5

    .line 2018
    iget-object v5, v2, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mImageTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v5, v1, v6}, Lcom/htc/sunnyCore/Texture;->setSBitmap(Lcom/htc/sunnyCore/SBitmap;Z)V

    .line 2022
    :goto_3
    iput-boolean v6, v2, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    .line 2027
    .end local v1           #bmp:Lcom/htc/sunnyCore/SBitmap;
    :goto_4
    iget-boolean v5, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mOpeningAnimationStart:Z

    if-nez v5, :cond_2

    .line 2028
    iget-object v8, v2, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    iget-boolean v5, v2, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    if-nez v5, :cond_4

    iget-boolean v5, v2, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mSkipItem:Z

    if-eqz v5, :cond_7

    :cond_4
    move v5, v7

    :goto_5
    invoke-virtual {p0, v2, v8, v5}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->updateContainerLayout(Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;Z)V

    goto :goto_2

    .line 2020
    .restart local v1       #bmp:Lcom/htc/sunnyCore/SBitmap;
    :cond_5
    sget-object v5, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "null bitmap "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2024
    .end local v1           #bmp:Lcom/htc/sunnyCore/SBitmap;
    :cond_6
    iput-boolean v7, v2, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    .line 2025
    const/4 v5, -0x1

    iput v5, v2, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    goto :goto_4

    :cond_7
    move v5, v6

    .line 2028
    goto :goto_5

    .line 2032
    .end local v2           #container:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    :cond_8
    iput-boolean v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mIsFirstRender:Z

    .line 2033
    iput-boolean v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataUpdated:Z

    goto :goto_0
.end method

.method public updateAllContainersLayout()V
    .locals 1

    .prologue
    .line 2040
    new-instance v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$13;

    invoke-direct {v0, p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$13;-><init>(Lcom/htc/sunnyCore/widget/presentation/SPresentation;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 2055
    return-void
.end method

.method protected updateBouncingState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2122
    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    if-lt v0, v1, :cond_1

    .line 2123
    :cond_0
    iput-boolean v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mIsBouncingState:Z

    .line 2131
    :goto_0
    return-void

    .line 2124
    :cond_1
    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v0, :cond_2

    .line 2125
    iput-boolean v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mIsBouncingState:Z

    goto :goto_0

    .line 2126
    :cond_2
    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    if-gez v0, :cond_3

    .line 2127
    iput-boolean v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mIsBouncingState:Z

    goto :goto_0

    .line 2129
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mIsBouncingState:Z

    goto :goto_0
.end method

.method protected updateContainerLayout(Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;Z)V
    .locals 5
    .parameter "container"
    .parameter "layout"
    .parameter "bForceHidden"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2961
    iget-object v0, p2, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v0, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    iget-object v1, p2, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v1, v1, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iget-object v2, p2, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v2, v2, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->setPosition(FFF)V

    .line 2963
    iget-object v0, p2, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v0, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    iget-object v1, p2, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v1, v1, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iget-object v2, p2, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v2, v2, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->setRotate(FFF)V

    .line 2964
    iget-boolean v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mEnabledReflection:Z

    if-ne v3, v0, :cond_0

    .line 2965
    iget-object v0, p1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mReflectSprite:Lcom/htc/sunnyCore/Sprite;

    const/high16 v1, 0x4334

    iget-object v2, p2, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v2, v2, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1, v4, v4}, Lcom/htc/sunnyCore/Sprite;->setRotate(FFF)V

    .line 2967
    :cond_0
    iget-object v0, p2, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    iget v0, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    iget-object v1, p2, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    iget v1, v1, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iget-object v2, p2, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    iget v2, v2, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->setScale(FFF)V

    .line 2969
    if-ne v3, p3, :cond_2

    .line 2970
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->setVisibility(Z)V

    .line 2974
    :goto_0
    iget v0, p2, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    invoke-virtual {p1, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->setAlpha(I)V

    .line 2976
    iget-boolean v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mPerformOpeningAnimation:Z

    if-ne v3, v0, :cond_1

    .line 2977
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->updateViewLayout()V

    .line 2979
    :cond_1
    return-void

    .line 2972
    :cond_2
    iget-boolean v0, p2, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mVisible:Z

    invoke-virtual {p1, v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->setVisibility(Z)V

    goto :goto_0
.end method

.method protected updateContainerLayoutPos(Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;)V
    .locals 4
    .parameter "eNextDirection"

    .prologue
    .line 1995
    sget-object v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    if-ne p1, v1, :cond_0

    .line 1996
    const/4 v0, 0x0

    .local v0, cid:I
    :goto_0
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    if-ge v0, v1, :cond_1

    .line 1997
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mLayoutPos:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    rem-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mLayoutPos:I

    .line 1996
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1999
    .end local v0           #cid:I
    :cond_0
    sget-object v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    if-ne p1, v1, :cond_1

    .line 2000
    const/4 v0, 0x0

    .restart local v0       #cid:I
    :goto_1
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    if-ge v0, v1, :cond_1

    .line 2001
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mLayoutPos:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    rem-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mLayoutPos:I

    .line 2000
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2004
    .end local v0           #cid:I
    :cond_1
    return-void
.end method

.method protected updateContainersOrder()V
    .locals 8

    .prologue
    .line 1287
    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v6, v6, -0x1

    div-int/lit8 v4, v6, 0x2

    .line 1288
    .local v4, nCenterPos:I
    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    div-int/lit8 v5, v6, 0x2

    .line 1289
    .local v5, nHalfTimeSlot:I
    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-gt v6, v5, :cond_0

    .line 1290
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    .local v0, arr$:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 1291
    .local v1, container:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    iget v7, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mLayoutPos:I

    sub-int/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v1, v6}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->setRenderOrder(I)V

    .line 1290
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1294
    .end local v0           #arr$:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    .end local v1           #container:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v6, :cond_1

    .line 1295
    add-int/lit8 v4, v4, -0x1

    .line 1296
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    .restart local v0       #arr$:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 1297
    .restart local v1       #container:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    iget v7, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mLayoutPos:I

    sub-int/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v1, v6}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->setRenderOrder(I)V

    .line 1296
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1299
    .end local v0           #arr$:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    .end local v1           #container:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    if-gez v6, :cond_2

    .line 1300
    add-int/lit8 v4, v4, 0x1

    .line 1301
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    .restart local v0       #arr$:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_2
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 1302
    .restart local v1       #container:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    iget v7, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mLayoutPos:I

    sub-int/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v1, v6}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->setRenderOrder(I)V

    .line 1301
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1305
    .end local v0           #arr$:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    .end local v1           #container:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_2
    return-void
.end method

.method protected updateContainersOrder(Z)V
    .locals 3
    .parameter "bForce"

    .prologue
    .line 1259
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    if-nez v1, :cond_1

    .line 1280
    :cond_0
    :goto_0
    return-void

    .line 1261
    :cond_1
    const/4 v0, 0x0

    .line 1263
    .local v0, nRegion:I
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->TIMESLOT_INTERVAL_HALF:I

    if-gt v1, v2, :cond_2

    .line 1264
    const/4 v0, 0x1

    .line 1269
    :goto_1
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mReorderRegion:I

    if-eq v0, v1, :cond_3

    .line 1270
    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mReorderRegion:I

    .line 1271
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mReorderItem:I

    .line 1272
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->updateContainersOrder()V

    goto :goto_0

    .line 1266
    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    .line 1273
    :cond_3
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mReorderItem:I

    iget v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    if-eq v1, v2, :cond_4

    .line 1274
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mReorderItem:I

    .line 1275
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->updateContainersOrder()V

    goto :goto_0

    .line 1276
    :cond_4
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 1277
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->updateContainersOrder()V

    goto :goto_0
.end method

.method protected updateLayoutAtTimeSlot(IIIILcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;Z)V
    .locals 20
    .parameter "nTimeSlot"
    .parameter "nTotalTimeSlot"
    .parameter "nCurrentUIPos"
    .parameter "nNextUIPos"
    .parameter "layout"
    .parameter "isBouncing"

    .prologue
    .line 3019
    const/4 v10, 0x0

    .local v10, nStartX:F
    const/4 v5, 0x0

    .line 3020
    .local v5, nEndX:F
    const/4 v12, 0x0

    .local v12, nStartY:F
    const/4 v7, 0x0

    .line 3021
    .local v7, nEndY:F
    const/4 v14, 0x0

    .local v14, nStartZ:F
    const/4 v9, 0x0

    .line 3023
    .local v9, nEndZ:F
    const/4 v11, 0x0

    .local v11, nStartXF:F
    const/4 v6, 0x0

    .line 3024
    .local v6, nEndXF:F
    const/4 v13, 0x0

    .local v13, nStartYF:F
    const/4 v8, 0x0

    .line 3026
    .local v8, nEndYF:F
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 3028
    .local v4, nAbsTimeSlot:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    move-result-object v3

    .line 3029
    .local v3, currentLayout:Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;
    if-nez v3, :cond_1

    .line 3061
    :cond_0
    :goto_0
    return-void

    .line 3030
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    move-result-object v15

    .line 3031
    .local v15, nextLayout:Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;
    if-eqz v15, :cond_0

    .line 3033
    iget-object v0, v3, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v10, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 3034
    iget-object v0, v15, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v5, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 3035
    iget-object v0, v3, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v12, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 3036
    iget-object v0, v15, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v7, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 3037
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v16, v0

    int-to-float v0, v4

    move/from16 v17, v0

    sub-float v18, v5, v10

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v10, v1, v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->interpolateLinear(FFFF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 3038
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v16, v0

    int-to-float v0, v4

    move/from16 v17, v0

    sub-float v18, v7, v12

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v12, v1, v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->interpolateLinear(FFFF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 3039
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    .line 3042
    iget-object v0, v3, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v11, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 3043
    iget-object v0, v15, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v6, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 3044
    iget-object v0, v3, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v13, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 3045
    iget-object v0, v15, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v8, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 3046
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v16, v0

    int-to-float v0, v4

    move/from16 v17, v0

    sub-float v18, v6, v11

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v11, v1, v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->interpolateLinear(FFFF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 3047
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v16, v0

    int-to-float v0, v4

    move/from16 v17, v0

    sub-float v18, v8, v13

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v13, v1, v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->interpolateLinear(FFFF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 3048
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v16, v0

    const/high16 v17, 0x3f80

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    .line 3050
    iget-object v0, v3, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v10, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 3051
    iget-object v0, v15, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v5, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 3052
    iget-object v0, v3, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v14, v0, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    .line 3053
    iget-object v0, v15, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v9, v0, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    .line 3054
    iget-object v0, v3, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v12, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 3055
    iget-object v0, v15, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v7, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 3056
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v16, v0

    int-to-float v0, v4

    move/from16 v17, v0

    sub-float v18, v5, v10

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v10, v1, v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->interpolateLinear(FFFF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 3057
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v16, v0

    int-to-float v0, v4

    move/from16 v17, v0

    sub-float v18, v7, v12

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v12, v1, v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->interpolateLinear(FFFF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 3058
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v16, v0

    int-to-float v0, v4

    move/from16 v17, v0

    sub-float v18, v9, v14

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v14, v1, v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->interpolateLinear(FFFF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    .line 3060
    int-to-float v0, v4

    move/from16 v16, v0

    iget v0, v3, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v15, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    move/from16 v18, v0

    iget v0, v3, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-static/range {v16 .. v19}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->interpolateLinear(FFFF)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p5

    iput v0, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    goto/16 :goto_0
.end method

.method protected updateNewContainer(Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;)V
    .locals 8
    .parameter "eNextDirection"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1940
    const/4 v2, -0x1

    .line 1942
    .local v2, nLayoutPos:I
    sget-object v4, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    if-ne v4, p1, :cond_1

    .line 1943
    iget v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v2, v4, -0x1

    .line 1950
    :goto_0
    invoke-virtual {p0, v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getContainerByLayoutPos(I)Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    move-result-object v1

    .line 1951
    .local v1, container:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    if-nez v1, :cond_2

    .line 1989
    .end local v1           #container:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    :cond_0
    :goto_1
    return-void

    .line 1944
    :cond_1
    sget-object v4, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    if-ne v4, p1, :cond_0

    .line 1945
    const/4 v2, 0x0

    goto :goto_0

    .line 1953
    .restart local v1       #container:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
    :cond_2
    const/4 v3, -0x1

    .line 1955
    .local v3, nNewDataIndex:I
    iget-object v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mFakeAnimationControl:Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->isFakeAnimation()Z

    move-result v4

    if-ne v7, v4, :cond_6

    .line 1956
    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mFakeNextUpdateIndex:I

    .line 1957
    sget-object v4, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    if-ne v4, p1, :cond_5

    .line 1958
    iget v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mFakeNextUpdateIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mFakeNextUpdateIndex:I

    .line 1966
    :cond_3
    :goto_2
    if-ltz v3, :cond_4

    iget v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    if-lt v3, v4, :cond_7

    .line 1967
    :cond_4
    iput-boolean v7, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    .line 1968
    const/4 v4, -0x1

    iput v4, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    .line 1977
    :goto_3
    iget v4, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    if-eq v4, v3, :cond_0

    .line 1978
    iput v3, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    .line 1979
    if-ltz v3, :cond_0

    iget v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mDataCount:I

    if-ge v3, v4, :cond_0

    .line 1980
    iget-object v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunnyCore/widget/presentation/SPresentationAdapterBase;

    invoke-virtual {v4, v3}, Lcom/htc/sunnyCore/widget/presentation/SPresentationAdapterBase;->getItemBitmap(I)Lcom/htc/sunnyCore/SBitmap;

    move-result-object v0

    .line 1981
    .local v0, bmp:Lcom/htc/sunnyCore/SBitmap;
    if-eqz v0, :cond_9

    .line 1982
    iget-object v4, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mImageTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v4, v0, v6}, Lcom/htc/sunnyCore/Texture;->setSBitmap(Lcom/htc/sunnyCore/SBitmap;Z)V

    .line 1986
    :goto_4
    iput-boolean v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mIsFirstRender:Z

    goto :goto_1

    .line 1959
    .end local v0           #bmp:Lcom/htc/sunnyCore/SBitmap;
    :cond_5
    sget-object v4, Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunnyCore/widget/presentation/SPresentation$DIRECTION;

    if-ne v4, p1, :cond_3

    .line 1960
    iget v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mFakeNextUpdateIndex:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mFakeNextUpdateIndex:I

    goto :goto_2

    .line 1963
    :cond_6
    iget v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v4, v4, -0x1

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v2, v4

    iget v5, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSelectedPos:I

    add-int v3, v4, v5

    goto :goto_2

    .line 1970
    :cond_7
    iget-object v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mFakeAnimationControl:Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->isFakeAnimation()Z

    move-result v4

    if-ne v7, v4, :cond_8

    iget-object v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mFakeAnimationControl:Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;

    invoke-virtual {v4, v3}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->isForceHidden(I)Z

    move-result v4

    if-ne v7, v4, :cond_8

    .line 1971
    iput-boolean v7, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    goto :goto_3

    .line 1973
    :cond_8
    iput-boolean v6, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    goto :goto_3

    .line 1984
    .restart local v0       #bmp:Lcom/htc/sunnyCore/SBitmap;
    :cond_9
    sget-object v4, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "null bitmap "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method protected updateViewLayout()V
    .locals 10

    .prologue
    .line 1917
    const/4 v0, 0x0

    .local v0, nOffsetX:I
    const/4 v1, 0x0

    .line 1918
    .local v1, nOffsetY:I
    iget-object v3, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->isEnded()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->isFillAfter()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->isEnded()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1919
    :cond_0
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->isPositionAnimation()Z

    move-result v4

    if-ne v3, v4, :cond_1

    .line 1920
    iget-object v3, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->getCurrentPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v2

    .line 1921
    .local v2, v:Lcom/htc/sunnyCore/view/Vector3F;
    iget v3, v2, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    float-to-int v0, v3

    .line 1922
    iget v3, v2, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    float-to-int v1, v3

    .line 1929
    .end local v2           #v:Lcom/htc/sunnyCore/view/Vector3F;
    :cond_1
    :goto_0
    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mListWidth:I

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mListHeight:I

    if-nez v3, :cond_4

    .line 1930
    :cond_2
    iget v3, p0, Lcom/htc/sunnyCore/SceneNode;->mNodeId:I

    iget v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mClipSizeL:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mClipSizeT:I

    sub-int/2addr v5, v1

    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSurfaceViewWidth:I

    iget v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mClipSizeL:I

    iget v8, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mClipSizeR:I

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSurfaceViewHeight:I

    iget v8, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mClipSizeT:I

    iget v9, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mClipSizeB:I

    add-int/2addr v8, v9

    sub-int/2addr v7, v8

    invoke-static {v3, v4, v5, v6, v7}, Lcom/htc/sunnyCore/SunnyCore;->Scissor_SetArea(IIIII)V

    .line 1934
    :goto_1
    return-void

    .line 1925
    :cond_3
    iget-object v3, p0, Lcom/htc/sunnyCore/view/SView;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v3, v3, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    float-to-int v0, v3

    .line 1926
    iget-object v3, p0, Lcom/htc/sunnyCore/view/SView;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v3, v3, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    float-to-int v1, v3

    goto :goto_0

    .line 1932
    :cond_4
    iget v3, p0, Lcom/htc/sunnyCore/SceneNode;->mNodeId:I

    iget v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mClipSizeL:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mClipSizeT:I

    sub-int/2addr v5, v1

    iget v6, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSurfaceViewWidth:I

    iget v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mClipSizeL:I

    iget v8, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mClipSizeR:I

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mSurfaceViewHeight:I

    iget v8, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mClipSizeT:I

    iget v9, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mClipSizeB:I

    add-int/2addr v8, v9

    sub-int/2addr v7, v8

    invoke-static {v3, v4, v5, v6, v7}, Lcom/htc/sunnyCore/SunnyCore;->Scissor_SetArea(IIIII)V

    goto :goto_1
.end method
