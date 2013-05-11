.class public Lcom/htc/album/modules/collection/Collection;
.super Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;
.source "Collection.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;
.implements Lcom/htc/album/helper/IFilterFolderBucketIds;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/modules/collection/Collection$QueueComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/album/modules/collection/Collection;",
        ">;",
        "Ljava/io/Serializable;",
        "Landroid/os/Parcelable;",
        "Lcom/htc/album/helper/IFilterFolderBucketIds;"
    }
.end annotation


# static fields
.field public static final BUCKET_ID_OTHERS:Ljava/lang/String; = null

.field protected static final CACHE_ROOT:Ljava/lang/String; = null

.field protected static CACHE_SETS:[I = null

.field public static final COLLECTIONS_PROJECTION:[Ljava/lang/String; = null

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/album/modules/collection/Collection;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILE_CACHE_VERSION:I = 0x1

.field protected static final FILE_OP_TAG:Ljava/lang/String; = "[Collection][deleteCache]"

.field public static final KEY_DATA:Ljava/lang/String; = "key_data"

.field private static final LOG_TAG:Ljava/lang/String; = "Collection"

.field protected static final QUEUE_SIZE:I = 0x4

.field public static final SC_DRM_IMAGES_PROJECTION:[Ljava/lang/String; = null

.field public static final SC_DRM_VIDEOS_PROJECTION:[Ljava/lang/String; = null

.field public static final SC_IMAGES_PROJECTION:[Ljava/lang/String; = null

.field public static final SC_VIDEOS_PROJECTION:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected mBucketId:Ljava/lang/String;

.field protected mContainsMediaTypes:I

.field protected transient mContext:Landroid/content/Context;

.field protected mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

.field protected mDisplayName:Ljava/lang/String;

.field protected mDrmImageCnt:I

.field protected mDrmVideoCnt:I

.field private mEnableFilterFolderBucketIds:Z

.field private mEnableImageListCache:Z

.field private mEnablePartialLoadImageList:Z

.field protected mFilter:Ljava/lang/String;

.field private mFilter4FolderBucketIds:Ljava/lang/String;

.field protected mImageCnt:I

.field protected mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

.field private mImageListCache:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

.field protected mIsVisible:I

.field protected mPhotoCnt:I

.field protected transient mQueue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/htc/album/modules/collection/SimpleImage;",
            ">;"
        }
    .end annotation
.end field

.field protected mShowLatest:Z

.field protected mSortOrder:I

.field protected mSupportedMediaTypes:I

.field protected mType:Ljava/lang/String;

.field protected mVideoCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "bucket_id"

    aput-object v1, v0, v4

    const-string v1, "bucket_display_name"

    aput-object v1, v0, v5

    const-string v1, "datetaken"

    aput-object v1, v0, v6

    const-string v1, "favorite"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "orientation"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/album/modules/collection/Collection;->SC_IMAGES_PROJECTION:[Ljava/lang/String;

    .line 85
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "bucket_id"

    aput-object v1, v0, v4

    const-string v1, "bucket_display_name"

    aput-object v1, v0, v5

    const-string v1, "datetaken"

    aput-object v1, v0, v6

    const-string v1, "favorite"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "favorite"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/album/modules/collection/Collection;->SC_VIDEOS_PROJECTION:[Ljava/lang/String;

    .line 97
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "bucket_id"

    aput-object v1, v0, v4

    const-string v1, "bucket_display_name"

    aput-object v1, v0, v5

    const-string v1, "date_added"

    aput-object v1, v0, v6

    const-string v1, "favorite"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "favorite"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/album/modules/collection/Collection;->SC_DRM_IMAGES_PROJECTION:[Ljava/lang/String;

    .line 109
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "bucket_id"

    aput-object v1, v0, v4

    const-string v1, "bucket_display_name"

    aput-object v1, v0, v5

    const-string v1, "date_added"

    aput-object v1, v0, v6

    const-string v1, "favorite"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "favorite"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/album/modules/collection/Collection;->SC_DRM_VIDEOS_PROJECTION:[Ljava/lang/String;

    .line 121
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "bucket_id"

    aput-object v1, v0, v3

    const-string v1, "bucket_display_name"

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/album/modules/collection/Collection;->COLLECTIONS_PROJECTION:[Ljava/lang/String;

    .line 123
    sget-object v0, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->BUCKET_ID_EXTERNAL_STORAGE:Ljava/lang/String;

    sput-object v0, Lcom/htc/album/modules/collection/Collection;->BUCKET_ID_OTHERS:Ljava/lang/String;

    .line 165
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageThumbnailPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/modules/collection/Collection;->CACHE_ROOT:Ljava/lang/String;

    .line 166
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/album/modules/collection/Collection;->CACHE_SETS:[I

    .line 533
    new-instance v0, Lcom/htc/album/modules/collection/Collection$1;

    invoke-direct {v0}, Lcom/htc/album/modules/collection/Collection$1;-><init>()V

    sput-object v0, Lcom/htc/album/modules/collection/Collection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 178
    invoke-direct {p0}, Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;-><init>()V

    .line 140
    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    .line 141
    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    .line 142
    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 143
    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    .line 144
    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageCnt:I

    .line 145
    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mVideoCnt:I

    .line 146
    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mDrmImageCnt:I

    .line 147
    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mDrmVideoCnt:I

    .line 150
    const/16 v0, 0x11

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    .line 152
    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mContainsMediaTypes:I

    .line 154
    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    .line 155
    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 156
    iput v3, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    .line 161
    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    .line 173
    iput-boolean v1, p0, Lcom/htc/album/modules/collection/Collection;->mEnablePartialLoadImageList:Z

    .line 175
    iput v3, p0, Lcom/htc/album/modules/collection/Collection;->mSortOrder:I

    .line 955
    iput-boolean v1, p0, Lcom/htc/album/modules/collection/Collection;->mEnableFilterFolderBucketIds:Z

    .line 956
    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mFilter4FolderBucketIds:Ljava/lang/String;

    .line 179
    iput-boolean v3, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    .line 180
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "type"
    .parameter "bucketId"
    .parameter "displayName"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 184
    invoke-direct {p0}, Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;-><init>()V

    .line 140
    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    .line 141
    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    .line 142
    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 143
    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    .line 144
    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageCnt:I

    .line 145
    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mVideoCnt:I

    .line 146
    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mDrmImageCnt:I

    .line 147
    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mDrmVideoCnt:I

    .line 150
    const/16 v0, 0x11

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    .line 152
    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mContainsMediaTypes:I

    .line 154
    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    .line 155
    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 156
    iput v3, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    .line 161
    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    .line 173
    iput-boolean v1, p0, Lcom/htc/album/modules/collection/Collection;->mEnablePartialLoadImageList:Z

    .line 175
    iput v3, p0, Lcom/htc/album/modules/collection/Collection;->mSortOrder:I

    .line 955
    iput-boolean v1, p0, Lcom/htc/album/modules/collection/Collection;->mEnableFilterFolderBucketIds:Z

    .line 956
    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mFilter4FolderBucketIds:Ljava/lang/String;

    .line 185
    iput-object p1, p0, Lcom/htc/album/modules/collection/Collection;->mContext:Landroid/content/Context;

    .line 186
    iput-object p2, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    .line 187
    iput-object p3, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    .line 188
    iput-boolean v3, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    .line 189
    invoke-virtual {p0, p1, p4}, Lcom/htc/album/modules/collection/Collection;->setProperties(Landroid/content/Context;Ljava/lang/String;)V

    .line 190
    new-instance v0, Ljava/util/PriorityQueue;

    const/4 v1, 0x4

    new-instance v2, Lcom/htc/album/modules/collection/Collection$QueueComparator;

    iget-boolean v3, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    invoke-direct {v2, v3}, Lcom/htc/album/modules/collection/Collection$QueueComparator;-><init>(Z)V

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mQueue:Ljava/util/PriorityQueue;

    .line 191
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    .line 192
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 546
    invoke-direct {p0}, Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;-><init>()V

    .line 140
    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    .line 141
    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    .line 142
    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 143
    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    .line 144
    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageCnt:I

    .line 145
    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mVideoCnt:I

    .line 146
    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mDrmImageCnt:I

    .line 147
    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mDrmVideoCnt:I

    .line 150
    const/16 v0, 0x11

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    .line 152
    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mContainsMediaTypes:I

    .line 154
    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    .line 155
    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 156
    iput v3, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    .line 161
    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    .line 173
    iput-boolean v1, p0, Lcom/htc/album/modules/collection/Collection;->mEnablePartialLoadImageList:Z

    .line 175
    iput v3, p0, Lcom/htc/album/modules/collection/Collection;->mSortOrder:I

    .line 955
    iput-boolean v1, p0, Lcom/htc/album/modules/collection/Collection;->mEnableFilterFolderBucketIds:Z

    .line 956
    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mFilter4FolderBucketIds:Ljava/lang/String;

    .line 547
    invoke-virtual {p0, p1}, Lcom/htc/album/modules/collection/Collection;->readFromParcel(Landroid/os/Parcel;)V

    .line 548
    return-void
.end method

.method public static final getSavedFolderType(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 819
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 820
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "folder_type"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public cancelDeleting()V
    .locals 2

    .prologue
    .line 772
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    instance-of v1, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v1, :cond_0

    .line 774
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    .line 775
    .local v0, listUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->cancelDeleting()V

    .line 777
    .end local v0           #listUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    :cond_0
    return-void
.end method

.method public clone(Lcom/htc/album/modules/collection/Collection;)V
    .locals 1
    .parameter "collection"

    .prologue
    .line 793
    if-nez p1, :cond_0

    .line 815
    :goto_0
    return-void

    .line 796
    :cond_0
    iget-object v0, p1, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    invoke-virtual {p0, v0}, Lcom/htc/album/modules/collection/Collection;->setCoverImage(Lcom/htc/album/modules/collection/SimpleImage;)V

    .line 798
    iget-object v0, p1, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 799
    iget v0, p1, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    .line 800
    iget-object v0, p1, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    .line 801
    iget v0, p1, Lcom/htc/album/modules/collection/Collection;->mImageCnt:I

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageCnt:I

    .line 802
    iget v0, p1, Lcom/htc/album/modules/collection/Collection;->mVideoCnt:I

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mVideoCnt:I

    .line 803
    iget v0, p1, Lcom/htc/album/modules/collection/Collection;->mDrmImageCnt:I

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mDrmImageCnt:I

    .line 804
    iget v0, p1, Lcom/htc/album/modules/collection/Collection;->mDrmVideoCnt:I

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mDrmVideoCnt:I

    .line 807
    iget-object v0, p1, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    .line 808
    iget-object v0, p1, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    .line 809
    iget v0, p1, Lcom/htc/album/modules/collection/Collection;->mContainsMediaTypes:I

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mContainsMediaTypes:I

    .line 810
    iget v0, p1, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    .line 811
    iget-object v0, p1, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    .line 812
    iget v0, p1, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    .line 813
    iget-boolean v0, p1, Lcom/htc/album/modules/collection/Collection;->mEnableImageListCache:Z

    iput-boolean v0, p0, Lcom/htc/album/modules/collection/Collection;->mEnableImageListCache:Z

    .line 814
    iget v0, p1, Lcom/htc/album/modules/collection/Collection;->mSortOrder:I

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mSortOrder:I

    goto :goto_0
.end method

.method public compareTo(Lcom/htc/album/modules/collection/Collection;)I
    .locals 2
    .parameter "collection"

    .prologue
    .line 423
    instance-of v0, p1, Lcom/htc/album/modules/collection/Collection;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    iget-object v1, p1, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 427
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    check-cast p1, Lcom/htc/album/modules/collection/Collection;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/modules/collection/Collection;->compareTo(Lcom/htc/album/modules/collection/Collection;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 588
    const/4 v0, 0x0

    return v0
.end method

.method public final doLoadData(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 6
    .parameter "context"
    .parameter "extras"

    .prologue
    const/4 v5, 0x1

    .line 671
    const/4 v0, 0x0

    .line 672
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz p2, :cond_5

    .line 673
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #bundle:Landroid/os/Bundle;
    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 679
    .restart local v0       #bundle:Landroid/os/Bundle;
    :goto_0
    iget-boolean v2, p0, Lcom/htc/album/modules/collection/Collection;->mEnablePartialLoadImageList:Z

    if-ne v5, v2, :cond_2

    .line 681
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 682
    const-string v2, "key_count_image"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-ne v5, v2, :cond_0

    .line 683
    const-string v2, "Collection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[doLoadData] IPartialLoadListener.KEY_COUNT_IMAGE has been use, we would overwrite it: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "key_count_image"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    :cond_0
    const-string v2, "key_count_video"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-ne v5, v2, :cond_1

    .line 686
    const-string v2, "Collection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[doLoadData] IPartialLoadListener.KEY_COUNT_IMAGE has been use, we would overwrite it: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "key_count_video"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    :cond_1
    const-string v2, "key_count_image"

    iget v3, p0, Lcom/htc/album/modules/collection/Collection;->mImageCnt:I

    iget v4, p0, Lcom/htc/album/modules/collection/Collection;->mDrmImageCnt:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 691
    const-string v2, "key_count_video"

    iget v3, p0, Lcom/htc/album/modules/collection/Collection;->mVideoCnt:I

    iget v4, p0, Lcom/htc/album/modules/collection/Collection;->mDrmVideoCnt:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 694
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/htc/album/modules/collection/Collection;->makeList(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v1

    .line 695
    .local v1, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    iget-boolean v2, p0, Lcom/htc/album/modules/collection/Collection;->mEnableImageListCache:Z

    if-ne v5, v2, :cond_4

    .line 697
    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mImageListCache:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mImageListCache:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 698
    :cond_3
    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mImageListCache:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 701
    :cond_4
    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 702
    return-object v1

    .line 676
    .end local v1           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #bundle:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0       #bundle:Landroid/os/Bundle;
    goto/16 :goto_0
.end method

.method public final enableDataCache(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 647
    iput-boolean p1, p0, Lcom/htc/album/modules/collection/Collection;->mEnableImageListCache:Z

    .line 648
    iget-boolean v0, p0, Lcom/htc/album/modules/collection/Collection;->mEnableImageListCache:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageListCache:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageListCache:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 650
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageListCache:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 652
    :cond_0
    return-void
.end method

.method public enableFilter4FolderBucketIds(Z)V
    .locals 1
    .parameter "bEnable"

    .prologue
    .line 961
    iput-boolean p1, p0, Lcom/htc/album/modules/collection/Collection;->mEnableFilterFolderBucketIds:Z

    .line 962
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mFilter4FolderBucketIds:Ljava/lang/String;

    .line 963
    return-void
.end method

.method public equals(Lcom/htc/album/modules/collection/Collection;)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 523
    iget-object v0, p1, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    .line 524
    .local v0, cBucketId:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 526
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 528
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBitmap(Z)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "forceGet"

    .prologue
    const/4 v1, 0x0

    .line 448
    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-object v2, v2, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    if-nez v2, :cond_2

    :cond_0
    move-object v0, v1

    .line 458
    :cond_1
    :goto_0
    return-object v0

    .line 451
    :cond_2
    const/4 v0, 0x0

    .line 452
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz p1, :cond_1

    .line 454
    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-object v2, v2, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->SQR_THUMBNAIL_SIZE:I

    iget-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-boolean v4, v4, Lcom/htc/album/modules/collection/SimpleImage;->mIsVideo:Z

    invoke-static {v2, v3, v4, v1}, Lcom/htc/opensense2/album/util/ImageUtils;->loadSquareBitmap(Ljava/lang/String;IZLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getBitmap(ZF)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "forceGet"
    .parameter "fRotation"

    .prologue
    const/4 v1, 0x0

    .line 462
    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-object v2, v2, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    if-nez v2, :cond_2

    :cond_0
    move-object v7, v1

    .line 493
    :cond_1
    :goto_0
    return-object v7

    .line 465
    :cond_2
    const/4 v7, 0x0

    .line 466
    .local v7, bitmap:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 467
    .local v0, bitmapTemp:Landroid/graphics/Bitmap;
    if-eqz p1, :cond_3

    .line 469
    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-object v2, v2, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->SQR_THUMBNAIL_SIZE:I

    iget-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-boolean v4, v4, Lcom/htc/album/modules/collection/SimpleImage;->mIsVideo:Z

    invoke-static {v2, v3, v4, v1}, Lcom/htc/opensense2/album/util/ImageUtils;->loadSquareBitmap(Ljava/lang/String;IZLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 473
    :cond_3
    if-eqz v0, :cond_1

    .line 476
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 477
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v5, p2, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 480
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->SQR_THUMBNAIL_SIZE:I

    sget v4, Lcom/htc/album/AlbumCommon/LayoutConstants;->SQR_THUMBNAIL_SIZE:I

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 483
    if-eq v7, v0, :cond_1

    .line 486
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 489
    :catch_0
    move-exception v8

    .line 491
    .local v8, ex:Ljava/lang/OutOfMemoryError;
    const-string v1, "Collection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][Collection][getBitmap]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getBucketId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    return-object v0
.end method

.method public getContainedMediaTypes()I
    .locals 1

    .prologue
    .line 432
    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mContainsMediaTypes:I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCoverImage()Lcom/htc/album/modules/collection/SimpleImage;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDrmImagePhotoCount()I
    .locals 3

    .prologue
    .line 395
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    instance-of v1, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v1, :cond_0

    .line 396
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    .line 397
    .local v0, list:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageCount()I

    move-result v1

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getNonDrmImageCount()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mDrmImageCnt:I

    .line 400
    .end local v0           #list:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    :cond_0
    iget v1, p0, Lcom/htc/album/modules/collection/Collection;->mDrmImageCnt:I

    return v1
.end method

.method public getDrmVideoPhotoCount()I
    .locals 3

    .prologue
    .line 413
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    instance-of v1, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v1, :cond_0

    .line 414
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    .line 415
    .local v0, list:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getVideoCount()I

    move-result v1

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getNonDrmVideoCount()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mDrmVideoCnt:I

    .line 418
    .end local v0           #list:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    :cond_0
    iget v1, p0, Lcom/htc/album/modules/collection/Collection;->mDrmVideoCnt:I

    return v1
.end method

.method public getEnablePartialLoadImageList()Z
    .locals 1

    .prologue
    .line 726
    iget-boolean v0, p0, Lcom/htc/album/modules/collection/Collection;->mEnablePartialLoadImageList:Z

    return v0
.end method

.method public getFilter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    return-object v0
.end method

.method protected getFolderRecoveryParam()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/modules/collection/Collection;->getBucketId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFolderType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    return-object v0
.end method

.method public getImagePhotoCount()I
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    instance-of v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageCount()I

    move-result v0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageCnt:I

    .line 390
    :cond_0
    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageCnt:I

    return v0
.end method

.method public getMediaIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    if-nez v0, :cond_0

    .line 625
    const/4 v0, 0x0

    .line 627
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-object v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPhotoCount()I
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    .line 382
    :cond_0
    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    return v0
.end method

.method protected getQueryOrderBy(I)Ljava/lang/String;
    .locals 1
    .parameter "mediaType"

    .prologue
    .line 1171
    invoke-static {p1}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->getQuerySortOrder(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueryParams()Landroid/content/Intent;
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/4 v5, 0x1

    .line 1039
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1040
    .local v1, result:Landroid/content/Intent;
    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1042
    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/htc/album/modules/collection/Collection;->getQueryProjection(I)[Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/album/modules/collection/Collection;->setQueryParamsForMediaType(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    :cond_0
    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 1048
    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/htc/album/modules/collection/Collection;->getQueryProjection(I)[Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    move-object v0, p0

    move v5, v8

    invoke-virtual/range {v0 .. v7}, Lcom/htc/album/modules/collection/Collection;->setQueryParamsForMediaType(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    :cond_1
    return-object v1
.end method

.method protected getQueryProjection(I)[Ljava/lang/String;
    .locals 1
    .parameter "mediaTypes"

    .prologue
    .line 1122
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1124
    sget-object v0, Lcom/htc/album/modules/collection/Collection;->SC_IMAGES_PROJECTION:[Ljava/lang/String;

    .line 1130
    :goto_0
    return-object v0

    .line 1126
    :cond_0
    const/16 v0, 0x10

    if-ne p1, v0, :cond_1

    .line 1128
    sget-object v0, Lcom/htc/album/modules/collection/Collection;->SC_VIDEOS_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 1130
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getQueryUri(I)Landroid/net/Uri;
    .locals 1
    .parameter "mediaTypes"

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->getQueryUri(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getQueryWhere(IZ)Ljava/lang/String;
    .locals 4
    .parameter "mediaType"
    .parameter "appendDefault"

    .prologue
    .line 1139
    if-eqz p2, :cond_1

    .line 1141
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    invoke-static {v1, v2, p1, v3}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->getQueryWhere(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1142
    .local v0, where:Ljava/lang/String;
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1143
    const-string v1, "Collection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "where = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    .end local v0           #where:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 1148
    :cond_1
    const-string v1, "Collection"

    const-string v2, "[getQueryWhere] appendDefault = false not define."

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getQueryWhereParams(IZ)[Ljava/lang/String;
    .locals 2
    .parameter "mediaType"
    .parameter "appendDefault"

    .prologue
    .line 1158
    if-eqz p2, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->getQueryArgs(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 1165
    :goto_0
    return-object v0

    .line 1164
    :cond_0
    const-string v0, "Collection"

    const-string v1, "[getQueryWhereParams] appendDefault = false not define."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSortOrder()I
    .locals 1

    .prologue
    .line 738
    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mSortOrder:I

    return v0
.end method

.method public getSupportedMediaTypes()I
    .locals 1

    .prologue
    .line 442
    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    return v0
.end method

.method public getVideoPhotoCount()I
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    instance-of v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getVideoCount()I

    move-result v0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mVideoCnt:I

    .line 408
    :cond_0
    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mVideoCnt:I

    return v0
.end method

.method public isFilteredFolderBucketId(Ljava/lang/String;)Z
    .locals 1
    .parameter "szBucketId"

    .prologue
    .line 1027
    const/4 v0, 0x0

    return v0
.end method

.method public isManageable()Z
    .locals 1

    .prologue
    .line 1180
    sget-boolean v0, Lcom/htc/album/helper/FileOperationManager;->ENABLE_FILEOPERATION:Z

    return v0
.end method

.method public isVisible()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 274
    const-string v2, "com.htc.HTCAlbum.CAMERA_SHOTS"

    iget-object v3, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 282
    :cond_0
    :goto_0
    return v0

    .line 277
    :cond_1
    const/4 v0, 0x0

    .line 279
    .local v0, bResult:Z
    iget v2, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    if-ne v1, v2, :cond_0

    .line 280
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final loadFromPerference()V
    .locals 2

    .prologue
    .line 842
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 843
    .local v0, pref:Landroid/content/SharedPreferences;
    invoke-virtual {p0, v0}, Lcom/htc/album/modules/collection/Collection;->onLoadFromPreference(Landroid/content/SharedPreferences;)V

    .line 844
    return-void
.end method

.method protected makeList(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 8
    .parameter "context"
    .parameter "extras"

    .prologue
    .line 743
    iget v1, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/album/modules/collection/Collection;->mFilter4FolderBucketIds:Ljava/lang/String;

    iget v7, p0, Lcom/htc/album/modules/collection/Collection;->mSortOrder:I

    move-object v0, p1

    move-object v5, p2

    invoke-static/range {v0 .. v7}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method

.method public onBulkDeleteIBT(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "resolver"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 759
    iget v1, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    .line 762
    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 764
    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 765
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p1, v0, p2, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 768
    .end local v0           #uri:Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method public onDeleteIBT(Landroid/content/ContentResolver;I)V
    .locals 4
    .parameter "resolver"
    .parameter "pos"

    .prologue
    const/4 v3, 0x0

    .line 749
    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v2, p2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    .line 750
    .local v0, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v0, :cond_0

    .line 755
    :goto_0
    return-void

    .line 753
    :cond_0
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    .line 754
    .local v1, imageUri:Landroid/net/Uri;
    invoke-virtual {p1, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onFolderClicked(Landroid/app/Activity;)Z
    .locals 1
    .parameter "activity"

    .prologue
    .line 642
    const/4 v0, 0x0

    return v0
.end method

.method protected onLoadFromPreference(Landroid/content/SharedPreferences;)V
    .locals 2
    .parameter "pref"

    .prologue
    .line 848
    const-string v0, "folder_type"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    .line 849
    const-string v0, "key_bucket_id"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    .line 850
    const-string v0, "key_folder_name"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 851
    return-void
.end method

.method protected onNewSimpleImage(Ljava/lang/String;Ljava/lang/String;JIIJJ)Lcom/htc/album/modules/collection/SimpleImage;
    .locals 11
    .parameter "filePath"
    .parameter "mimeType"
    .parameter "dateModified"
    .parameter "degree"
    .parameter "mediaType"
    .parameter "fileSize"
    .parameter "rowId"

    .prologue
    .line 634
    new-instance v0, Lcom/htc/album/modules/collection/SimpleImage;

    iget-boolean v1, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    invoke-direct {v0, p0, v1}, Lcom/htc/album/modules/collection/SimpleImage;-><init>(Lcom/htc/album/modules/collection/Collection;Z)V

    .local v0, image:Lcom/htc/album/modules/collection/SimpleImage;
    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    .line 635
    invoke-virtual/range {v0 .. v10}, Lcom/htc/album/modules/collection/SimpleImage;->update(Ljava/lang/String;Ljava/lang/String;JIIJJ)V

    .line 637
    return-object v0
.end method

.method protected onSaveToPerference(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .parameter "editor"

    .prologue
    .line 835
    const-string v0, "folder_type"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 836
    const-string v0, "key_bucket_id"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 837
    const-string v0, "key_folder_name"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 838
    return-void
.end method

.method public prepareFilter4FolderBucketIds(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    .line 969
    iget-boolean v8, p0, Lcom/htc/album/modules/collection/Collection;->mEnableFilterFolderBucketIds:Z

    if-eqz v8, :cond_0

    if-nez p1, :cond_1

    .line 1022
    :cond_0
    :goto_0
    return-void

    .line 975
    :cond_1
    const/4 v3, 0x0

    .line 976
    .local v3, filterList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    invoke-static {p1}, Lcom/htc/album/ObjectWriter/AlbumCacher;->getLocalFolderFilterCache(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 983
    const/4 v1, 0x0

    .line 984
    .local v1, builderResult:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 985
    .local v4, item:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 986
    .local v5, nCount:I
    const/4 v6, 0x0

    .local v6, nIndex:I
    :goto_1
    if-le v5, v6, :cond_4

    .line 988
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #item:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    check-cast v4, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 990
    .restart local v4       #item:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getBucketId()Ljava/lang/String;

    move-result-object v7

    .line 991
    .local v7, szBucketID:Ljava/lang/String;
    const/4 v0, 0x0

    .line 995
    .local v0, bIsSmartFolder:Z
    :try_start_0
    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1002
    :goto_2
    if-nez v0, :cond_2

    .line 1004
    if-nez v1, :cond_3

    .line 1006
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #builderResult:Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1007
    .restart local v1       #builderResult:Ljava/lang/StringBuilder;
    const-string v8, "bucket_id"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " NOT IN (\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 986
    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 997
    :catch_0
    move-exception v2

    .line 999
    .local v2, e:Ljava/lang/Exception;
    const/4 v0, 0x1

    .line 1000
    const-string v8, "Collection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][Collection][prepareFilter4FolderBucketIds]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1011
    .end local v2           #e:Ljava/lang/Exception;
    :cond_3
    const-string v8, "\',\'"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1015
    .end local v0           #bIsSmartFolder:Z
    .end local v7           #szBucketID:Ljava/lang/String;
    :cond_4
    if-eqz v1, :cond_5

    .line 1017
    const-string v8, "\') "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/modules/collection/Collection;->mFilter4FolderBucketIds:Ljava/lang/String;

    .line 1021
    :cond_5
    const-string v8, "Collection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][Collection][prepareFilter4FolderBucketIds]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/album/modules/collection/Collection;->mFilter4FolderBucketIds:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public readFrom(ZIILjava/lang/String;)V
    .locals 11
    .parameter "isVersionChange"
    .parameter "newVer"
    .parameter "oldVer"
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 915
    const/4 v2, 0x0

    .line 916
    .local v2, i:I
    invoke-virtual {p0, p4}, Lcom/htc/album/modules/collection/Collection;->removeAllHeader(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 917
    .local v1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_4

    .line 918
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    .line 919
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    .line 920
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 921
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    .line 922
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/htc/album/modules/collection/Collection;->mImageCnt:I

    .line 923
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/htc/album/modules/collection/Collection;->mVideoCnt:I

    .line 924
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/htc/album/modules/collection/Collection;->mDrmImageCnt:I

    .line 925
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/htc/album/modules/collection/Collection;->mDrmVideoCnt:I

    .line 926
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    .line 927
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/htc/album/modules/collection/Collection;->mContainsMediaTypes:I

    .line 928
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    .line 929
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    .line 930
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 931
    iget-object v7, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    if-nez v7, :cond_0

    new-instance v7, Lcom/htc/album/TabPluginDevice/FolderImage;

    const/4 v8, 0x1

    invoke-direct {v7, p0, v8}, Lcom/htc/album/TabPluginDevice/FolderImage;-><init>(Lcom/htc/album/modules/collection/Collection;Z)V

    iput-object v7, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    .line 932
    :cond_0
    iget-object v8, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, p1, p2, p3, v7}, Lcom/htc/album/modules/collection/SimpleImage;->readFrom(ZIILjava/lang/String;)V

    move v2, v3

    .line 936
    .end local v3           #i:I
    .restart local v2       #i:I
    :goto_0
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    .line 937
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/htc/album/modules/collection/Collection;->mEnableImageListCache:Z

    .line 938
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/htc/album/modules/collection/Collection;->removeListObjHeader(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 939
    .local v5, mQueueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_3

    .line 940
    iget-object v7, p0, Lcom/htc/album/modules/collection/Collection;->mQueue:Ljava/util/PriorityQueue;

    if-nez v7, :cond_1

    new-instance v7, Ljava/util/PriorityQueue;

    const/4 v8, 0x4

    new-instance v9, Lcom/htc/album/modules/collection/Collection$QueueComparator;

    iget-boolean v10, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    invoke-direct {v9, v10}, Lcom/htc/album/modules/collection/Collection$QueueComparator;-><init>(Z)V

    invoke-direct {v7, v8, v9}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v7, p0, Lcom/htc/album/modules/collection/Collection;->mQueue:Ljava/util/PriorityQueue;

    .line 941
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 942
    .local v6, str:Ljava/lang/String;
    new-instance v0, Lcom/htc/album/TabPluginDevice/FolderImage;

    const/4 v7, 0x1

    invoke-direct {v0, p0, v7}, Lcom/htc/album/TabPluginDevice/FolderImage;-><init>(Lcom/htc/album/modules/collection/Collection;Z)V

    .line 943
    .local v0, FI:Lcom/htc/album/TabPluginDevice/FolderImage;
    invoke-virtual {v0, p1, p2, p3, v6}, Lcom/htc/album/TabPluginDevice/FolderImage;->readFrom(ZIILjava/lang/String;)V

    .line 944
    iget-object v7, p0, Lcom/htc/album/modules/collection/Collection;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v7, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 934
    .end local v0           #FI:Lcom/htc/album/TabPluginDevice/FolderImage;
    .end local v3           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #mQueueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #str:Ljava/lang/String;
    .restart local v2       #i:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2           #i:I
    .restart local v3       #i:I
    .restart local v5       #mQueueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    move v2, v3

    .line 951
    .end local v3           #i:I
    .end local v5           #mQueueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #i:I
    :cond_4
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 12
    .parameter "in"

    .prologue
    const/4 v11, 0x1

    .line 552
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    .line 553
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    .line 554
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 555
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    .line 556
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageCnt:I

    .line 557
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mVideoCnt:I

    .line 558
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mDrmImageCnt:I

    .line 559
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mDrmVideoCnt:I

    .line 560
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    .line 561
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mContainsMediaTypes:I

    .line 562
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    .line 563
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    .line 565
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v11, :cond_1

    .line 566
    .local v11, hasCoverImage:Z
    :goto_0
    if-eqz v11, :cond_0

    .line 568
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 569
    .local v1, coverPath:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 570
    .local v2, coverMime:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 571
    .local v3, coverDate:J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 572
    .local v5, coverDegree:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 573
    .local v6, coverType:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 576
    .local v7, coverSize:J
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .local v9, rowId:J
    move-object v0, p0

    .line 578
    invoke-virtual/range {v0 .. v10}, Lcom/htc/album/modules/collection/Collection;->onNewSimpleImage(Ljava/lang/String;Ljava/lang/String;JIIJJ)Lcom/htc/album/modules/collection/SimpleImage;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    .line 583
    .end local v1           #coverPath:Ljava/lang/String;
    .end local v2           #coverMime:Ljava/lang/String;
    .end local v3           #coverDate:J
    .end local v5           #coverDegree:I
    .end local v6           #coverType:I
    .end local v7           #coverSize:J
    .end local v9           #rowId:J
    :cond_0
    return-void

    .line 565
    .end local v11           #hasCoverImage:Z
    :cond_1
    const/4 v11, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 781
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 784
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/modules/collection/Collection;->releaseListDataCache()V

    .line 786
    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 787
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    .line 788
    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    .line 789
    return-void
.end method

.method public final declared-synchronized releaseListDataCache()V
    .locals 3

    .prologue
    .line 662
    monitor-enter p0

    :try_start_0
    const-string v0, "Collection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[releaseListDataCache] mImageListCache="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mImageListCache:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageListCache:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageListCache:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 665
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageListCache:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    :cond_0
    monitor-exit p0

    return-void

    .line 662
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reloadData()V
    .locals 2

    .prologue
    .line 707
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    instance-of v1, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v1, :cond_0

    .line 709
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    .line 710
    .local v0, listUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->resetCancelDelete()V

    .line 711
    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->startRequery()Z

    .line 713
    .end local v0           #listUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    :cond_0
    return-void
.end method

.method public final saveToPerference()V
    .locals 3

    .prologue
    .line 825
    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 826
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 828
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0, v0}, Lcom/htc/album/modules/collection/Collection;->onSaveToPerference(Landroid/content/SharedPreferences$Editor;)V

    .line 830
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 831
    return-void
.end method

.method public setCoverImage(Lcom/htc/album/modules/collection/SimpleImage;)V
    .locals 11
    .parameter "cover"

    .prologue
    .line 340
    if-nez p1, :cond_0

    .line 347
    :goto_0
    return-void

    .line 343
    :cond_0
    iget-object v1, p1, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/album/modules/collection/SimpleImage;->mMimeType:Ljava/lang/String;

    iget-wide v3, p1, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    iget v5, p1, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    iget v6, p1, Lcom/htc/album/modules/collection/SimpleImage;->mMediaType:I

    iget-wide v7, p1, Lcom/htc/album/modules/collection/SimpleImage;->mFileSize:J

    iget-wide v9, p1, Lcom/htc/album/modules/collection/SimpleImage;->mRowId:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/htc/album/modules/collection/Collection;->onNewSimpleImage(Ljava/lang/String;Ljava/lang/String;JIIJJ)Lcom/htc/album/modules/collection/SimpleImage;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    goto :goto_0
.end method

.method public setEnablePartialLoadImageList(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 721
    iput-boolean p1, p0, Lcom/htc/album/modules/collection/Collection;->mEnablePartialLoadImageList:Z

    .line 722
    return-void
.end method

.method public setFilter(Ljava/lang/String;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 512
    iput-object p1, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    .line 513
    return-void
.end method

.method protected setProperties(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "givenName"

    .prologue
    const/16 v4, 0x11

    const/16 v3, 0xff

    const/4 v2, 0x1

    .line 200
    const-string v0, "com.htc.HTCAlbum.CAMERA_SHOTS"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    const v0, 0x7f0a0061

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 203
    iput v4, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    .line 263
    :goto_0
    return-void

    .line 205
    :cond_0
    const-string v0, "com.htc.HTCAlbum.SNAPBOOTH"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    const v0, 0x7f0a0066

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 208
    iput v2, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    goto :goto_0

    .line 210
    :cond_1
    const-string v0, "com.htc.HTCAlbum.PANORAMA_SHOTS"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    const v0, 0x7f0a006a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 213
    iput v2, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    goto :goto_0

    .line 215
    :cond_2
    const-string v0, "com.htc.HTCAlbum.MY_INKS"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    const v0, 0x7f0a0067

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 218
    iput v2, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    goto :goto_0

    .line 220
    :cond_3
    const-string v0, "com.htc.HTCAlbum.SCRIBBLES"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 222
    const v0, 0x7f0a0068

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 223
    iput v2, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    goto :goto_0

    .line 225
    :cond_4
    const-string v0, "com.htc.HTCAlbum.MY_FAVORITES"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 227
    const v0, 0x7f0a0065

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 228
    iput v3, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    goto :goto_0

    .line 230
    :cond_5
    const-string v0, "com.htc.HTCAlbum.ALL_PHOTOS"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 232
    const v0, 0x7f0a0062

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 233
    const/16 v0, 0xf

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    goto/16 :goto_0

    .line 235
    :cond_6
    const-string v0, "com.htc.HTCAlbum.ALL_VIDEOS"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 237
    const v0, 0x7f0a0063

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 238
    const/16 v0, 0xf0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    goto/16 :goto_0

    .line 240
    :cond_7
    const-string v0, "com.htc.HTCAlbum.ALL_DOWNLOADS"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 242
    const v0, 0x7f0a0064

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 243
    iput v3, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    goto/16 :goto_0

    .line 245
    :cond_8
    const-string v0, "com.htc.HTCAlbum.ALL_3DS"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 247
    const v0, 0x7f0a0069

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 248
    iput v3, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    goto/16 :goto_0

    .line 253
    :cond_9
    sget-object v0, Lcom/htc/album/modules/collection/Collection;->BUCKET_ID_OTHERS:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 255
    const v0, 0x7f0a0058

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 261
    :goto_1
    iput v4, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    goto/16 :goto_0

    .line 259
    :cond_a
    iput-object p2, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    goto :goto_1
.end method

.method protected setQueryParamsForMediaType(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "intent"
    .parameter "folderType"
    .parameter "bucketId"
    .parameter "dispName"
    .parameter "mediaType"
    .parameter "proj"
    .parameter "filter"

    .prologue
    const/4 v6, 0x1

    .line 1059
    invoke-virtual {p0}, Lcom/htc/album/modules/collection/Collection;->getFolderRecoveryParam()Ljava/lang/String;

    move-result-object v1

    .line 1060
    .local v1, folderRecoveryParam:Ljava/lang/String;
    invoke-virtual {p0, p5}, Lcom/htc/album/modules/collection/Collection;->getQueryOrderBy(I)Ljava/lang/String;

    move-result-object v2

    .line 1061
    .local v2, order:Ljava/lang/String;
    invoke-virtual {p0, p5, v6}, Lcom/htc/album/modules/collection/Collection;->getQueryWhere(IZ)Ljava/lang/String;

    move-result-object v4

    .line 1062
    .local v4, where:Ljava/lang/String;
    invoke-virtual {p0, p5, v6}, Lcom/htc/album/modules/collection/Collection;->getQueryWhereParams(IZ)[Ljava/lang/String;

    move-result-object v0

    .line 1063
    .local v0, args:[Ljava/lang/String;
    invoke-virtual {p0, p5}, Lcom/htc/album/modules/collection/Collection;->getQueryUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 1065
    .local v3, uri:Landroid/net/Uri;
    const-string v5, "folder_type"

    invoke-virtual {p1, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1067
    if-ne p5, v6, :cond_3

    const-string v5, "com.htc.HTCAlbum.ALL_VIDEOS"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1070
    const-string v5, "image_uri"

    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1071
    const-string v5, "image_projection"

    invoke-virtual {p1, v5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1072
    const-string v5, "image_where"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1073
    const-string v5, "image_args"

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1074
    const-string v5, "image_sort_order"

    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1075
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isSupportPhoneStorageUri()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "com.htc.HTCAlbum.ALL_DOWNLOADS"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "com.htc.HTCAlbum.ALL_PHOTOS"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "com.htc.HTCAlbum.SNAPBOOTH"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "com.htc.HTCAlbum.PANORAMA_SHOTS"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "com.htc.HTCAlbum.BURST_SHOTS"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "com.htc.HTCAlbum.SCRIBBLES"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "com.htc.HTCAlbum.MY_INKS"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "com.htc.HTCAlbum.ALL_3DS"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1086
    :cond_0
    const-string v5, "image_uri_phone"

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhonePhotosUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1099
    :cond_1
    :goto_0
    sget-boolean v5, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 1100
    const-string v5, "Collection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[gallery_widget] uri = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", FolderRecoveryParam = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    :cond_2
    return-void

    .line 1089
    :cond_3
    const/16 v5, 0x10

    if-ne p5, v5, :cond_1

    const-string v5, "com.htc.HTCAlbum.ALL_PHOTOS"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1092
    const-string v5, "video_uri"

    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1093
    const-string v5, "video_projection"

    invoke-virtual {p1, v5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1094
    const-string v5, "video_where"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1095
    const-string v5, "video_args"

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1096
    const-string v5, "video_sort_order"

    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public setSortOrder(I)V
    .locals 2
    .parameter "sortOrder"

    .prologue
    .line 731
    iput p1, p0, Lcom/htc/album/modules/collection/Collection;->mSortOrder:I

    .line 732
    iget-boolean v0, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mSortOrder:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 733
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    .line 734
    :cond_0
    return-void
.end method

.method public setSupportedMediaTypes(I)V
    .locals 0
    .parameter "newTypes"

    .prologue
    .line 437
    iput p1, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    .line 438
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 361
    if-nez p1, :cond_0

    .line 362
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    .line 367
    :goto_0
    return-void

    .line 365
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    goto :goto_0
.end method

.method public showLatest()Z
    .locals 2

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    .line 268
    .local v0, isShowLatest:Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    .line 269
    return v0
.end method

.method public toFormatedString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 884
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 885
    .local v1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 887
    .local v3, mQueueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 888
    iget-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 889
    iget-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 890
    iget v4, p0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 891
    iget v4, p0, Lcom/htc/album/modules/collection/Collection;->mImageCnt:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 892
    iget v4, p0, Lcom/htc/album/modules/collection/Collection;->mVideoCnt:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 893
    iget v4, p0, Lcom/htc/album/modules/collection/Collection;->mDrmImageCnt:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 894
    iget v4, p0, Lcom/htc/album/modules/collection/Collection;->mDrmVideoCnt:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 895
    iget v4, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 896
    iget v4, p0, Lcom/htc/album/modules/collection/Collection;->mContainsMediaTypes:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 897
    iget-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 898
    iget v4, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 899
    iget-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    if-nez v4, :cond_0

    const-string v4, ""

    :goto_0
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 901
    iget-boolean v4, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 902
    iget-boolean v4, p0, Lcom/htc/album/modules/collection/Collection;->mEnableImageListCache:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 903
    iget-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mQueue:Ljava/util/PriorityQueue;

    if-eqz v4, :cond_1

    .line 904
    iget-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/collection/SimpleImage;

    .line 905
    .local v0, SI:Lcom/htc/album/modules/collection/SimpleImage;
    invoke-virtual {v0}, Lcom/htc/album/modules/collection/SimpleImage;->toFormatedString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 899
    .end local v0           #SI:Lcom/htc/album/modules/collection/SimpleImage;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_0
    iget-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    invoke-virtual {v4}, Lcom/htc/album/modules/collection/SimpleImage;->toFormatedString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 907
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/album/modules/collection/Collection;->capListObjHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 909
    invoke-virtual {p0, v1}, Lcom/htc/album/modules/collection/Collection;->capAllHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public toggleVisibility()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 371
    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    if-ne v1, v0, :cond_0

    .line 372
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    .line 375
    :goto_0
    return-void

    .line 374
    :cond_0
    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    goto :goto_0
.end method

.method public updateItemInfo(ILjava/lang/String;JLjava/lang/String;IJJ)V
    .locals 11
    .parameter "sourceType"
    .parameter "itemPath"
    .parameter "itemTime"
    .parameter "mimetype"
    .parameter "degree"
    .parameter "fileSize"
    .parameter "rowId"

    .prologue
    .line 288
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    if-nez v1, :cond_1

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p5

    move-wide v3, p3

    move/from16 v5, p6

    move v6, p1

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    .line 290
    invoke-virtual/range {v0 .. v10}, Lcom/htc/album/modules/collection/Collection;->onNewSimpleImage(Ljava/lang/String;Ljava/lang/String;JIIJJ)Lcom/htc/album/modules/collection/SimpleImage;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    .line 302
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    const/4 v2, 0x4

    if-gt v1, v2, :cond_6

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p5

    move-wide v3, p3

    move/from16 v5, p6

    move v6, p1

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    .line 304
    invoke-virtual/range {v0 .. v10}, Lcom/htc/album/modules/collection/Collection;->onNewSimpleImage(Ljava/lang/String;Ljava/lang/String;JIIJJ)Lcom/htc/album/modules/collection/SimpleImage;

    move-result-object v0

    .line 306
    .local v0, image:Lcom/htc/album/modules/collection/SimpleImage;
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 318
    :goto_1
    iget v1, p0, Lcom/htc/album/modules/collection/Collection;->mContainsMediaTypes:I

    or-int/2addr v1, p1

    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mContainsMediaTypes:I

    .line 319
    iget v1, p0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    .line 321
    sparse-switch p1, :sswitch_data_0

    .line 336
    :goto_2
    return-void

    .line 293
    .end local v0           #image:Lcom/htc/album/modules/collection/SimpleImage;
    :cond_1
    iget-boolean v1, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-wide v1, v1, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    cmp-long v1, p3, v1

    if-ltz v1, :cond_5

    :cond_2
    iget-boolean v1, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-wide v1, v1, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    cmp-long v1, p3, v1

    if-gtz v1, :cond_5

    :cond_3
    iget-boolean v1, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-wide v1, v1, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    cmp-long v1, p3, v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-object v1, v1, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_5

    :cond_4
    iget-boolean v1, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-wide v1, v1, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    cmp-long v1, p3, v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-object v1, v1, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    .line 298
    :cond_5
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    move-object v1, p2

    move-object/from16 v2, p5

    move-wide v3, p3

    move/from16 v5, p6

    move v6, p1

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Lcom/htc/album/modules/collection/SimpleImage;->update(Ljava/lang/String;Ljava/lang/String;JIIJJ)V

    goto/16 :goto_0

    .line 310
    :cond_6
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/collection/SimpleImage;

    .restart local v0       #image:Lcom/htc/album/modules/collection/SimpleImage;
    move-object v1, p2

    move-object/from16 v2, p5

    move-wide v3, p3

    move/from16 v5, p6

    move v6, p1

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    .line 311
    invoke-virtual/range {v0 .. v10}, Lcom/htc/album/modules/collection/SimpleImage;->update(Ljava/lang/String;Ljava/lang/String;JIIJJ)V

    .line 313
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 324
    :sswitch_0
    iget v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageCnt:I

    goto :goto_2

    .line 327
    :sswitch_1
    iget v1, p0, Lcom/htc/album/modules/collection/Collection;->mVideoCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mVideoCnt:I

    goto :goto_2

    .line 330
    :sswitch_2
    iget v1, p0, Lcom/htc/album/modules/collection/Collection;->mDrmImageCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mDrmImageCnt:I

    goto/16 :goto_2

    .line 333
    :sswitch_3
    iget v1, p0, Lcom/htc/album/modules/collection/Collection;->mDrmVideoCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mDrmVideoCnt:I

    goto/16 :goto_2

    .line 321
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xe -> :sswitch_2
        0x10 -> :sswitch_1
        0xe0 -> :sswitch_3
    .end sparse-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 594
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 597
    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 598
    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageCnt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 599
    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mVideoCnt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 600
    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mDrmImageCnt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 601
    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mDrmVideoCnt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 602
    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 603
    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mContainsMediaTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 604
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 605
    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 606
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 608
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-object v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-object v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-wide v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 613
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 614
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mMediaType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 615
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-wide v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mFileSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 618
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-wide v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mRowId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 620
    :cond_0
    return-void

    .line 606
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
