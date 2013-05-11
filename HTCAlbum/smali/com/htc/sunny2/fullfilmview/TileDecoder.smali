.class public Lcom/htc/sunny2/fullfilmview/TileDecoder;
.super Landroid/os/HandlerThread;
.source "TileDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/fullfilmview/TileDecoder$TileDecodeCompleteListener;
    }
.end annotation


# static fields
.field public static final BORDER_SIZE:I = 0x1

.field protected static final DEBUG:Z = false

.field private static final LOCK:Ljava/lang/Object; = null

.field public static final MSG_DECODE_IMAGE:I = 0xc350

.field public static final MSG_QUIT:I = 0xc351

.field public static final SIZE:I = 0x100

.field public static final TILE_SIZE:I = 0xfe


# instance fields
.field private final BITMAP_REUSE_COUNT:I

.field private LOG_TAG:Ljava/lang/String;

.field private bitmapReuseQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private bitmapsCreatedForReuseQueue:I

.field private mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

.field private mCallback:Lcom/htc/sunny2/fullfilmview/TileDecoder$TileDecodeCompleteListener;

.field private mFD:Ljava/io/FileDescriptor;

.field private mHandler:Landroid/os/Handler;

.field private mIS:Ljava/io/InputStream;

.field private mPathName:Ljava/lang/String;

.field private mValid:Z

.field private queue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/htc/sunny2/fullfilmview/TileDecodeItem;",
            ">;"
        }
    .end annotation
.end field

.field private quitFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "name"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 23
    const-string v0, "TileDecoder"

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->LOG_TAG:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->mValid:Z

    .line 34
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->mHandler:Landroid/os/Handler;

    .line 35
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->mCallback:Lcom/htc/sunny2/fullfilmview/TileDecoder$TileDecodeCompleteListener;

    .line 37
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->quitFlag:Z

    .line 38
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 39
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->bitmapReuseQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 40
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->bitmapsCreatedForReuseQueue:I

    .line 41
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->BITMAP_REUSE_COUNT:I

    .line 43
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->mPathName:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->mIS:Ljava/io/InputStream;

    .line 45
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->mFD:Ljava/io/FileDescriptor;

    .line 52
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 53
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, v3}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->bitmapReuseQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny2/fullfilmview/TileDecoder;)Ljava/util/concurrent/PriorityBlockingQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/sunny2/fullfilmview/TileDecoder;Ljava/util/concurrent/PriorityBlockingQueue;)Ljava/util/concurrent/PriorityBlockingQueue;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/sunny2/fullfilmview/TileDecoder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/sunny2/fullfilmview/TileDecoder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->bitmapsCreatedForReuseQueue:I

    return v0
.end method

.method static synthetic access$208(Lcom/htc/sunny2/fullfilmview/TileDecoder;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->bitmapsCreatedForReuseQueue:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->bitmapsCreatedForReuseQueue:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/sunny2/fullfilmview/TileDecoder;)Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->bitmapReuseQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/sunny2/fullfilmview/TileDecoder;Ljava/util/concurrent/ArrayBlockingQueue;)Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->bitmapReuseQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/sunny2/fullfilmview/TileDecoder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->quitFlag:Z

    return v0
.end method

.method static synthetic access$500()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/sunny2/fullfilmview/TileDecoder;)Landroid/graphics/BitmapRegionDecoder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/sunny2/fullfilmview/TileDecoder;Landroid/graphics/BitmapRegionDecoder;)Landroid/graphics/BitmapRegionDecoder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    return-object p1
.end method

.method static synthetic access$700(Lcom/htc/sunny2/fullfilmview/TileDecoder;)Lcom/htc/sunny2/fullfilmview/TileDecoder$TileDecodeCompleteListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->mCallback:Lcom/htc/sunny2/fullfilmview/TileDecoder$TileDecodeCompleteListener;

    return-object v0
.end method

.method private addQuitBitmap()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 102
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->quitFlag:Z

    .line 103
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 104
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->bitmapReuseQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 105
    return-void
.end method


# virtual methods
.method public addDecodeItem(Lcom/htc/sunny2/fullfilmview/TileDecodeItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->quitFlag:Z

    if-eqz v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->mHandler:Landroid/os/Handler;

    const v1, 0xc350

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public addReuseBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->quitFlag:Z

    if-eqz v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->bitmapReuseQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clearQueue()V
    .locals 2

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->quitFlag:Z

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->mHandler:Landroid/os/Handler;

    const v1, 0xc350

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 85
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->clear()V

    goto :goto_0
.end method

.method public freeBitmapRegionDecoder()V
    .locals 2

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->clearQueue()V

    .line 289
    sget-object v1, Lcom/htc/sunny2/fullfilmview/TileDecoder;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 291
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->mPathName:Ljava/lang/String;

    .line 292
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->mIS:Ljava/io/InputStream;

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->mFD:Ljava/io/FileDescriptor;

    .line 295
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 300
    :cond_0
    monitor-exit v1

    .line 301
    return-void

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public initHandler()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 109
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 110
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 111
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 112
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 113
    new-instance v1, Lcom/htc/sunny2/fullfilmview/TileDecoder$1;

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/htc/sunny2/fullfilmview/TileDecoder$1;-><init>(Lcom/htc/sunny2/fullfilmview/TileDecoder;Landroid/os/Looper;Landroid/graphics/BitmapFactory$Options;)V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->mHandler:Landroid/os/Handler;

    .line 218
    return-void
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->mValid:Z

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->clearQueue()V

    .line 306
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->addQuitBitmap()V

    .line 307
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->mHandler:Landroid/os/Handler;

    const v1, 0xc351

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 308
    return-void
.end method

.method public setTileDecodeCompleteCallback(Lcom/htc/sunny2/fullfilmview/TileDecoder$TileDecodeCompleteListener;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->mCallback:Lcom/htc/sunny2/fullfilmview/TileDecoder$TileDecodeCompleteListener;

    .line 64
    return-void
.end method

.method public setValid(Z)V
    .locals 0
    .parameter "valid"

    .prologue
    .line 312
    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->mValid:Z

    .line 313
    return-void
.end method

.method public setupRegionDecoder(Ljava/io/FileDescriptor;)V
    .locals 3
    .parameter "fd"

    .prologue
    .line 266
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->quitFlag:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->mFD:Ljava/io/FileDescriptor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->mFD:Ljava/io/FileDescriptor;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->freeBitmapRegionDecoder()V

    .line 274
    sget-object v2, Lcom/htc/sunny2/fullfilmview/TileDecoder;->LOCK:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    const/4 v1, 0x0

    :try_start_1
    invoke-static {p1, v1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 277
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->mFD:Ljava/io/FileDescriptor;

    .line 278
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 280
    :catch_0
    move-exception v0

    .line 282
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][TileDecoder][initRegionDecoder]can\'t get BitmapRegionDecoder"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setupRegionDecoder(Ljava/io/InputStream;)V
    .locals 3
    .parameter "is"

    .prologue
    .line 244
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->quitFlag:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->mIS:Ljava/io/InputStream;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->mIS:Ljava/io/InputStream;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->freeBitmapRegionDecoder()V

    .line 252
    sget-object v2, Lcom/htc/sunny2/fullfilmview/TileDecoder;->LOCK:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    const/4 v1, 0x0

    :try_start_1
    invoke-static {p1, v1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 255
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->mIS:Ljava/io/InputStream;

    .line 256
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 258
    :catch_0
    move-exception v0

    .line 260
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][TileDecoder][initRegionDecoder]can\'t get BitmapRegionDecoder"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setupRegionDecoder(Ljava/lang/String;)V
    .locals 3
    .parameter "pathName"

    .prologue
    .line 222
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->quitFlag:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->mPathName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->mPathName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->freeBitmapRegionDecoder()V

    .line 230
    sget-object v2, Lcom/htc/sunny2/fullfilmview/TileDecoder;->LOCK:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    const/4 v1, 0x0

    :try_start_1
    invoke-static {p1, v1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 233
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->mPathName:Ljava/lang/String;

    .line 234
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 236
    :catch_0
    move-exception v0

    .line 238
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][TileDecoder][initRegionDecoder]can\'t get BitmapRegionDecoder"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
