.class public Lcom/htc/album/TabPluginDLNA/ImageProvider;
.super Ljava/lang/Object;
.source "ImageProvider.java"

# interfaces
.implements Lcom/htc/opensense2/album/SocialNetworkManager/NotifyBaseData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDLNA/ImageProvider$ImageDefault;
    }
.end annotation


# static fields
.field public static final IPXTYPE_CUBE:I = 0x1

.field public static final IPXTYPE_UNKNOW:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final MAX_DOWNLOAD_BUFFER_GRID_L:I = 0x14

.field public static final MAX_DOWNLOAD_BUFFER_GRID_P:I = 0x1c


# instance fields
.field private mContentProvider:Landroid/content/ContentProviderClient;

.field private mContext:Landroid/content/Context;

.field private mHandlerData:Landroid/os/Handler;

.field private mImageCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;",
            ">;"
        }
    .end annotation
.end field

.field private mIsEnableMemCache:Z

.field private mListDefaultImage:Ljava/util/List;

.field private mMaxDownloadBuffer:I

.field private mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

.field private mMemCacheSize:I

.field private mUIScrollState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/htc/album/TabPluginDLNA/ImageProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mContext:Landroid/content/Context;

    .line 49
    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mHandlerData:Landroid/os/Handler;

    .line 51
    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    .line 52
    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mContentProvider:Landroid/content/ContentProviderClient;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mImageCache:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mListDefaultImage:Ljava/util/List;

    .line 58
    iput v1, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mMemCacheSize:I

    .line 59
    iput v1, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mMaxDownloadBuffer:I

    .line 60
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mIsEnableMemCache:Z

    .line 61
    const/16 v0, 0x4f4d

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mUIScrollState:I

    .line 80
    return-void
.end method

.method public static bitmapApplyMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bitmapSrc"
    .parameter "bitmapMask"

    .prologue
    const/4 v9, 0x0

    .line 876
    move-object v1, p1

    .line 877
    .local v1, bmMask:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 878
    .local v0, bmAlpha:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 880
    .local v2, bmRet:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 881
    .local v3, c:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x0

    invoke-virtual {v3, p0, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 883
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 884
    .local v4, p:Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 885
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v0, v5, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 887
    if-eqz v1, :cond_0

    .line 889
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 890
    const/4 v1, 0x0

    .line 892
    :cond_0
    if-eqz v0, :cond_1

    .line 894
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 895
    const/4 v0, 0x0

    .line 897
    :cond_1
    return-object v2
.end method

.method public static bitmapCropCenter(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "bitmapSrc"
    .parameter "nWidthDest"
    .parameter "nHeightDest"

    .prologue
    .line 846
    if-nez p0, :cond_1

    .line 849
    const/4 v0, 0x0

    .line 872
    :cond_0
    :goto_0
    return-object v0

    .line 851
    :cond_1
    const/4 v0, 0x0

    .line 853
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 854
    .local v3, nWidthSrc:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 856
    .local v2, nHeightSrc:I
    sub-int v6, v3, p1

    div-int/lit8 v4, v6, 0x2

    .line 857
    .local v4, nXMargin:I
    sub-int v6, v2, p2

    div-int/lit8 v5, v6, 0x2

    .line 861
    .local v5, nYMargin:I
    :try_start_0
    invoke-static {p0, v4, v5, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 868
    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 870
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 863
    :catch_0
    move-exception v1

    .line 865
    .local v1, e:Ljava/lang/Exception;
    sget-object v6, Lcom/htc/album/TabPluginDLNA/ImageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][ImageProvider][bitmapCropCenter]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static bitmapResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "bitmapSrc"
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    .line 797
    if-nez p0, :cond_1

    .line 800
    const/4 v7, 0x0

    .line 823
    :cond_0
    :goto_0
    return-object v7

    .line 802
    :cond_1
    const/4 v7, 0x0

    .line 803
    .local v7, bitmap:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 804
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 805
    .local v3, nWidthSrc:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 808
    .local v4, nHeightSrc:I
    int-to-float v0, p1

    int-to-float v1, v3

    div-float/2addr v0, v1

    int-to-float v1, p2

    int-to-float v2, v4

    div-float/2addr v1, v2

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 812
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    :try_start_0
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 819
    :goto_1
    invoke-virtual {p0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 821
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 814
    :catch_0
    move-exception v8

    .line 816
    .local v8, ex:Ljava/lang/OutOfMemoryError;
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[bitmapResize] OutOfMemoryError, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static bitmapResize(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "szFilePath"
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 827
    invoke-static {p0}, Lcom/htc/opensense2/album/util/ImageUtils;->getOriginalSize(Ljava/lang/String;)[I

    move-result-object v1

    .line 828
    .local v1, nDimensionSrc:[I
    aget v3, v1, v5

    if-lt v3, v4, :cond_0

    aget v3, v1, v4

    if-ge v3, v4, :cond_1

    .line 830
    :cond_0
    const/4 v0, 0x0

    .line 839
    :goto_0
    return-object v0

    .line 832
    :cond_1
    const/4 v0, 0x0

    .line 834
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 835
    .local v2, option:Landroid/graphics/BitmapFactory$Options;
    aget v3, v1, v5

    aget v4, v1, v4

    invoke-static {v3, v4, p1, p2}, Lcom/htc/opensense2/album/util/ImageUtils;->countGridSampleValue(IIII)I

    move-result v3

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 836
    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 837
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 839
    goto :goto_0
.end method

.method public static bitmapResizeByProportion(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "bitmapSrc"
    .parameter "nDimTarget"

    .prologue
    .line 758
    if-nez p0, :cond_0

    .line 761
    const/4 v0, 0x0

    .line 793
    :goto_0
    return-object v0

    .line 764
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 765
    .local v4, nWidthSrc:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 767
    .local v2, nHeightSrc:I
    const/4 v0, 0x0

    .line 768
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 769
    .local v3, nWidth:F
    const/4 v1, 0x0

    .line 772
    .local v1, nHeight:F
    if-ge v4, v2, :cond_1

    .line 774
    int-to-float v3, p1

    .line 775
    mul-int v5, p1, v2

    div-int/2addr v5, v4

    int-to-float v1, v5

    .line 790
    :goto_1
    float-to-int v5, v3

    float-to-int v6, v1

    invoke-static {p0, v5, v6}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->bitmapResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 793
    goto :goto_0

    .line 778
    :cond_1
    if-le v4, v2, :cond_2

    .line 780
    mul-int v5, p1, v4

    div-int/2addr v5, v2

    int-to-float v3, v5

    .line 781
    int-to-float v1, p1

    goto :goto_1

    .line 785
    :cond_2
    int-to-float v1, p1

    .line 786
    int-to-float v3, p1

    goto :goto_1
.end method

.method public static createBitmapCube(ILjava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "nIndex"
    .parameter "fDescriptor"
    .parameter "nDimension"

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    .line 701
    if-nez p1, :cond_1

    .line 754
    :cond_0
    :goto_0
    return-object v0

    .line 704
    :cond_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 709
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 710
    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 714
    const/4 v5, 0x0

    :try_start_0
    invoke-static {p1, v5, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    :goto_1
    sget v5, Lcom/htc/album/AlbumCommon/LayoutConstants;->SQR_THUMBNAIL_SIZE:I

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/ImageManager;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v5

    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 727
    iput-boolean v8, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 728
    iput-boolean v8, v4, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 729
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v5, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 731
    const/4 v0, 0x0

    .line 732
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 733
    .local v1, bitmapFull:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 738
    .local v2, bitmapResized:Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    :try_start_1
    invoke-static {p1, v5, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 748
    :goto_2
    if-eqz v1, :cond_2

    .line 749
    invoke-static {v1, p2}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->bitmapResizeByProportion(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 751
    :cond_2
    if-eqz v2, :cond_0

    .line 752
    invoke-static {v2, p2, p2}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->bitmapCropCenter(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 716
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #bitmapFull:Landroid/graphics/Bitmap;
    .end local v2           #bitmapResized:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 718
    .local v3, e:Ljava/lang/Exception;
    sget-object v5, Lcom/htc/album/TabPluginDLNA/ImageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[createBitmapCube] Unable to decodeFileDescriptor, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 740
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmapFull:Landroid/graphics/Bitmap;
    .restart local v2       #bitmapResized:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v3

    .line 742
    .restart local v3       #e:Ljava/lang/Exception;
    sget-object v5, Lcom/htc/album/TabPluginDLNA/ImageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[createBitmapCube] Unable to decodeFileDescriptor, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static createBitmapCube(ILjava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "nIndex"
    .parameter "szFilePath"
    .parameter "nDimension"

    .prologue
    const/4 v5, 0x1

    .line 682
    invoke-static {p1}, Lcom/htc/opensense2/album/util/ImageUtils;->getOriginalSize(Ljava/lang/String;)[I

    move-result-object v3

    .line 683
    .local v3, nDimensionSrc:[I
    const/4 v4, 0x0

    aget v4, v3, v4

    if-lt v4, v5, :cond_0

    aget v4, v3, v5

    if-ge v4, v5, :cond_1

    .line 685
    :cond_0
    const/4 v0, 0x0

    .line 697
    :goto_0
    return-object v0

    .line 688
    :cond_1
    const/4 v0, 0x0

    .line 689
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 690
    .local v1, bitmapFull:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 693
    .local v2, bitmapResized:Landroid/graphics/Bitmap;
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 694
    invoke-static {v1, p2}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->bitmapResizeByProportion(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 695
    invoke-static {v2, p2, p2}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->bitmapCropCenter(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 697
    goto :goto_0
.end method

.method private doGetImageDecode(Landroid/content/Context;ILjava/lang/String;Ljava/io/FileDescriptor;Z)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "context"
    .parameter "nIndex"
    .parameter "szUri"
    .parameter "fDescriptor"
    .parameter "isToMemoryCache"

    .prologue
    const/4 v8, 0x1

    .line 638
    const/4 v1, 0x0

    .line 640
    .local v1, bitmap:Landroid/graphics/Bitmap;
    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->SQR_THUMBNAIL_SIZE:I

    invoke-static {p2, p4, v0}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->createBitmapCube(ILjava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 642
    if-ne v8, p5, :cond_0

    .line 645
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    const/4 v3, 0x5

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->push(Landroid/graphics/Bitmap;IILjava/lang/String;JII)V

    .line 656
    :cond_0
    return-object v1
.end method


# virtual methods
.method public Initialize(Landroid/content/Context;ZI)Z
    .locals 4
    .parameter "context"
    .parameter "bIsEnableMemCache"
    .parameter "nMemCacheSize"

    .prologue
    const/4 v3, 0x0

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, bResult:Z
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mContext:Landroid/content/Context;

    .line 86
    sget-object v1, Lcom/htc/album/TabPluginDLNA/ImageProvider;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ImageProvider][Initialize]: "

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iput-boolean p2, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mIsEnableMemCache:Z

    .line 89
    iput p3, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mMemCacheSize:I

    .line 91
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    if-ne v1, p2, :cond_0

    .line 93
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p3, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    .line 94
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p3, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->resetMemoryCacheSize(IIZ)V

    .line 97
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getImageContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mContentProvider:Landroid/content/ContentProviderClient;

    .line 99
    return v0
.end method

.method public Uninitialize()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 116
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ImageProvider][Uninitialize]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->setDataHandler(Landroid/os/Handler;)V

    .line 119
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mContentProvider:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mContentProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 121
    :cond_0
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mContentProvider:Landroid/content/ContentProviderClient;

    .line 125
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->resetDefaultImage()V

    .line 129
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->release()V

    .line 131
    return-void
.end method

.method public doImageDecode(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 12
    .parameter "context"
    .parameter "nPosition"
    .parameter "szUri"

    .prologue
    const/4 v7, 0x1

    .line 598
    const/4 v9, 0x0

    .line 599
    .local v9, bResult:Z
    const/4 v10, 0x0

    .line 604
    .local v10, bitmap:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x5

    move-object v1, p3

    move v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 611
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ImageProvider][doImageDecode]: no need to decode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    :cond_0
    :goto_0
    return v9

    .line 615
    :cond_1
    const/4 v8, 0x0

    .line 616
    .local v8, afDescriptor:Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {p0, p3}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->getCachedFile(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 621
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->doGetImageDecode(Landroid/content/Context;ILjava/lang/String;Ljava/io/FileDescriptor;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 625
    :try_start_0
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    :goto_1
    const/4 v8, 0x0

    .line 634
    goto :goto_0

    .line 627
    :catch_0
    move-exception v11

    .line 630
    .local v11, e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public forwardFullDownloadRequest(Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;ILjava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "serviceManager"
    .parameter "nIndex"
    .parameter "szServerID"
    .parameter "szMediumID"

    .prologue
    const/4 v5, 0x0

    .line 374
    const/4 v1, -0x1

    .line 376
    .local v1, nIntegrity:I
    if-nez p1, :cond_0

    move v2, v1

    .line 404
    .end local v1           #nIntegrity:I
    .local v2, nIntegrity:I
    :goto_0
    return v2

    .line 379
    .end local v2           #nIntegrity:I
    .restart local v1       #nIntegrity:I
    :cond_0
    const/4 v3, 0x0

    .line 381
    .local v3, szKey:Ljava/lang/String;
    if-eqz p4, :cond_3

    .line 382
    move-object v3, p4

    .line 386
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mImageCache:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .line 387
    .local v0, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-nez v0, :cond_1

    .line 389
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    invoke-direct {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;-><init>()V

    .line 390
    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iput p2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    .line 391
    iput-object v5, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    .line 392
    iput-object v5, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    .line 393
    iput-object v5, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    .line 394
    iput-object v5, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    .line 395
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mImageCache:Ljava/util/Map;

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    :cond_1
    const/4 v4, 0x2

    invoke-virtual {p1, p2, v5, p4, v4}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->requestItemPhoto(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 400
    const/4 v1, -0x4

    .line 403
    :cond_2
    sget-object v4, Lcom/htc/album/TabPluginDLNA/ImageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][ImageProvider][requestFullPhotoDownload]: fullImage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 404
    .end local v1           #nIntegrity:I
    .restart local v2       #nIntegrity:I
    goto :goto_0

    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .end local v2           #nIntegrity:I
    .restart local v1       #nIntegrity:I
    :cond_3
    move v2, v1

    .line 384
    .end local v1           #nIntegrity:I
    .restart local v2       #nIntegrity:I
    goto :goto_0
.end method

.method public forwardThumbnailDownloadRequest(Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;ILjava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "serviceManager"
    .parameter "nIndex"
    .parameter "szServerID"
    .parameter "szMediumID"

    .prologue
    const/4 v5, 0x0

    .line 335
    const/4 v1, -0x1

    .line 337
    .local v1, nIntegrity:I
    if-nez p1, :cond_0

    move v2, v1

    .line 366
    .end local v1           #nIntegrity:I
    .local v2, nIntegrity:I
    :goto_0
    return v2

    .line 340
    .end local v2           #nIntegrity:I
    .restart local v1       #nIntegrity:I
    :cond_0
    const/4 v3, 0x0

    .line 342
    .local v3, szKey:Ljava/lang/String;
    if-eqz p4, :cond_3

    .line 343
    move-object v3, p4

    .line 348
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mImageCache:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .line 349
    .local v0, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-nez v0, :cond_1

    .line 351
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    invoke-direct {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;-><init>()V

    .line 352
    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iput p2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    .line 353
    iput-object v5, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    .line 354
    iput-object v5, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    .line 355
    iput-object v5, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    .line 356
    iput-object v5, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    .line 357
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mImageCache:Ljava/util/Map;

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {p1, p2, v5, p4, v4}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->requestItemPhoto(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 362
    const/4 v1, -0x2

    .line 365
    :cond_2
    sget-object v4, Lcom/htc/album/TabPluginDLNA/ImageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][ImageProvider][requestThumbnailDownload]: thumnail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 366
    .end local v1           #nIntegrity:I
    .restart local v2       #nIntegrity:I
    goto :goto_0

    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .end local v2           #nIntegrity:I
    .restart local v1       #nIntegrity:I
    :cond_3
    move v2, v1

    .line 345
    .end local v1           #nIntegrity:I
    .restart local v2       #nIntegrity:I
    goto :goto_0
.end method

.method public getCachedFile(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 8
    .parameter "szUri"

    .prologue
    .line 294
    const/4 v2, 0x0

    .line 295
    .local v2, bResult:Z
    const/4 v4, 0x0

    .line 296
    .local v4, uri:Landroid/net/Uri;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 297
    const/4 v0, 0x0

    .line 299
    .local v0, afDescriptor:Landroid/content/res/AssetFileDescriptor;
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mContentProvider:Landroid/content/ContentProviderClient;

    if-nez v5, :cond_0

    move-object v1, v0

    .line 326
    .end local v0           #afDescriptor:Landroid/content/res/AssetFileDescriptor;
    .local v1, afDescriptor:Landroid/content/res/AssetFileDescriptor;
    :goto_0
    return-object v1

    .line 307
    .end local v1           #afDescriptor:Landroid/content/res/AssetFileDescriptor;
    .restart local v0       #afDescriptor:Landroid/content/res/AssetFileDescriptor;
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mContentProvider:Landroid/content/ContentProviderClient;

    const-string v6, "r"

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 326
    .end local v0           #afDescriptor:Landroid/content/res/AssetFileDescriptor;
    .restart local v1       #afDescriptor:Landroid/content/res/AssetFileDescriptor;
    goto :goto_0

    .line 309
    .end local v1           #afDescriptor:Landroid/content/res/AssetFileDescriptor;
    .restart local v0       #afDescriptor:Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v3

    .line 312
    .local v3, e1:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 314
    .end local v3           #e1:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 317
    .local v3, e1:Ljava/io/FileNotFoundException;
    sget-object v5, Lcom/htc/album/TabPluginDLNA/ImageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][ImageProvider][getCachedFile]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 320
    .end local v3           #e1:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v3

    .line 323
    .local v3, e1:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getDataHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mHandlerData:Landroid/os/Handler;

    return-object v0
.end method

.method public getDefaultImage(I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "nResid"

    .prologue
    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 218
    .local v1, imageDefault:Lcom/htc/album/TabPluginDLNA/ImageProvider$ImageDefault;
    const/4 v2, 0x0

    .local v2, nIndex:I
    :goto_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mListDefaultImage:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_2

    .line 220
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mListDefaultImage:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #imageDefault:Lcom/htc/album/TabPluginDLNA/ImageProvider$ImageDefault;
    check-cast v1, Lcom/htc/album/TabPluginDLNA/ImageProvider$ImageDefault;

    .restart local v1       #imageDefault:Lcom/htc/album/TabPluginDLNA/ImageProvider$ImageDefault;
    if-nez v1, :cond_1

    .line 218
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 223
    :cond_1
    iget v3, v1, Lcom/htc/album/TabPluginDLNA/ImageProvider$ImageDefault;->mResID:I

    if-ne p1, v3, :cond_0

    .line 226
    iget-object v0, v1, Lcom/htc/album/TabPluginDLNA/ImageProvider$ImageDefault;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 228
    :cond_2
    return-object v0
.end method

.method public getFullImageState(Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)I
    .locals 6
    .parameter "mediumInfo"

    .prologue
    const/4 v5, 0x0

    .line 450
    const/4 v2, -0x1

    .line 452
    .local v2, nIntegrity:I
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mImageCache:Ljava/util/Map;

    if-nez v4, :cond_1

    .line 487
    .end local v2           #nIntegrity:I
    :cond_0
    :goto_0
    return v2

    .line 455
    .restart local v2       #nIntegrity:I
    :cond_1
    if-eqz p1, :cond_0

    .line 458
    iget-object v3, p1, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    .line 460
    .local v3, szKey:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 463
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mImageCache:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .line 465
    .local v1, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-eqz v1, :cond_0

    .line 468
    const/4 v0, 0x0

    .line 470
    .local v0, fullImgUri:Ljava/lang/String;
    iget-object v4, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    if-eqz v4, :cond_2

    .line 472
    iget-object v4, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 475
    :cond_2
    if-eqz v0, :cond_3

    .line 477
    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->isCachedFileExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 479
    iput-object v0, p1, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    .line 480
    const/4 v2, 0x1

    goto :goto_0

    .line 484
    :cond_3
    iput-object v5, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    .line 485
    iput-object v5, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getImageBitmap(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "context"
    .parameter "nIndex"
    .parameter "szUri"

    .prologue
    const/4 v7, 0x1

    .line 554
    const/4 v9, 0x0

    .line 555
    .local v9, bitmap:Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 557
    .local v8, afDescriptor:Landroid/content/res/AssetFileDescriptor;
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v10, v9

    .line 593
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .local v10, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v10

    .line 563
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->getDefaultCacheKey()I

    move-result v6

    move-object v1, p3

    move v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 569
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v10, v9

    .line 570
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 571
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    const/4 v9, 0x0

    .line 576
    invoke-virtual {p0, p3}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->getCachedFile(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8

    if-nez v8, :cond_3

    move-object v10, v9

    .line 577
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 579
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->doGetImageDecode(Landroid/content/Context;ILjava/lang/String;Ljava/io/FileDescriptor;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 580
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 581
    const/4 v9, 0x0

    .line 584
    :cond_4
    :try_start_0
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    :goto_1
    const/4 v8, 0x0

    move-object v10, v9

    .line 593
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 586
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v11

    .line 589
    .local v11, e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public getImageBitmap2(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "context"
    .parameter "nIndex"
    .parameter "szUri"

    .prologue
    .line 528
    const/4 v8, 0x0

    .line 530
    .local v8, bitmap:Landroid/graphics/Bitmap;
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v9, v8

    .line 549
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .local v9, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v9

    .line 536
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x1

    move-object v1, p3

    move v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;

    move-result-object v8

    if-nez v8, :cond_2

    .line 543
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ImageProvider][getImageBitmap2]: null: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v8

    .line 544
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 546
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 547
    const/4 v8, 0x0

    :cond_3
    move-object v9, v8

    .line 549
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public getMaxDownloadBuffer()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mMaxDownloadBuffer:I

    return v0
.end method

.method public getThumbnailState(Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)I
    .locals 6
    .parameter "mediumInfo"

    .prologue
    const/4 v5, 0x0

    .line 409
    const/4 v1, -0x1

    .line 411
    .local v1, nIntegrity:I
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mImageCache:Ljava/util/Map;

    if-nez v4, :cond_1

    .line 445
    .end local v1           #nIntegrity:I
    :cond_0
    :goto_0
    return v1

    .line 414
    .restart local v1       #nIntegrity:I
    :cond_1
    if-eqz p1, :cond_0

    .line 417
    iget-object v2, p1, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    .line 419
    .local v2, szKey:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 422
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mImageCache:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .line 424
    .local v0, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-eqz v0, :cond_0

    .line 427
    const/4 v3, 0x0

    .line 428
    .local v3, thumbUri:Ljava/lang/String;
    iget-object v4, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    if-eqz v4, :cond_2

    .line 430
    iget-object v4, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 433
    :cond_2
    if-eqz v3, :cond_3

    .line 435
    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->isCachedFileExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 437
    iput-object v3, p1, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    .line 438
    const/4 v1, 0x0

    goto :goto_0

    .line 442
    :cond_3
    iput-object v5, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    .line 443
    iput-object v5, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    goto :goto_0
.end method

.method public isCachedFileExist(Ljava/lang/String;)Z
    .locals 9
    .parameter "szUri"

    .prologue
    .line 247
    const/4 v1, 0x0

    .line 248
    .local v1, bResult:Z
    const/4 v5, 0x0

    .line 249
    .local v5, uri:Landroid/net/Uri;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 250
    const/4 v0, 0x0

    .line 252
    .local v0, afDescriptor:Landroid/content/res/AssetFileDescriptor;
    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mContentProvider:Landroid/content/ContentProviderClient;

    if-nez v6, :cond_0

    move v2, v1

    .line 290
    .end local v1           #bResult:Z
    .local v2, bResult:I
    :goto_0
    return v2

    .line 260
    .end local v2           #bResult:I
    .restart local v1       #bResult:Z
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mContentProvider:Landroid/content/ContentProviderClient;

    const-string v7, "r"

    invoke-virtual {v6, v5, v7}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 279
    :goto_1
    if-nez v0, :cond_1

    move v2, v1

    .line 280
    .restart local v2       #bResult:I
    goto :goto_0

    .line 262
    .end local v2           #bResult:I
    :catch_0
    move-exception v4

    .line 265
    .local v4, e1:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 267
    .end local v4           #e1:Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 270
    .local v4, e1:Ljava/io/FileNotFoundException;
    sget-object v6, Lcom/htc/album/TabPluginDLNA/ImageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][ImageProvider][isCachedFileExist]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 273
    .end local v4           #e1:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v4

    .line 276
    .local v4, e1:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 283
    .end local v4           #e1:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 288
    :goto_2
    const/4 v0, 0x0

    .line 289
    const/4 v1, 0x1

    move v2, v1

    .line 290
    .restart local v2       #bResult:I
    goto :goto_0

    .line 284
    .end local v2           #bResult:I
    :catch_3
    move-exception v3

    .line 286
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public onDataUpdateNotify(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 670
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mHandlerData:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mHandlerData:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 674
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 112
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ImageProvider][onPause]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 108
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ImageProvider][onResume]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->resetCacheDownloadRequest()V

    .line 173
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->clear()V

    .line 177
    :cond_0
    return-void
.end method

.method public resetCacheDownloadRequest()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mImageCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 135
    return-void
.end method

.method public resetDefaultImage()V
    .locals 3

    .prologue
    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, imageDefault:Lcom/htc/album/TabPluginDLNA/ImageProvider$ImageDefault;
    const/4 v1, 0x0

    .local v1, nIndex:I
    :goto_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mListDefaultImage:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_2

    .line 235
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mListDefaultImage:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #imageDefault:Lcom/htc/album/TabPluginDLNA/ImageProvider$ImageDefault;
    check-cast v0, Lcom/htc/album/TabPluginDLNA/ImageProvider$ImageDefault;

    .restart local v0       #imageDefault:Lcom/htc/album/TabPluginDLNA/ImageProvider$ImageDefault;
    if-eqz v0, :cond_1

    .line 237
    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/ImageProvider$ImageDefault;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 238
    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/ImageProvider$ImageDefault;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 240
    :cond_0
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/htc/album/TabPluginDLNA/ImageProvider$ImageDefault;->mBitmap:Landroid/graphics/Bitmap;

    .line 233
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    :cond_2
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mListDefaultImage:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 244
    return-void
.end method

.method public resetDownloadingCache()V
    .locals 8

    .prologue
    .line 138
    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mImageCache:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 139
    .local v3, entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 140
    .local v5, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;>;"
    const/4 v2, 0x0

    .line 143
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;"
    const/4 v4, 0x0

    .line 144
    .local v4, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 146
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    .line 147
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-object v4, v0

    if-eqz v4, :cond_0

    .line 150
    const/4 v6, -0x2

    iget v7, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-ne v6, v7, :cond_0

    .line 153
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v1

    .line 163
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 165
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method public resetMemoryCache()V
    .locals 2

    .prologue
    .line 180
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ImageProvider][resetMemoryCache]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const/16 v0, 0x4f4d

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mUIScrollState:I

    .line 183
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->resetDefaultImage()V

    .line 184
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->release()V

    .line 185
    return-void
.end method

.method public setDataHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "hHandler"

    .prologue
    .line 678
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mHandlerData:Landroid/os/Handler;

    .line 679
    return-void
.end method

.method public setDefaultImageResource(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "nResid"

    .prologue
    .line 196
    new-instance v0, Lcom/htc/album/TabPluginDLNA/ImageProvider$ImageDefault;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/ImageProvider$ImageDefault;-><init>(Lcom/htc/album/TabPluginDLNA/ImageProvider;)V

    .line 197
    .local v0, imageDefault:Lcom/htc/album/TabPluginDLNA/ImageProvider$ImageDefault;
    iput p2, v0, Lcom/htc/album/TabPluginDLNA/ImageProvider$ImageDefault;->mResID:I

    .line 198
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/album/TabPluginDLNA/ImageProvider$ImageDefault;->mBitmap:Landroid/graphics/Bitmap;

    .line 200
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mListDefaultImage:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    return-void
.end method

.method public setMaxDownloadBuffer(I)V
    .locals 0
    .parameter "nBuffer"

    .prologue
    .line 188
    iput p1, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mMaxDownloadBuffer:I

    .line 189
    return-void
.end method

.method public setPhotoDownload(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .parameter "nIndex"
    .parameter "szServerID"
    .parameter "szMediumID"
    .parameter "uri"
    .parameter "nIntegrity"

    .prologue
    const/4 v4, 0x1

    .line 492
    const/4 v0, 0x0

    .line 493
    .local v0, bResult:Z
    const/4 v2, 0x0

    .line 495
    .local v2, szKey:Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 496
    move-object v2, p2

    .line 502
    :goto_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mImageCache:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .line 503
    .local v1, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-nez v1, :cond_2

    .line 523
    .end local v1           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_0
    :goto_1
    return v0

    .line 497
    :cond_1
    if-eqz p3, :cond_0

    .line 498
    move-object v2, p3

    goto :goto_0

    .line 506
    .restart local v1       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_2
    if-nez p5, :cond_3

    if-eqz p4, :cond_3

    .line 508
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    .line 509
    const/4 v3, 0x0

    iput v3, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    goto :goto_1

    .line 512
    :cond_3
    if-ne v4, p5, :cond_4

    if-eqz p4, :cond_4

    .line 514
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    .line 515
    iput v4, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    goto :goto_1

    .line 519
    :cond_4
    const/4 v3, -0x3

    iput v3, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    goto :goto_1
.end method

.method public setScrollState(I)V
    .locals 0
    .parameter "nScrollState"

    .prologue
    .line 103
    iput p1, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mUIScrollState:I

    .line 105
    return-void
.end method

.method public setVisibleRange(II)V
    .locals 1
    .parameter "nBegin"
    .parameter "nEnd"

    .prologue
    .line 204
    if-gez p1, :cond_0

    .line 205
    const/4 p1, 0x0

    .line 207
    :cond_0
    if-le p1, p2, :cond_1

    .line 208
    move p2, p1

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->setVisibleRange(II)V

    .line 213
    :cond_2
    return-void
.end method
