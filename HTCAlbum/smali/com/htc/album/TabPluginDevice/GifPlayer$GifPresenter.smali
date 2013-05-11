.class public Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;
.super Ljava/lang/Object;
.source "GifPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/GifPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GifPresenter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "GifPresenter"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCurrentBmpDuration:I

.field private mCurrentBmpPos:I

.field private mCurrentDispPos:I

.field private mDecodeThread:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;

.field private mDispRunnable:Ljava/lang/Runnable;

.field private mFrameByFrameData:Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;

.field private mFrameCount:I

.field private mGifView:Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;

.field private mStop:Z

.field newSize:[I

.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/GifPlayer;


# direct methods
.method public constructor <init>(Lcom/htc/album/TabPluginDevice/GifPlayer;Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;Landroid/net/Uri;Landroid/content/ContentResolver;)V
    .locals 5
    .parameter
    .parameter "gifView"
    .parameter "uri"
    .parameter "cr"

    .prologue
    const/4 v4, 0x1

    .line 195
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->this$0:Lcom/htc/album/TabPluginDevice/GifPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 279
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->newSize:[I

    .line 337
    new-instance v1, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$1;

    invoke-direct {v1, p0}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$1;-><init>(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;)V

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mDispRunnable:Ljava/lang/Runnable;

    .line 196
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->ClearDataMember()V

    .line 197
    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mGifView:Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;

    .line 198
    if-eqz p3, :cond_0

    const-string v1, "drm"

    invoke-virtual {p3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    const-string v1, "DRM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gif play uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-static {p1, p3}, Lcom/htc/opensense2/album/util/DrmManager;->getDrmImageContent(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 201
    .local v0, is:Ljava/io/InputStream;
    new-instance v1, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;

    invoke-direct {v1, v0}, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameByFrameData:Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;

    .line 202
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameByFrameData:Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;

    invoke-virtual {v1, v4}, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->LoadData(I)Z

    .line 203
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameByFrameData:Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->getCount()I

    move-result v1

    iput v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameCount:I

    .line 210
    .end local v0           #is:Ljava/io/InputStream;
    :goto_0
    return-void

    .line 206
    :cond_0
    new-instance v1, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;

    invoke-direct {v1, p3, p4}, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;-><init>(Landroid/net/Uri;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameByFrameData:Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;

    .line 207
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameByFrameData:Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;

    invoke-virtual {v1, v4}, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->LoadData(I)Z

    .line 208
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameByFrameData:Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->getCount()I

    move-result v1

    iput v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameCount:I

    goto :goto_0
.end method

.method public constructor <init>(Lcom/htc/album/TabPluginDevice/GifPlayer;Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "gifView"
    .parameter "path"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->this$0:Lcom/htc/album/TabPluginDevice/GifPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->newSize:[I

    .line 337
    new-instance v0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$1;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$1;-><init>(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mDispRunnable:Ljava/lang/Runnable;

    .line 213
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->ClearDataMember()V

    .line 214
    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mGifView:Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;

    .line 216
    new-instance v0, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;

    invoke-direct {v0, p3}, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameByFrameData:Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;

    .line 217
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameByFrameData:Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->LoadData(I)Z

    .line 218
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameByFrameData:Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->getCount()I

    move-result v0

    iput v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameCount:I

    .line 219
    return-void
.end method

.method private ClearDataMember()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 222
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mBitmap:Landroid/graphics/Bitmap;

    .line 223
    iput v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mCurrentBmpPos:I

    .line 224
    iput v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mCurrentDispPos:I

    .line 225
    iput v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameCount:I

    .line 226
    iput v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mCurrentBmpDuration:I

    .line 227
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mStop:Z

    .line 228
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;

    .line 229
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mGifView:Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mGifView:Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;->release()V

    .line 231
    :cond_0
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mGifView:Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;

    .line 232
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameByFrameData:Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;

    .line 233
    return-void
.end method

.method private DisplayNextFrame()V
    .locals 6

    .prologue
    .line 346
    const-wide/16 v0, 0x0

    .line 347
    .local v0, duration:J
    monitor-enter p0

    .line 352
    :try_start_0
    iget v3, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mCurrentBmpPos:I

    iget v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mCurrentDispPos:I

    if-gt v3, v4, :cond_1

    .line 355
    const-string v3, "GifPresenter"

    const-string v4, "[HTCAlbum][GifPresenter][DisplayNextFrame] wait begin"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget v3, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mCurrentBmpPos:I

    iget v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameCount:I

    if-ge v3, v4, :cond_0

    .line 358
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 360
    :cond_0
    const-string v3, "GifPresenter"

    const-string v4, "[HTCAlbum][GifPresenter][DisplayNextFrame] wait end"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :cond_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mGifView:Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 363
    iget v3, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mCurrentBmpDuration:I

    int-to-long v0, v3

    .line 364
    iget v3, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mCurrentDispPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mCurrentDispPos:I

    .line 366
    iget v3, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mCurrentDispPos:I

    iget v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameCount:I

    if-lt v3, v4, :cond_3

    .line 368
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->this$0:Lcom/htc/album/TabPluginDevice/GifPlayer;

    #getter for: Lcom/htc/album/TabPluginDevice/GifPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/album/TabPluginDevice/GifPlayer;->access$400(Lcom/htc/album/TabPluginDevice/GifPlayer;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$2;

    invoke-direct {v4, p0}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$2;-><init>(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;)V

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 376
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    :cond_2
    :goto_0
    return-void

    .line 381
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 388
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 389
    iget-boolean v3, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mStop:Z

    if-nez v3, :cond_2

    .line 390
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->this$0:Lcom/htc/album/TabPluginDevice/GifPlayer;

    #getter for: Lcom/htc/album/TabPluginDevice/GifPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/album/TabPluginDevice/GifPlayer;->access$400(Lcom/htc/album/TabPluginDevice/GifPlayer;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mDispRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 384
    :catch_0
    move-exception v2

    .line 386
    .local v2, ex:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "GifPresenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DisplayNextFrame] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 388
    .end local v2           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3
.end method

.method static synthetic access$1102(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    iput p1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mCurrentBmpDuration:I

    return p1
.end method

.method static synthetic access$1300(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->DisplayNextFrame()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mStop:Z

    return v0
.end method

.method static synthetic access$600(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mCurrentBmpPos:I

    return v0
.end method

.method static synthetic access$604(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mCurrentBmpPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mCurrentBmpPos:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;)Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameByFrameData:Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mCurrentDispPos:I

    return v0
.end method


# virtual methods
.method public FreeResource()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameByFrameData:Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameByFrameData:Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->FreeResource()V

    .line 248
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->ClearDataMember()V

    .line 249
    return-void
.end method

.method public Pause()V
    .locals 3

    .prologue
    .line 253
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mStop:Z

    if-nez v1, :cond_0

    .line 255
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mStop:Z

    .line 256
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->this$0:Lcom/htc/album/TabPluginDevice/GifPlayer;

    #getter for: Lcom/htc/album/TabPluginDevice/GifPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/GifPlayer;->access$400(Lcom/htc/album/TabPluginDevice/GifPlayer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mDispRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 257
    monitor-enter p0

    .line 258
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 259
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :try_start_1
    invoke-static {}, Lcom/htc/album/TabPluginDevice/GifPlayer;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "before decode thread\'s join"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;->join()V

    .line 263
    invoke-static {}, Lcom/htc/album/TabPluginDevice/GifPlayer;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "after decode thread join"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 268
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;

    .line 269
    invoke-static {}, Lcom/htc/album/TabPluginDevice/GifPlayer;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "End Pause()"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_0
    return-void

    .line 259
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, ex:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public Play()V
    .locals 2

    .prologue
    .line 235
    iget v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameCount:I

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameByFrameData:Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;->getCount()I

    move-result v0

    iput v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mFrameCount:I

    .line 237
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mStop:Z

    .line 238
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;

    if-nez v0, :cond_1

    .line 239
    new-instance v0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;-><init>(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;Lcom/htc/album/TabPluginDevice/GifPlayer$1;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$DecodeThread;->start()V

    .line 242
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->DisplayNextFrame()V

    .line 243
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mStop:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
