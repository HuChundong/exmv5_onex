.class public Lcom/android/camera/SnapboothCustomize;
.super Ljava/lang/Object;
.source "SnapboothCustomize.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/SnapboothCustomize$SnapboothEffects;
    }
.end annotation


# static fields
.field public static CAPTURE_IMG_HEIGHT:I

.field public static CAPTURE_IMG_WIDTH:I

.field private static final EffectIconID_FourShots:[I

.field private static final EffectIconID_OneShot:[I

.field public static PREVIEW_HEIGHT:I

.field public static PREVIEW_LANDSCAPE_LEFT:I

.field public static PREVIEW_LANDSCAPE_TOP:I

.field public static PREVIEW_PORTRAIT_LEFT:I

.field public static PREVIEW_PORTRAIT_TOP:I

.field public static PREVIEW_WIDTH:I

.field public static REVIEW_HEIGHT:I

.field public static REVIEW_IMAGE_ANIMATION_DX_LAND:I

.field public static REVIEW_IMAGE_ANIMATION_DX_PORT:I

.field public static REVIEW_IMAGE_ANIMATION_DY_LAND:I

.field public static REVIEW_IMAGE_ANIMATION_DY_PORT:I

.field public static REVIEW_IMAGE_HEIGHT:I

.field public static REVIEW_IMAGE_LEFT_LAND:I

.field public static REVIEW_IMAGE_LEFT_PORT:I

.field public static REVIEW_IMAGE_SHADOW_BOTTOM_LAND:I

.field public static REVIEW_IMAGE_SHADOW_BOTTOM_PORT:I

.field public static REVIEW_IMAGE_SHADOW_LEFT_LAND:I

.field public static REVIEW_IMAGE_SHADOW_LEFT_PORT:I

.field public static REVIEW_IMAGE_SHADOW_RIGHT_LAND:I

.field public static REVIEW_IMAGE_SHADOW_RIGHT_PORT:I

.field public static REVIEW_IMAGE_SHADOW_TOP_LAND:I

.field public static REVIEW_IMAGE_SHADOW_TOP_PORT:I

.field public static REVIEW_IMAGE_SQUARE_LEFT_LAND:I

.field public static REVIEW_IMAGE_SQUARE_LEFT_PORT:I

.field public static REVIEW_IMAGE_SQUARE_SIZE:I

.field public static REVIEW_IMAGE_SQUARE_TOP_LAND:I

.field public static REVIEW_IMAGE_SQUARE_TOP_PORT:I

.field public static REVIEW_IMAGE_TOP_LAND:I

.field public static REVIEW_IMAGE_TOP_PORT:I

.field public static REVIEW_IMAGE_WIDTH:I

.field public static REVIEW_SCREEN_BUTTONS_BOTTOM_LAND:I

.field public static REVIEW_SCREEN_BUTTONS_BOTTOM_PORT:I

.field public static REVIEW_SCREEN_BUTTONS_LEFT_LAND:I

.field public static REVIEW_SCREEN_BUTTONS_LEFT_PORT:I

.field public static REVIEW_SCREEN_BUTTONS_WIDTH_LAND:I

.field public static REVIEW_SCREEN_BUTTONS_WIDTH_PORT:I

.field public static REVIEW_SCREEN_BUTTON_HEIGHT:I

.field public static REVIEW_SCREEN_BUTTON_WIDTH:I

.field public static REVIEW_WIDTH:I

.field private static final SnapboothEffectButton:[I

.field private static final SnapboothEffectIcon:[I

.field private static final SnapboothEffectLayout:[I

.field private static final SnapboothEffectMessage:[I

.field public static THUMBNAIL_IMG_DIFF:I

.field public static THUMBNAIL_IMG_HEIGHT:I

.field public static THUMBNAIL_IMG_WIDTH:I

.field public static VIEWFINDER_COVER_LEFT_LAND:I

.field public static VIEWFINDER_COVER_LEFT_PORT:I

.field public static VIEWFINDER_COVER_TOP_LAND:I

.field public static VIEWFINDER_COVER_TOP_PORT:I

.field private static mNumCountBubble:I

.field private static mNumCountDown:I


# instance fields
.field private mActivityCover:Landroid/view/View;

.field private mBackground:Landroid/view/View;

.field mFirstEffectsInPort:I

.field private mGalleryBtnClickListener:Landroid/view/View$OnClickListener;

.field private mGalleryLandscapeButton:Landroid/widget/ImageButton;

.field private mGalleryPortraitButton:Landroid/widget/ImageButton;

.field private mHeaderContainer:Landroid/view/View;

.field private mIsMultiShutter:Z

.field private mLandAnimationThumbnail:Landroid/widget/ImageView;

.field private mLandCountBubble:[Landroid/widget/ImageView;

.field private mLandCountdown:[Landroid/widget/ImageView;

.field private mLandEffectButtons:[Landroid/widget/ImageButton;

.field private mLandEffectIcons:[Landroid/widget/ImageView;

.field private mLandShutterBtn:Landroid/widget/Button;

.field private mLandSwitchButton:Landroid/widget/ImageButton;

.field private mLandSwitchButtonText:Landroid/widget/TextView;

.field private mLandthumbnail:Landroid/widget/ImageView;

.field mMaxEffectSize:I

.field private mPortAnimationThumbnail:Landroid/widget/ImageView;

.field private mPortCountBubble:[Landroid/widget/ImageView;

.field private mPortCountdown:[Landroid/widget/ImageView;

.field private mPortEffectButtons:[Landroid/widget/ImageButton;

.field private mPortEffectIcons:[Landroid/widget/ImageView;

.field private mPortShutterBtn:Landroid/widget/Button;

.field private mPortSwitchButton:Landroid/widget/ImageButton;

.field private mPortSwitchButtonText:Landroid/widget/TextView;

.field private mPortthumbnail:Landroid/widget/ImageView;

.field private mPreviewCover:Landroid/view/View;

.field private mPreviewFilter:Landroid/view/View;

.field private mPreviewSurface:Landroid/view/SurfaceView;

.field private mReviewImg:Landroid/widget/ImageView;

.field private mReviewImgContainer:Landroid/view/View;

.field private mReviewScreenButtons:[Landroid/view/View;

.field private mReviewScreenButtonsPanel:Landroid/view/View;

.field private mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

.field private mThreadHandler:Landroid/os/Handler;

.field private mViewfinderCover:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0x9

    const/16 v0, 0x2d0

    sput v0, Lcom/android/camera/SnapboothCustomize;->PREVIEW_WIDTH:I

    const/16 v0, 0x4d0

    sput v0, Lcom/android/camera/SnapboothCustomize;->PREVIEW_HEIGHT:I

    const/16 v0, 0x6d

    sput v0, Lcom/android/camera/SnapboothCustomize;->THUMBNAIL_IMG_WIDTH:I

    const/16 v0, 0x60

    sput v0, Lcom/android/camera/SnapboothCustomize;->THUMBNAIL_IMG_HEIGHT:I

    sget v0, Lcom/android/camera/SnapboothCustomize;->THUMBNAIL_IMG_WIDTH:I

    sget v1, Lcom/android/camera/SnapboothCustomize;->THUMBNAIL_IMG_HEIGHT:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/camera/SnapboothCustomize;->THUMBNAIL_IMG_DIFF:I

    const/16 v0, 0x157

    sput v0, Lcom/android/camera/SnapboothCustomize;->REVIEW_WIDTH:I

    const/16 v0, 0x262

    sput v0, Lcom/android/camera/SnapboothCustomize;->REVIEW_HEIGHT:I

    const/16 v0, 0x83

    sput v0, Lcom/android/camera/SnapboothCustomize;->PREVIEW_PORTRAIT_LEFT:I

    const/16 v0, 0x3c

    sput v0, Lcom/android/camera/SnapboothCustomize;->PREVIEW_PORTRAIT_TOP:I

    const/16 v0, 0xb8

    sput v0, Lcom/android/camera/SnapboothCustomize;->PREVIEW_LANDSCAPE_LEFT:I

    const/16 v0, 0xcf

    sput v0, Lcom/android/camera/SnapboothCustomize;->PREVIEW_LANDSCAPE_TOP:I

    const/16 v0, 0x112

    sput v0, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTON_WIDTH:I

    const/16 v0, 0x31

    sput v0, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTON_HEIGHT:I

    const/16 v0, 0x238

    sput v0, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTONS_WIDTH_LAND:I

    const/16 v0, 0x22e

    sput v0, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTONS_WIDTH_PORT:I

    const/16 v0, 0x30

    sput v0, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTONS_BOTTOM_LAND:I

    const/16 v0, 0x85

    sput v0, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTONS_BOTTOM_PORT:I

    const/16 v0, 0xe4

    sput v0, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTONS_LEFT_LAND:I

    const/16 v0, 0x16

    sput v0, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTONS_LEFT_PORT:I

    const/4 v0, 0x3

    sput v0, Lcom/android/camera/SnapboothCustomize;->mNumCountDown:I

    const/4 v0, 0x4

    sput v0, Lcom/android/camera/SnapboothCustomize;->mNumCountBubble:I

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/SnapboothCustomize;->SnapboothEffectMessage:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/SnapboothCustomize;->SnapboothEffectLayout:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/camera/SnapboothCustomize;->SnapboothEffectButton:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/camera/SnapboothCustomize;->SnapboothEffectIcon:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/camera/SnapboothCustomize;->EffectIconID_OneShot:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/camera/SnapboothCustomize;->EffectIconID_FourShots:[I

    return-void

    :array_0
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x2bt 0x1t 0x8t 0x7ft
        0x2et 0x1t 0x8t 0x7ft
        0x31t 0x1t 0x8t 0x7ft
        0x34t 0x1t 0x8t 0x7ft
        0x37t 0x1t 0x8t 0x7ft
        0x3at 0x1t 0x8t 0x7ft
        0x3dt 0x1t 0x8t 0x7ft
        0x40t 0x1t 0x8t 0x7ft
        0x43t 0x1t 0x8t 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0x2dt 0x1t 0x8t 0x7ft
        0x30t 0x1t 0x8t 0x7ft
        0x33t 0x1t 0x8t 0x7ft
        0x36t 0x1t 0x8t 0x7ft
        0x39t 0x1t 0x8t 0x7ft
        0x3ct 0x1t 0x8t 0x7ft
        0x3ft 0x1t 0x8t 0x7ft
        0x42t 0x1t 0x8t 0x7ft
        0x45t 0x1t 0x8t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0x2ct 0x1t 0x8t 0x7ft
        0x2ft 0x1t 0x8t 0x7ft
        0x32t 0x1t 0x8t 0x7ft
        0x35t 0x1t 0x8t 0x7ft
        0x38t 0x1t 0x8t 0x7ft
        0x3bt 0x1t 0x8t 0x7ft
        0x3et 0x1t 0x8t 0x7ft
        0x41t 0x1t 0x8t 0x7ft
        0x44t 0x1t 0x8t 0x7ft
    .end array-data

    :array_4
    .array-data 0x4
        0xe9t 0x0t 0x2t 0x7ft
        0xe4t 0x0t 0x2t 0x7ft
        0xeat 0x0t 0x2t 0x7ft
        0xe8t 0x0t 0x2t 0x7ft
        0xe5t 0x0t 0x2t 0x7ft
        0xe7t 0x0t 0x2t 0x7ft
        0xebt 0x0t 0x2t 0x7ft
        0xect 0x0t 0x2t 0x7ft
        0xe6t 0x0t 0x2t 0x7ft
    .end array-data

    :array_5
    .array-data 0x4
        0xdft 0x0t 0x2t 0x7ft
        0xdat 0x0t 0x2t 0x7ft
        0xe0t 0x0t 0x2t 0x7ft
        0xdet 0x0t 0x2t 0x7ft
        0xdbt 0x0t 0x2t 0x7ft
        0xddt 0x0t 0x2t 0x7ft
        0xe1t 0x0t 0x2t 0x7ft
        0xe2t 0x0t 0x2t 0x7ft
        0xdct 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Lcom/android/camera/HTCSnapbooth;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x9

    iput v1, p0, Lcom/android/camera/SnapboothCustomize;->mMaxEffectSize:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/android/camera/SnapboothCustomize;->mFirstEffectsInPort:I

    iput-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    iput-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/SnapboothCustomize$1;

    invoke-direct {v1, p0}, Lcom/android/camera/SnapboothCustomize$1;-><init>(Lcom/android/camera/SnapboothCustomize;)V

    iput-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryBtnClickListener:Landroid/view/View$OnClickListener;

    iput-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryLandscapeButton:Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryPortraitButton:Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mLandthumbnail:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mLandAnimationThumbnail:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mPortthumbnail:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mPortAnimationThumbnail:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mLandShutterBtn:Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mPortShutterBtn:Landroid/widget/Button;

    sget v1, Lcom/android/camera/SnapboothCustomize;->mNumCountDown:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mLandCountdown:[Landroid/widget/ImageView;

    sget v1, Lcom/android/camera/SnapboothCustomize;->mNumCountDown:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mPortCountdown:[Landroid/widget/ImageView;

    sget v1, Lcom/android/camera/SnapboothCustomize;->mNumCountBubble:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mLandCountBubble:[Landroid/widget/ImageView;

    sget v1, Lcom/android/camera/SnapboothCustomize;->mNumCountBubble:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mPortCountBubble:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/camera/SnapboothCustomize;->mMaxEffectSize:I

    new-array v1, v1, [Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mLandEffectButtons:[Landroid/widget/ImageButton;

    iget v1, p0, Lcom/android/camera/SnapboothCustomize;->mMaxEffectSize:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mLandEffectIcons:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/camera/SnapboothCustomize;->mMaxEffectSize:I

    new-array v1, v1, [Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mPortEffectButtons:[Landroid/widget/ImageButton;

    iget v1, p0, Lcom/android/camera/SnapboothCustomize;->mMaxEffectSize:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mPortEffectIcons:[Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mViewfinderCover:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mReviewImg:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mReviewImgContainer:Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mReviewScreenButtonsPanel:Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mReviewScreenButtons:[Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mActivityCover:Landroid/view/View;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/SnapboothCustomize;->mIsMultiShutter:Z

    iput-object p1, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    iput-object p3, p0, Lcom/android/camera/SnapboothCustomize;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/camera/HTCSnapbooth;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b019d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_WIDTH:I

    const v1, 0x7f0b019e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_HEIGHT:I

    const v1, 0x7f0b019f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->PREVIEW_WIDTH:I

    const v1, 0x7f0b01a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->PREVIEW_HEIGHT:I

    const v1, 0x7f0b01a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->PREVIEW_PORTRAIT_LEFT:I

    const v1, 0x7f0b01a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->PREVIEW_PORTRAIT_TOP:I

    const v1, 0x7f0b01a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->PREVIEW_LANDSCAPE_LEFT:I

    const v1, 0x7f0b01a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->PREVIEW_LANDSCAPE_TOP:I

    const v1, 0x7f0b01af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_WIDTH:I

    const v1, 0x7f0b01b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_HEIGHT:I

    const v1, 0x7f0b01b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_LEFT_PORT:I

    const v1, 0x7f0b01b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_TOP_PORT:I

    const v1, 0x7f0b01b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_LEFT_LAND:I

    const v1, 0x7f0b01b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_TOP_LAND:I

    const v1, 0x7f0b01b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_LEFT_LAND:I

    const v1, 0x7f0b01b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_TOP_LAND:I

    const v1, 0x7f0b01b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_RIGHT_LAND:I

    const v1, 0x7f0b01b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_BOTTOM_LAND:I

    const v1, 0x7f0b01b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_LEFT_PORT:I

    const v1, 0x7f0b01ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_TOP_PORT:I

    const v1, 0x7f0b01bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_RIGHT_PORT:I

    const v1, 0x7f0b01bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_BOTTOM_PORT:I

    const v1, 0x7f0b01bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SQUARE_SIZE:I

    const v1, 0x7f0b01c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SQUARE_LEFT_LAND:I

    const v1, 0x7f0b01c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SQUARE_TOP_LAND:I

    const v1, 0x7f0b01be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SQUARE_LEFT_PORT:I

    const v1, 0x7f0b01bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SQUARE_TOP_PORT:I

    const v1, 0x7f0b01c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTON_WIDTH:I

    const v1, 0x7f0b01c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTON_HEIGHT:I

    const v1, 0x7f0b01c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTONS_WIDTH_PORT:I

    const v1, 0x7f0b01c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTONS_WIDTH_LAND:I

    const v1, 0x7f0b01c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTONS_LEFT_PORT:I

    const v1, 0x7f0b01c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTONS_BOTTOM_PORT:I

    const v1, 0x7f0b01c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTONS_LEFT_LAND:I

    const v1, 0x7f0b01ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTONS_BOTTOM_LAND:I

    const v1, 0x7f0b01ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->VIEWFINDER_COVER_LEFT_LAND:I

    const v1, 0x7f0b01ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->VIEWFINDER_COVER_TOP_LAND:I

    const v1, 0x7f0b01ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->VIEWFINDER_COVER_LEFT_PORT:I

    const v1, 0x7f0b01ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->VIEWFINDER_COVER_TOP_PORT:I

    const v1, 0x7f0b01cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_ANIMATION_DX_LAND:I

    const v1, 0x7f0b01cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_ANIMATION_DY_LAND:I

    const v1, 0x7f0b01cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_ANIMATION_DX_PORT:I

    const v1, 0x7f0b01ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_ANIMATION_DY_PORT:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/SnapboothCustomize;)Lcom/android/camera/HTCSnapbooth;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/SnapboothCustomize;Landroid/view/View;Landroid/view/MotionEvent;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/SnapboothCustomize;->handleTouchEventForSkinnedView(Landroid/view/View;Landroid/view/MotionEvent;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/SnapboothCustomize;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/SnapboothCustomize;->mIsMultiShutter:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/camera/SnapboothCustomize;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/SnapboothCustomize;->mIsMultiShutter:Z

    return p1
.end method

.method static synthetic access$300()[I
    .locals 1

    sget-object v0, Lcom/android/camera/SnapboothCustomize;->SnapboothEffectMessage:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/SnapboothCustomize;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private applySkinToClickableView(Landroid/view/View;II)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/camera/SnapboothCustomize;->applySkinToClickableView(Landroid/view/View;Landroid/graphics/drawable/Drawable;II)V

    return-void
.end method

.method private applySkinToClickableView(Landroid/view/View;Landroid/graphics/drawable/Drawable;II)V
    .locals 2

    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v1, p3, p4}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/SnapboothCustomize$2;

    invoke-direct {v1, p0, p2, v0}, Lcom/android/camera/SnapboothCustomize$2;-><init>(Lcom/android/camera/SnapboothCustomize;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static getSnapbooth()I
    .locals 1

    const v0, 0x7f030038

    return v0
.end method

.method public static getSnapboothFrame(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f0200f5

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0200f6

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0200f7

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0200f8

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getSnapboothLayout()I
    .locals 1

    const v0, 0x7f080106

    return v0
.end method

.method public static getSnapboothMainLayout()I
    .locals 1

    const v0, 0x7f08010c

    return v0
.end method

.method public static getSnapboothReviewLayout()I
    .locals 1

    const v0, 0x7f08010e

    return v0
.end method

.method public static getSnapboothSecondLayout()I
    .locals 1

    const v0, 0x7f080110

    return v0
.end method

.method private handleTouchEventForSkinnedView(Landroid/view/View;Landroid/view/MotionEvent;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    if-gt v0, v2, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_1

    :cond_0
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1, p4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public disableCountBubbles()V
    .locals 3

    const/4 v2, 0x4

    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/camera/SnapboothCustomize;->mNumCountBubble:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mPortCountBubble:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mLandCountBubble:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public disableCountdowns(Lcom/android/camera/rotate/UIRotation;)V
    .locals 3

    const/4 v2, 0x4

    invoke-virtual {p1}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/camera/SnapboothCustomize;->mNumCountDown:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mPortCountdown:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget v1, Lcom/android/camera/SnapboothCustomize;->mNumCountDown:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mLandCountdown:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public enableCountBubble(I)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/camera/SnapboothCustomize;->mNumCountBubble:I

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, p1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mPortCountBubble:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mLandCountBubble:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mPortCountBubble:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mLandCountBubble:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public enableCountdown(ILcom/android/camera/rotate/UIRotation;)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/camera/SnapboothCustomize;->mNumCountDown:I

    if-ge v0, v1, :cond_3

    add-int/lit8 v1, p1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mPortCountdown:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mPortCountdown:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_2
    sget v1, Lcom/android/camera/SnapboothCustomize;->mNumCountDown:I

    if-ge v0, v1, :cond_3

    add-int/lit8 v1, p1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mLandCountdown:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mLandCountdown:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method public enableGalleryButton(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryLandscapeButton:Landroid/widget/ImageButton;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryLandscapeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryPortraitButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryLandscapeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryPortraitButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_1
.end method

.method public getLandGalleryAnimationThumbnail()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mLandAnimationThumbnail:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getLandGalleryButton()Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryLandscapeButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getLandGalleryThumbnail()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mLandthumbnail:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getLandReviewImg()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mReviewImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getLandShutterBtn()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mLandShutterBtn:Landroid/widget/Button;

    return-object v0
.end method

.method public getPortGalleryAnimationThumbnail()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mPortAnimationThumbnail:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPortGalleryButton()Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryPortraitButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getPortGalleryThumbnail()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mPortthumbnail:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPortShutterBtn()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mPortShutterBtn:Landroid/widget/Button;

    return-object v0
.end method

.method public getReviewScreenButtons()[Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mReviewScreenButtons:[Landroid/view/View;

    return-object v0
.end method

.method public getReviewScreenButtonsPanel()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mReviewScreenButtonsPanel:Landroid/view/View;

    return-object v0
.end method

.method public getScreenSaveLayout()Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    const v1, 0x7f080113

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCSnapbooth;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method public getScreenSaveTouchReceiver()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    const v1, 0x7f080115

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCSnapbooth;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewfinderCover()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mViewfinderCover:Landroid/widget/ImageView;

    return-object v0
.end method

.method public hideViewfinderCover(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mViewfinderCover:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mViewfinderCover:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mViewfinderCover:Landroid/widget/ImageView;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xc8

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)Landroid/view/animation/AlphaAnimation;

    :cond_0
    return-void
.end method

.method public initLandCountBubbleLayer(Landroid/view/View;)Landroid/view/View;
    .locals 7

    const v6, 0x7f08011d

    const v3, 0x7f080155

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f08011b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mLandCountBubble:[Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v5

    const v3, 0x7f08011e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mLandCountBubble:[Landroid/widget/ImageView;

    const/4 v5, 0x1

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v5

    const v3, 0x7f08011f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mLandCountBubble:[Landroid/widget/ImageView;

    const/4 v5, 0x2

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v5

    const v3, 0x7f080120

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mLandCountBubble:[Landroid/widget/ImageView;

    const/4 v5, 0x3

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v5

    return-object v1
.end method

.method public initLandCountdownLayer(Landroid/view/View;)Landroid/view/View;
    .locals 7

    const v6, 0x7f080124

    const v3, 0x7f080151

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    const v3, 0x7f080122

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mLandCountdown:[Landroid/widget/ImageView;

    const/4 v5, 0x2

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v5

    const v3, 0x7f080125

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mLandCountdown:[Landroid/widget/ImageView;

    const/4 v5, 0x1

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v5

    const v3, 0x7f080126

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mLandCountdown:[Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v5

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    return-object v1
.end method

.method public initLandEffectBar(Landroid/view/View;)Landroid/view/View;
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x0

    const v6, 0x7f080164

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    const v6, 0x7f080127

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v6, 0x7f080128

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v6, 0x7f080129

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/android/camera/SnapboothCustomize;->mLandSwitchButton:Landroid/widget/ImageButton;

    const v6, 0x7f08012a

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/camera/SnapboothCustomize;->mLandSwitchButtonText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/camera/SnapboothCustomize;->mLandSwitchButtonText:Landroid/widget/TextView;

    const v7, 0x7f0a01f3

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    iget-object v6, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v6}, Lcom/android/camera/HTCSnapbooth;->isRequestSquare()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/camera/SnapboothCustomize;->mLandSwitchButton:Landroid/widget/ImageButton;

    const v7, 0x7f0a0030

    const v8, 0x7f0200f3

    invoke-direct {p0, v6, v7, v8}, Lcom/android/camera/SnapboothCustomize;->applySkinToClickableView(Landroid/view/View;II)V

    iget-object v6, p0, Lcom/android/camera/SnapboothCustomize;->mLandSwitchButton:Landroid/widget/ImageButton;

    const v7, 0x7f0200f1

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v6, p0, Lcom/android/camera/SnapboothCustomize;->mLandSwitchButton:Landroid/widget/ImageButton;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v6, p0, Lcom/android/camera/SnapboothCustomize;->mLandSwitchButton:Landroid/widget/ImageButton;

    new-instance v7, Lcom/android/camera/SnapboothCustomize$3;

    invoke-direct {v7, p0}, Lcom/android/camera/SnapboothCustomize$3;-><init>(Lcom/android/camera/SnapboothCustomize;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    const/4 v1, 0x0

    :goto_1
    iget v6, p0, Lcom/android/camera/SnapboothCustomize;->mMaxEffectSize:I

    if-ge v1, v6, :cond_1

    move v2, v1

    sget-object v6, Lcom/android/camera/SnapboothCustomize;->SnapboothEffectLayout:[I

    aget v6, v6, v2

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v7, p0, Lcom/android/camera/SnapboothCustomize;->mLandEffectIcons:[Landroid/widget/ImageView;

    sget-object v6, Lcom/android/camera/SnapboothCustomize;->SnapboothEffectIcon:[I

    aget v6, v6, v1

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    aput-object v6, v7, v1

    iget-object v7, p0, Lcom/android/camera/SnapboothCustomize;->mLandEffectButtons:[Landroid/widget/ImageButton;

    sget-object v6, Lcom/android/camera/SnapboothCustomize;->SnapboothEffectButton:[I

    aget v6, v6, v2

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    aput-object v6, v7, v1

    iget-object v6, p0, Lcom/android/camera/SnapboothCustomize;->mLandEffectButtons:[Landroid/widget/ImageButton;

    aget-object v6, v6, v1

    invoke-virtual {v6, v11}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/android/camera/SnapboothCustomize;->mLandEffectButtons:[Landroid/widget/ImageButton;

    aget-object v6, v6, v1

    const v7, 0x7f0a002d

    const v8, 0x7f0200d8

    invoke-direct {p0, v6, v11, v7, v8}, Lcom/android/camera/SnapboothCustomize;->applySkinToClickableView(Landroid/view/View;Landroid/graphics/drawable/Drawable;II)V

    iget-object v6, p0, Lcom/android/camera/SnapboothCustomize;->mLandEffectButtons:[Landroid/widget/ImageButton;

    aget-object v6, v6, v1

    new-instance v7, Lcom/android/camera/SnapboothCustomize$4;

    invoke-direct {v7, p0, v2}, Lcom/android/camera/SnapboothCustomize$4;-><init>(Lcom/android/camera/SnapboothCustomize;I)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget-object v6, p0, Lcom/android/camera/SnapboothCustomize;->mLandSwitchButton:Landroid/widget/ImageButton;

    const v7, 0x7f0200ee

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v6, p0, Lcom/android/camera/SnapboothCustomize;->mLandSwitchButton:Landroid/widget/ImageButton;

    const v7, 0x7f0200f2

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v6, p0, Lcom/android/camera/SnapboothCustomize;->mLandSwitchButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v10}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v6, p0, Lcom/android/camera/SnapboothCustomize;->mLandSwitchButtonText:Landroid/widget/TextView;

    const v7, -0x777778

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/camera/SnapboothCustomize;->mLandEffectButtons:[Landroid/widget/ImageButton;

    aget-object v6, v6, v10

    iget-object v7, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    const v8, 0x7f0a002e

    const v9, 0x7f0200d5

    invoke-static {v7, v8, v9}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/android/camera/SnapboothCustomize;->mLandEffectButtons:[Landroid/widget/ImageButton;

    aget-object v6, v6, v10

    invoke-virtual {v6, v11}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    return-object v3
.end method

.method public initLandGalleryBar(Landroid/view/View;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    const v3, 0x7f08014d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    const v3, 0x7f080147

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f080149

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mLandthumbnail:Landroid/widget/ImageView;

    const v3, 0x7f08014a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mLandAnimationThumbnail:Landroid/widget/ImageView;

    const v3, 0x7f08014b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryLandscapeButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryLandscapeButton:Landroid/widget/ImageButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryLandscapeButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryLandscapeButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryLandscapeButton:Landroid/widget/ImageButton;

    const v4, 0x7f0a002f

    const v5, 0x7f0200fc

    invoke-direct {p0, v3, v6, v4, v5}, Lcom/android/camera/SnapboothCustomize;->applySkinToClickableView(Landroid/view/View;Landroid/graphics/drawable/Drawable;II)V

    return-object v1
.end method

.method public initLandShutterBar(Landroid/view/View;)Landroid/view/View;
    .locals 6

    const v3, 0x7f080166

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f080117

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f080119

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mLandShutterBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mLandShutterBtn:Landroid/widget/Button;

    const v4, 0x7f0a002b

    const v5, 0x7f020105

    invoke-direct {p0, v3, v4, v5}, Lcom/android/camera/SnapboothCustomize;->applySkinToClickableView(Landroid/view/View;II)V

    return-object v0
.end method

.method public initPortCountBubbleLayer(Landroid/view/View;)Landroid/view/View;
    .locals 7

    const v6, 0x7f08011d

    const v3, 0x7f080157

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f08011b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/camera/rotate/RotateRelativeLayout;

    sget-object v4, Lcom/android/camera/rotate/UIRotation;->Portrait:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    iget-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mPortCountBubble:[Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v5

    const v3, 0x7f08011e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/camera/rotate/RotateRelativeLayout;

    sget-object v4, Lcom/android/camera/rotate/UIRotation;->Portrait:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    iget-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mPortCountBubble:[Landroid/widget/ImageView;

    const/4 v5, 0x1

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v5

    const v3, 0x7f08011f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/camera/rotate/RotateRelativeLayout;

    sget-object v4, Lcom/android/camera/rotate/UIRotation;->Portrait:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    iget-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mPortCountBubble:[Landroid/widget/ImageView;

    const/4 v5, 0x2

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v5

    const v3, 0x7f080120

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/camera/rotate/RotateRelativeLayout;

    sget-object v4, Lcom/android/camera/rotate/UIRotation;->Portrait:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    iget-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mPortCountBubble:[Landroid/widget/ImageView;

    const/4 v5, 0x3

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v5

    return-object v1
.end method

.method public initPortCountdownLayer(Landroid/view/View;)Landroid/view/View;
    .locals 7

    const v6, 0x7f080124

    const v3, 0x7f080153

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    const v3, 0x7f080122

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/rotate/RotateRelativeLayout;

    sget-object v3, Lcom/android/camera/rotate/UIRotation;->Portrait:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    iget-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mPortCountdown:[Landroid/widget/ImageView;

    const/4 v5, 0x2

    invoke-virtual {v0, v6}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v5

    const v3, 0x7f080125

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/rotate/RotateRelativeLayout;

    sget-object v3, Lcom/android/camera/rotate/UIRotation;->Portrait:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    iget-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mPortCountdown:[Landroid/widget/ImageView;

    const/4 v5, 0x1

    invoke-virtual {v0, v6}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v5

    const v3, 0x7f080126

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/rotate/RotateRelativeLayout;

    sget-object v3, Lcom/android/camera/rotate/UIRotation;->Portrait:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    iget-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mPortCountdown:[Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v0, v6}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v5

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    return-object v1
.end method

.method public initPortEffectBar(Landroid/view/View;)Landroid/view/View;
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    const v5, 0x7f080168

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    const v5, 0x7f080128

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/camera/rotate/RotateRelativeLayout;

    sget-object v6, Lcom/android/camera/rotate/UIRotation;->Portrait:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v5, v6}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    const v5, 0x7f080129

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/android/camera/SnapboothCustomize;->mPortSwitchButton:Landroid/widget/ImageButton;

    const v5, 0x7f08012a

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/camera/SnapboothCustomize;->mPortSwitchButtonText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/camera/SnapboothCustomize;->mPortSwitchButtonText:Landroid/widget/TextView;

    const v6, 0x7f0a01f3

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v5, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v5}, Lcom/android/camera/HTCSnapbooth;->isRequestSquare()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/camera/SnapboothCustomize;->mPortSwitchButton:Landroid/widget/ImageButton;

    const v6, 0x7f0a0030

    const v7, 0x7f0200f3

    invoke-direct {p0, v5, v6, v7}, Lcom/android/camera/SnapboothCustomize;->applySkinToClickableView(Landroid/view/View;II)V

    iget-object v5, p0, Lcom/android/camera/SnapboothCustomize;->mPortSwitchButton:Landroid/widget/ImageButton;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v5, p0, Lcom/android/camera/SnapboothCustomize;->mPortSwitchButton:Landroid/widget/ImageButton;

    const v6, 0x7f0200f1

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v5, p0, Lcom/android/camera/SnapboothCustomize;->mPortSwitchButton:Landroid/widget/ImageButton;

    new-instance v6, Lcom/android/camera/SnapboothCustomize$5;

    invoke-direct {v6, p0}, Lcom/android/camera/SnapboothCustomize$5;-><init>(Lcom/android/camera/SnapboothCustomize;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    const/4 v1, 0x0

    :goto_1
    iget v5, p0, Lcom/android/camera/SnapboothCustomize;->mMaxEffectSize:I

    if-ge v1, v5, :cond_2

    move v2, v1

    sget-object v5, Lcom/android/camera/SnapboothCustomize;->SnapboothEffectLayout:[I

    aget v5, v5, v1

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v5, v0, Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v5, :cond_0

    move-object v5, v0

    check-cast v5, Lcom/android/camera/rotate/RotateRelativeLayout;

    sget-object v6, Lcom/android/camera/rotate/UIRotation;->Portrait:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v5, v6}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    :cond_0
    iget-object v6, p0, Lcom/android/camera/SnapboothCustomize;->mPortEffectIcons:[Landroid/widget/ImageView;

    sget-object v5, Lcom/android/camera/SnapboothCustomize;->SnapboothEffectIcon:[I

    aget v5, v5, v1

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    aput-object v5, v6, v1

    iget-object v6, p0, Lcom/android/camera/SnapboothCustomize;->mPortEffectButtons:[Landroid/widget/ImageButton;

    sget-object v5, Lcom/android/camera/SnapboothCustomize;->SnapboothEffectButton:[I

    aget v5, v5, v2

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    aput-object v5, v6, v1

    iget-object v5, p0, Lcom/android/camera/SnapboothCustomize;->mPortEffectButtons:[Landroid/widget/ImageButton;

    aget-object v5, v5, v1

    invoke-virtual {v5, v10}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/android/camera/SnapboothCustomize;->mPortEffectButtons:[Landroid/widget/ImageButton;

    aget-object v5, v5, v1

    const v6, 0x7f0a002d

    const v7, 0x7f0200d8

    invoke-direct {p0, v5, v10, v6, v7}, Lcom/android/camera/SnapboothCustomize;->applySkinToClickableView(Landroid/view/View;Landroid/graphics/drawable/Drawable;II)V

    iget-object v5, p0, Lcom/android/camera/SnapboothCustomize;->mPortEffectButtons:[Landroid/widget/ImageButton;

    aget-object v5, v5, v1

    new-instance v6, Lcom/android/camera/SnapboothCustomize$6;

    invoke-direct {v6, p0, v2}, Lcom/android/camera/SnapboothCustomize$6;-><init>(Lcom/android/camera/SnapboothCustomize;I)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/android/camera/SnapboothCustomize;->mPortSwitchButton:Landroid/widget/ImageButton;

    const v6, 0x7f0200ee

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v5, p0, Lcom/android/camera/SnapboothCustomize;->mPortSwitchButton:Landroid/widget/ImageButton;

    const v6, 0x7f0200f2

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v5, p0, Lcom/android/camera/SnapboothCustomize;->mPortSwitchButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v9}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v5, p0, Lcom/android/camera/SnapboothCustomize;->mPortSwitchButtonText:Landroid/widget/TextView;

    const v6, -0x777778

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/camera/SnapboothCustomize;->mPortEffectButtons:[Landroid/widget/ImageButton;

    aget-object v5, v5, v9

    iget-object v6, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    const v7, 0x7f0a002e

    const v8, 0x7f0200d5

    invoke-static {v6, v7, v8}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/android/camera/SnapboothCustomize;->mPortEffectButtons:[Landroid/widget/ImageButton;

    aget-object v5, v5, v9

    invoke-virtual {v5, v10}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    return-object v3
.end method

.method public initPortGalleryBar(Landroid/view/View;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    const v3, 0x7f08014f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    const v3, 0x7f080147

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/camera/rotate/RotateRelativeLayout;

    sget-object v4, Lcom/android/camera/rotate/UIRotation;->Portrait:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    const v3, 0x7f080149

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mPortthumbnail:Landroid/widget/ImageView;

    const v3, 0x7f08014a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mPortAnimationThumbnail:Landroid/widget/ImageView;

    const v3, 0x7f08014b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryPortraitButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryPortraitButton:Landroid/widget/ImageButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryPortraitButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryPortraitButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryPortraitButton:Landroid/widget/ImageButton;

    const v4, 0x7f0a002f

    const v5, 0x7f0200fc

    invoke-direct {p0, v3, v6, v4, v5}, Lcom/android/camera/SnapboothCustomize;->applySkinToClickableView(Landroid/view/View;Landroid/graphics/drawable/Drawable;II)V

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    return-object v1
.end method

.method public initPortShutterBar(Landroid/view/View;)Landroid/view/View;
    .locals 5

    const v2, 0x7f08016a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f080119

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mPortShutterBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mPortShutterBtn:Landroid/widget/Button;

    const v3, 0x7f0a002b

    const v4, 0x7f020105

    invoke-direct {p0, v2, v3, v4}, Lcom/android/camera/SnapboothCustomize;->applySkinToClickableView(Landroid/view/View;II)V

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-object v0
.end method

.method public initPreviewSurface()Landroid/view/SurfaceView;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mPreviewSurface:Landroid/view/SurfaceView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    const v1, 0x7f080107

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCSnapbooth;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mPreviewSurface:Landroid/view/SurfaceView;

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    const v1, 0x7f080108

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCSnapbooth;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mPreviewCover:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mPreviewSurface:Landroid/view/SurfaceView;

    return-object v0
.end method

.method public initReviewImage(Landroid/view/View;Z)Landroid/view/View;
    .locals 8

    const v4, 0x7f080160

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mViewfinderCover:Landroid/widget/ImageView;

    const v4, 0x7f080161

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mReviewImgContainer:Landroid/view/View;

    iget-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mReviewImgContainer:Landroid/view/View;

    const v5, 0x7f080162

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mReviewImg:Landroid/widget/ImageView;

    const v4, 0x7f080163

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    if-eqz p2, :cond_0

    const v4, 0x7f08015a

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mReviewScreenButtonsPanel:Landroid/view/View;

    :goto_0
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/view/View;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/camera/SnapboothCustomize;->mReviewScreenButtonsPanel:Landroid/view/View;

    const v7, 0x7f08015c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/camera/SnapboothCustomize;->mReviewScreenButtonsPanel:Landroid/view/View;

    const v7, 0x7f08015e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    aput-object v6, v4, v5

    iput-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mReviewScreenButtons:[Landroid/view/View;

    iget-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mReviewScreenButtonsPanel:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v4, :cond_1

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mReviewScreenButtons:[Landroid/view/View;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    const v4, 0x7f0a0031

    const v5, 0x7f020100

    invoke-direct {p0, v1, v4, v5}, Lcom/android/camera/SnapboothCustomize;->applySkinToClickableView(Landroid/view/View;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const v4, 0x7f08015f

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mReviewScreenButtonsPanel:Landroid/view/View;

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/camera/SnapboothCustomize;->mReviewImgContainer:Landroid/view/View;

    return-object v4
.end method

.method public isMultiShutter()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/SnapboothCustomize;->mIsMultiShutter:Z

    return v0
.end method

.method public selectEffectIcon(I)V
    .locals 8

    const v7, 0x7f0a002e

    const v6, 0x7f0a002d

    const v5, 0x7f0200d8

    const v4, 0x7f0200d5

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/camera/SnapboothCustomize;->mMaxEffectSize:I

    if-ge v0, v1, :cond_1

    if-eq v0, p1, :cond_0

    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mLandEffectButtons:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mPortEffectButtons:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mLandEffectButtons:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, v3, v6, v5}, Lcom/android/camera/SnapboothCustomize;->applySkinToClickableView(Landroid/view/View;Landroid/graphics/drawable/Drawable;II)V

    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mPortEffectButtons:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, v3, v6, v5}, Lcom/android/camera/SnapboothCustomize;->applySkinToClickableView(Landroid/view/View;Landroid/graphics/drawable/Drawable;II)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mLandEffectButtons:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v2, v7, v4}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mPortEffectButtons:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    invoke-static {v2, v7, v4}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mLandEffectButtons:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mPortEffectButtons:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setBackground(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mBackground:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    const v1, 0x7f080109

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCSnapbooth;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mBackground:Landroid/view/View;

    :cond_0
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mBackground:Landroid/view/View;

    if-eqz p1, :cond_4

    const v0, 0x7f02010a

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mHeaderContainer:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    const v1, 0x7f080112

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCSnapbooth;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mHeaderContainer:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mHeaderContainer:Landroid/view/View;

    instance-of v0, v0, Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mHeaderContainer:Landroid/view/View;

    check-cast v0, Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz p1, :cond_5

    sget-object v1, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mPreviewFilter:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mPreviewFilter:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void

    :cond_4
    const v0, 0x7f020108

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/android/camera/rotate/UIRotation;->Portrait:Lcom/android/camera/rotate/UIRotation;

    goto :goto_1
.end method

.method public setReviewButtonBounds(Z)V
    .locals 6

    const/16 v5, 0xc

    const/4 v3, -0x2

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mReviewScreenButtonsPanel:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    instance-of v2, v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz p1, :cond_0

    sget-object v2, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    :goto_1
    return-void

    :cond_0
    sget-object v2, Lcom/android/camera/rotate/UIRotation;->Portrait:Lcom/android/camera/rotate/UIRotation;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-eqz p1, :cond_2

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget v2, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTONS_WIDTH_LAND:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v2, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTONS_LEFT_LAND:I

    sget v3, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTONS_BOTTOM_LAND:I

    invoke-virtual {v0, v2, v4, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_2
    iget-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mReviewScreenButtonsPanel:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v2, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTONS_WIDTH_PORT:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v2, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTONS_BOTTOM_PORT:I

    sget v3, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTONS_LEFT_PORT:I

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2
.end method

.method public setReviewImageBounds(Z)V
    .locals 7

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v2}, Lcom/android/camera/HTCSnapbooth;->isRequestSquare()Z

    move-result v0

    iget-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mReviewImgContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_0

    sget v2, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SQUARE_SIZE:I

    :goto_0
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eqz v0, :cond_1

    sget v2, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SQUARE_SIZE:I

    :goto_1
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eqz p1, :cond_3

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v3, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_LEFT_LAND:I

    sget v4, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_RIGHT_LAND:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v3, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_TOP_LAND:I

    sget v4, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_BOTTOM_LAND:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eqz v0, :cond_2

    sget v2, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SQUARE_LEFT_LAND:I

    sget v3, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_LEFT_LAND:I

    sub-int/2addr v2, v3

    sget v3, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SQUARE_TOP_LAND:I

    sget v4, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_TOP_LAND:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_2
    iget-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mReviewImgContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    iget-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mReviewImg:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_5

    sget v2, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SQUARE_SIZE:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v2, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SQUARE_SIZE:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_3
    iget-object v2, p0, Lcom/android/camera/SnapboothCustomize;->mReviewImg:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->requestLayout()V

    return-void

    :cond_0
    sget v2, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_WIDTH:I

    goto :goto_0

    :cond_1
    sget v2, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_HEIGHT:I

    goto :goto_1

    :cond_2
    sget v2, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_LEFT_LAND:I

    sget v3, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_LEFT_LAND:I

    sub-int/2addr v2, v3

    sget v3, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_TOP_LAND:I

    sget v4, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_TOP_LAND:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    :cond_3
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v3, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_TOP_PORT:I

    sget v4, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_BOTTOM_PORT:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v3, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_LEFT_PORT:I

    sget v4, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_RIGHT_PORT:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eqz v0, :cond_4

    sget v2, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SQUARE_TOP_PORT:I

    sget v3, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_TOP_PORT:I

    sub-int/2addr v2, v3

    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v3, v4

    sget v4, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SQUARE_LEFT_PORT:I

    sget v5, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_LEFT_PORT:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    :cond_4
    sget v2, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_TOP_PORT:I

    sget v3, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_TOP_PORT:I

    sub-int/2addr v2, v3

    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v3, v4

    sget v4, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_LEFT_PORT:I

    sget v5, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_LEFT_PORT:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    :cond_5
    sget v2, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_WIDTH:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v2, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_HEIGHT:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_3
.end method

.method public setReviewImageShadow(ZZ)V
    .locals 2

    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mReviewImgContainer:Landroid/view/View;

    if-eqz p1, :cond_0

    const v0, 0x7f020101

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    :cond_0
    const v0, 0x7f0200fd

    goto :goto_0
.end method

.method public setViewfinderCoverImage(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mViewfinderCover:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const v0, 0x7f02010b

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_0
    const v0, 0x7f020109

    goto :goto_0
.end method

.method public showActivityCover(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mActivityCover:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    const v1, 0x7f080116

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCSnapbooth;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mActivityCover:Landroid/view/View;

    :cond_0
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mActivityCover:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public showPreviewCover(Z)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mPreviewCover:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mPreviewCover:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mPreviewCover:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mPreviewCover:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mPreviewCover:Landroid/view/View;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    const/16 v3, 0x12c

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/camera/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)Landroid/view/animation/AlphaAnimation;

    goto :goto_0
.end method

.method public showViewfinderCover(ZZ)V
    .locals 8

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v3}, Lcom/android/camera/HTCSnapbooth;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p1, :cond_0

    const v3, 0x7f02010b

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mViewfinderCover:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mViewfinderCover:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_1

    sget v3, Lcom/android/camera/SnapboothCustomize;->VIEWFINDER_COVER_LEFT_LAND:I

    sget v4, Lcom/android/camera/SnapboothCustomize;->VIEWFINDER_COVER_TOP_LAND:I

    invoke-virtual {v1, v3, v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_1
    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mViewfinderCover:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->requestLayout()V

    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mViewfinderCover:Landroid/widget/ImageView;

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    const/16 v6, 0xc8

    invoke-static {v3, v4, v5, v7, v6}, Lcom/android/camera/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)Landroid/view/animation/AlphaAnimation;

    :goto_2
    return-void

    :cond_0
    const v3, 0x7f020109

    goto :goto_0

    :cond_1
    sget v3, Lcom/android/camera/SnapboothCustomize;->VIEWFINDER_COVER_TOP_PORT:I

    sget v4, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    sget v5, Lcom/android/camera/SnapboothCustomize;->VIEWFINDER_COVER_LEFT_PORT:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v3, v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mViewfinderCover:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public switchMultiBtn()V
    .locals 6

    const v5, 0x7f0a01f4

    const v4, 0x7f0a01f3

    const v3, 0x7f0200f1

    const v2, 0x7f0200f0

    iget-boolean v1, p0, Lcom/android/camera/SnapboothCustomize;->mIsMultiShutter:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mLandSwitchButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mLandSwitchButtonText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mPortSwitchButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mPortSwitchButtonText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    iget v1, p0, Lcom/android/camera/SnapboothCustomize;->mMaxEffectSize:I

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mLandEffectIcons:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/camera/SnapboothCustomize;->EffectIconID_FourShots:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mPortEffectIcons:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/camera/SnapboothCustomize;->EffectIconID_FourShots:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mLandSwitchButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mLandSwitchButtonText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mPortSwitchButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mPortSwitchButtonText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    iget v1, p0, Lcom/android/camera/SnapboothCustomize;->mMaxEffectSize:I

    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mLandEffectIcons:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/camera/SnapboothCustomize;->EffectIconID_OneShot:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mPortEffectIcons:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/camera/SnapboothCustomize;->EffectIconID_OneShot:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public switchShutterBtn(Z)V
    .locals 6

    const v5, 0x7f0a002b

    const v4, 0x7f020106

    const v3, 0x7f020105

    const v1, 0x7f0200ca

    const v2, 0x7f0200c9

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mLandShutterBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mPortShutterBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mLandShutterBtn:Landroid/widget/Button;

    invoke-direct {p0, v0, v5, v3}, Lcom/android/camera/SnapboothCustomize;->applySkinToClickableView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mPortShutterBtn:Landroid/widget/Button;

    invoke-direct {p0, v0, v5, v3}, Lcom/android/camera/SnapboothCustomize;->applySkinToClickableView(Landroid/view/View;II)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mLandShutterBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mPortShutterBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mLandShutterBtn:Landroid/widget/Button;

    const v1, 0x7f0a002c

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/SnapboothCustomize;->applySkinToClickableView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mPortShutterBtn:Landroid/widget/Button;

    const v1, 0x7f0a002c

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/SnapboothCustomize;->applySkinToClickableView(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public updatePreviewOrientation(Z)V
    .locals 5

    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v3}, Lcom/android/camera/HTCSnapbooth;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01a2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v3}, Lcom/android/camera/HTCSnapbooth;->isRequestSquare()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mPreviewFilter:Landroid/view/View;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    const v4, 0x7f08010a

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCSnapbooth;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mPreviewFilter:Landroid/view/View;

    :cond_0
    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mPreviewFilter:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_2

    sget v3, Lcom/android/camera/SnapboothCustomize;->PREVIEW_LANDSCAPE_LEFT:I

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sget v3, Lcom/android/camera/SnapboothCustomize;->PREVIEW_LANDSCAPE_TOP:I

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_0
    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mPreviewFilter:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mPreviewFilter:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mPreviewSurface:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_3

    sget v3, Lcom/android/camera/SnapboothCustomize;->PREVIEW_LANDSCAPE_LEFT:I

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sget v3, Lcom/android/camera/SnapboothCustomize;->PREVIEW_LANDSCAPE_TOP:I

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_1
    iget-object v3, p0, Lcom/android/camera/SnapboothCustomize;->mPreviewSurface:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->requestLayout()V

    return-void

    :cond_2
    sget v3, Lcom/android/camera/SnapboothCustomize;->PREVIEW_PORTRAIT_TOP:I

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    sub-int/2addr v3, v2

    sget v4, Lcom/android/camera/SnapboothCustomize;->PREVIEW_PORTRAIT_LEFT:I

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    :cond_3
    sget v3, Lcom/android/camera/SnapboothCustomize;->PREVIEW_PORTRAIT_TOP:I

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    sub-int/2addr v3, v2

    sget v4, Lcom/android/camera/SnapboothCustomize;->PREVIEW_PORTRAIT_LEFT:I

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1
.end method
