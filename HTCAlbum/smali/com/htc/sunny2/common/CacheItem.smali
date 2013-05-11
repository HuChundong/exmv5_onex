.class public Lcom/htc/sunny2/common/CacheItem;
.super Lcom/htc/sunny2/frameworks/cache/CacheTask;
.source "CacheItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/common/CacheItem$IOTYPE;
    }
.end annotation


# static fields
.field private static final CACHE_BITMAP_SIZE:I = 0x10

.field private static final DEFAULT_CACHESET:I = -0x1

.field public static final STATUS_DEFAULT:I = 0x0

.field public static final STATUS_NOT_DECODE:I = 0x2

.field public static final STATUS_SUCCESS:I = 0x1

.field private static final sBitmapPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final LOCK:Ljava/lang/Object;

.field public enableCropCenter:Z

.field public isDecodeSuccess:Z

.field public mCacheHeight:I

.field public mCacheWidth:I

.field public mIOType:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

.field public mInputStream:Ljava/io/InputStream;

.field public mIsLoadFromExif:Z

.field protected mIsRelease:Z

.field public mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field public mSourceHeight:I

.field public mSourceType:I

.field public mSourceWidth:I

.field mStatusFlag:I

.field public mSubIndex:I

.field public mTargetHeight:I

.field public mTargetQuality:I

.field public mTargetWidth:I

.field public mUri:Ljava/lang/String;

.field public mimeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/sunny2/common/CacheItem;->sBitmapPool:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JII)V
    .locals 9
    .parameter "ioType"
    .parameter "cacheSet"
    .parameter "filePath"
    .parameter "modifyTime"
    .parameter "fileSize"
    .parameter "position"

    .prologue
    .line 92
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;)V
    .locals 9
    .parameter "ioType"
    .parameter "cacheSet"
    .parameter "filePath"
    .parameter "modifyTime"
    .parameter "fileSize"
    .parameter "position"
    .parameter "bitmap"

    .prologue
    .line 96
    int-to-long v6, p6

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/htc/sunny2/frameworks/cache/CacheTask;-><init>(ILjava/lang/String;JJI)V

    .line 68
    sget-object v1, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    iput-object v1, p0, Lcom/htc/sunny2/common/CacheItem;->mIOType:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    .line 69
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    .line 70
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    .line 71
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mCacheWidth:I

    .line 72
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mCacheHeight:I

    .line 73
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    .line 74
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    .line 75
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    .line 76
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/common/CacheItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/common/CacheItem;->mUri:Ljava/lang/String;

    .line 78
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/common/CacheItem;->mInputStream:Ljava/io/InputStream;

    .line 79
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/common/CacheItem;->enableCropCenter:Z

    .line 80
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/common/CacheItem;->isDecodeSuccess:Z

    .line 81
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mTargetQuality:I

    .line 82
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mStatusFlag:I

    .line 83
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    .line 84
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    .line 85
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/common/CacheItem;->mIsLoadFromExif:Z

    .line 146
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/htc/sunny2/common/CacheItem;->LOCK:Ljava/lang/Object;

    .line 147
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/common/CacheItem;->mIsRelease:Z

    .line 97
    iput-object p1, p0, Lcom/htc/sunny2/common/CacheItem;->mIOType:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    .line 98
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 99
    return-void
.end method

.method public constructor <init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;Z)V
    .locals 10
    .parameter "ioType"
    .parameter "cacheSet"
    .parameter "filePath"
    .parameter "modifyTime"
    .parameter "fileSize"
    .parameter "position"
    .parameter "bitmap"
    .parameter "hasSubList"

    .prologue
    .line 102
    move/from16 v0, p6

    int-to-long v6, v0

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move/from16 v8, p7

    move/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lcom/htc/sunny2/frameworks/cache/CacheTask;-><init>(ILjava/lang/String;JJIZ)V

    .line 68
    sget-object v1, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    iput-object v1, p0, Lcom/htc/sunny2/common/CacheItem;->mIOType:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    .line 69
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    .line 70
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    .line 71
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mCacheWidth:I

    .line 72
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mCacheHeight:I

    .line 73
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    .line 74
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    .line 75
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    .line 76
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/common/CacheItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/common/CacheItem;->mUri:Ljava/lang/String;

    .line 78
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/common/CacheItem;->mInputStream:Ljava/io/InputStream;

    .line 79
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/common/CacheItem;->enableCropCenter:Z

    .line 80
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/common/CacheItem;->isDecodeSuccess:Z

    .line 81
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mTargetQuality:I

    .line 82
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mStatusFlag:I

    .line 83
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    .line 84
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    .line 85
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/common/CacheItem;->mIsLoadFromExif:Z

    .line 146
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/htc/sunny2/common/CacheItem;->LOCK:Ljava/lang/Object;

    .line 147
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/common/CacheItem;->mIsRelease:Z

    .line 103
    iput-object p1, p0, Lcom/htc/sunny2/common/CacheItem;->mIOType:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    .line 104
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 105
    return-void
.end method

.method public constructor <init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;Ljava/lang/String;JII)V
    .locals 9
    .parameter "ioType"
    .parameter "filePath"
    .parameter "modifyTime"
    .parameter "fileSize"
    .parameter "position"

    .prologue
    .line 88
    const/4 v2, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;)V

    .line 89
    return-void
.end method

.method public static declared-synchronized clearAll()V
    .locals 4

    .prologue
    .line 48
    const-class v3, Lcom/htc/sunny2/common/CacheItem;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/htc/sunny2/common/CacheItem;->sBitmapPool:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 49
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 48
    .end local v0           #b:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 53
    :cond_1
    :try_start_1
    sget-object v2, Lcom/htc/sunny2/common/CacheItem;->sBitmapPool:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    monitor-exit v3

    return-void
.end method

.method public static declared-synchronized getCacheBitmap(II)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "width"
    .parameter "height"

    .prologue
    .line 21
    const-class v4, Lcom/htc/sunny2/common/CacheItem;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/htc/sunny2/common/CacheItem;->sBitmapPool:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 27
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 28
    sget-object v3, Lcom/htc/sunny2/common/CacheItem;->sBitmapPool:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 29
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, p0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 30
    sget-object v3, Lcom/htc/sunny2/common/CacheItem;->sBitmapPool:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .end local v0           #b:Landroid/graphics/Bitmap;
    :goto_1
    monitor-exit v4

    return-object v3

    .line 27
    .restart local v0       #b:Landroid/graphics/Bitmap;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 34
    .end local v0           #b:Landroid/graphics/Bitmap;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 21
    .end local v1           #count:I
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "bmp"

    .prologue
    .line 38
    const-class v3, Lcom/htc/sunny2/common/CacheItem;

    monitor-enter v3

    if-nez p0, :cond_0

    .line 45
    :goto_0
    monitor-exit v3

    return-void

    .line 39
    :cond_0
    :try_start_0
    sget-object v2, Lcom/htc/sunny2/common/CacheItem;->sBitmapPool:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 40
    .local v1, count:I
    const/16 v2, 0x10

    if-le v1, v2, :cond_1

    .line 41
    sget-object v2, Lcom/htc/sunny2/common/CacheItem;->sBitmapPool:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 42
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 44
    .end local v0           #b:Landroid/graphics/Bitmap;
    :cond_1
    sget-object v2, Lcom/htc/sunny2/common/CacheItem;->sBitmapPool:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 38
    .end local v1           #count:I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private reset()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 126
    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    .line 127
    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    .line 128
    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mCacheWidth:I

    .line 129
    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mCacheHeight:I

    .line 130
    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    .line 131
    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    .line 132
    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mTargetQuality:I

    .line 133
    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mStatusFlag:I

    .line 134
    iput-object v0, p0, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    .line 135
    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    .line 136
    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 137
    sget-object v0, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    iput-object v0, p0, Lcom/htc/sunny2/common/CacheItem;->mIOType:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    .line 138
    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    .line 139
    iput-boolean v1, p0, Lcom/htc/sunny2/common/CacheItem;->mIsLoadFromExif:Z

    .line 140
    return-void
.end method


# virtual methods
.method public isStatus(I)Z
    .locals 1
    .parameter "statusFlag"

    .prologue
    .line 143
    iget v0, p0, Lcom/htc/sunny2/common/CacheItem;->mStatusFlag:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 150
    iget-object v1, p0, Lcom/htc/sunny2/common/CacheItem;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 151
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/sunny2/common/CacheItem;->mIsRelease:Z

    if-ne v3, v0, :cond_0

    .line 152
    monitor-exit v1

    .line 172
    :goto_0
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/common/CacheItem;->mIsRelease:Z

    .line 156
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 159
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIsSkiaDecodeBitmap:Z

    if-nez v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 166
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 168
    :cond_1
    invoke-direct {p0}, Lcom/htc/sunny2/common/CacheItem;->reset()V

    .line 169
    invoke-super {p0}, Lcom/htc/sunny2/frameworks/cache/CacheTask;->release()V

    .line 171
    iput-boolean v2, p0, Lcom/htc/sunny2/common/CacheItem;->mIsRelease:Z

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/htc/sunny2/common/CacheItem;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 164
    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIsSkiaDecodeBitmap:Z

    goto :goto_1
.end method

.method public updateContent(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;)V
    .locals 10
    .parameter "ioType"
    .parameter "cacheSet"
    .parameter "filePath"
    .parameter "modifyTime"
    .parameter "fileSize"
    .parameter "position"
    .parameter "bitmap"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/htc/sunny2/common/CacheItem;->reset()V

    .line 109
    move/from16 v0, p6

    int-to-long v6, v0

    const/4 v9, 0x0

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move/from16 v8, p7

    invoke-super/range {v1 .. v9}, Lcom/htc/sunny2/frameworks/cache/CacheTask;->updateContent(ILjava/lang/String;JJIZ)V

    .line 110
    iput-object p1, p0, Lcom/htc/sunny2/common/CacheItem;->mIOType:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    .line 111
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 112
    return-void
.end method

.method public updateContent(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;Z)V
    .locals 10
    .parameter "ioType"
    .parameter "cacheSet"
    .parameter "filePath"
    .parameter "modifyTime"
    .parameter "fileSize"
    .parameter "position"
    .parameter "bitmap"
    .parameter "hasSubList"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/htc/sunny2/common/CacheItem;->reset()V

    .line 116
    move/from16 v0, p6

    int-to-long v6, v0

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move/from16 v8, p7

    move/from16 v9, p9

    invoke-super/range {v1 .. v9}, Lcom/htc/sunny2/frameworks/cache/CacheTask;->updateContent(ILjava/lang/String;JJIZ)V

    .line 117
    iput-object p1, p0, Lcom/htc/sunny2/common/CacheItem;->mIOType:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    .line 118
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 119
    return-void
.end method

.method public updateIOType(Lcom/htc/sunny2/common/CacheItem$IOTYPE;)V
    .locals 0
    .parameter "ioType"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/htc/sunny2/common/CacheItem;->mIOType:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    .line 123
    return-void
.end method
