.class public Lcom/htc/opensense2/album/util/ImageManager;
.super Ljava/lang/Object;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense2/album/util/ImageManager$NonCursorImageList;,
        Lcom/htc/opensense2/album/util/ImageManager$VideoObject;,
        Lcom/htc/opensense2/album/util/ImageManager$VideoList;,
        Lcom/htc/opensense2/album/util/ImageManager$ThreadSafeOutputStream;,
        Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;,
        Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;,
        Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;,
        Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;,
        Lcom/htc/opensense2/album/util/ImageManager$PartialLoadFakeImage;,
        Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;,
        Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;,
        Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;,
        Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;,
        Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;,
        Lcom/htc/opensense2/album/util/ImageManager$DrmImage;,
        Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;,
        Lcom/htc/opensense2/album/util/ImageManager$ImageList;,
        Lcom/htc/opensense2/album/util/ImageManager$Image;,
        Lcom/htc/opensense2/album/util/ImageManager$IImageList;,
        Lcom/htc/opensense2/album/util/ImageManager$IImage;,
        Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;,
        Lcom/htc/opensense2/album/util/ImageManager$IGetBitmap_cancelable;,
        Lcom/htc/opensense2/album/util/ImageManager$ICancelable;,
        Lcom/htc/opensense2/album/util/ImageManager$IAddImage_cancelable;,
        Lcom/htc/opensense2/album/util/ImageManager$DataLocation;,
        Lcom/htc/opensense2/album/util/ImageManager$CanceledException;,
        Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;,
        Lcom/htc/opensense2/album/util/ImageManager$BaseImage;,
        Lcom/htc/opensense2/album/util/ImageManager$BaseCancelable;
    }
.end annotation


# static fields
.field public static final ALL_DRM_IMAGES:I = 0xe

.field public static final ALL_DRM_VIDEOS:I = 0xe0

.field private static final BATCH_SIZE:I = 0x1

.field private static final DRM_IMAGE_PROJECTION:[Ljava/lang/String; = null

.field private static final DRM_VIDEO_PROJECTION:[Ljava/lang/String; = null

.field private static final EMPTY:Ljava/lang/String; = ""

.field static final ERR_INCOMPLETE_IMAGE:I = 0x1b

.field static final ERR_OK:I = 0x0

.field static final ERR_RENDER_INCOMPLETE:I = -0x1

.field static final ERR_UNSUPPORT_TYPE:I = 0x14

.field public static final EXCLUDE_WMDRM_VIDEOS:I = 0x100

.field private static final IMAGE_PROJECTION:[Ljava/lang/String; = null

.field public static final INCLUDE_CAR_MODE:I = -0x1

.field public static final INCLUDE_DRM_CD_IMAGES:I = 0x4

.field public static final INCLUDE_DRM_CD_VIDEOS:I = 0x40

.field public static final INCLUDE_DRM_FL_IMAGES:I = 0x2

.field public static final INCLUDE_DRM_FL_VIDEOS:I = 0x20

.field public static final INCLUDE_DRM_SD_IMAGES:I = 0x8

.field public static final INCLUDE_DRM_SD_VIDEOS:I = 0x80

.field public static final INCLUDE_IMAGES:I = 0x1

.field public static final INCLUDE_VIDEOS:I = 0x10

.field private static final JVM_LIMITED_BMP_SIZE:I = 0x1f4

.field private static final LOG_TAG:Ljava/lang/String; = "ImageManager"

.field private static final MINI_THUMB_DATA_FILE_VERSION:I = 0x3

#the value of this static final field might be set in the static constructor
.field private static final MINI_THUMB_TARGET_SIZE:I = 0x0

.field public static final SORT_ASCENDING:I = 0x1

.field public static final SORT_DESCENDING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ImageManager"

.field private static final THUMBNAIL_TARGET_SIZE:I = 0x140

.field private static final THUMB_PROJECTION:[Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field private static final VERBOSE:Z = false

.field private static final sAcceptableImageTypes:[Ljava/lang/String; = null

.field private static final sBytesPerMiniThumb:I = 0x2710

.field public static final sFavoriteQueryStatement:Ljava/lang/String; = "favorite & 1"

.field private static sInstance:Lcom/htc/opensense2/album/util/ImageManager;

.field private static final sMiniThumbData:[B


# instance fields
.field private CANCEL_DELETE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 97
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    sput-boolean v0, Lcom/htc/opensense2/album/util/ImageManager;->VERBOSE:Z

    .line 224
    const/16 v0, 0x2710

    new-array v0, v0, [B

    sput-object v0, Lcom/htc/opensense2/album/util/ImageManager;->sMiniThumbData:[B

    .line 3320
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/htc/opensense2/album/util/ImageManager;->sAcceptableImageTypes:[Ljava/lang/String;

    .line 3322
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "date_added"

    aput-object v1, v0, v5

    const-string v1, "date_modified"

    aput-object v1, v0, v6

    const-string v1, "datetaken"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "orientation"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "favorite"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "longitude"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/opensense2/album/util/ImageManager;->IMAGE_PROJECTION:[Ljava/lang/String;

    .line 3338
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "_size"

    aput-object v1, v0, v5

    const-string v1, "_display_name"

    aput-object v1, v0, v6

    const-string v1, "mime_type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "delivery_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "existence"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "favorite"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/opensense2/album/util/ImageManager;->DRM_IMAGE_PROJECTION:[Ljava/lang/String;

    .line 3351
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "_size"

    aput-object v1, v0, v5

    const-string v1, "_display_name"

    aput-object v1, v0, v6

    const-string v1, "mime_type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "delivery_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "existence"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "content_offset"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "content_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "content_boundary_offset"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "favorite"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/opensense2/album/util/ImageManager;->DRM_VIDEO_PROJECTION:[Ljava/lang/String;

    .line 10001
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/opensense2/album/util/ImageManager;->sInstance:Lcom/htc/opensense2/album/util/ImageManager;

    .line 10002
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    sput v0, Lcom/htc/opensense2/album/util/ImageManager;->MINI_THUMB_TARGET_SIZE:I

    .line 10011
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "image_id"

    aput-object v1, v0, v4

    const-string v1, "width"

    aput-object v1, v0, v5

    const-string v1, "height"

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/opensense2/album/util/ImageManager;->THUMB_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 83
    sget-boolean v0, Lcom/htc/opensense2/album/util/ImageManager;->VERBOSE:Z

    return v0
.end method

.method static synthetic access$100()[B
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/htc/opensense2/album/util/ImageManager;->sMiniThumbData:[B

    return-object v0
.end method

.method static synthetic access$1000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/htc/opensense2/album/util/ImageManager;->DRM_VIDEO_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/opensense2/album/util/ImageManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/htc/opensense2/album/util/ImageManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z

    return p1
.end method

.method static synthetic access$2500(ZLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-static {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager;->getWhereClause(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/htc/opensense2/album/util/ImageManager;->THUMB_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 83
    sget v0, Lcom/htc/opensense2/album/util/ImageManager;->MINI_THUMB_TARGET_SIZE:I

    return v0
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/htc/opensense2/album/util/ImageManager;->IMAGE_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600([Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-static {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(ZZLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-static {p0, p1, p2}, Lcom/htc/opensense2/album/util/ImageManager;->getWhereClause(ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/htc/opensense2/album/util/ImageManager;->sAcceptableImageTypes:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/htc/opensense2/album/util/ImageManager;->DRM_IMAGE_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method private allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IILjava/lang/String;Landroid/net/Uri;ZZLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 39
    .parameter "ctx"
    .parameter "cr"
    .parameter "location"
    .parameter "inclusion"
    .parameter "sort"
    .parameter "bucketId"
    .parameter "specificImageUri"
    .parameter "filterAlbumArt"
    .parameter "isFavorite"
    .parameter "where"
    .parameter "typeFilter"
    .parameter "partialLoadBundle"

    .prologue
    .line 10771
    sget-boolean v5, Lcom/htc/opensense2/album/util/ImageManager;->VERBOSE:Z

    if-eqz v5, :cond_0

    .line 10772
    const-string v6, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "allImages "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " + v="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    and-int/lit8 v5, p4, 0x10

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 10775
    :cond_0
    if-nez p2, :cond_4

    .line 10776
    const/16 v36, 0x0

    .line 11044
    :cond_1
    :goto_2
    return-object v36

    .line 10772
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 10780
    :cond_4
    sput p5, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SORT:I

    .line 10781
    move/from16 v0, p4

    and-int/lit16 v5, v0, 0x100

    if-eqz v5, :cond_5

    .line 10783
    move-object/from16 v0, p0

    move-object/from16 v1, p10

    invoke-direct {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager;->rejectWMDRM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p10

    .line 10786
    :cond_5
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isQueryExternalDB(Z)Z

    move-result v34

    .line 10787
    .local v34, haveSdCard:Z
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isSupportPhoneStorageUri()Z

    move-result v33

    .line 10789
    .local v33, havePhoneStorage:Z
    const/16 v18, 0x0

    .line 10793
    .local v18, partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    .line 10795
    .local v38, l:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImageList;>;"
    sget-boolean v5, Lcom/htc/opensense2/album/util/ImageManager;->VERBOSE:Z

    if-eqz v5, :cond_6

    .line 10796
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initializing ... haveSdCard == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; inclusion is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%x"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 10798
    :cond_6
    if-eqz p7, :cond_b

    .line 10800
    :try_start_0
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    const/16 v37, 0x1

    .line 10801
    .local v37, isPhoneStorage:Z
    :goto_3
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "content"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 10803
    new-instance v4, Lcom/htc/opensense2/album/util/ImageManager$ImageList;

    if-eqz v37, :cond_9

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhonePhotosUri()Landroid/net/Uri;

    move-result-object v9

    :goto_4
    const/4 v12, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p7

    move/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v13, p10

    move/from16 v14, p9

    move-object/from16 v15, p11

    invoke-direct/range {v4 .. v15}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    move-object/from16 v4, v18

    .line 11038
    .end local v18           #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    .end local v37           #isPhoneStorage:Z
    .local v4, partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    :cond_7
    :goto_6
    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v35

    check-cast v35, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 11039
    .local v35, imageList:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    new-instance v36, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v35

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;-><init>(Lcom/htc/opensense2/album/util/ImageManager;[Lcom/htc/opensense2/album/util/ImageManager$IImageList;I)V

    .line 11040
    .local v36, imageListUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    if-eqz v4, :cond_1

    .line 11041
    const/4 v5, 0x1

    move-object/from16 v0, v36

    iput-boolean v5, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mIsPartialLoading:Z

    .line 11042
    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->setPartialLoadListener(Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;)V

    goto/16 :goto_2

    .line 10800
    .end local v4           #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    .end local v35           #imageList:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .end local v36           #imageListUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    .restart local v18       #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    :cond_8
    const/16 v37, 0x0

    goto :goto_3

    .line 10803
    .restart local v37       #isPhoneStorage:Z
    :cond_9
    :try_start_1
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v9

    goto :goto_4

    .line 10810
    :cond_a
    new-instance v5, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p7

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 10812
    .end local v37           #isPhoneStorage:Z
    :catch_0
    move-exception v32

    .line 10813
    .local v32, ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual/range {v32 .. v32}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    move-object/from16 v4, v18

    .line 10814
    .end local v18           #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    .restart local v4       #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    goto :goto_6

    .line 10817
    .end local v4           #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    .end local v32           #ex:Ljava/lang/UnsupportedOperationException;
    .restart local v18       #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    :cond_b
    if-eqz v34, :cond_f

    sget-object v5, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->EXTERNAL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    move-object/from16 v0, p3

    if-ne v0, v5, :cond_f

    .line 10818
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_1e

    .line 10820
    const/16 v17, 0x0

    .line 10821
    .local v17, imageCount:I
    if-eqz p12, :cond_c

    .line 10822
    :try_start_2
    const-string v5, "key_count_image"

    const/4 v6, 0x0

    move-object/from16 v0, p12

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 10825
    :cond_c
    const/16 v5, 0x65

    move/from16 v0, v17

    if-le v0, v5, :cond_1d

    .line 10826
    new-instance v4, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v8

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosThumbsUri()Landroid/net/Uri;

    move-result-object v9

    const/16 v16, 0x32

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p8

    move-object/from16 v13, p10

    move/from16 v14, p9

    move-object/from16 v15, p11

    invoke-direct/range {v4 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;II)V
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 10830
    .end local v18           #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    .restart local v4       #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    :try_start_3
    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_14

    .line 10842
    .end local v17           #imageCount:I
    :goto_7
    and-int/lit8 v5, p4, 0xe

    if-eqz v5, :cond_d

    .line 10844
    :try_start_4
    new-instance v5, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;

    sget-object v9, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p4

    move-object/from16 v13, p10

    move/from16 v14, p9

    invoke-direct/range {v5 .. v14}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;ILjava/lang/String;Z)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_3

    .line 10851
    :cond_d
    :goto_8
    and-int/lit8 v5, p4, 0x10

    if-eqz v5, :cond_e

    .line 10853
    :try_start_5
    new-instance v5, Lcom/htc/opensense2/album/util/ImageManager$VideoList;

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalVideosUri()Landroid/net/Uri;

    move-result-object v9

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p10

    move/from16 v13, p9

    move-object/from16 v14, p11

    invoke-direct/range {v5 .. v14}, Lcom/htc/opensense2/album/util/ImageManager$VideoList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_5} :catch_4

    .line 10860
    :cond_e
    :goto_9
    move/from16 v0, p4

    and-int/lit16 v5, v0, 0xe0

    if-eqz v5, :cond_1f

    .line 10862
    :try_start_6
    new-instance v5, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;

    sget-object v9, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p4

    move-object/from16 v13, p10

    move/from16 v14, p9

    invoke-direct/range {v5 .. v14}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;ILjava/lang/String;Z)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_6} :catch_5

    move-object/from16 v18, v4

    .line 10871
    .end local v4           #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    .restart local v18       #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    :cond_f
    :goto_a
    if-eqz v33, :cond_27

    sget-object v5, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->PHONE:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    move-object/from16 v0, p3

    if-ne v0, v5, :cond_27

    .line 10873
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_21

    .line 10875
    const/16 v17, 0x0

    .line 10876
    .restart local v17       #imageCount:I
    if-eqz p12, :cond_10

    .line 10877
    :try_start_7
    const-string v5, "key_count_image"

    const/4 v6, 0x0

    move-object/from16 v0, p12

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 10880
    :cond_10
    const/16 v5, 0x65

    move/from16 v0, v17

    if-le v0, v5, :cond_20

    .line 10881
    new-instance v4, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhonePhotosUri()Landroid/net/Uri;

    move-result-object v8

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhonePhotosThumbsUri()Landroid/net/Uri;

    move-result-object v9

    const/16 v16, 0x32

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p8

    move-object/from16 v13, p10

    move/from16 v14, p9

    move-object/from16 v15, p11

    invoke-direct/range {v4 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;II)V
    :try_end_7
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7 .. :try_end_7} :catch_6

    .line 10885
    .end local v18           #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    .restart local v4       #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    :try_start_8
    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_8 .. :try_end_8} :catch_13

    .line 10897
    .end local v17           #imageCount:I
    :goto_b
    and-int/lit8 v5, p4, 0x10

    if-eqz v5, :cond_11

    .line 10899
    :try_start_9
    new-instance v5, Lcom/htc/opensense2/album/util/ImageManager$VideoList;

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneVideosUri()Landroid/net/Uri;

    move-result-object v9

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p10

    move/from16 v13, p9

    move-object/from16 v14, p11

    invoke-direct/range {v5 .. v14}, Lcom/htc/opensense2/album/util/ImageManager$VideoList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_9 .. :try_end_9} :catch_7

    .line 10907
    :cond_11
    :goto_c
    sget-object v5, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->INTERNAL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    move-object/from16 v0, p3

    if-ne v0, v5, :cond_15

    .line 10908
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_13

    .line 10910
    const/16 v17, 0x0

    .line 10911
    .restart local v17       #imageCount:I
    if-eqz p12, :cond_12

    .line 10912
    :try_start_a
    const-string v5, "key_count_image"

    const/4 v6, 0x0

    move-object/from16 v0, p12

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 10915
    :cond_12
    const/16 v5, 0x65

    move/from16 v0, v17

    if-le v0, v5, :cond_22

    .line 10916
    new-instance v18, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getInternalPhotosUri()Landroid/net/Uri;

    move-result-object v22

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getInternalPhotosThumbsUri()Landroid/net/Uri;

    move-result-object v23

    const/16 v30, 0x32

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v21, p2

    move/from16 v24, p5

    move-object/from16 v25, p6

    move/from16 v26, p8

    move-object/from16 v27, p10

    move/from16 v28, p9

    move-object/from16 v29, p11

    move/from16 v31, v17

    invoke-direct/range {v18 .. v31}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;II)V
    :try_end_a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_a .. :try_end_a} :catch_8

    .line 10920
    .end local v4           #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    .restart local v18       #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    :try_start_b
    move-object/from16 v0, v38

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_b .. :try_end_b} :catch_12

    move-object/from16 v4, v18

    .line 10932
    .end local v17           #imageCount:I
    .end local v18           #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    .restart local v4       #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    :cond_13
    :goto_d
    and-int/lit8 v5, p4, 0xe

    if-eqz v5, :cond_14

    .line 10934
    :try_start_c
    new-instance v5, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;

    sget-object v9, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p4

    move-object/from16 v13, p10

    move/from16 v14, p9

    invoke-direct/range {v5 .. v14}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;ILjava/lang/String;Z)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_c .. :try_end_c} :catch_9

    .line 10941
    :cond_14
    :goto_e
    and-int/lit8 v5, p4, 0x10

    if-eqz v5, :cond_15

    .line 10943
    :try_start_d
    new-instance v5, Lcom/htc/opensense2/album/util/ImageManager$VideoList;

    sget-object v9, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p10

    move/from16 v13, p9

    move-object/from16 v14, p11

    invoke-direct/range {v5 .. v14}, Lcom/htc/opensense2/album/util/ImageManager$VideoList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_d .. :try_end_d} :catch_a

    .line 10951
    :cond_15
    :goto_f
    sget-object v5, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    move-object/from16 v0, p3

    if-ne v0, v5, :cond_7

    .line 10953
    if-eqz v34, :cond_24

    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_24

    .line 10955
    const/16 v17, 0x0

    .line 10956
    .restart local v17       #imageCount:I
    if-eqz p12, :cond_16

    .line 10957
    :try_start_e
    const-string v5, "key_count_image"

    const/4 v6, 0x0

    move-object/from16 v0, p12

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 10960
    :cond_16
    const/16 v5, 0x65

    move/from16 v0, v17

    if-le v0, v5, :cond_23

    .line 10961
    new-instance v18, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v22

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosThumbsUri()Landroid/net/Uri;

    move-result-object v23

    const/16 v30, 0x32

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v21, p2

    move/from16 v24, p5

    move-object/from16 v25, p6

    move/from16 v26, p8

    move-object/from16 v27, p10

    move/from16 v28, p9

    move-object/from16 v29, p11

    move/from16 v31, v17

    invoke-direct/range {v18 .. v31}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;II)V
    :try_end_e
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_e .. :try_end_e} :catch_b

    .line 10964
    .end local v4           #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    .restart local v18       #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    :try_start_f
    move-object/from16 v0, v38

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_f .. :try_end_f} :catch_11

    move-object/from16 v4, v18

    .end local v18           #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    .restart local v4       #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    :goto_10
    move-object/from16 v18, v4

    .line 10975
    .end local v4           #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    .end local v17           #imageCount:I
    .restart local v18       #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    :goto_11
    if-nez v33, :cond_17

    if-eqz v34, :cond_18

    :cond_17
    and-int/lit8 v5, p4, 0xe

    if-eqz v5, :cond_18

    .line 10977
    :try_start_10
    new-instance v5, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;

    sget-object v9, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p4

    move-object/from16 v13, p10

    move/from16 v14, p9

    invoke-direct/range {v5 .. v14}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;ILjava/lang/String;Z)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_10 .. :try_end_10} :catch_c

    .line 10984
    :cond_18
    :goto_12
    if-eqz v33, :cond_26

    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_26

    .line 10986
    const/16 v17, 0x0

    .line 10987
    .restart local v17       #imageCount:I
    if-eqz p12, :cond_19

    .line 10988
    :try_start_11
    const-string v5, "key_count_image"

    const/4 v6, 0x0

    move-object/from16 v0, p12

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 10991
    :cond_19
    const/16 v5, 0x65

    move/from16 v0, v17

    if-le v0, v5, :cond_25

    .line 10992
    new-instance v4, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhonePhotosUri()Landroid/net/Uri;

    move-result-object v8

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhonePhotosThumbsUri()Landroid/net/Uri;

    move-result-object v9

    const/16 v16, 0x32

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p8

    move-object/from16 v13, p10

    move/from16 v14, p9

    move-object/from16 v15, p11

    invoke-direct/range {v4 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;II)V
    :try_end_11
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_11 .. :try_end_11} :catch_d

    .line 10996
    .end local v18           #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    .restart local v4       #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    :try_start_12
    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_12 .. :try_end_12} :catch_10

    .line 11007
    .end local v17           #imageCount:I
    :goto_13
    if-eqz v33, :cond_1a

    and-int/lit8 v5, p4, 0x10

    if-eqz v5, :cond_1a

    .line 11009
    :try_start_13
    new-instance v5, Lcom/htc/opensense2/album/util/ImageManager$VideoList;

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneVideosUri()Landroid/net/Uri;

    move-result-object v9

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p10

    move/from16 v13, p9

    move-object/from16 v14, p11

    invoke-direct/range {v5 .. v14}, Lcom/htc/opensense2/album/util/ImageManager$VideoList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_13 .. :try_end_13} :catch_e

    .line 11016
    :cond_1a
    :goto_14
    if-eqz v34, :cond_1b

    and-int/lit8 v5, p4, 0x10

    if-eqz v5, :cond_1b

    .line 11018
    :try_start_14
    new-instance v5, Lcom/htc/opensense2/album/util/ImageManager$VideoList;

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalVideosUri()Landroid/net/Uri;

    move-result-object v9

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p10

    move/from16 v13, p9

    move-object/from16 v14, p11

    invoke-direct/range {v5 .. v14}, Lcom/htc/opensense2/album/util/ImageManager$VideoList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_14 .. :try_end_14} :catch_f

    .line 11025
    :cond_1b
    :goto_15
    if-nez v33, :cond_1c

    if-eqz v34, :cond_7

    :cond_1c
    move/from16 v0, p4

    and-int/lit16 v5, v0, 0xe0

    if-eqz v5, :cond_7

    .line 11027
    :try_start_15
    new-instance v5, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;

    sget-object v9, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p4

    move-object/from16 v13, p10

    move/from16 v14, p9

    invoke-direct/range {v5 .. v14}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;ILjava/lang/String;Z)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_15 .. :try_end_15} :catch_1

    goto/16 :goto_6

    .line 11030
    :catch_1
    move-exception v32

    .line 11031
    .restart local v32       #ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual/range {v32 .. v32}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/16 :goto_6

    .line 10833
    .end local v4           #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    .end local v32           #ex:Ljava/lang/UnsupportedOperationException;
    .restart local v17       #imageCount:I
    .restart local v18       #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    :cond_1d
    :try_start_16
    new-instance v5, Lcom/htc/opensense2/album/util/ImageManager$ImageList;

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v9

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosThumbsUri()Landroid/net/Uri;

    move-result-object v10

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v11, p5

    move-object/from16 v12, p6

    move/from16 v13, p8

    move-object/from16 v14, p10

    move/from16 v15, p9

    move-object/from16 v16, p11

    invoke-direct/range {v5 .. v16}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_16 .. :try_end_16} :catch_2

    .end local v17           #imageCount:I
    :cond_1e
    move-object/from16 v4, v18

    .end local v18           #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    .restart local v4       #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    goto/16 :goto_7

    .line 10838
    .end local v4           #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    .restart local v17       #imageCount:I
    .restart local v18       #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    :catch_2
    move-exception v32

    move-object/from16 v4, v18

    .line 10839
    .end local v18           #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    .restart local v4       #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    .restart local v32       #ex:Ljava/lang/UnsupportedOperationException;
    :goto_16
    invoke-virtual/range {v32 .. v32}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/16 :goto_7

    .line 10847
    .end local v17           #imageCount:I
    .end local v32           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_3
    move-exception v32

    .line 10848
    .restart local v32       #ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual/range {v32 .. v32}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/16 :goto_8

    .line 10856
    .end local v32           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_4
    move-exception v32

    .line 10857
    .restart local v32       #ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual/range {v32 .. v32}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/16 :goto_9

    .line 10865
    .end local v32           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_5
    move-exception v32

    .line 10866
    .restart local v32       #ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual/range {v32 .. v32}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    .end local v32           #ex:Ljava/lang/UnsupportedOperationException;
    :cond_1f
    move-object/from16 v18, v4

    .end local v4           #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    .restart local v18       #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    goto/16 :goto_a

    .line 10888
    .restart local v17       #imageCount:I
    :cond_20
    :try_start_17
    new-instance v5, Lcom/htc/opensense2/album/util/ImageManager$ImageList;

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhonePhotosUri()Landroid/net/Uri;

    move-result-object v9

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhonePhotosThumbsUri()Landroid/net/Uri;

    move-result-object v10

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v11, p5

    move-object/from16 v12, p6

    move/from16 v13, p8

    move-object/from16 v14, p10

    move/from16 v15, p9

    move-object/from16 v16, p11

    invoke-direct/range {v5 .. v16}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_17
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_17 .. :try_end_17} :catch_6

    .end local v17           #imageCount:I
    :cond_21
    move-object/from16 v4, v18

    .end local v18           #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    .restart local v4       #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    goto/16 :goto_b

    .line 10893
    .end local v4           #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    .restart local v17       #imageCount:I
    .restart local v18       #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    :catch_6
    move-exception v32

    move-object/from16 v4, v18

    .line 10894
    .end local v18           #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    .restart local v4       #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    .restart local v32       #ex:Ljava/lang/UnsupportedOperationException;
    :goto_17
    invoke-virtual/range {v32 .. v32}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/16 :goto_b

    .line 10902
    .end local v17           #imageCount:I
    .end local v32           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_7
    move-exception v32

    .line 10903
    .restart local v32       #ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual/range {v32 .. v32}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/16 :goto_c

    .line 10923
    .end local v32           #ex:Ljava/lang/UnsupportedOperationException;
    .restart local v17       #imageCount:I
    :cond_22
    :try_start_18
    new-instance v5, Lcom/htc/opensense2/album/util/ImageManager$ImageList;

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getInternalPhotosUri()Landroid/net/Uri;

    move-result-object v9

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getInternalPhotosThumbsUri()Landroid/net/Uri;

    move-result-object v10

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v11, p5

    move-object/from16 v12, p6

    move/from16 v13, p8

    move-object/from16 v14, p10

    move/from16 v15, p9

    move-object/from16 v16, p11

    invoke-direct/range {v5 .. v16}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_18 .. :try_end_18} :catch_8

    goto/16 :goto_d

    .line 10928
    :catch_8
    move-exception v32

    .line 10929
    .restart local v32       #ex:Ljava/lang/UnsupportedOperationException;
    :goto_18
    invoke-virtual/range {v32 .. v32}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/16 :goto_d

    .line 10937
    .end local v17           #imageCount:I
    .end local v32           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_9
    move-exception v32

    .line 10938
    .restart local v32       #ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual/range {v32 .. v32}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/16 :goto_e

    .line 10946
    .end local v32           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_a
    move-exception v32

    .line 10947
    .restart local v32       #ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual/range {v32 .. v32}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/16 :goto_f

    .line 10967
    .end local v32           #ex:Ljava/lang/UnsupportedOperationException;
    .restart local v17       #imageCount:I
    :cond_23
    :try_start_19
    new-instance v5, Lcom/htc/opensense2/album/util/ImageManager$ImageList;

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v9

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosThumbsUri()Landroid/net/Uri;

    move-result-object v10

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v11, p5

    move-object/from16 v12, p6

    move/from16 v13, p8

    move-object/from16 v14, p10

    move/from16 v15, p9

    move-object/from16 v16, p11

    invoke-direct/range {v5 .. v16}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_19 .. :try_end_19} :catch_b

    goto/16 :goto_10

    .line 10971
    :catch_b
    move-exception v32

    .line 10972
    .restart local v32       #ex:Ljava/lang/UnsupportedOperationException;
    :goto_19
    invoke-virtual/range {v32 .. v32}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    .end local v17           #imageCount:I
    .end local v32           #ex:Ljava/lang/UnsupportedOperationException;
    :cond_24
    move-object/from16 v18, v4

    .end local v4           #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    .restart local v18       #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    goto/16 :goto_11

    .line 10980
    :catch_c
    move-exception v32

    .line 10981
    .restart local v32       #ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual/range {v32 .. v32}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/16 :goto_12

    .line 10999
    .end local v32           #ex:Ljava/lang/UnsupportedOperationException;
    .restart local v17       #imageCount:I
    :cond_25
    :try_start_1a
    new-instance v5, Lcom/htc/opensense2/album/util/ImageManager$ImageList;

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhonePhotosUri()Landroid/net/Uri;

    move-result-object v9

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhonePhotosThumbsUri()Landroid/net/Uri;

    move-result-object v10

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v11, p5

    move-object/from16 v12, p6

    move/from16 v13, p8

    move-object/from16 v14, p10

    move/from16 v15, p9

    move-object/from16 v16, p11

    invoke-direct/range {v5 .. v16}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1a .. :try_end_1a} :catch_d

    .end local v17           #imageCount:I
    :cond_26
    move-object/from16 v4, v18

    .end local v18           #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    .restart local v4       #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    goto/16 :goto_13

    .line 11003
    .end local v4           #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    .restart local v17       #imageCount:I
    .restart local v18       #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    :catch_d
    move-exception v32

    move-object/from16 v4, v18

    .line 11004
    .end local v18           #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    .restart local v4       #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    .restart local v32       #ex:Ljava/lang/UnsupportedOperationException;
    :goto_1a
    invoke-virtual/range {v32 .. v32}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/16 :goto_13

    .line 11012
    .end local v17           #imageCount:I
    .end local v32           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_e
    move-exception v32

    .line 11013
    .restart local v32       #ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual/range {v32 .. v32}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/16 :goto_14

    .line 11021
    .end local v32           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_f
    move-exception v32

    .line 11022
    .restart local v32       #ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual/range {v32 .. v32}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/16 :goto_15

    .line 11003
    .end local v32           #ex:Ljava/lang/UnsupportedOperationException;
    .restart local v17       #imageCount:I
    :catch_10
    move-exception v32

    goto :goto_1a

    .line 10971
    .end local v4           #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    .restart local v18       #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    :catch_11
    move-exception v32

    move-object/from16 v4, v18

    .end local v18           #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    .restart local v4       #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    goto :goto_19

    .line 10928
    .end local v4           #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    .restart local v18       #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    :catch_12
    move-exception v32

    move-object/from16 v4, v18

    .end local v18           #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    .restart local v4       #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    goto/16 :goto_18

    .line 10893
    :catch_13
    move-exception v32

    goto/16 :goto_17

    .line 10838
    :catch_14
    move-exception v32

    goto/16 :goto_16

    .end local v4           #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    .end local v17           #imageCount:I
    .restart local v18       #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    :cond_27
    move-object/from16 v4, v18

    .end local v18           #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    .restart local v4       #partialImageList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
    goto/16 :goto_c
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I
    .locals 8
    .parameter "options"
    .parameter "target"

    .prologue
    const/4 v5, 0x1

    .line 114
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 115
    .local v4, w:I
    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 117
    .local v3, h:I
    div-int v2, v4, p1

    .line 118
    .local v2, candidateW:I
    div-int v1, v3, p1

    .line 119
    .local v1, candidateH:I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 121
    .local v0, candidate:I
    if-nez v0, :cond_0

    .line 137
    :goto_0
    return v5

    .line 124
    :cond_0
    if-le v0, v5, :cond_1

    .line 125
    if-le v4, p1, :cond_1

    div-int v6, v4, v0

    if-ge v6, p1, :cond_1

    .line 126
    add-int/lit8 v0, v0, -0x1

    .line 129
    :cond_1
    if-le v0, v5, :cond_2

    .line 130
    if-le v3, p1, :cond_2

    div-int v5, v3, v0

    if-ge v5, p1, :cond_2

    .line 131
    add-int/lit8 v0, v0, -0x1

    .line 134
    :cond_2
    sget-boolean v5, Lcom/htc/opensense2/album/util/ImageManager;->VERBOSE:Z

    if-eqz v5, :cond_3

    .line 135
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "for w/h "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " returning "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    div-int v7, v4, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    div-int v7, v3, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move v5, v0

    .line 137
    goto :goto_0
.end method

.method static forceSync(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 4
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 10082
    move-object v0, p0

    .line 10083
    .local v0, finalcr:Landroid/content/ContentResolver;
    move-object v1, p1

    .line 10084
    .local v1, finaluri:Landroid/net/Uri;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/opensense2/album/util/ImageManager$1;

    invoke-direct {v3, v0, v1}, Lcom/htc/opensense2/album/util/ImageManager$1;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 10124
    return-void
.end method

.method public static getDefaultDataLocation()Lcom/htc/opensense2/album/util/ImageManager$DataLocation;
    .locals 1

    .prologue
    .line 10051
    sget-object v0, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->EXTERNAL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    return-object v0
.end method

.method public static getValidDateTime(Lcom/htc/opensense2/album/util/ImageManager$IImage;)J
    .locals 10
    .parameter "iimage"

    .prologue
    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x0

    .line 141
    const-wide/16 v0, 0x0

    .line 142
    .local v0, lDateTime:J
    if-nez p0, :cond_0

    move-wide v2, v0

    .line 155
    .end local v0           #lDateTime:J
    .local v2, lDateTime:J
    :goto_0
    return-wide v2

    .line 145
    .end local v2           #lDateTime:J
    .restart local v0       #lDateTime:J
    :cond_0
    invoke-interface {p0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSortBase()J

    move-result-wide v0

    .line 146
    cmp-long v4, v6, v0

    if-nez v4, :cond_1

    .line 148
    invoke-interface {p0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateModified()J

    move-result-wide v4

    mul-long v0, v4, v8

    .line 149
    cmp-long v4, v6, v0

    if-nez v4, :cond_1

    .line 151
    invoke-interface {p0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateAdded()J

    move-result-wide v4

    mul-long v0, v4, v8

    :cond_1
    move-wide v2, v0

    .line 155
    .end local v0           #lDateTime:J
    .restart local v2       #lDateTime:J
    goto :goto_0
.end method

.method private static final getWhereClause(ZLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "isImage"
    .parameter "typeFilter"

    .prologue
    .line 3313
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/htc/opensense2/album/util/ImageManager;->getWhereClause(ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final getWhereClause(ZZLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "isImage"
    .parameter "filterAlbumArt"
    .parameter "typeFilter"

    .prologue
    .line 3317
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0, p2}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->getSupportedMediaFormatWhereClause(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v0, 0x10

    goto :goto_0
.end method

.method private static indexOf([Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "array"
    .parameter "s"

    .prologue
    .line 10054
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 10055
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10059
    .end local v0           #i:I
    :goto_1
    return v0

    .line 10054
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10059
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static instance()Lcom/htc/opensense2/album/util/ImageManager;
    .locals 1

    .prologue
    .line 10067
    sget-object v0, Lcom/htc/opensense2/album/util/ImageManager;->sInstance:Lcom/htc/opensense2/album/util/ImageManager;

    if-nez v0, :cond_0

    .line 10068
    new-instance v0, Lcom/htc/opensense2/album/util/ImageManager;

    invoke-direct {v0}, Lcom/htc/opensense2/album/util/ImageManager;-><init>()V

    sput-object v0, Lcom/htc/opensense2/album/util/ImageManager;->sInstance:Lcom/htc/opensense2/album/util/ImageManager;

    .line 10075
    :cond_0
    sget-object v0, Lcom/htc/opensense2/album/util/ImageManager;->sInstance:Lcom/htc/opensense2/album/util/ImageManager;

    return-object v0
.end method

.method public static makeImageList(Landroid/net/Uri;Landroid/content/Context;IZZ)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 6
    .parameter "uri"
    .parameter "ctx"
    .parameter "sort"
    .parameter "viewSingleImage"
    .parameter "shareAndDelete"

    .prologue
    .line 10540
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/htc/opensense2/album/util/ImageManager;->makeImageList(Landroid/net/Uri;Landroid/content/Context;IZZZ)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method

.method public static makeImageList(Landroid/net/Uri;Landroid/content/Context;IZZZ)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 11
    .parameter "uri"
    .parameter "ctx"
    .parameter "sort"
    .parameter "viewSingleImage"
    .parameter "shareAndDelete"
    .parameter "filterAlbumArt"

    .prologue
    .line 10550
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 10551
    .local v3, cr:Landroid/content/ContentResolver;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    .line 10562
    .local v10, uriString:Ljava/lang/String;
    :goto_0
    if-eqz p3, :cond_2

    .line 10564
    if-nez p4, :cond_1

    .line 10567
    new-instance v0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1, v3, p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 10602
    .local v0, imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :goto_1
    return-object v0

    .line 10551
    .end local v0           #imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .end local v10           #uriString:Ljava/lang/String;
    :cond_0
    const-string v10, ""

    goto :goto_0

    .line 10569
    .restart local v10       #uriString:Ljava/lang/String;
    :cond_1
    new-instance v0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosThumbsUri()Landroid/net/Uri;

    move-result-object v5

    move-object v2, p1

    move v6, p2

    move-object v7, p0

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILandroid/net/Uri;Z)V

    .restart local v0       #imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    goto :goto_1

    .line 10575
    .end local v0           #imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_2
    const-string v1, "content://drm"

    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    .line 10576
    .local v9, queryDRM:Z
    const/4 v7, 0x0

    .line 10577
    .local v7, bucketId:Ljava/lang/String;
    if-eqz p0, :cond_3

    .line 10578
    const-string v1, "bucketId"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 10579
    :cond_3
    const/16 v5, 0xf

    .line 10580
    .local v5, inclusion:I
    if-nez v7, :cond_4

    .line 10581
    if-eqz v9, :cond_6

    .line 10582
    const/16 v5, 0xe

    .line 10587
    :cond_4
    :goto_2
    sget-boolean v1, Lcom/htc/opensense2/album/util/ImageManager;->VERBOSE:Z

    if-eqz v1, :cond_5

    const-string v1, "ImageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bucketId is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 10588
    :cond_5
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v1

    sget-object v4, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    move-object v2, p1

    move v6, p2

    move/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IILjava/lang/String;Z)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    .restart local v0       #imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    goto :goto_1

    .line 10584
    .end local v0           #imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_6
    const/4 v5, 0x1

    goto :goto_2
.end method

.method public static makeSingleImageListFromImageIds(Landroid/content/Context;[I)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 11
    .parameter "context"
    .parameter "imageIds"

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 10525
    const/4 v10, 0x0

    .line 10526
    .local v10, imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    invoke-static {p1}, Lcom/htc/opensense2/album/util/ImageManager;->whereClauseImageIds([I)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    move v5, v4

    move v6, v4

    move-object v9, v8

    invoke-virtual/range {v0 .. v9}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IIZLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v10

    .line 10537
    return-object v10
.end method

.method public static makeSingleImageListfromUri(Landroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 10
    .parameter "uri"
    .parameter "ctx"
    .parameter "cr"

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 10501
    const/4 v0, 0x0

    .line 10504
    .local v0, mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10507
    invoke-static {p0, p1, v5, v5, v8}, Lcom/htc/opensense2/album/util/ImageManager;->makeImageList(Landroid/net/Uri;Landroid/content/Context;IZZ)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    .line 10521
    :goto_0
    return-object v0

    .line 10509
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10512
    new-instance v0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;

    .end local v0           #mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v7, v6

    move-object v9, v6

    invoke-direct/range {v0 .. v9}, Lcom/htc/opensense2/album/util/ImageManager$VideoList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .restart local v0       #mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    goto :goto_0

    .line 10516
    :cond_1
    const-string v1, "ImageManager"

    const-string v2, "[HTCAlbum][makeSingleImageListfromUri]: uri is not images or video."

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10518
    new-instance v0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    .end local v0           #mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1, p2, p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .restart local v0       #mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    goto :goto_0
.end method

.method public static miniThumbData(Landroid/graphics/Bitmap;)[B
    .locals 9
    .parameter "source"

    .prologue
    const/4 v0, 0x0

    .line 10127
    if-nez p0, :cond_0

    .line 10155
    :goto_0
    return-object v0

    .line 10131
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 10132
    sget v6, Lcom/htc/opensense2/album/util/ImageManager;->MINI_THUMB_TARGET_SIZE:I

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v5, v6, v7

    .line 10136
    .local v5, scale:F
    :goto_1
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 10137
    .local v2, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v2, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 10138
    sget v6, Lcom/htc/opensense2/album/util/ImageManager;->MINI_THUMB_TARGET_SIZE:I

    sget v7, Lcom/htc/opensense2/album/util/ImageManager;->MINI_THUMB_TARGET_SIZE:I

    const/4 v8, 0x0

    invoke-static {v2, p0, v6, v7, v8}, Lcom/htc/opensense2/album/util/MediaUtils;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 10141
    .local v4, miniThumbnail:Landroid/graphics/Bitmap;
    if-eq v4, p0, :cond_1

    .line 10142
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 10144
    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 10145
    .local v3, miniOutStream:Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x4b

    invoke-virtual {v4, v6, v7, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 10146
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 10149
    :try_start_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 10150
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 10151
    .local v0, data:[B
    goto :goto_0

    .line 10134
    .end local v0           #data:[B
    .end local v2           #matrix:Landroid/graphics/Matrix;
    .end local v3           #miniOutStream:Ljava/io/ByteArrayOutputStream;
    .end local v4           #miniThumbnail:Landroid/graphics/Bitmap;
    .end local v5           #scale:F
    :cond_2
    sget v6, Lcom/htc/opensense2/album/util/ImageManager;->MINI_THUMB_TARGET_SIZE:I

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v5, v6, v7

    .restart local v5       #scale:F
    goto :goto_1

    .line 10152
    .restart local v2       #matrix:Landroid/graphics/Matrix;
    .restart local v3       #miniOutStream:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #miniThumbnail:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 10153
    .local v1, ex:Ljava/io/IOException;
    const-string v6, "ImageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "got exception ex "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private rejectWMDRM(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "where"

    .prologue
    .line 10756
    if-nez p1, :cond_0

    .line 10757
    const-string v0, "mime_type!=\'video/x-wmv-drm\'"

    .line 10759
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND mime_type!=\'video/x-wmv-drm\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "b"
    .parameter "degrees"

    .prologue
    const/4 v1, 0x0

    const/high16 v4, 0x4000

    .line 10159
    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    .line 10160
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 10161
    .local v5, m:Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v5, v0, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 10163
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 10165
    .local v7, b2:Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_0

    .line 10166
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 10167
    const/4 p0, 0x0

    .line 10169
    :cond_0
    move-object p0, v7

    .line 10171
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #b2:Landroid/graphics/Bitmap;
    :cond_1
    return-object p0
.end method

.method public static rotateIgnoreJavaHeap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "b"
    .parameter "degrees"

    .prologue
    .line 10178
    const-string v0, "ImgMgr"

    const-string v1, "Use default"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10179
    invoke-static {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static roundOrientation(I)I
    .locals 5
    .parameter "orientationInput"

    .prologue
    .line 10197
    move v0, p0

    .line 10198
    .local v0, orientation:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 10199
    const/4 v0, 0x0

    .line 10201
    :cond_0
    rem-int/lit16 v0, v0, 0x168

    .line 10203
    const/16 v2, 0x2d

    if-ge v0, v2, :cond_2

    .line 10204
    const/4 v1, 0x0

    .line 10215
    .local v1, retVal:I
    :goto_0
    sget-boolean v2, Lcom/htc/opensense2/album/util/ImageManager;->VERBOSE:Z

    if-eqz v2, :cond_1

    const-string v2, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "map orientation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 10216
    :cond_1
    return v1

    .line 10205
    .end local v1           #retVal:I
    :cond_2
    const/16 v2, 0x87

    if-ge v0, v2, :cond_3

    .line 10206
    const/16 v1, 0x5a

    .restart local v1       #retVal:I
    goto :goto_0

    .line 10207
    .end local v1           #retVal:I
    :cond_3
    const/16 v2, 0xe1

    if-ge v0, v2, :cond_4

    .line 10208
    const/16 v1, 0xb4

    .restart local v1       #retVal:I
    goto :goto_0

    .line 10209
    .end local v1           #retVal:I
    :cond_4
    const/16 v2, 0x13b

    if-ge v0, v2, :cond_5

    .line 10210
    const/16 v1, 0x10e

    .restart local v1       #retVal:I
    goto :goto_0

    .line 10212
    .end local v1           #retVal:I
    :cond_5
    const/4 v1, 0x0

    .restart local v1       #retVal:I
    goto :goto_0
.end method

.method private static whereClauseImageIds([I)Ljava/lang/String;
    .locals 5
    .parameter "imageIds"

    .prologue
    .line 11070
    const-string v2, "_id in ("

    .line 11071
    .local v2, szWhere:Ljava/lang/String;
    array-length v0, p0

    .line 11072
    .local v0, nIds:I
    const/4 v1, 0x0

    .local v1, nIndex:I
    :goto_0
    if-le v0, v1, :cond_1

    .line 11074
    add-int/lit8 v3, v0, -0x1

    if-ne v3, v1, :cond_0

    .line 11075
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 11072
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11077
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 11079
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 11081
    return-object v2
.end method


# virtual methods
.method public addImage(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JLandroid/location/Location;ILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 20
    .parameter "ctx"
    .parameter "cr"
    .parameter "imageName"
    .parameter "description"
    .parameter "dateTaken"
    .parameter "location"
    .parameter "orientation"
    .parameter "directory"
    .parameter "filename"

    .prologue
    .line 10229
    new-instance v19, Landroid/content/ContentValues;

    const/4 v2, 0x7

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 10230
    .local v19, values:Landroid/content/ContentValues;
    const-string v2, "title"

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10231
    const-string v2, "_display_name"

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10232
    const-string v2, "description"

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10233
    const-string v2, "datetaken"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 10234
    const-string v2, "mime_type"

    const-string v4, "image/jpeg"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10235
    const-string v2, "orientation"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10237
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p9

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10238
    .local v12, parentFile:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 10239
    .local v13, path:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 10241
    .local v11, name:Ljava/lang/String;
    const-string v2, "bucket_id"

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10242
    const-string v2, "bucket_display_name"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10244
    sget-boolean v2, Lcom/htc/opensense2/album/util/ImageManager;->VERBOSE:Z

    if-eqz v2, :cond_0

    const-string v2, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addImage id is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; path is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 10246
    :cond_0
    if-eqz p7, :cond_2

    .line 10247
    sget-boolean v2, Lcom/htc/opensense2/album/util/ImageManager;->VERBOSE:Z

    if-eqz v2, :cond_1

    .line 10248
    const-string v2, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lat long "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p7 .. p7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p7 .. p7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 10250
    :cond_1
    const-string v2, "latitude"

    invoke-virtual/range {p7 .. p7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 10251
    const-string v2, "longitude"

    invoke-virtual/range {p7 .. p7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 10254
    :cond_2
    if-eqz p9, :cond_3

    if-eqz p10, :cond_3

    .line 10255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p10

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 10256
    .local v18, value:Ljava/lang/String;
    const-string v2, "_data"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10259
    .end local v18           #value:Ljava/lang/String;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 10260
    .local v15, t3:J
    const/4 v3, 0x0

    .line 10262
    .local v3, uri:Landroid/net/Uri;
    invoke-static/range {p9 .. p9}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isFileOnPhoneStorage(Ljava/lang/String;)Z

    move-result v10

    .line 10264
    .local v10, isPhoneStorage:Z
    const/4 v2, 0x1

    if-ne v10, v2, :cond_6

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhonePhotosUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 10266
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhonePhotosUri()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 10279
    :goto_0
    if-eqz v3, :cond_5

    .line 10280
    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "_display_name"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "_data"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string v5, "title"

    aput-object v5, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 10286
    .local v8, c:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 10287
    const/4 v2, 0x2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 10288
    .local v9, filePath:Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 10289
    const-string v2, "/"

    invoke-virtual {v9, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    .line 10290
    .local v14, pos:I
    if-ltz v14, :cond_4

    .line 10291
    add-int/lit8 v2, v14, 0x1

    invoke-virtual {v9, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 10292
    const/4 v2, 0x0

    const-string v4, "."

    invoke-virtual {v9, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v9, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 10299
    .local v17, title:Ljava/lang/String;
    new-instance v19, Landroid/content/ContentValues;

    .end local v19           #values:Landroid/content/ContentValues;
    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 10300
    .restart local v19       #values:Landroid/content/ContentValues;
    const-string v2, "_display_name"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10301
    const-string v2, "title"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10302
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 10306
    .end local v9           #filePath:Ljava/lang/String;
    .end local v14           #pos:I
    .end local v17           #title:Ljava/lang/String;
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 10308
    .end local v8           #c:Landroid/database/Cursor;
    :cond_5
    return-object v3

    .line 10270
    :cond_6
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0
.end method

.method public allGeoImages(Landroid/content/Context;Landroid/content/ContentResolver;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 12
    .parameter "ctx"
    .parameter "cr"

    .prologue
    .line 10745
    new-instance v0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosThumbsUri()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v9, "( latitude is not null AND longitude is not null )"

    const/4 v10, 0x0

    const-string v11, "image/jpeg"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v11}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    return-object v0
.end method

.method public allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IILjava/lang/String;Landroid/net/Uri;ZZLjava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 13
    .parameter "ctx"
    .parameter "cr"
    .parameter "location"
    .parameter "inclusion"
    .parameter "sort"
    .parameter "bucketId"
    .parameter "specificImageUri"
    .parameter "filterAlbumArt"
    .parameter "isFavorite"
    .parameter "where"
    .parameter "typeFilter"

    .prologue
    .line 10765
    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v12}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IILjava/lang/String;Landroid/net/Uri;ZZLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method

.method public allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IILjava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 13
    .parameter "ctx"
    .parameter "cr"
    .parameter "location"
    .parameter "inclusion"
    .parameter "sort"
    .parameter "typeFilter"
    .parameter "partialLoadBundle"

    .prologue
    .line 10716
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    invoke-direct/range {v0 .. v12}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IILjava/lang/String;Landroid/net/Uri;ZZLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method

.method public allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 13
    .parameter "ctx"
    .parameter "cr"
    .parameter "location"
    .parameter "inclusion"
    .parameter "sort"
    .parameter "bucketId"
    .parameter "typeFilter"
    .parameter "partialLoadBundle"

    .prologue
    .line 10720
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    invoke-direct/range {v0 .. v12}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IILjava/lang/String;Landroid/net/Uri;ZZLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method

.method public allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IILjava/lang/String;Z)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 12
    .parameter "ctx"
    .parameter "cr"
    .parameter "location"
    .parameter "inclusion"
    .parameter "sort"
    .parameter "bucketId"
    .parameter "filterAlbumArt"

    .prologue
    .line 10724
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v11}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IILjava/lang/String;Landroid/net/Uri;ZZLjava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method

.method public allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IIZLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 14
    .parameter "ctx"
    .parameter "cr"
    .parameter "location"
    .parameter "inclusion"
    .parameter "sort"
    .parameter "filterAlbumArt"
    .parameter "where"
    .parameter "typeFilter"
    .parameter "partialLoadBundle"

    .prologue
    .line 10728
    const/4 v10, 0x0

    .line 10729
    .local v10, isFavorite:Z
    if-eqz p7, :cond_0

    .line 10730
    const-string v1, "favorite & 1"

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    .line 10732
    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v9, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    invoke-direct/range {v1 .. v13}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IILjava/lang/String;Landroid/net/Uri;ZZLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v1

    return-object v1
.end method

.method public allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IIZZLjava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 12
    .parameter "ctx"
    .parameter "cr"
    .parameter "location"
    .parameter "inclusion"
    .parameter "sort"
    .parameter "filterAlbumArt"
    .parameter "isFavorite"
    .parameter "typeFilter"

    .prologue
    .line 10736
    const/4 v10, 0x0

    .line 10737
    .local v10, where:Ljava/lang/String;
    if-eqz p7, :cond_0

    .line 10738
    const-string v10, "favorite & 1"

    .line 10740
    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v0 .. v11}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IILjava/lang/String;Landroid/net/Uri;ZZLjava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method

.method public burstImages(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 37
    .parameter "ctx"
    .parameter "sort"
    .parameter "bucketId"
    .parameter "dataBundle"

    .prologue
    .line 10650
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 10652
    .local v36, uberList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImageList;>;"
    const/16 v31, 0x1

    .line 10653
    .local v31, isCollectByFolder:Z
    const/16 v32, 0x0

    .line 10655
    .local v32, m:Ljava/util/regex/Matcher;
    if-eqz p4, :cond_0

    .line 10657
    const-string v5, "key_BurstShot_CoverFilePath"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 10658
    .local v34, path:Ljava/lang/String;
    invoke-static {}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->getContinuousShotCovertPattern()Ljava/util/regex/Pattern;

    move-result-object v33

    .line 10659
    .local v33, p:Ljava/util/regex/Pattern;
    if-eqz v34, :cond_0

    .line 10660
    invoke-virtual/range {v33 .. v34}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v32

    .line 10661
    const/4 v5, 0x1

    invoke-virtual/range {v32 .. v32}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-ne v5, v6, :cond_0

    .line 10662
    const/16 v31, 0x0

    .line 10667
    .end local v33           #p:Ljava/util/regex/Pattern;
    .end local v34           #path:Ljava/lang/String;
    :cond_0
    if-nez v31, :cond_2

    .line 10668
    const/4 v5, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v35

    .line 10669
    .local v35, serachPath:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "( _data < \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "A\' AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_data"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " > \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' )"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 10671
    .local v13, where:Ljava/lang/String;
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[burstImages] isCollectByFolder=false where="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10673
    new-instance v4, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v5, "external"

    invoke-static {v5}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosThumbsUri()Landroid/net/Uri;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v10, p2

    invoke-direct/range {v4 .. v15}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 10677
    .local v4, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10710
    .end local v4           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .end local v13           #where:Ljava/lang/String;
    .end local v35           #serachPath:Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v5, 0x1

    new-array v5, v5, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v29

    check-cast v29, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 10711
    .local v29, imageList:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    new-instance v30, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;-><init>(Lcom/htc/opensense2/album/util/ImageManager;[Lcom/htc/opensense2/album/util/ImageManager$IImageList;I)V

    .line 10712
    .local v30, imageListUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    return-object v30

    .line 10682
    .end local v29           #imageList:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .end local v30           #imageListUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    :cond_2
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[burstImages] isCollectByFolder=true bucketId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10684
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isQueryExternalDB(Z)Z

    move-result v28

    .line 10685
    .local v28, haveSdCard:Z
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isSupportPhoneStorageUri()Z

    move-result v27

    .line 10686
    .local v27, havePhoneStorage:Z
    const/4 v5, 0x1

    move/from16 v0, v28

    if-ne v0, v5, :cond_3

    .line 10688
    :try_start_0
    new-instance v4, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v18

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosThumbsUri()Landroid/net/Uri;

    move-result-object v19

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object v14, v4

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move/from16 v20, p2

    move-object/from16 v21, p3

    invoke-direct/range {v14 .. v25}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 10692
    .restart local v4       #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 10697
    .end local v4           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_3
    :goto_1
    const/4 v5, 0x1

    move/from16 v0, v27

    if-ne v0, v5, :cond_1

    .line 10699
    :try_start_1
    new-instance v4, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhonePhotosUri()Landroid/net/Uri;

    move-result-object v18

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhonePhotosThumbsUri()Landroid/net/Uri;

    move-result-object v19

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object v14, v4

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move/from16 v20, p2

    move-object/from16 v21, p3

    invoke-direct/range {v14 .. v25}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 10703
    .restart local v4       #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 10704
    .end local v4           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :catch_0
    move-exception v26

    .line 10705
    .local v26, ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/16 :goto_0

    .line 10693
    .end local v26           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_1
    move-exception v26

    .line 10694
    .restart local v26       #ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_1
.end method

.method public createNonCursorList(Ljava/util/ArrayList;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            ">;)",
            "Lcom/htc/opensense2/album/util/ImageManager$IImageList;"
        }
    .end annotation

    .prologue
    .line 11085
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    new-instance v0, Lcom/htc/opensense2/album/util/ImageManager$NonCursorImageList;

    invoke-direct {v0, p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$NonCursorImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public emptyImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 1

    .prologue
    .line 10606
    new-instance v0, Lcom/htc/opensense2/album/util/ImageManager$2;

    invoke-direct {v0, p0}, Lcom/htc/opensense2/album/util/ImageManager$2;-><init>(Lcom/htc/opensense2/album/util/ImageManager;)V

    return-object v0
.end method

.method public storeImage(Landroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;ILandroid/graphics/Bitmap;[BLjava/util/HashMap;Ljava/lang/String;J)Lcom/htc/opensense2/album/util/ImageManager$IAddImage_cancelable;
    .locals 12
    .parameter "uri"
    .parameter "ctx"
    .parameter "cr"
    .parameter "orientation"
    .parameter "source"
    .parameter "jpegData"
    .parameter
    .parameter "directory"
    .parameter "takenTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/content/Context;",
            "Landroid/content/ContentResolver;",
            "I",
            "Landroid/graphics/Bitmap;",
            "[B",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J)",
            "Lcom/htc/opensense2/album/util/ImageManager$IAddImage_cancelable;"
        }
    .end annotation

    .prologue
    .line 10496
    .local p7, exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;

    move-object v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object v4, p1

    move-object/from16 v5, p8

    move-object v6, p2

    move-object v7, p3

    move/from16 v8, p4

    move-wide/from16 v9, p9

    move-object/from16 v11, p7

    invoke-direct/range {v0 .. v11}, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/graphics/Bitmap;[BLandroid/net/Uri;Ljava/lang/String;Landroid/content/Context;Landroid/content/ContentResolver;IJLjava/util/HashMap;)V

    return-object v0
.end method
