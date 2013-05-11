.class public Lcom/htc/album/TabPluginDevice/CropImage;
.super Lcom/htc/album/modules/ui/ControlBarHostActivity;
.source "CropImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;
    }
.end annotation


# static fields
.field public static final CROP_CONTACT_ICON:I = 0x7f02

.field public static final CROP_FOOTPRINTS:I = 0x7f03

.field public static final CROP_LIMIT_OUTPUT_BITMAP_SIZE:I = 0x7ef40

.field public static final CROP_LOCKSCREEN:I = 0x7f05

.field public static final CROP_NONE:I = 0x7f00

.field public static final CROP_PHOTOWIDGET:I = 0x7f06

.field public static final CROP_USERDEFINE:I = 0x7f01

.field public static final CROP_WALLPAPER:I = 0x7f04

.field private static final FOOTER_BAR_CROP_IMAGE:I = 0x1

.field public static final KEY_KDDI_CUSTOMIZE_ENABLE_RESIZE_CROP:Ljava/lang/String; = "enableKDDIResizeCrop"

.field public static final KEY_KDDI_CUSTOMIZE_RETURN_BOTTOM_RIGHT_X:Ljava/lang/String; = "returnBottomRightX"

.field public static final KEY_KDDI_CUSTOMIZE_RETURN_BOTTOM_RIGHT_Y:Ljava/lang/String; = "returnBottomRightY"

.field public static final KEY_KDDI_CUSTOMIZE_RETURN_UPPERLEFT_X:Ljava/lang/String; = "returnUpperLeftX"

.field public static final KEY_KDDI_CUSTOMIZE_RETURN_UPPERLEFT_Y:Ljava/lang/String; = "returnUpperLeftY"

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final _ASPECT_X:Ljava/lang/String; = "aspectX"

.field public static final _ASPECT_Y:Ljava/lang/String; = "aspectY"

.field public static final _CIRCLE_CROP:Ljava/lang/String; = "circleCrop"

.field public static final _CROP_TYPE:Ljava/lang/String; = "cropType"

.field public static final _NO_FACE_DETECTION:Ljava/lang/String; = "noFaceDetection"

.field public static final _OUTPUT_FORMAT:Ljava/lang/String; = "outputFormat"

.field public static final _OUTPUT_URI:Ljava/lang/String; = "output"

.field public static final _OUTPUT_WITH_DB_UPDATE:Ljava/lang/String; = "outputWithDBUpdate"

.field public static final _OUTPUT_X:Ljava/lang/String; = "outputX"

.field public static final _OUTPUT_Y:Ljava/lang/String; = "outputY"

.field public static final _RAW_DATA:Ljava/lang/String; = "data"

.field public static final _RETURN_DATA:Ljava/lang/String; = "return-data"

.field public static final _SCALE:Ljava/lang/String; = "scale"

.field public static final _SCALE_UP:Ljava/lang/String; = "scaleUpIfNeeded"

.field public static final _TOAST_CROP_RESULT:Ljava/lang/String; = "toast_crop_result"

.field private static final sDecodeResolution:I


# instance fields
.field private cropToast:Landroid/widget/Toast;

.field private mActivityState:S

.field private mAddHVRunnable:Ljava/lang/Runnable;

.field private mAllImages:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

.field private mAspectX:I

.field private mAspectY:I

.field mBitmap:Landroid/graphics/Bitmap;

.field private mCircleCrop:Z

.field mContentResolver:Landroid/content/ContentResolver;

.field mCrop:Lcom/htc/album/TabPluginDevice/HighlightView;

.field private mCropType:I

.field mCroppedImage:Landroid/graphics/Bitmap;

.field private final mCroppedImageLock:Ljava/lang/Object;

.field private mDiskModeReceiver:Landroid/content/BroadcastReceiver;

.field private mDoFaceDetection:Z

.field private mEnableKDDIResizeCrop:Z

.field private mFaceDetectionDialog:Lcom/htc/app/HtcProgressDialog;

.field mHandler:Landroid/os/Handler;

.field private mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

.field private mImageSaved:Z

.field mImageView:Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;

.field private mInitDFRunnable:Ljava/lang/Runnable;

.field private mIsImageChanged:Z

.field private mIsOnClickDone:Z

.field private mKDDIReturnRegion:Landroid/graphics/Rect;

.field private mLoadBitmapRunnable:Ljava/lang/Runnable;

.field private mLoadFailToast:Landroid/widget/Toast;

.field private mOldDegree:I

.field private mOldPath:Ljava/lang/String;

.field private mOldSize:J

.field private mOutputUri:Landroid/net/Uri;

.field private mOutputWithDBUpdate:Z

.field private mOutputX:I

.field private mOutputY:I

.field private mRawBitmapAsSource:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReturnData:Z

.field mRunFaceDetection:Ljava/lang/Runnable;

.field private mSaveFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private mSaving:Z

.field private mSavingProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mScale:Z

.field private mScaleUp:Z

.field private mTargetUri:Landroid/net/Uri;

.field private mToastCropResult:Z

.field private mWaitingToPick:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const-class v0, Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    .line 127
    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->CROP_IMAGE_SAMPE_SIZE:I

    sput v0, Lcom/htc/album/TabPluginDevice/CropImage;->sDecodeResolution:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 183
    invoke-direct {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;-><init>()V

    .line 91
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mFaceDetectionDialog:Lcom/htc/app/HtcProgressDialog;

    .line 92
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mSavingProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 94
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mSaveFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 95
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputUri:Landroid/net/Uri;

    .line 96
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputWithDBUpdate:Z

    .line 99
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mDoFaceDetection:Z

    .line 100
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCircleCrop:Z

    .line 104
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mScaleUp:Z

    .line 106
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mIsOnClickDone:Z

    .line 109
    const/4 v0, 0x3

    iput-short v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mActivityState:S

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImageLock:Ljava/lang/Object;

    .line 121
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->cropToast:Landroid/widget/Toast;

    .line 122
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mLoadFailToast:Landroid/widget/Toast;

    .line 164
    const/16 v0, 0x7f01

    iput v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCropType:I

    .line 165
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mToastCropResult:Z

    .line 166
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mReturnData:Z

    .line 167
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mTargetUri:Landroid/net/Uri;

    .line 170
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mEnableKDDIResizeCrop:Z

    .line 171
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mKDDIReturnRegion:Landroid/graphics/Rect;

    .line 175
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mIsImageChanged:Z

    .line 176
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOldPath:Ljava/lang/String;

    .line 177
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOldSize:J

    .line 178
    iput v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOldDegree:I

    .line 679
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mRawBitmapAsSource:Z

    .line 1643
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mHandler:Landroid/os/Handler;

    .line 1645
    new-instance v0, Lcom/htc/album/TabPluginDevice/CropImage$2;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/CropImage$2;-><init>(Lcom/htc/album/TabPluginDevice/CropImage;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mRunFaceDetection:Ljava/lang/Runnable;

    .line 1977
    new-instance v0, Lcom/htc/album/TabPluginDevice/CropImage$3;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/CropImage$3;-><init>(Lcom/htc/album/TabPluginDevice/CropImage;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 2002
    new-instance v0, Lcom/htc/album/TabPluginDevice/CropImage$4;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/CropImage$4;-><init>(Lcom/htc/album/TabPluginDevice/CropImage;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mDiskModeReceiver:Landroid/content/BroadcastReceiver;

    .line 2085
    new-instance v0, Lcom/htc/album/TabPluginDevice/CropImage$5;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/CropImage$5;-><init>(Lcom/htc/album/TabPluginDevice/CropImage;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mLoadBitmapRunnable:Ljava/lang/Runnable;

    .line 2202
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mInitDFRunnable:Ljava/lang/Runnable;

    .line 2203
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAddHVRunnable:Ljava/lang/Runnable;

    .line 184
    return-void
.end method

.method private CropContactIcon(Landroid/os/Bundle;)V
    .locals 0
    .parameter "extras"

    .prologue
    .line 733
    return-void
.end method

.method private CropDefault(Landroid/os/Bundle;)V
    .locals 3
    .parameter "extras"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 719
    const-string v0, "output"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputUri:Landroid/net/Uri;

    .line 720
    const-string v0, "outputWithDBUpdate"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputWithDBUpdate:Z

    .line 721
    iput v1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAspectX:I

    .line 722
    iput v1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAspectY:I

    .line 723
    iput v1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputX:I

    .line 724
    iput v1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputY:I

    .line 725
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mScale:Z

    .line 726
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mScaleUp:Z

    .line 727
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mDoFaceDetection:Z

    .line 728
    return-void
.end method

.method private CropFootprints(Landroid/os/Bundle;)V
    .locals 3
    .parameter "extras"

    .prologue
    const/16 v2, 0x190

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 737
    iput v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAspectX:I

    .line 738
    iput v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAspectY:I

    .line 739
    iput v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputX:I

    .line 740
    iput v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputY:I

    .line 741
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mScale:Z

    .line 742
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mScaleUp:Z

    .line 743
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mReturnData:Z

    .line 744
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mDoFaceDetection:Z

    .line 745
    return-void
.end method

.method private CropLockScreen(Landroid/os/Bundle;)V
    .locals 11
    .parameter "extras"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 759
    const/4 v1, 0x0

    .line 760
    .local v1, f:Ljava/io/File;
    const-string v8, "window"

    invoke-virtual {p0, v8}, Lcom/htc/album/TabPluginDevice/CropImage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 761
    .local v0, display:Landroid/view/Display;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 762
    .local v4, ptSize:Landroid/graphics/Point;
    invoke-virtual {v0, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 764
    iget v6, v4, Landroid/graphics/Point;->x:I

    .line 765
    .local v6, screenW:I
    iget v5, v4, Landroid/graphics/Point;->y:I

    .line 766
    .local v5, screenH:I
    const/4 v7, 0x0

    .local v7, width:I
    const/4 v2, 0x0

    .line 767
    .local v2, height:I
    const/4 v3, 0x1

    .line 768
    .local v3, isPortrait:Z
    if-eqz v3, :cond_2

    .line 769
    const-string v8, "lock_screen_port"

    invoke-virtual {p0, v8}, Lcom/htc/album/TabPluginDevice/CropImage;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 771
    if-le v5, v6, :cond_1

    .line 772
    move v7, v6

    .line 773
    move v2, v5

    .line 792
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 793
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 795
    :cond_0
    sget v8, Lcom/htc/album/AlbumCommon/LayoutConstants;->HEIGHT_NOTIFICATION_BAR:I

    sub-int/2addr v2, v8

    .line 796
    iput v7, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputX:I

    iput v7, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAspectX:I

    .line 797
    iput v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputY:I

    iput v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAspectY:I

    .line 798
    iput-boolean v9, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mScale:Z

    .line 799
    iput-boolean v9, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mScaleUp:Z

    .line 800
    iput-boolean v10, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mReturnData:Z

    .line 801
    iput-boolean v10, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mDoFaceDetection:Z

    .line 802
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file:/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputUri:Landroid/net/Uri;

    .line 805
    const-string v8, "outputWithDBUpdate"

    invoke-virtual {p1, v8, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputWithDBUpdate:Z

    .line 806
    return-void

    .line 776
    :cond_1
    move v7, v5

    .line 777
    move v2, v6

    goto :goto_0

    .line 781
    :cond_2
    const-string v8, "lock_screen_land"

    invoke-virtual {p0, v8}, Lcom/htc/album/TabPluginDevice/CropImage;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 783
    if-le v5, v6, :cond_3

    .line 784
    move v7, v5

    .line 785
    move v2, v6

    goto :goto_0

    .line 788
    :cond_3
    move v7, v6

    .line 789
    move v2, v5

    goto :goto_0
.end method

.method private CropPhotoWidget(Landroid/os/Bundle;)V
    .locals 0
    .parameter "extras"

    .prologue
    .line 811
    return-void
.end method

.method private CropUserDefine(Landroid/os/Bundle;)V
    .locals 5
    .parameter "extras"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 683
    const-string v2, "circleCrop"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 685
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCircleCrop:Z

    .line 686
    iput v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAspectX:I

    .line 687
    iput v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAspectY:I

    .line 689
    :cond_0
    const-string v2, "output"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputUri:Landroid/net/Uri;

    .line 690
    const-string v2, "outputWithDBUpdate"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputWithDBUpdate:Z

    .line 691
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputUri:Landroid/net/Uri;

    if-eqz v2, :cond_1

    .line 693
    const-string v2, "outputFormat"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 694
    .local v0, compressFormatString:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 695
    invoke-static {v0}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mSaveFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 697
    .end local v0           #compressFormatString:Ljava/lang/String;
    :cond_1
    const-string v2, "data"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 698
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mRawBitmapAsSource:Z

    .line 699
    const-string v2, "aspectX"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAspectX:I

    .line 700
    const-string v2, "aspectY"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAspectY:I

    .line 701
    const-string v2, "outputX"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputX:I

    .line 702
    const-string v2, "outputY"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputY:I

    .line 703
    const-string v2, "scale"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mScale:Z

    .line 704
    const-string v2, "scaleUpIfNeeded"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mScaleUp:Z

    .line 705
    const-string v2, "noFaceDetection"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_1
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mDoFaceDetection:Z

    .line 707
    const-string v2, "return-data"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mReturnData:Z

    .line 710
    const-string v2, "enableKDDIResizeCrop"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mEnableKDDIResizeCrop:Z

    .line 712
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 713
    .local v1, packageName:Ljava/lang/String;
    const-string v2, "com.android.htccontacts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 714
    const/16 v2, 0x7f02

    iput v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCropType:I

    .line 715
    :cond_2
    return-void

    .end local v1           #packageName:Ljava/lang/String;
    :cond_3
    move v2, v4

    .line 698
    goto :goto_0

    :cond_4
    move v3, v4

    .line 705
    goto :goto_1
.end method

.method private CropWallpaper(Landroid/os/Bundle;)V
    .locals 3
    .parameter "extras"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 749
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->getWallpaperDesiredMinimumWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputX:I

    iput v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAspectX:I

    .line 750
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->getWallpaperDesiredMinimumHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputY:I

    iput v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAspectY:I

    .line 751
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mScale:Z

    .line 752
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mScaleUp:Z

    .line 753
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mReturnData:Z

    .line 754
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mDoFaceDetection:Z

    .line 755
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/TabPluginDevice/CropImage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mSaving:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/album/TabPluginDevice/CropImage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mSaving:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/album/TabPluginDevice/CropImage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mWaitingToPick:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/album/TabPluginDevice/CropImage;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/CropImage;->cropFromRawData(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$102(Lcom/htc/album/TabPluginDevice/CropImage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mWaitingToPick:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/album/TabPluginDevice/CropImage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCircleCrop:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/album/TabPluginDevice/CropImage;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/CropImage;->cropCircle(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/album/TabPluginDevice/CropImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputX:I

    return v0
.end method

.method static synthetic access$1336(Lcom/htc/album/TabPluginDevice/CropImage;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iget v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputX:I

    div-int/2addr v0, p1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputX:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/album/TabPluginDevice/CropImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputY:I

    return v0
.end method

.method static synthetic access$1436(Lcom/htc/album/TabPluginDevice/CropImage;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iget v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputY:I

    div-int/2addr v0, p1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputY:I

    return v0
.end method

.method static synthetic access$1500(Lcom/htc/album/TabPluginDevice/CropImage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mScale:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/album/TabPluginDevice/CropImage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->scaledCropBitmap()V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/album/TabPluginDevice/CropImage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->cropCenterCropBitmap()V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/album/TabPluginDevice/CropImage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mReturnData:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/album/TabPluginDevice/CropImage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->sendBackCropResult()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/album/TabPluginDevice/CropImage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mIsOnClickDone:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/htc/album/TabPluginDevice/CropImage;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/album/TabPluginDevice/CropImage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mIsOnClickDone:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/htc/album/TabPluginDevice/CropImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCropType:I

    return v0
.end method

.method static synthetic access$2200(Lcom/htc/album/TabPluginDevice/CropImage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputWithDBUpdate:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/htc/album/TabPluginDevice/CropImage;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mSaveFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/album/TabPluginDevice/CropImage;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/CropImage;->addImageAndStoreImage(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/album/TabPluginDevice/CropImage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mToastCropResult:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/htc/album/TabPluginDevice/CropImage;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImageLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/album/TabPluginDevice/CropImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAspectX:I

    return v0
.end method

.method static synthetic access$2736(Lcom/htc/album/TabPluginDevice/CropImage;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iget v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAspectX:I

    div-int/2addr v0, p1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAspectX:I

    return v0
.end method

.method static synthetic access$2800(Lcom/htc/album/TabPluginDevice/CropImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAspectY:I

    return v0
.end method

.method static synthetic access$2836(Lcom/htc/album/TabPluginDevice/CropImage;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iget v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAspectY:I

    div-int/2addr v0, p1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAspectY:I

    return v0
.end method

.method static synthetic access$2900(Lcom/htc/album/TabPluginDevice/CropImage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mDoFaceDetection:Z

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/album/TabPluginDevice/CropImage;)S
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-short v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mActivityState:S

    return v0
.end method

.method static synthetic access$3100(Lcom/htc/album/TabPluginDevice/CropImage;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAddHVRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/htc/album/TabPluginDevice/CropImage;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAddHVRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/htc/album/TabPluginDevice/CropImage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->closeProgressDialog()V

    return-void
.end method

.method static synthetic access$3500(Lcom/htc/album/TabPluginDevice/CropImage;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/htc/album/TabPluginDevice/CropImage;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mDiskModeReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/htc/album/TabPluginDevice/CropImage;Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mFaceDetectionDialog:Lcom/htc/app/HtcProgressDialog;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/htc/album/TabPluginDevice/CropImage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->createListAndThumb()V

    return-void
.end method

.method static synthetic access$3900(Lcom/htc/album/TabPluginDevice/CropImage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->showLoadFailToast()V

    return-void
.end method

.method static synthetic access$4000(Lcom/htc/album/TabPluginDevice/CropImage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mIsImageChanged:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/htc/album/TabPluginDevice/CropImage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mIsImageChanged:Z

    return p1
.end method

.method static synthetic access$402(Lcom/htc/album/TabPluginDevice/CropImage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImageSaved:Z

    return p1
.end method

.method static synthetic access$4100()I
    .locals 1

    .prologue
    .line 88
    sget v0, Lcom/htc/album/TabPluginDevice/CropImage;->sDecodeResolution:I

    return v0
.end method

.method static synthetic access$4200(Lcom/htc/album/TabPluginDevice/CropImage;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mInitDFRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/htc/album/TabPluginDevice/CropImage;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mInitDFRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/htc/album/TabPluginDevice/CropImage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mEnableKDDIResizeCrop:Z

    return v0
.end method

.method static synthetic access$600(Lcom/htc/album/TabPluginDevice/CropImage;Landroid/graphics/Rect;Landroid/graphics/Bitmap;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/CropImage;->customizeKDDICropRegion(Landroid/graphics/Rect;Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/album/TabPluginDevice/CropImage;)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/album/TabPluginDevice/CropImage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mRawBitmapAsSource:Z

    return v0
.end method

.method static synthetic access$900(Lcom/htc/album/TabPluginDevice/CropImage;Landroid/graphics/Rect;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/CropImage;->cropFromSource(Landroid/graphics/Rect;I)V

    return-void
.end method

.method private addImageAndStoreImage(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 28
    .parameter "resultFolderPath"
    .parameter "resultFileName"

    .prologue
    .line 2257
    const/4 v10, 0x0

    .line 2258
    .local v10, retUri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 2261
    .local v8, loc:Landroid/location/Location;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/AlbumUtility/ExifUtil;->getLatLng(Ljava/lang/String;)[F

    move-result-object v26

    .line 2263
    .local v26, latlng:[F
    if-eqz v26, :cond_0

    .line 2265
    new-instance v27, Landroid/location/Location;

    const-string v1, ""

    move-object/from16 v0, v27

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2266
    .end local v8           #loc:Landroid/location/Location;
    .local v27, loc:Landroid/location/Location;
    const/4 v1, 0x0

    :try_start_1
    aget v1, v26, v1

    float-to-double v1, v1

    move-object/from16 v0, v27

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 2267
    const/4 v1, 0x1

    aget v1, v26, v1

    float-to-double v1, v1

    move-object/from16 v0, v27

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v8, v27

    .line 2275
    .end local v26           #latlng:[F
    .end local v27           #loc:Landroid/location/Location;
    .restart local v8       #loc:Landroid/location/Location;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateTaken()J

    move-result-wide v23

    .line 2276
    .local v23, dateTaken:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateModified()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v21, v1, v3

    .line 2277
    .local v21, dateModified:J
    const-wide/16 v1, 0x0

    cmp-long v1, v23, v1

    if-lez v1, :cond_1

    move-wide/from16 v6, v23

    .line 2279
    .local v6, time:J
    :goto_1
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getTitle()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDescription()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    invoke-virtual/range {v1 .. v11}, Lcom/htc/opensense2/album/util/ImageManager;->addImage(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JLandroid/location/Location;ILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .end local v10           #retUri:Landroid/net/Uri;
    move-result-object v10

    .line 2294
    .restart local v10       #retUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/AlbumUtility/ExifUtil;->getExifData(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v16

    .line 2300
    .local v16, exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    const/4 v15, 0x0

    move-object/from16 v11, p0

    move-object/from16 v17, p1

    move-wide/from16 v18, v6

    invoke-virtual/range {v9 .. v19}, Lcom/htc/opensense2/album/util/ImageManager;->storeImage(Landroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;ILandroid/graphics/Bitmap;[BLjava/util/HashMap;Ljava/lang/String;J)Lcom/htc/opensense2/album/util/ImageManager$IAddImage_cancelable;

    move-result-object v20

    .line 2312
    .local v20, cancelable:Lcom/htc/opensense2/album/util/ImageManager$IAddImage_cancelable;
    invoke-interface/range {v20 .. v20}, Lcom/htc/opensense2/album/util/ImageManager$IAddImage_cancelable;->get()V

    .line 2314
    return-object v10

    .line 2270
    .end local v6           #time:J
    .end local v16           #exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20           #cancelable:Lcom/htc/opensense2/album/util/ImageManager$IAddImage_cancelable;
    .end local v21           #dateModified:J
    .end local v23           #dateTaken:J
    :catch_0
    move-exception v25

    .line 2272
    .local v25, e:Ljava/lang/Exception;
    :goto_2
    sget-object v1, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExifUtil.getLatLng():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v25           #e:Ljava/lang/Exception;
    .restart local v21       #dateModified:J
    .restart local v23       #dateTaken:J
    :cond_1
    move-wide/from16 v6, v21

    .line 2277
    goto :goto_1

    .line 2270
    .end local v8           #loc:Landroid/location/Location;
    .end local v21           #dateModified:J
    .end local v23           #dateTaken:J
    .restart local v26       #latlng:[F
    .restart local v27       #loc:Landroid/location/Location;
    :catch_1
    move-exception v25

    move-object/from16 v8, v27

    .end local v27           #loc:Landroid/location/Location;
    .restart local v8       #loc:Landroid/location/Location;
    goto :goto_2
.end method

.method private declared-synchronized closeProgressDialog()V
    .locals 1

    .prologue
    .line 1966
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mFaceDetectionDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 1967
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mFaceDetectionDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 1968
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mFaceDetectionDialog:Lcom/htc/app/HtcProgressDialog;

    .line 1970
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mSavingProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_1

    .line 1971
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mSavingProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 1972
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mSavingProgressDialog:Lcom/htc/app/HtcProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1974
    :cond_1
    monitor-exit p0

    return-void

    .line 1966
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createListAndThumb()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2035
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2037
    .local v0, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    if-nez v0, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v4, :cond_3

    .line 2041
    :cond_1
    sget-object v4, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][CropImage]: create list for uri "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mTargetUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2044
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mTargetUri:Landroid/net/Uri;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mTargetUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    .line 2046
    :cond_2
    sget-object v2, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][CropImage]: getAuthority() is NULL ! "

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2080
    :cond_3
    :goto_0
    return-void

    .line 2050
    :cond_4
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mTargetUri:Landroid/net/Uri;

    invoke-static {v4, p0, v3, v3, v2}, Lcom/htc/opensense2/album/util/ImageManager;->makeImageList(Landroid/net/Uri;Landroid/content/Context;IZZ)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAllImages:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 2052
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAllImages:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mTargetUri:Landroid/net/Uri;

    invoke-interface {v4, v5}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageForUri(Landroid/net/Uri;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2053
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOldPath:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOldDegree:I

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDegreesRotated()I

    move-result v5

    if-ne v4, v5, :cond_5

    iget-wide v4, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOldSize:J

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSize()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOldPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move v2, v3

    :cond_6
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mIsImageChanged:Z

    .line 2058
    iget-boolean v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mIsImageChanged:Z

    if-eqz v2, :cond_3

    .line 2061
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOldPath:Ljava/lang/String;

    .line 2062
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSize()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOldSize:J

    .line 2063
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDegreesRotated()I

    move-result v2

    iput v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOldDegree:I

    .line 2065
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v2, :cond_8

    .line 2067
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    instance-of v2, v2, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;

    if-eqz v2, :cond_7

    .line 2069
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;

    .line 2070
    .local v1, uriImage:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;
    if-eqz v0, :cond_7

    .line 2071
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->setMimeType(Ljava/lang/String;)V

    .line 2073
    .end local v1           #uriImage:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;
    :cond_7
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->thumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 2076
    :cond_8
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 2077
    sget-object v2, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thumbBitmap returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mBitmap w"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mBitmap h"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private cropCenterCropBitmap()V
    .locals 9

    .prologue
    .line 1527
    iget v5, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputX:I

    iget v6, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputY:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1528
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1531
    .local v1, c1:Landroid/graphics/Canvas;
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCrop:Lcom/htc/album/TabPluginDevice/HighlightView;

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDevice/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 1532
    .local v3, r:Landroid/graphics/Rect;
    iget v5, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputX:I

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v2, v5, v6

    .line 1533
    .local v2, left:I
    iget v5, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputY:I

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v4, v5, v6

    .line 1534
    .local v4, top:I
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v8

    add-int/2addr v8, v4

    invoke-direct {v6, v2, v4, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v3, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1538
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    .line 1539
    return-void
.end method

.method private cropCircle(Landroid/graphics/Rect;)V
    .locals 8
    .parameter "r"

    .prologue
    const/high16 v7, 0x4000

    .line 1489
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 1490
    .local v3, width:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 1495
    .local v1, height:I
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1496
    .local v0, c:Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 1497
    .local v2, p:Landroid/graphics/Path;
    int-to-float v4, v3

    div-float/2addr v4, v7

    int-to-float v5, v1

    div-float/2addr v5, v7

    int-to-float v6, v3

    div-float/2addr v6, v7

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 1498
    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 1500
    invoke-direct {p0, v3, v1, v0}, Lcom/htc/album/TabPluginDevice/CropImage;->fillCanvas(IILandroid/graphics/Canvas;)V

    .line 1501
    return-void
.end method

.method private cropFromRawData(Landroid/graphics/Rect;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 1466
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 1467
    .local v1, width:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 1482
    .local v0, height:I
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    iget-boolean v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCircleCrop:Z

    if-eqz v2, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {v3, p1, v1, v0, v2}, Lcom/htc/opensense2/album/util/BitmapUtil2;->cropImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    .line 1486
    return-void

    .line 1482
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method private cropFromSource(Landroid/graphics/Rect;I)V
    .locals 17
    .parameter "r"
    .parameter "degree"

    .prologue
    .line 1401
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v4, v1, v5, v2}, Lcom/htc/album/TabPluginDevice/CropImage;->mappedRect(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Lcom/htc/opensense2/album/util/ImageManager$IImage;I)Landroid/graphics/Rect;

    move-result-object v16

    .line 1406
    .local v16, sourceSizeRect:Landroid/graphics/Rect;
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-gtz v4, :cond_2

    .line 1407
    :cond_0
    sget-object v4, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    const-string v5, "rectangle to source bitmap is invalid"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mRawBitmapAsSource:Z

    .line 1462
    :cond_1
    :goto_0
    return-void

    .line 1410
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 1411
    .local v11, cr:Landroid/content/ContentResolver;
    const/4 v15, 0x0

    .line 1412
    .local v15, pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v11, :cond_3

    .line 1414
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "r"

    invoke-virtual {v11, v4, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 1419
    :cond_3
    :goto_1
    const/4 v3, 0x0

    .line 1420
    .local v3, b:Landroid/graphics/Bitmap;
    if-eqz v15, :cond_8

    .line 1421
    sget-object v4, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rectangle size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputX:I

    .line 1424
    .local v13, outputX:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputY:I

    .line 1426
    .local v14, outputY:I
    const/16 v4, 0x5a

    move/from16 v0, p2

    if-eq v0, v4, :cond_4

    const/16 v4, 0x10e

    move/from16 v0, p2

    if-ne v0, v4, :cond_5

    .line 1428
    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputY:I

    .line 1429
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputX:I

    .line 1432
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "image/webp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1434
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputX:I

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputY:I

    if-nez v4, :cond_7

    .line 1436
    :cond_6
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v13

    .line 1437
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v14

    .line 1440
    :cond_7
    invoke-virtual {v15}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 1441
    .local v10, bitmap:Landroid/graphics/Bitmap;
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v16

    invoke-static {v10, v0, v13, v14, v4}, Lcom/htc/opensense2/album/util/BitmapUtil2;->cropImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1449
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .end local v13           #outputX:I
    .end local v14           #outputY:I
    :cond_8
    :goto_2
    if-eqz p2, :cond_a

    if-eqz v3, :cond_a

    .line 1450
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 1451
    .local v8, mat:Landroid/graphics/Matrix;
    move/from16 v0, p2

    int-to-float v4, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v8, v4, v5, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1452
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    invoke-static/range {v3 .. v9}, Lcom/htc/opensense2/album/util/BitmapUtil2;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    .line 1453
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    if-eq v4, v3, :cond_1

    .line 1454
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 1455
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1415
    .end local v3           #b:Landroid/graphics/Bitmap;
    .end local v8           #mat:Landroid/graphics/Matrix;
    :catch_0
    move-exception v12

    .line 1416
    .local v12, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 1445
    .end local v12           #e:Ljava/io/FileNotFoundException;
    .restart local v3       #b:Landroid/graphics/Bitmap;
    .restart local v13       #outputX:I
    .restart local v14       #outputY:I
    :cond_9
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    invoke-virtual {v15}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v4, v5, v0, v13, v14}, Lcom/htc/opensense/album/util/ScaladoLib2;->DoCrop(Ljava/io/FileDescriptor;Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_2

    .line 1458
    .end local v13           #outputX:I
    .end local v14           #outputY:I
    :cond_a
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    goto/16 :goto_0
.end method

.method private customizeKDDIBoundaryCheck(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)V
    .locals 26
    .parameter "bitmap"
    .parameter "cropRegion"
    .parameter "returnRegion"
    .parameter "retainWidthBase"
    .parameter "retainHeightBase"
    .parameter "isUpdateReturnX"
    .parameter "isUpdateReturnY"

    .prologue
    .line 2419
    sget-boolean v22, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v22, :cond_0

    .line 2420
    sget-object v22, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    const-string v23, "[HTCAlbum][CropImage][customizeKDDIBoundaryCheck]"

    invoke-static/range {v22 .. v23}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2421
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_3

    .line 2423
    :cond_1
    sget-object v22, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    const-string v23, "[HTCAlbum][CropImage][customizeKDDIBoundaryCheck] illegal input parameter"

    invoke-static/range {v22 .. v23}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2533
    :cond_2
    :goto_0
    return-void

    .line 2426
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    .line 2427
    .local v21, width:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 2428
    .local v8, height:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v13

    .line 2429
    .local v13, retainWidth:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v11

    .line 2431
    .local v11, retainHeight:I
    const/4 v6, 0x0

    .line 2432
    .local v6, bIsBoundaryChange:Z
    if-eqz p3, :cond_b

    const/4 v5, 0x1

    .line 2433
    .local v5, bIsAdjustReturnRegion:Z
    :goto_1
    if-eqz v5, :cond_c

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    .line 2434
    .local v19, returnTop:I
    :goto_2
    if-eqz v5, :cond_d

    move-object/from16 v0, p3

    iget v15, v0, Landroid/graphics/Rect;->bottom:I

    .line 2435
    .local v15, returnBottom:I
    :goto_3
    if-eqz v5, :cond_e

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    .line 2436
    .local v17, returnLeft:I
    :goto_4
    if-eqz v5, :cond_f

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    .line 2437
    .local v18, returnRight:I
    :goto_5
    if-eqz v5, :cond_10

    sub-int v20, v18, v17

    .line 2438
    .local v20, returnWidth:I
    :goto_6
    if-eqz v5, :cond_11

    sub-int v16, v15, v19

    .line 2440
    .local v16, returnHeight:I
    :goto_7
    int-to-float v0, v13

    move/from16 v22, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v14, v22, v23

    .line 2441
    .local v14, retainWidthRatio:F
    int-to-float v0, v11

    move/from16 v22, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v10, v22, v23

    .line 2443
    .local v10, reatinHeightRatio:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputX:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputY:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v9, v22, v23

    .line 2444
    .local v9, outputRatio:F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v12, v22, v23

    .line 2445
    .local v12, retainOutputRatio:F
    cmpl-float v22, v9, v12

    if-eqz v22, :cond_4

    .line 2447
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v9

    move/from16 v0, v22

    float-to-int v13, v0

    .line 2448
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v22

    sub-int v22, v13, v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 2449
    .local v7, diffWidth:I
    div-int/lit8 v7, v7, 0x2

    .line 2450
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    sub-int v22, v22, v7

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    add-int v24, v24, v7

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    move-object/from16 v0, p2

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2453
    .end local v7           #diffWidth:I
    :cond_4
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    if-gez v22, :cond_14

    .line 2455
    if-eqz v5, :cond_6

    if-eqz p6, :cond_6

    .line 2457
    const/4 v6, 0x1

    .line 2458
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v22, v22, v14

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v17, v17, v22

    .line 2459
    if-gez v17, :cond_12

    .line 2460
    const/16 v17, 0x0

    .line 2463
    :cond_5
    :goto_8
    add-int v18, v17, v20

    .line 2466
    :cond_6
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p2

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 2467
    move/from16 v0, v21

    if-ge v0, v13, :cond_13

    .line 2468
    move/from16 v0, v21

    move-object/from16 v1, p2

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 2492
    :cond_7
    :goto_9
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    if-gez v22, :cond_1b

    .line 2494
    if-eqz v5, :cond_9

    if-eqz p7, :cond_9

    .line 2496
    const/4 v6, 0x1

    .line 2497
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v22, v22, v10

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v19, v19, v22

    .line 2498
    if-gez v19, :cond_19

    .line 2499
    const/16 v19, 0x0

    .line 2502
    :cond_8
    :goto_a
    add-int v15, v19, v16

    .line 2505
    :cond_9
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p2

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 2506
    if-ge v8, v11, :cond_1a

    .line 2507
    move-object/from16 v0, p2

    iput v8, v0, Landroid/graphics/Rect;->bottom:I

    .line 2531
    :cond_a
    :goto_b
    if-eqz v6, :cond_2

    .line 2532
    move-object/from16 v0, p3

    move/from16 v1, v17

    move/from16 v2, v19

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v15}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    .line 2432
    .end local v5           #bIsAdjustReturnRegion:Z
    .end local v9           #outputRatio:F
    .end local v10           #reatinHeightRatio:F
    .end local v12           #retainOutputRatio:F
    .end local v14           #retainWidthRatio:F
    .end local v15           #returnBottom:I
    .end local v16           #returnHeight:I
    .end local v17           #returnLeft:I
    .end local v18           #returnRight:I
    .end local v19           #returnTop:I
    .end local v20           #returnWidth:I
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2433
    .restart local v5       #bIsAdjustReturnRegion:Z
    :cond_c
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 2434
    .restart local v19       #returnTop:I
    :cond_d
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2435
    .restart local v15       #returnBottom:I
    :cond_e
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 2436
    .restart local v17       #returnLeft:I
    :cond_f
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 2437
    .restart local v18       #returnRight:I
    :cond_10
    const/16 v20, 0x0

    goto/16 :goto_6

    .line 2438
    .restart local v20       #returnWidth:I
    :cond_11
    const/16 v16, 0x0

    goto/16 :goto_7

    .line 2461
    .restart local v9       #outputRatio:F
    .restart local v10       #reatinHeightRatio:F
    .restart local v12       #retainOutputRatio:F
    .restart local v14       #retainWidthRatio:F
    .restart local v16       #returnHeight:I
    :cond_12
    sub-int v22, v21, v20

    move/from16 v0, v17

    move/from16 v1, v22

    if-le v0, v1, :cond_5

    .line 2462
    sub-int v17, v21, v20

    goto :goto_8

    .line 2470
    :cond_13
    move-object/from16 v0, p2

    iput v13, v0, Landroid/graphics/Rect;->right:I

    goto :goto_9

    .line 2472
    :cond_14
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, v21

    if-le v0, v1, :cond_7

    .line 2474
    if-eqz v5, :cond_16

    if-eqz p6, :cond_16

    .line 2476
    const/4 v6, 0x1

    .line 2477
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    sub-int v22, v22, v21

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v22, v22, v14

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v18, v18, v22

    .line 2478
    move/from16 v0, v18

    move/from16 v1, p4

    if-le v0, v1, :cond_17

    .line 2479
    move/from16 v18, p4

    .line 2482
    :cond_15
    :goto_c
    sub-int v17, v18, v20

    .line 2485
    :cond_16
    move/from16 v0, v21

    move-object/from16 v1, p2

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 2486
    move/from16 v0, v21

    if-ge v0, v13, :cond_18

    .line 2487
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p2

    iput v0, v1, Landroid/graphics/Rect;->left:I

    goto/16 :goto_9

    .line 2480
    :cond_17
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_15

    .line 2481
    move/from16 v18, v20

    goto :goto_c

    .line 2489
    :cond_18
    sub-int v22, v21, v13

    move/from16 v0, v22

    move-object/from16 v1, p2

    iput v0, v1, Landroid/graphics/Rect;->left:I

    goto/16 :goto_9

    .line 2500
    :cond_19
    sub-int v22, v8, v16

    move/from16 v0, v19

    move/from16 v1, v22

    if-le v0, v1, :cond_8

    .line 2501
    sub-int v19, v8, v16

    goto/16 :goto_a

    .line 2509
    :cond_1a
    move-object/from16 v0, p2

    iput v11, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_b

    .line 2511
    :cond_1b
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v0, v8, :cond_a

    .line 2513
    if-eqz v5, :cond_1d

    if-eqz p7, :cond_1d

    .line 2515
    const/4 v6, 0x1

    .line 2516
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    sub-int v22, v22, v8

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v22, v22, v10

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v15, v15, v22

    .line 2517
    move/from16 v0, p5

    if-le v15, v0, :cond_1e

    .line 2518
    move/from16 v15, p5

    .line 2521
    :cond_1c
    :goto_d
    sub-int v19, v15, v16

    .line 2524
    :cond_1d
    move-object/from16 v0, p2

    iput v8, v0, Landroid/graphics/Rect;->bottom:I

    .line 2525
    if-ge v8, v11, :cond_1f

    .line 2526
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p2

    iput v0, v1, Landroid/graphics/Rect;->top:I

    goto/16 :goto_b

    .line 2519
    :cond_1e
    move/from16 v0, v16

    if-ge v15, v0, :cond_1c

    .line 2520
    move/from16 v15, v16

    goto :goto_d

    .line 2528
    :cond_1f
    sub-int v22, v8, v11

    move/from16 v0, v22

    move-object/from16 v1, p2

    iput v0, v1, Landroid/graphics/Rect;->top:I

    goto/16 :goto_b
.end method

.method private customizeKDDICropRegion(Landroid/graphics/Rect;Landroid/graphics/Bitmap;)Landroid/graphics/Rect;
    .locals 38
    .parameter "highlightRect"
    .parameter "bitmap"

    .prologue
    .line 2319
    sget-boolean v4, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 2320
    sget-object v4, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[HTCAlbum][CropImage][customizeKDDICropRegion]"

    invoke-static {v4, v11}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2321
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 2323
    :cond_1
    sget-object v4, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[HTCAlbum][CropImage][customizeKDDICropRegion] illegal input parameter"

    invoke-static {v4, v11}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2324
    const/16 v31, 0x0

    .line 2414
    :goto_0
    return-object v31

    .line 2327
    :cond_2
    new-instance v31, Landroid/graphics/Rect;

    invoke-direct/range {v31 .. v31}, Landroid/graphics/Rect;-><init>()V

    .line 2328
    .local v31, rect:Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    .line 2329
    .local v20, bitmapWidth:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    .line 2330
    .local v19, bitmapHeight:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v28

    .line 2331
    .local v28, highlightWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v27

    .line 2332
    .local v27, highlightHeight:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputX:I

    .line 2333
    .local v7, retainWidth:I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputY:I

    .line 2334
    .local v8, retainHeight:I
    new-instance v22, Landroid/graphics/Point;

    div-int/lit8 v4, v28, 0x2

    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v11

    div-int/lit8 v11, v27, 0x2

    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v12

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 2336
    .local v22, center:Landroid/graphics/Point;
    const/16 v26, -0x1

    .line 2337
    .local v26, cropTop:I
    const/16 v23, -0x1

    .line 2338
    .local v23, cropBottom:I
    const/16 v24, -0x1

    .line 2339
    .local v24, cropLeft:I
    const/16 v25, -0x1

    .line 2340
    .local v25, cropRight:I
    const/high16 v35, 0x3f80

    .line 2341
    .local v35, resizeWidthRatio:F
    const/high16 v32, 0x3f80

    .line 2343
    .local v32, resizeHeightRatio:F
    const/4 v9, 0x0

    .line 2344
    .local v9, isResizeWidthOutput:Z
    const/4 v10, 0x0

    .line 2345
    .local v10, isResizeHeightOutput:Z
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mKDDIReturnRegion:Landroid/graphics/Rect;

    .line 2348
    int-to-float v4, v7

    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mAspectX:I

    int-to-float v11, v11

    div-float v35, v4, v11

    .line 2349
    int-to-float v4, v8

    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mAspectY:I

    int-to-float v11, v11

    div-float v32, v4, v11

    .line 2350
    move/from16 v0, v28

    int-to-float v4, v0

    mul-float v4, v4, v35

    float-to-int v0, v4

    move/from16 v34, v0

    .line 2351
    .local v34, resizeRetainWidth:I
    move/from16 v0, v34

    move/from16 v1, v20

    if-le v0, v1, :cond_3

    .line 2353
    const/4 v9, 0x1

    .line 2354
    move/from16 v34, v20

    .line 2356
    :cond_3
    move/from16 v0, v27

    int-to-float v4, v0

    mul-float v4, v4, v32

    float-to-int v0, v4

    move/from16 v33, v0

    .line 2357
    .local v33, resizeRetainHeight:I
    move/from16 v0, v33

    move/from16 v1, v19

    if-le v0, v1, :cond_4

    .line 2359
    const/4 v10, 0x1

    .line 2360
    move/from16 v33, v19

    .line 2362
    :cond_4
    move-object/from16 v0, v22

    iget v4, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v11, v34, 0x2

    sub-int v24, v4, v11

    .line 2363
    add-int v25, v24, v34

    .line 2364
    move-object/from16 v0, v22

    iget v4, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v11, v33, 0x2

    sub-int v26, v4, v11

    .line 2365
    add-int v23, v26, v33

    .line 2368
    sub-int v5, v25, v24

    .line 2369
    .local v5, cropWidth:I
    sub-int v6, v23, v26

    .line 2370
    .local v6, cropHeight:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mKDDIReturnRegion:Landroid/graphics/Rect;

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/htc/album/TabPluginDevice/CropImage;->resizeKDDIOutput(IIIIZZLandroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object v30

    .line 2374
    .local v30, output:Landroid/graphics/Point;
    move-object/from16 v0, v30

    iget v4, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputX:I

    .line 2375
    move-object/from16 v0, v30

    iget v4, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputY:I

    .line 2378
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputX:I

    mul-int v4, v4, v28

    div-int v28, v4, v5

    .line 2379
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputY:I

    mul-int v4, v4, v27

    div-int v27, v4, v6

    .line 2380
    const/16 v17, 0x0

    .line 2381
    .local v17, isUpdateReturnX:Z
    const/16 v18, 0x0

    .line 2382
    .local v18, isUpdateReturnY:Z
    const/16 v29, 0x0

    .line 2383
    .local v29, left:I
    const/16 v36, 0x0

    .line 2384
    .local v36, right:I
    const/16 v37, 0x0

    .line 2385
    .local v37, top:I
    const/16 v21, 0x0

    .line 2386
    .local v21, bottom:I
    if-eqz v9, :cond_5

    .line 2388
    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputX:I

    mul-int/2addr v4, v11

    div-int v29, v4, v5

    .line 2389
    add-int v36, v29, v28

    .line 2397
    :goto_1
    if-eqz v10, :cond_6

    .line 2399
    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputY:I

    mul-int/2addr v4, v11

    div-int v37, v4, v6

    .line 2400
    add-int v21, v37, v27

    .line 2408
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mKDDIReturnRegion:Landroid/graphics/Rect;

    move/from16 v0, v29

    move/from16 v1, v37

    move/from16 v2, v36

    move/from16 v3, v21

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2410
    new-instance v13, Landroid/graphics/Rect;

    move/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v25

    move/from16 v3, v23

    invoke-direct {v13, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2411
    .local v13, cropRegion:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mKDDIReturnRegion:Landroid/graphics/Rect;

    move-object/from16 v11, p0

    move-object/from16 v12, p2

    move v15, v7

    move/from16 v16, v8

    invoke-direct/range {v11 .. v18}, Lcom/htc/album/TabPluginDevice/CropImage;->customizeKDDIBoundaryCheck(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)V

    .line 2412
    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 2393
    .end local v13           #cropRegion:Landroid/graphics/Rect;
    :cond_5
    const/16 v17, 0x1

    .line 2394
    sub-int v4, v7, v28

    div-int/lit8 v29, v4, 0x2

    .line 2395
    add-int v36, v29, v28

    goto :goto_1

    .line 2404
    :cond_6
    const/16 v18, 0x1

    .line 2405
    sub-int v4, v8, v27

    div-int/lit8 v37, v4, 0x2

    .line 2406
    add-int v21, v37, v27

    goto :goto_2
.end method

.method private fillCanvas(IILandroid/graphics/Canvas;)V
    .locals 6
    .parameter "width"
    .parameter "height"
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 540
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 541
    .local v5, paint:Landroid/graphics/Paint;
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 542
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 543
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 544
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 545
    int-to-float v3, p1

    int-to-float v4, p2

    move-object v0, p3

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 546
    return-void
.end method

.method private getLockScreenOutputStream()Ljava/io/OutputStream;
    .locals 2

    .prologue
    .line 1594
    sget-object v0, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[getLockScreenOutputStream] shouldn\'t be called"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    const/4 v0, 0x0

    return-object v0
.end method

.method private mapCropRectToOri(Landroid/graphics/Bitmap;Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 12
    .parameter "b"
    .parameter "r"
    .parameter "degree"

    .prologue
    .line 555
    if-gez p3, :cond_0

    .line 556
    add-int/lit16 p3, p3, 0x168

    .line 558
    :cond_0
    sget-object v8, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "rect "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " degree "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const/4 v8, 0x2

    new-array v2, v8, [I

    .line 560
    .local v2, imageAnchor:[I
    const/4 v8, 0x2

    new-array v0, v8, [I

    .line 561
    .local v0, bitmapAnchor:[I
    const/4 v8, 0x2

    new-array v1, v8, [I

    .line 562
    .local v1, finalAnchor:[I
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 563
    .local v4, rectWidth:I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 565
    .local v3, rectHeight:I
    const/16 v8, 0x5a

    if-ne p3, v8, :cond_2

    .line 566
    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    aput v9, v2, v8

    .line 567
    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v9, v2, v8

    .line 568
    const/4 v8, 0x0

    iget v9, p2, Landroid/graphics/Rect;->right:I

    aput v9, v0, v8

    .line 569
    const/4 v8, 0x1

    iget v9, p2, Landroid/graphics/Rect;->top:I

    aput v9, v0, v8

    .line 586
    :goto_0
    const/4 v7, -0x1

    .line 587
    .local v7, retRectWidth:I
    const/4 v6, -0x1

    .line 588
    .local v6, retRectHeight:I
    const/16 v8, 0x5a

    if-eq p3, v8, :cond_1

    const/16 v8, 0x10e

    if-ne p3, v8, :cond_5

    .line 589
    :cond_1
    const/4 v8, 0x0

    const/4 v9, 0x1

    aget v9, v0, v9

    const/4 v10, 0x1

    aget v10, v2, v10

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    aput v9, v1, v8

    .line 590
    const/4 v8, 0x1

    const/4 v9, 0x0

    aget v9, v0, v9

    const/4 v10, 0x0

    aget v10, v2, v10

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    aput v9, v1, v8

    .line 591
    move v7, v3

    .line 592
    move v6, v4

    .line 602
    :goto_1
    new-instance v5, Landroid/graphics/Rect;

    const/4 v8, 0x0

    aget v8, v1, v8

    const/4 v9, 0x1

    aget v9, v1, v9

    const/4 v10, 0x0

    aget v10, v1, v10

    add-int/2addr v10, v7

    const/4 v11, 0x1

    aget v11, v1, v11

    add-int/2addr v11, v6

    invoke-direct {v5, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 604
    .local v5, retRect:Landroid/graphics/Rect;
    sget-object v8, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    return-object v5

    .line 570
    .end local v5           #retRect:Landroid/graphics/Rect;
    .end local v6           #retRectHeight:I
    .end local v7           #retRectWidth:I
    :cond_2
    const/16 v8, 0xb4

    if-ne p3, v8, :cond_3

    .line 571
    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    aput v9, v2, v8

    .line 572
    const/4 v8, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    aput v9, v2, v8

    .line 573
    const/4 v8, 0x0

    iget v9, p2, Landroid/graphics/Rect;->right:I

    aput v9, v0, v8

    .line 574
    const/4 v8, 0x1

    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    aput v9, v0, v8

    goto :goto_0

    .line 575
    :cond_3
    const/16 v8, 0x10e

    if-ne p3, v8, :cond_4

    .line 576
    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v2, v8

    .line 577
    const/4 v8, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    aput v9, v2, v8

    .line 578
    const/4 v8, 0x0

    iget v9, p2, Landroid/graphics/Rect;->left:I

    aput v9, v0, v8

    .line 579
    const/4 v8, 0x1

    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    aput v9, v0, v8

    goto/16 :goto_0

    .line 581
    :cond_4
    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v2, v8

    .line 582
    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v9, v2, v8

    .line 583
    const/4 v8, 0x0

    iget v9, p2, Landroid/graphics/Rect;->left:I

    aput v9, v0, v8

    .line 584
    const/4 v8, 0x1

    iget v9, p2, Landroid/graphics/Rect;->top:I

    aput v9, v0, v8

    goto/16 :goto_0

    .line 595
    .restart local v6       #retRectHeight:I
    .restart local v7       #retRectWidth:I
    :cond_5
    const/4 v8, 0x0

    const/4 v9, 0x0

    aget v9, v0, v9

    const/4 v10, 0x0

    aget v10, v2, v10

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    aput v9, v1, v8

    .line 596
    const/4 v8, 0x1

    const/4 v9, 0x1

    aget v9, v0, v9

    const/4 v10, 0x1

    aget v10, v2, v10

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    aput v9, v1, v8

    .line 597
    move v7, v4

    .line 598
    move v6, v3

    goto/16 :goto_1
.end method

.method private mappedRect(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Lcom/htc/opensense2/album/util/ImageManager$IImage;I)Landroid/graphics/Rect;
    .locals 24
    .parameter "b"
    .parameter "r"
    .parameter "image"
    .parameter "degree"

    .prologue
    .line 611
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 612
    :cond_0
    const/4 v13, 0x0

    .line 673
    :goto_0
    return-object v13

    .line 614
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/album/TabPluginDevice/CropImage;->mapCropRectToOri(Landroid/graphics/Bitmap;Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v7

    .line 616
    .local v7, newRect:Landroid/graphics/Rect;
    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v18

    .line 617
    .local v18, uri:Landroid/net/Uri;
    const/4 v13, 0x0

    .line 620
    .local v13, retRect:Landroid/graphics/Rect;
    const/16 v17, -0x1

    .local v17, sourceWidth:I
    const/16 v16, -0x1

    .line 621
    .local v16, sourceHeight:I
    :try_start_0
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 623
    .local v12, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x0

    .line 626
    .local v6, fd:Landroid/os/ParcelFileDescriptor;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "r"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 627
    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 628
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v12}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 629
    iget v0, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v17, v0

    .line 630
    iget v0, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v16, v0

    .line 632
    if-eqz p3, :cond_2

    move-object/from16 v0, p3

    instance-of v0, v0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 634
    move-object/from16 v0, p3

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;

    move-object/from16 v19, v0

    .line 635
    .local v19, uriImage:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;
    invoke-virtual/range {v19 .. v19}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->is3DJPS()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 637
    div-int/lit8 v17, v17, 0x2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 647
    .end local v19           #uriImage:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;
    :cond_2
    if-eqz v6, :cond_3

    .line 649
    :try_start_2
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 650
    :goto_1
    const/4 v6, 0x0

    .line 656
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 657
    .local v10, onScreenBmpW:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 658
    .local v9, onScreenBmpH:I
    if-ge v10, v9, :cond_5

    move v8, v9

    .line 659
    .local v8, onScreenBmpBase:I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_6

    move/from16 v15, v16

    .line 662
    .local v15, sourceBmpBase:I
    :goto_3
    int-to-float v0, v15

    move/from16 v20, v0

    int-to-float v0, v8

    move/from16 v21, v0

    div-float v11, v20, v21

    .line 664
    .local v11, onScreenToOriRatio:F
    new-instance v14, Landroid/graphics/Rect;

    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v11

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v11

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    iget v0, v7, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v11

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v11

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .end local v13           #retRect:Landroid/graphics/Rect;
    .local v14, retRect:Landroid/graphics/Rect;
    move-object v13, v14

    .line 672
    .end local v14           #retRect:Landroid/graphics/Rect;
    .restart local v13       #retRect:Landroid/graphics/Rect;
    goto/16 :goto_0

    .line 641
    .end local v8           #onScreenBmpBase:I
    .end local v9           #onScreenBmpH:I
    .end local v10           #onScreenBmpW:I
    .end local v11           #onScreenToOriRatio:F
    .end local v15           #sourceBmpBase:I
    :catch_0
    move-exception v4

    .line 643
    .local v4, e:Ljava/lang/Exception;
    :try_start_3
    sget-object v20, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "mappedRect error"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 647
    if-eqz v6, :cond_3

    .line 649
    :try_start_4
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 669
    .end local v4           #e:Ljava/lang/Exception;
    .end local v6           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v12           #opts:Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v5

    .line 671
    .local v5, ex:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 647
    .end local v5           #ex:Ljava/lang/Exception;
    .restart local v6       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v12       #opts:Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v20

    if-eqz v6, :cond_4

    .line 649
    :try_start_5
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 650
    const/4 v6, 0x0

    .line 647
    :cond_4
    throw v20
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .restart local v9       #onScreenBmpH:I
    .restart local v10       #onScreenBmpW:I
    :cond_5
    move v8, v10

    .line 658
    goto/16 :goto_2

    .restart local v8       #onScreenBmpBase:I
    :cond_6
    move/from16 v15, v17

    .line 659
    goto/16 :goto_3
.end method

.method private release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1931
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImageLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1933
    :try_start_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1934
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1935
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1936
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    .line 1938
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1941
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImageView:Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;

    if-eqz v0, :cond_2

    .line 1942
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImageView:Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->forceRecycleBitmaps()V

    .line 1943
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImageView:Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;

    .line 1946
    :cond_2
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 1947
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1948
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1949
    :cond_3
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 1953
    :cond_4
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAllImages:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_5

    .line 1954
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAllImages:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 1955
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAllImages:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 1958
    :cond_5
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mInitDFRunnable:Ljava/lang/Runnable;

    .line 1959
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mLoadBitmapRunnable:Ljava/lang/Runnable;

    .line 1961
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAddHVRunnable:Ljava/lang/Runnable;

    .line 1962
    return-void

    .line 1938
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private scaledCropBitmap()V
    .locals 7

    .prologue
    .line 1507
    const/4 v6, 0x0

    .line 1509
    .local v6, tmpBmp:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputX:I

    iget v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputY:I

    iget-boolean v4, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mScaleUp:Z

    iget-boolean v5, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCircleCrop:Z

    if-eqz v5, :cond_1

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static/range {v0 .. v5}, Lcom/htc/album/AlbumUtility/Camera_Util;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZLandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1512
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    if-eq v6, v0, :cond_0

    .line 1513
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1514
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    .line 1516
    :cond_0
    iput-object v6, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    .line 1517
    return-void

    .line 1509
    :cond_1
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method private sendBackCropResult()V
    .locals 5

    .prologue
    .line 1551
    :try_start_0
    sget-object v2, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[sendBackCropResult] bitmap = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", w: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", h: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", config: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    new-instance v1, Landroid/content/Intent;

    const-string v2, "inline-data"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1557
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "data"

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1558
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v2, :cond_0

    .line 1559
    const-string v2, "mime_type"

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1560
    const-string v2, "filepath"

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1561
    const-string v2, "filename"

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1562
    const-string v2, "displayname"

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1566
    const-string v2, "fileuri"

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1570
    iget-boolean v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mEnableKDDIResizeCrop:Z

    if-eqz v2, :cond_0

    .line 1572
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mKDDIReturnRegion:Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    .line 1574
    const-string v2, "returnUpperLeftX"

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mKDDIReturnRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1575
    const-string v2, "returnUpperLeftY"

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mKDDIReturnRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1576
    const-string v2, "returnBottomRightX"

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mKDDIReturnRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1577
    const-string v2, "returnBottomRightY"

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mKDDIReturnRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1582
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/htc/album/TabPluginDevice/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 1583
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImageSaved:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1588
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1585
    :catch_0
    move-exception v0

    .line 1586
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[sendBackCropResult] unable to save crop result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupReceiver()V
    .locals 3

    .prologue
    .line 2024
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2025
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2026
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/htc/album/TabPluginDevice/CropImage;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2028
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "INTENT_DISK"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2029
    .local v0, intentDiskFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mDiskModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/htc/album/TabPluginDevice/CropImage;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2030
    return-void
.end method

.method private showLoadFailToast()V
    .locals 2

    .prologue
    const v1, 0x7f0a000a

    .line 2190
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mLoadFailToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 2192
    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mLoadFailToast:Landroid/widget/Toast;

    .line 2199
    :goto_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mLoadFailToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2200
    return-void

    .line 2196
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mLoadFailToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 2197
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mLoadFailToast:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 933
    invoke-super {p0, p1}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 934
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_WindowDefaultBackground(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 935
    return-void
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2209
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    sget-object v0, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HtcAlbum][CropImage][onControlButtonClick]: start"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2211
    if-nez p1, :cond_0

    .line 2226
    :goto_0
    return-void

    .line 2214
    :cond_0
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2225
    :goto_1
    sget-object v0, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HtcAlbum][CropImage][onControlButtonClick]: end"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2216
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->onOk()V

    goto :goto_1

    .line 2219
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->finish()V

    goto :goto_1

    .line 2214
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const/4 v10, 0x0

    .line 816
    invoke-super {p0, p1}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 817
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    .line 819
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 821
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v3

    .line 823
    .local v3, htcActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    if-eqz v3, :cond_0

    .line 831
    invoke-interface {v3, v10}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setBackUpEnabled(Z)V

    .line 832
    const v7, 0x2040215

    invoke-interface {v3, v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setPrimaryText(I)V

    .line 846
    .end local v3           #htcActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    :cond_0
    :goto_0
    const v7, 0x7f030006

    invoke-virtual {p0, v7}, Lcom/htc/album/TabPluginDevice/CropImage;->setContentView(I)V

    .line 848
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v7

    if-nez v7, :cond_1

    .line 850
    iget-object v8, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const v7, 0x7f090018

    invoke-virtual {p0, v7}, Lcom/htc/album/TabPluginDevice/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v8, v7}, Lcom/htc/album/modules/ui/ControlBarManager;->attach(Landroid/view/ViewGroup;)V

    .line 851
    iget-object v7, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/htc/album/modules/ui/ControlBarManager;->createControlBars(II)V

    .line 854
    :cond_1
    const v7, 0x7f090019

    invoke-virtual {p0, v7}, Lcom/htc/album/TabPluginDevice/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;

    iput-object v7, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImageView:Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;

    .line 856
    iput-boolean v10, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImageSaved:Z

    .line 859
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->setupReceiver()V

    .line 863
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 864
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mTargetUri:Landroid/net/Uri;

    .line 866
    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 867
    .local v2, extras:Landroid/os/Bundle;
    sget-boolean v7, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v7, :cond_2

    .line 868
    sget-object v7, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "extras are "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    :cond_2
    if-eqz v2, :cond_4

    .line 871
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 873
    .local v6, s:Ljava/lang/String;
    sget-boolean v7, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v7, :cond_3

    .line 874
    sget-object v7, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " >>> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 923
    .end local v2           #extras:Landroid/os/Bundle;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #s:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 925
    .local v1, e:Ljava/lang/Exception;
    sget-object v7, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Failed to load bitmap"

    invoke-static {v7, v8, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 926
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->finish()V

    .line 929
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_WindowDefaultBackground(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 931
    return-void

    .line 842
    :cond_5
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 843
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    if-eqz v0, :cond_0

    .line 844
    const/16 v7, 0x8

    invoke-interface {v0, v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 876
    .end local v0           #actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .restart local v2       #extras:Landroid/os/Bundle;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #intent:Landroid/content/Intent;
    :cond_6
    :try_start_1
    const-string v7, "cropType"

    const/16 v8, 0x7f01

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCropType:I

    .line 877
    const-string v7, "toast_crop_result"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mToastCropResult:Z

    .line 878
    iget v7, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCropType:I

    packed-switch v7, :pswitch_data_0

    .line 917
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->finish()V

    goto :goto_2

    .line 882
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDevice/CropImage;->CropUserDefine(Landroid/os/Bundle;)V

    goto :goto_2

    .line 887
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDevice/CropImage;->CropContactIcon(Landroid/os/Bundle;)V

    goto :goto_2

    .line 892
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDevice/CropImage;->CropFootprints(Landroid/os/Bundle;)V

    goto :goto_2

    .line 897
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDevice/CropImage;->CropWallpaper(Landroid/os/Bundle;)V

    goto :goto_2

    .line 902
    :pswitch_4
    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDevice/CropImage;->CropLockScreen(Landroid/os/Bundle;)V

    goto :goto_2

    .line 907
    :pswitch_5
    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDevice/CropImage;->CropPhotoWidget(Landroid/os/Bundle;)V

    goto :goto_2

    .line 912
    :pswitch_6
    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDevice/CropImage;->CropDefault(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 878
    nop

    :pswitch_data_0
    .packed-switch 0x7f00
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 7
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 2236
    sget-object v3, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HtcAlbum][CropImage][onCreateFooterBar]: start"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2238
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 2239
    .local v1, context:Landroid/content/Context;
    const/4 v0, 0x0

    .line 2240
    .local v0, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->enableRightFooter()Z

    move-result v3

    invoke-static {v1, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;Z)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    .line 2241
    const/4 v3, 0x5

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Cancel_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x20401ee

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 2242
    const/4 v3, 0x4

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Save_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x7f0a0001

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 2244
    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getRootView()Landroid/view/ViewGroup;

    move-result-object v6

    .line 2245
    .local v6, footer:Landroid/view/ViewGroup;
    instance-of v2, v6, Lcom/htc/widget/HtcFooter;

    if-eqz v2, :cond_0

    .line 2246
    check-cast v6, Lcom/htc/widget/HtcFooter;

    .end local v6           #footer:Landroid/view/ViewGroup;
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Lcom/htc/widget/HtcFooter;->setTranparentBckground(Z)V

    .line 2249
    :cond_0
    sget-object v2, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HtcAlbum][CropImage][onCreateFooterBar]: end"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2251
    return-object v0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 1894
    sget-object v1, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1896
    const/4 v1, 0x4

    iput-short v1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mActivityState:S

    .line 1897
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mLoadBitmapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1898
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mInitDFRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1899
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mAddHVRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1904
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/CropImage;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1911
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mDiskModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/CropImage;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1917
    :goto_1
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->release()V

    .line 1918
    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onDestroy()V

    .line 1920
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImageSaved:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCropType:I

    const/16 v2, 0x7f02

    if-ne v1, v2, :cond_0

    .line 1922
    const v1, 0x7f0a0084

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1924
    :cond_0
    return-void

    .line 1905
    :catch_0
    move-exception v0

    .line 1907
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onDestroy] Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1913
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1914
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onOk()V
    .locals 14

    .prologue
    .line 938
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 940
    .local v11, myExtras:Landroid/os/Bundle;
    if-eqz v11, :cond_0

    const-string v0, "data"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mReturnData:Z

    if-nez v0, :cond_a

    :cond_0
    iget v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCropType:I

    const/16 v2, 0x7f04

    if-eq v0, v2, :cond_a

    iget v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCropType:I

    const/16 v2, 0x7f05

    if-eq v0, v2, :cond_a

    .line 943
    const/4 v8, 0x0

    .line 945
    .local v8, imagePath:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 947
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "://"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 997
    :goto_0
    const-wide/16 v9, 0x0

    .line 998
    .local v9, mSize:J
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v0, :cond_8

    .line 1000
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSize()J

    move-result-wide v9

    .line 1007
    :cond_1
    :goto_1
    invoke-static {v8, v9, v10}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->checkStorageFullWithPathAndSize(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1009
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->cropToast:Landroid/widget/Toast;

    if-nez v0, :cond_9

    .line 1011
    const v0, 0x7f0a0119

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->cropToast:Landroid/widget/Toast;

    .line 1018
    :goto_2
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->cropToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1398
    .end local v8           #imagePath:Ljava/lang/String;
    .end local v9           #mSize:J
    :goto_3
    return-void

    .line 949
    .restart local v8       #imagePath:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v0, :cond_7

    .line 951
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    .line 953
    .local v1, tmpUri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v2, "media"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 955
    const/4 v6, 0x0

    .line 958
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 961
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 963
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 973
    :cond_3
    if-eqz v6, :cond_4

    .line 975
    :goto_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 979
    .end local v6           #c:Landroid/database/Cursor;
    :cond_4
    if-eqz v8, :cond_6

    .line 981
    sget-object v0, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " map to file path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 966
    .restart local v6       #c:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 968
    .local v7, ex:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 969
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 973
    if-eqz v6, :cond_4

    goto :goto_4

    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 975
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 973
    :cond_5
    throw v0

    .line 985
    .end local v6           #c:Landroid/database/Cursor;
    :cond_6
    sget-object v0, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t find abs file path for uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->finish()V

    goto/16 :goto_3

    .line 992
    .end local v1           #tmpUri:Landroid/net/Uri;
    :cond_7
    sget-object v0, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    const-string v2, "can\'t get file path"

    invoke-static {v0, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->finish()V

    goto/16 :goto_3

    .line 1002
    .restart local v9       #mSize:J
    :cond_8
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCrop:Lcom/htc/album/TabPluginDevice/HighlightView;

    if-eqz v0, :cond_1

    .line 1004
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCrop:Lcom/htc/album/TabPluginDevice/HighlightView;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCrop:Lcom/htc/album/TabPluginDevice/HighlightView;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x4

    int-to-long v9, v0

    goto/16 :goto_1

    .line 1015
    :cond_9
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->cropToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1016
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->cropToast:Landroid/widget/Toast;

    const v2, 0x7f0a0119

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    goto/16 :goto_2

    .line 1024
    .end local v8           #imagePath:Ljava/lang/String;
    .end local v9           #mSize:J
    :cond_a
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1026
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {p0, v0, v2, v3, v4}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mSavingProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 1031
    :cond_b
    new-instance v12, Lcom/htc/album/TabPluginDevice/CropImage$1;

    invoke-direct {v12, p0}, Lcom/htc/album/TabPluginDevice/CropImage$1;-><init>(Lcom/htc/album/TabPluginDevice/CropImage;)V

    .line 1395
    .local v12, r:Ljava/lang/Runnable;
    new-instance v13, Ljava/lang/Thread;

    invoke-direct {v13, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1396
    .local v13, t:Ljava/lang/Thread;
    const-string v0, "Crop_Thread"

    invoke-virtual {v13, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1397
    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    goto/16 :goto_3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 212
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 222
    sget-object v0, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Never enter here!!"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 216
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->onOk()V

    goto :goto_0

    .line 219
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->finish()V

    goto :goto_0

    .line 214
    nop

    :sswitch_data_0
    .sparse-switch
        0x20401ee -> :sswitch_1
        0x7f0a0001 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1637
    const/4 v0, 0x3

    iput-short v0, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mActivityState:S

    .line 1639
    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onPause()V

    .line 1640
    const-string v0, "CropImage::onPause"

    invoke-static {v0}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->memUsageTrace(Ljava/lang/String;)V

    .line 1641
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const v8, 0x7f0a0001

    const v7, 0x20401ee

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 188
    invoke-super {p0, p1}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 190
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 191
    .local v0, context:Landroid/content/Context;
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 193
    invoke-interface {p1, v4, v7, v4, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 194
    .local v1, itemCropCancel:Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 195
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 196
    invoke-static {v0}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Cancel_Dark_Rest(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 199
    :cond_0
    invoke-interface {p1, v4, v8, v5, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 200
    .local v2, itemCropSave:Landroid/view/MenuItem;
    if-eqz v2, :cond_1

    .line 201
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 202
    invoke-static {v0}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Save_Dark_Rest(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 205
    .end local v1           #itemCropCancel:Landroid/view/MenuItem;
    .end local v2           #itemCropSave:Landroid/view/MenuItem;
    :cond_1
    return v5
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 1602
    const/4 v2, 0x5

    iput-short v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mActivityState:S

    .line 1604
    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onResume()V

    .line 1605
    const-string v2, "CropImage::onResume"

    invoke-static {v2}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->memUsageTrace(Ljava/lang/String;)V

    .line 1609
    iget-boolean v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mRawBitmapAsSource:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputUri:Landroid/net/Uri;

    if-nez v2, :cond_1

    iget v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mCropType:I

    const/16 v3, 0x7f04

    if-eq v2, v3, :cond_1

    .line 1611
    const/4 v0, 0x0

    .line 1612
    .local v0, bImageDataError:Z
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v2, :cond_0

    .line 1614
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1615
    .local v1, fileCrop:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1617
    sget-object v2, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    const-string v3, "File doesn\'t exist!"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    const/4 v0, 0x1

    .line 1622
    .end local v1           #fileCrop:Ljava/io/File;
    :cond_0
    if-eqz v0, :cond_1

    .line 1624
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mImageSaved:Z

    .line 1625
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->showLoadFailToast()V

    .line 1626
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->finish()V

    .line 1632
    .end local v0           #bImageDataError:Z
    :goto_0
    return-void

    .line 1631
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mLoadBitmapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1881
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/CropImage;->closeProgressDialog()V

    .line 1882
    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onStop()V

    .line 1883
    sget-object v0, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1889
    return-void
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 2231
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resizeKDDIOutput(IIIIZZLandroid/graphics/Rect;)Landroid/graphics/Point;
    .locals 4
    .parameter "width"
    .parameter "height"
    .parameter "retainWidth"
    .parameter "retainHeight"
    .parameter "isResizeWidthOutput"
    .parameter "isResizeHeightOutput"
    .parameter "returnRegion"

    .prologue
    .line 2537
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 2538
    sget-object v2, Lcom/htc/album/TabPluginDevice/CropImage;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][CropImage][resizeKDDIOutput]"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2539
    :cond_0
    const/high16 v1, 0x3f80

    .line 2540
    .local v1, ratio:F
    new-instance v0, Landroid/graphics/Point;

    iget v2, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputX:I

    iget v3, p0, Lcom/htc/album/TabPluginDevice/CropImage;->mOutputY:I

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 2541
    .local v0, output:Landroid/graphics/Point;
    if-eqz p5, :cond_4

    if-eqz p6, :cond_4

    .line 2543
    const/high16 v1, 0x3f80

    .line 2544
    if-le p1, p2, :cond_2

    .line 2545
    int-to-float v2, p1

    int-to-float v3, p3

    div-float v1, v2, v3

    .line 2549
    :goto_0
    const/high16 v2, 0x3f80

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    .line 2551
    int-to-float v2, p1

    div-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 2552
    int-to-float v2, p2

    div-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 2571
    :cond_1
    :goto_1
    return-object v0

    .line 2547
    :cond_2
    int-to-float v2, p2

    int-to-float v3, p4

    div-float v1, v2, v3

    goto :goto_0

    .line 2556
    :cond_3
    int-to-float v2, p1

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 2557
    int-to-float v2, p2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 2560
    :cond_4
    if-eqz p5, :cond_5

    .line 2562
    int-to-float v2, p2

    int-to-float v3, p4

    div-float v1, v2, v3

    .line 2563
    int-to-float v2, p1

    div-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Point;->x:I

    goto :goto_1

    .line 2565
    :cond_5
    if-eqz p6, :cond_1

    .line 2567
    int-to-float v2, p1

    int-to-float v3, p3

    div-float v1, v2, v3

    .line 2568
    int-to-float v2, p2

    div-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Point;->y:I

    goto :goto_1
.end method
