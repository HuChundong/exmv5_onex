.class public Lcom/htc/album/PaintManager/HtcPaintMergeTool;
.super Lcom/htc/opensense2/album/SocialNetworkManager/NotifyMessenger;
.source "HtcPaintMergeTool.java"

# interfaces
.implements Lcom/htc/album/PaintManager/Interface/IPaintFileDAO;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/PaintManager/HtcPaintMergeTool$CacheListener;,
        Lcom/htc/album/PaintManager/HtcPaintMergeTool$asyncReqPhotoMerge;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final MERGE_REQUEST_BEGIN:I = 0x3034

.field private static final MERGE_REQUEST_CACHEDPAINT:I = 0x3035

.field private static final MERGE_REQUEST_END:I = 0x3038

.field private static final MERGE_REQUEST_STROKEDATA:I = 0x3036

.field private static final MERGE_REQUEST_STROKEMERGE:I = 0x3037


# instance fields
.field private mAsyncMergePhoto:Landroid/os/AsyncTask;

.field private mDataPath:Ljava/lang/String;

.field private mFileSerializeDAO:Lcom/htc/album/PaintManager/FileSerializeDAO;

.field private mHandler:Landroid/os/Handler;

.field private mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

.field private mListener:Lcom/htc/album/PaintManager/Interface/IPaintMergeProgressListener;

.field private mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 215
    invoke-direct {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/NotifyMessenger;-><init>()V

    .line 33
    iput-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;

    .line 34
    iput-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mDataPath:Ljava/lang/String;

    .line 35
    iput-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mListener:Lcom/htc/album/PaintManager/Interface/IPaintMergeProgressListener;

    .line 36
    iput-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    .line 37
    iput-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mHandler:Landroid/os/Handler;

    .line 38
    iput-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mFileSerializeDAO:Lcom/htc/album/PaintManager/FileSerializeDAO;

    .line 39
    iput-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mAsyncMergePhoto:Landroid/os/AsyncTask;

    .line 216
    new-instance v0, Lcom/htc/opensense2/album/cache/InkCacheManager;

    const/4 v1, 0x3

    const/16 v2, 0x1f

    new-instance v3, Lcom/htc/album/PaintManager/HtcPaintMergeTool$CacheListener;

    invoke-direct {v3, p0, v4}, Lcom/htc/album/PaintManager/HtcPaintMergeTool$CacheListener;-><init>(Lcom/htc/album/PaintManager/HtcPaintMergeTool;Lcom/htc/album/PaintManager/HtcPaintMergeTool$1;)V

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/htc/opensense2/album/cache/InkCacheManager;-><init>(Landroid/content/Context;IILcom/htc/opensense2/album/cache/InkCacheManager$InkCacheListener;)V

    iput-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    .line 217
    new-instance v0, Lcom/htc/album/PaintManager/HtcPaintMergeTool$1;

    invoke-direct {v0, p0}, Lcom/htc/album/PaintManager/HtcPaintMergeTool$1;-><init>(Lcom/htc/album/PaintManager/HtcPaintMergeTool;)V

    iput-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mHandler:Landroid/os/Handler;

    .line 224
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->setDataHandler(Landroid/os/Handler;)V

    .line 226
    new-instance v0, Lcom/htc/album/PaintManager/FileSerializeDAO;

    invoke-direct {v0}, Lcom/htc/album/PaintManager/FileSerializeDAO;-><init>()V

    iput-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mFileSerializeDAO:Lcom/htc/album/PaintManager/FileSerializeDAO;

    .line 227
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mFileSerializeDAO:Lcom/htc/album/PaintManager/FileSerializeDAO;

    invoke-virtual {v0, p0}, Lcom/htc/album/PaintManager/FileSerializeDAO;->setReroute(Lcom/htc/album/PaintManager/Interface/IPaintFileDAO;)V

    .line 228
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mFileSerializeDAO:Lcom/htc/album/PaintManager/FileSerializeDAO;

    invoke-virtual {v0}, Lcom/htc/album/PaintManager/FileSerializeDAO;->initialize()Z

    .line 229
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/PaintManager/HtcPaintMergeTool;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mDataPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/PaintManager/HtcPaintMergeTool;)Lcom/htc/album/PaintManager/PaintViewItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/PaintManager/HtcPaintMergeTool;)Lcom/htc/album/PaintManager/FileSerializeDAO;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mFileSerializeDAO:Lcom/htc/album/PaintManager/FileSerializeDAO;

    return-object v0
.end method

.method private onMergeRequestBegin()V
    .locals 3

    .prologue
    .line 288
    sget-object v0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][HtcPaintMergeTool][onMergeRequestBegin]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mListener:Lcom/htc/album/PaintManager/Interface/IPaintMergeProgressListener;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mListener:Lcom/htc/album/PaintManager/Interface/IPaintMergeProgressListener;

    invoke-interface {v0}, Lcom/htc/album/PaintManager/Interface/IPaintMergeProgressListener;->onMergeBegin()V

    .line 294
    :cond_0
    const/16 v0, 0x3035

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 295
    return-void
.end method

.method private onMergeRequestCachedPaint()V
    .locals 2

    .prologue
    .line 298
    sget-object v0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][HtcPaintMergeTool][onMergeRequestCachedPaint]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    iget-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;

    invoke-virtual {v1}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkCachePaint()Lcom/htc/opensense2/album/cache/InkCacheTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/cache/InkCacheManager;->pull(Lcom/htc/opensense2/album/cache/InkCacheTask;)Z

    .line 301
    return-void
.end method

.method private onMergeRequestEnd()V
    .locals 2

    .prologue
    .line 358
    sget-object v0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][HtcPaintMergeTool][onMergeRequestEnd]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mListener:Lcom/htc/album/PaintManager/Interface/IPaintMergeProgressListener;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mListener:Lcom/htc/album/PaintManager/Interface/IPaintMergeProgressListener;

    invoke-interface {v0}, Lcom/htc/album/PaintManager/Interface/IPaintMergeProgressListener;->onMergeEnd()V

    .line 361
    :cond_0
    return-void
.end method

.method private onMergeRequestStrokeData()V
    .locals 2

    .prologue
    .line 325
    sget-object v0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][HtcPaintMergeTool][onMergeRequestStrokeData]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    iget-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;

    invoke-virtual {v1}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkCacheData()Lcom/htc/opensense2/album/cache/InkCacheTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/cache/InkCacheManager;->pull(Lcom/htc/opensense2/album/cache/InkCacheTask;)Z

    .line 328
    return-void
.end method

.method private onMergeRequestStrokeMerge()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 354
    new-instance v0, Lcom/htc/album/PaintManager/HtcPaintMergeTool$asyncReqPhotoMerge;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/album/PaintManager/HtcPaintMergeTool$asyncReqPhotoMerge;-><init>(Lcom/htc/album/PaintManager/HtcPaintMergeTool;Lcom/htc/album/PaintManager/HtcPaintMergeTool$1;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/album/PaintManager/HtcPaintMergeTool$asyncReqPhotoMerge;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mAsyncMergePhoto:Landroid/os/AsyncTask;

    .line 355
    return-void
.end method


# virtual methods
.method public asyncMerge()Z
    .locals 4

    .prologue
    .line 255
    const/4 v0, 0x0

    .line 259
    .local v0, bResult:Z
    const/16 v1, 0x3034

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 261
    return v0
.end method

.method public cancelAsyncMerge()V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mAsyncMergePhoto:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 384
    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mAsyncMergePhoto:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 385
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mAsyncMergePhoto:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 387
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mAsyncMergePhoto:Landroid/os/AsyncTask;

    .line 388
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 278
    invoke-virtual {p0}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->release()V

    .line 279
    invoke-virtual {p0}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->cancelAsyncMerge()V

    .line 280
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/cache/InkCacheManager;->release()V

    .line 281
    iput-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    .line 282
    iput-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mHandler:Landroid/os/Handler;

    .line 283
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->setDataHandler(Landroid/os/Handler;)V

    .line 284
    iput-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mFileSerializeDAO:Lcom/htc/album/PaintManager/FileSerializeDAO;

    .line 285
    return-void
.end method

.method public getResult()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 265
    iget-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;

    invoke-virtual {v1}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkPaint()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 266
    .local v0, bitmap:Landroid/graphics/Bitmap;
    sget-object v1, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][HtcPaintMergeTool][getResult]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-object v0
.end method

.method public mergeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "bitmapBottom"
    .parameter "bitmapTop"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 43
    const/4 v0, 0x0

    .line 48
    .local v0, bitmapComb:Landroid/graphics/Bitmap;
    if-nez p1, :cond_0

    move-object v1, v0

    .line 79
    .end local v0           #bitmapComb:Landroid/graphics/Bitmap;
    .local v1, bitmapComb:Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 54
    .end local v1           #bitmapComb:Landroid/graphics/Bitmap;
    .restart local v0       #bitmapComb:Landroid/graphics/Bitmap;
    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 55
    .local v3, rect:Landroid/graphics/Rect;
    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 56
    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 57
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 58
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 60
    if-nez p2, :cond_1

    .line 62
    sget-object v4, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][HtcPaintMergeTool][mergeBitmap]: no paint top"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {p1, v3, v3}, Lcom/htc/opensense2/album/util/BitmapUtil2;->duplicateBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    .line 64
    .end local v0           #bitmapComb:Landroid/graphics/Bitmap;
    .restart local v1       #bitmapComb:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 67
    .end local v1           #bitmapComb:Landroid/graphics/Bitmap;
    .restart local v0       #bitmapComb:Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {p1, v3, v3}, Lcom/htc/opensense2/album/util/BitmapUtil2;->duplicateBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 69
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 70
    .local v2, comboImage:Landroid/graphics/Canvas;
    const/4 v4, 0x0

    invoke-virtual {v2, p2, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .end local v2           #comboImage:Landroid/graphics/Canvas;
    :cond_2
    move-object v1, v0

    .line 79
    .end local v0           #bitmapComb:Landroid/graphics/Bitmap;
    .restart local v1       #bitmapComb:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public onMessageHanlder(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 195
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 213
    :goto_0
    return-void

    .line 198
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->onMergeRequestBegin()V

    goto :goto_0

    .line 201
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->onMergeRequestCachedPaint()V

    goto :goto_0

    .line 204
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->onMergeRequestStrokeData()V

    goto :goto_0

    .line 207
    :pswitch_3
    invoke-direct {p0}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->onMergeRequestStrokeMerge()V

    goto :goto_0

    .line 210
    :pswitch_4
    invoke-direct {p0}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->onMergeRequestEnd()V

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x3034
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onUpdateCachedPaint(ILandroid/graphics/Bitmap;)V
    .locals 3
    .parameter "nIndex"
    .parameter "bitmap"

    .prologue
    .line 304
    sget-object v0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][HtcPaintMergeTool][onUpdateCachedPaint]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;

    invoke-virtual {v0, p2}, Lcom/htc/album/PaintManager/PaintViewItem;->setInkPaint(Landroid/graphics/Bitmap;)V

    .line 319
    const/16 v0, 0x3036

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 322
    return-void
.end method

.method public onUpdateInkData(I[B)V
    .locals 3
    .parameter "nIndex"
    .parameter "byteData"

    .prologue
    .line 332
    sget-object v0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][HtcPaintMergeTool][onUpdateInkData]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;

    invoke-virtual {v0, p2}, Lcom/htc/album/PaintManager/PaintViewItem;->setInkData([B)V

    .line 347
    const/16 v0, 0x3037

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 350
    return-void
.end method

.method public reRouteStrokeDelete(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 379
    return-void
.end method

.method public reRouteStrokeLoad(I)[B
    .locals 4
    .parameter "nIndex"

    .prologue
    .line 370
    iget-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;

    invoke-virtual {v1}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkData()[B

    move-result-object v0

    .line 372
    .local v0, byteData:[B
    sget-object v1, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][HtcPaintMergeTool][onMergeRequestEnd]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    return-object v0
.end method

.method public reRouteStrokeSave(I[B)V
    .locals 0
    .parameter "nIndex"
    .parameter "byteArray"

    .prologue
    .line 366
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 272
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/cache/InkCacheManager;->release()V

    .line 273
    iput-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;

    .line 274
    iput-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mListener:Lcom/htc/album/PaintManager/Interface/IPaintMergeProgressListener;

    .line 275
    return-void
.end method

.method public setMergeInfo(Lcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/PaintManager/Interface/IPaintMergeProgressListener;)V
    .locals 7
    .parameter "iimage"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 232
    iput-object p2, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mListener:Lcom/htc/album/PaintManager/Interface/IPaintMergeProgressListener;

    .line 233
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mDataPath:Ljava/lang/String;

    .line 235
    new-instance v0, Lcom/htc/album/PaintManager/PaintViewItem;

    invoke-direct {v0, v1}, Lcom/htc/album/PaintManager/PaintViewItem;-><init>(I)V

    iput-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;

    .line 236
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;

    iget-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mDataPath:Ljava/lang/String;

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateModified()J

    move-result-wide v3

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSize()J

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Lcom/htc/album/PaintManager/PaintViewItem;->setFileCacheInfo(ILjava/lang/String;JJ)V

    .line 240
    return-void
.end method

.method public setMergeInfo(Ljava/lang/String;JJLcom/htc/album/PaintManager/Interface/IPaintMergeProgressListener;)V
    .locals 7
    .parameter "dataPath"
    .parameter "dateModified"
    .parameter "size"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 244
    iput-object p6, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mListener:Lcom/htc/album/PaintManager/Interface/IPaintMergeProgressListener;

    .line 245
    iput-object p1, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mDataPath:Ljava/lang/String;

    .line 247
    new-instance v0, Lcom/htc/album/PaintManager/PaintViewItem;

    invoke-direct {v0, v1}, Lcom/htc/album/PaintManager/PaintViewItem;-><init>(I)V

    iput-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;

    .line 248
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;

    iget-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mDataPath:Ljava/lang/String;

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/htc/album/PaintManager/PaintViewItem;->setFileCacheInfo(ILjava/lang/String;JJ)V

    .line 252
    return-void
.end method
