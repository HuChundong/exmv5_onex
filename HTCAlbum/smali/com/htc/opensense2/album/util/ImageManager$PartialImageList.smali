.class Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/htc/opensense2/album/util/ImageManager$IImageList;
.implements Lcom/htc/sunnyCore/IMediaList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PartialImageList"
.end annotation


# static fields
.field private static final IDX_FIRST_LIST:I = 0x0

.field private static final IDX_LASTEST_LIST:I = 0x2

.field private static final IDX_MIDDLE_LIST:I = 0x1

.field private static final MAX_NUMBER_SUBLIST:I = 0x3

.field private static final NAME:Ljava/lang/String; = "PartialImageList"

.field private static final STATUS_PARTIAL_BUILT_CONSTRUCT:I = 0x2

.field private static final STATUS_PARTIAL_BUILT_FAIL:I = 0x1

.field private static final STATUS_PARTIAL_BUILT_OK:I = 0x3


# instance fields
.field private mBucketId:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mFakeImage:Lcom/htc/opensense2/album/util/ImageManager$Image;

.field private mFilterAlbumArt:Z

.field private mGoDestroyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/util/ImageManager$IImageList;",
            ">;"
        }
    .end annotation
.end field

.field private mImageUri:Landroid/net/Uri;

.field private mIsFavorite:Z

.field private mIsNotify:Z

.field private mLoadingThread:Ljava/lang/Thread;

.field private final mLocker:Ljava/lang/Object;

.field protected mPartialCount:I

.field private mPartialLoadListener:Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;

.field private mSort:I

.field private mStatus:I

.field private mSubList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/util/ImageManager$IImageList;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbUri:Landroid/net/Uri;

.field protected mTotalCount:I

.field private mTypeFilter:Ljava/lang/String;

.field private mWhereStatement:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/opensense2/album/util/ImageManager;


# direct methods
.method public constructor <init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;II)V
    .locals 21
    .parameter
    .parameter "ctx"
    .parameter "cr"
    .parameter "imageUri"
    .parameter "thumbUri"
    .parameter "sort"
    .parameter "bucketId"
    .parameter "filterAlbumArt"
    .parameter "where"
    .parameter "isFavorite"
    .parameter "typeFilter"
    .parameter "partialCount"
    .parameter "totalCount"

    .prologue
    .line 5855
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5843
    new-instance v4, Ljava/lang/Object;

    invoke-direct/range {v4 .. v4}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mLocker:Ljava/lang/Object;

    .line 5844
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mIsNotify:Z

    .line 5857
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mContext:Landroid/content/Context;

    .line 5858
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mContentResolver:Landroid/content/ContentResolver;

    .line 5859
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mImageUri:Landroid/net/Uri;

    .line 5860
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mThumbUri:Landroid/net/Uri;

    .line 5861
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSort:I

    .line 5862
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mBucketId:Ljava/lang/String;

    .line 5863
    move/from16 v0, p8

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mFilterAlbumArt:Z

    .line 5864
    move-object/from16 v0, p9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mWhereStatement:Ljava/lang/String;

    .line 5865
    move/from16 v0, p10

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mIsFavorite:Z

    .line 5866
    move-object/from16 v0, p11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mTypeFilter:Ljava/lang/String;

    .line 5868
    move/from16 v0, p13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mTotalCount:I

    .line 5869
    move/from16 v0, p12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mPartialCount:I

    .line 5871
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    .line 5872
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5873
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5874
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5876
    new-instance v2, Lcom/htc/opensense2/album/util/ImageManager$ImageList;

    const/4 v14, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v15, p12

    invoke-direct/range {v2 .. v15}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;II)V

    .line 5880
    .local v2, firstList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v4

    move/from16 v0, p12

    if-ge v4, v0, :cond_1

    .line 5881
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mStatus:I

    .line 5883
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 5884
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5885
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mTotalCount:I

    .line 5886
    sget-boolean v4, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PartialImageList] don\'t need partial load db count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5983
    :cond_0
    :goto_0
    return-void

    .line 5889
    :cond_1
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mStatus:I

    .line 5892
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5895
    new-instance v3, Lcom/htc/opensense2/album/util/ImageManager$ImageList;

    const/4 v4, 0x1

    move/from16 v0, p6

    if-ne v0, v4, :cond_2

    const/4 v9, 0x2

    :goto_1
    const/4 v15, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v16, p12

    invoke-direct/range {v3 .. v16}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;II)V

    .line 5900
    .local v3, lastList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    const/4 v5, 0x2

    invoke-interface {v4, v5, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5902
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mPartialCount:I

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v2, v4}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSortBase()J

    move-result-wide v17

    .line 5903
    .local v17, baseF:J
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mPartialCount:I

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSortBase()J

    move-result-wide v19

    .line 5904
    .local v19, baseL:J
    add-long v4, v17, v19

    const-wide/16 v6, 0x2

    div-long v8, v4, v6

    .line 5905
    .local v8, base:J
    new-instance v4, Lcom/htc/opensense2/album/util/ImageManager$PartialLoadFakeImage;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSort:I

    move-object/from16 v5, p1

    move-object/from16 v7, p0

    invoke-direct/range {v4 .. v10}, Lcom/htc/opensense2/album/util/ImageManager$PartialLoadFakeImage;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;JI)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mFakeImage:Lcom/htc/opensense2/album/util/ImageManager$Image;

    .line 5907
    new-instance v4, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;-><init>(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;Lcom/htc/opensense2/album/util/ImageManager;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mLoadingThread:Ljava/lang/Thread;

    .line 5981
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 5895
    .end local v3           #lastList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .end local v8           #base:J
    .end local v17           #baseF:J
    .end local v19           #baseL:J
    :cond_2
    const/4 v9, 0x1

    goto :goto_1
.end method

.method static synthetic access$1100(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 5813
    iget-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mIsNotify:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5813
    iput-boolean p1, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mIsNotify:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 5813
    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->updateImageCountByQuery()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5813
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mGoDestroyList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5813
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mGoDestroyList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5813
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;Z)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5813
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->createMiddleImageList(Z)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1602(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5813
    iput p1, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mStatus:I

    return p1
.end method

.method static synthetic access$1700(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5813
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mLocker:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5813
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mPartialLoadListener:Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;

    return-object v0
.end method

.method private createMiddleImageList(Z)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 14
    .parameter "loadPartial"

    .prologue
    .line 6020
    iget v12, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mPartialCount:I

    .line 6021
    .local v12, partialCount:I
    iget v1, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mTotalCount:I

    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mPartialCount:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mPartialCount:I

    sub-int v13, v1, v2

    .line 6022
    .local v13, partialTotalCount:I
    if-nez p1, :cond_0

    .line 6023
    const/4 v12, 0x0

    .line 6024
    const/4 v13, 0x0

    .line 6027
    :cond_0
    new-instance v0, Lcom/htc/opensense2/album/util/ImageManager$ImageList;

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mImageUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mThumbUri:Landroid/net/Uri;

    iget v6, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSort:I

    iget-object v7, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mBucketId:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mFilterAlbumArt:Z

    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mWhereStatement:Ljava/lang/String;

    iget-boolean v10, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mIsFavorite:Z

    iget-object v11, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mTypeFilter:Ljava/lang/String;

    invoke-direct/range {v0 .. v13}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;II)V

    .line 6030
    .local v0, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    return-object v0
.end method

.method private updateImageCountByQuery()I
    .locals 9

    .prologue
    const/4 v2, 0x1

    .line 5986
    iget-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mFilterAlbumArt:Z

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mTypeFilter:Ljava/lang/String;

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->getWhereClause(ZZLjava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0, v1}, Lcom/htc/opensense2/album/util/ImageManager;->access$700(ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5987
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mWhereStatement:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5988
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mWhereStatement:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5990
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mBucketId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 5991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(bucket_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mBucketId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5994
    :cond_1
    const/4 v6, 0x0

    .line 5996
    .local v6, count:I
    const/4 v7, 0x0

    .line 5998
    .local v7, countCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mImageUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "count(_id)"

    aput-object v5, v2, v4

    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$800()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 6000
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 6001
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6002
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 6009
    :cond_2
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PartialImageList][updateImageCountByQuery] Get count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mTotalCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6010
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 6013
    :cond_3
    :goto_0
    iput v6, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mTotalCount:I

    .line 6014
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PartialImageList][updateImageCountByQuery] mTotalCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mTotalCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6016
    return v6

    .line 6005
    :catch_0
    move-exception v8

    .line 6006
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ImageManager"

    const-string v1, "[PartialImageList][updateImageCountByQuery] Can\'t get correct count: "

    invoke-static {v0, v1, v8}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6009
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PartialImageList][updateImageCountByQuery] Get count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mTotalCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6010
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 6009
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    const-string v1, "ImageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PartialImageList][updateImageCountByQuery] Get count = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mTotalCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6010
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method


# virtual methods
.method public closeCursor()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 6171
    iget-object v5, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mGoDestroyList:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 6172
    iget-object v5, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mGoDestroyList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 6173
    .local v3, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    goto :goto_0

    .line 6175
    .end local v3           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_1
    iget-object v5, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mGoDestroyList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 6178
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    iput v6, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mStatus:I

    .line 6179
    iget-object v5, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    new-array v6, v6, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 6180
    .local v4, sublist:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    move-object v0, v4

    .local v0, arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 6181
    .restart local v3       #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 6180
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6183
    .end local v3           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_4
    iget-object v5, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 6184
    const/4 v5, 0x0

    iput v5, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mTotalCount:I

    .line 6185
    return-void
.end method

.method public commitChanges()V
    .locals 7

    .prologue
    .line 6155
    iget-object v5, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 6156
    .local v4, sublist:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    move-object v0, v4

    .local v0, arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 6157
    .local v3, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->commitChanges()V

    .line 6156
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6159
    .end local v3           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_1
    return-void
.end method

.method public deactivate()V
    .locals 7

    .prologue
    .line 6163
    iget-object v5, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 6164
    .local v4, sublist:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    move-object v0, v4

    .local v0, arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 6165
    .local v3, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->deactivate()V

    .line 6164
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6167
    .end local v3           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 6050
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PartialImageList] [getCount] count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mTotalCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6051
    :cond_0
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mTotalCount:I

    return v0
.end method

.method public getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 11
    .parameter "i"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 6056
    if-ltz p1, :cond_0

    iget v5, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mTotalCount:I

    if-lt p1, v5, :cond_2

    .line 6057
    :cond_0
    const/4 v0, 0x0

    .line 6104
    :cond_1
    :goto_0
    return-object v0

    .line 6062
    :cond_2
    iget-object v6, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    monitor-enter v6

    .line 6063
    :try_start_0
    iget v3, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mStatus:I

    .line 6064
    .local v3, status:I
    iget-object v5, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    const/4 v7, 0x3

    new-array v7, v7, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v5, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 6065
    .local v4, sublist:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6067
    if-ne v3, v9, :cond_3

    .line 6068
    aget-object v2, v4, v8

    .line 6069
    .local v2, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    invoke-interface {v2, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    goto :goto_0

    .line 6065
    .end local v2           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .end local v3           #status:I
    .end local v4           #sublist:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 6072
    .restart local v3       #status:I
    .restart local v4       #sublist:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_3
    iget v1, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mPartialCount:I

    .line 6073
    .local v1, lastCount:I
    const/4 v2, 0x0

    .line 6075
    .restart local v2       #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    const/4 v5, -0x1

    if-ge v5, p1, :cond_5

    iget v5, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mPartialCount:I

    if-ge p1, v5, :cond_5

    .line 6076
    aget-object v2, v4, v8

    .line 6092
    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 6093
    .local v0, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v2, :cond_8

    .line 6094
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mFakeImage:Lcom/htc/opensense2/album/util/ImageManager$Image;

    .line 6100
    :goto_2
    if-nez v0, :cond_1

    .line 6101
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mFakeImage:Lcom/htc/opensense2/album/util/ImageManager$Image;

    goto :goto_0

    .line 6078
    .end local v0           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_5
    iget v5, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mPartialCount:I

    if-gt v5, p1, :cond_6

    iget v5, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mTotalCount:I

    sub-int/2addr v5, v1

    if-ge p1, v5, :cond_6

    .line 6079
    if-ne v3, v10, :cond_4

    .line 6080
    iget v5, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mPartialCount:I

    sub-int/2addr p1, v5

    .line 6081
    aget-object v2, v4, v9

    goto :goto_1

    .line 6084
    :cond_6
    iget v5, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mTotalCount:I

    sub-int/2addr v5, v1

    if-gt v5, p1, :cond_7

    iget v5, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mTotalCount:I

    if-ge p1, v5, :cond_7

    .line 6085
    iget v5, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mTotalCount:I

    sub-int/2addr v5, v1

    sub-int/2addr p1, v5

    .line 6086
    const/4 v5, 0x2

    aget-object v2, v4, v5

    goto :goto_1

    .line 6089
    :cond_7
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getImageAt] Incorrect index="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " used to getSubImageList."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 6097
    .restart local v0       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_8
    invoke-interface {v2, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    goto :goto_2
.end method

.method public getImageForFilePath(Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 8
    .parameter "filePath"

    .prologue
    .line 6213
    iget-object v6, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 6214
    .local v5, sublist:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    move-object v0, v5

    .local v0, arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 6215
    .local v4, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v4, :cond_0

    .line 6216
    invoke-interface {v4, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageForFilePath(Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v2

    .line 6217
    .local v2, img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v2, :cond_0

    .line 6222
    .end local v2           #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v4           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :goto_1
    return-object v2

    .line 6214
    .restart local v4       #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6222
    .end local v4           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getImageForUri(Landroid/net/Uri;)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 8
    .parameter "uri"

    .prologue
    .line 6199
    iget-object v6, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 6200
    .local v5, sublist:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    move-object v0, v5

    .local v0, arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 6201
    .local v4, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v4, :cond_0

    .line 6202
    invoke-interface {v4, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageForUri(Landroid/net/Uri;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v2

    .line 6203
    .local v2, img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v2, :cond_0

    .line 6208
    .end local v2           #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v4           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :goto_1
    return-object v2

    .line 6200
    .restart local v4       #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6208
    .end local v4           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->getImageForFilePath(Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v2

    goto :goto_1
.end method

.method public getImages(Ljava/util/List;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6109
    .local p1, outList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    if-nez p1, :cond_1

    .line 6139
    :cond_0
    return-void

    .line 6115
    :cond_1
    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    monitor-enter v9

    .line 6116
    :try_start_0
    iget v6, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mStatus:I

    .line 6117
    .local v6, status:I
    iget-object v8, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    const/4 v10, 0x3

    new-array v10, v10, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v8, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 6118
    .local v7, sublist:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6120
    packed-switch v6, :pswitch_data_0

    .line 6134
    move-object v0, v7

    .local v0, arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 6135
    .local v5, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v5, :cond_2

    invoke-interface {v5, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImages(Ljava/util/List;)V

    .line 6134
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6118
    .end local v0           #arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v5           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .end local v6           #status:I
    .end local v7           #sublist:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 6122
    .restart local v6       #status:I
    .restart local v7       #sublist:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :pswitch_0
    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-interface {v8, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImages(Ljava/util/List;)V

    .line 6123
    const/4 v8, 0x2

    aget-object v8, v7, v8

    invoke-interface {v8, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImages(Ljava/util/List;)V

    .line 6125
    iget v3, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mPartialCount:I

    .line 6126
    .local v3, lastCount:I
    iget v1, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mPartialCount:I

    .local v1, i:I
    :goto_1
    iget v8, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mTotalCount:I

    sub-int/2addr v8, v3

    if-ge v1, v8, :cond_0

    .line 6127
    iget-object v8, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mFakeImage:Lcom/htc/opensense2/album/util/ImageManager$Image;

    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6126
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6120
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getItem(I)Lcom/htc/sunnyCore/IMediaData;
    .locals 2
    .parameter "itemIndex"

    .prologue
    .line 6143
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    .line 6145
    .local v0, item:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    instance-of v1, v0, Lcom/htc/sunnyCore/IMediaData;

    if-eqz v1, :cond_0

    .line 6146
    check-cast v0, Lcom/htc/sunnyCore/IMediaData;

    .line 6149
    .end local v0           #item:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :goto_0
    return-object v0

    .restart local v0       #item:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReleased()Z
    .locals 3

    .prologue
    .line 6189
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 6190
    .local v0, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v0, :cond_0

    .line 6191
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->isReleased()Z

    move-result v1

    .line 6194
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method setPartialLoadListener(Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    const/4 v4, 0x1

    .line 6034
    const/4 v0, 0x0

    .line 6035
    .local v0, callback:Z
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 6036
    :try_start_0
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mPartialLoadListener:Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;

    .line 6037
    iget v1, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mStatus:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mIsNotify:Z

    if-nez v1, :cond_0

    .line 6038
    const/4 v0, 0x1

    .line 6039
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mIsNotify:Z

    .line 6041
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6042
    if-ne v4, v0, :cond_1

    .line 6043
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mPartialLoadListener:Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;

    iget v3, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mPartialCount:I

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    invoke-interface {v2, p0, v3, v1}, Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;->onPartialListBuilt(Lcom/htc/opensense2/album/util/ImageManager$IImageList;II)V

    .line 6045
    :cond_1
    return-void

    .line 6041
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public startRequery()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 6227
    iget v7, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mStatus:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    iget-object v7, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mLoadingThread:Ljava/lang/Thread;

    if-eqz v7, :cond_0

    .line 6229
    :try_start_0
    iget-object v7, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6235
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    const/4 v8, 0x3

    new-array v8, v8, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 6237
    .local v6, sublist:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    iget v7, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mStatus:I

    if-ne v7, v9, :cond_2

    .line 6238
    move-object v0, v6

    .local v0, arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_6

    aget-object v4, v0, v2

    .line 6239
    .local v4, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->startRequery()Z

    .line 6238
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6230
    .end local v0           #arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .end local v6           #sublist:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :catch_0
    move-exception v1

    .line 6231
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 6243
    .end local v1           #e:Ljava/lang/InterruptedException;
    .restart local v6       #sublist:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_2
    iget-object v7, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mGoDestroyList:Ljava/util/List;

    if-nez v7, :cond_3

    .line 6244
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0x8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v7}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mGoDestroyList:Ljava/util/List;

    .line 6246
    :cond_3
    move-object v0, v6

    .restart local v0       #arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_2
    if-ge v2, v3, :cond_5

    aget-object v4, v0, v2

    .line 6247
    .restart local v4       #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v4, :cond_4

    iget-object v7, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mGoDestroyList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6246
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 6250
    .end local v4           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_5
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->createMiddleImageList(Z)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v5

    .line 6252
    .local v5, newList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    iget-object v8, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    monitor-enter v8

    .line 6253
    const/4 v7, 0x1

    :try_start_1
    iput v7, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mStatus:I

    .line 6254
    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v7

    iput v7, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mTotalCount:I

    .line 6256
    iget-object v7, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 6257
    iget-object v7, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6258
    monitor-exit v8

    .line 6261
    .end local v5           #newList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_6
    return v9

    .line 6258
    .restart local v5       #newList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method
