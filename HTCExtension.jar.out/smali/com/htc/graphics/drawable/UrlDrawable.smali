.class public Lcom/htc/graphics/drawable/UrlDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "UrlDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;,
        Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;,
        Lcom/htc/graphics/drawable/UrlDrawable$Dimension;,
        Lcom/htc/graphics/drawable/UrlDrawable$Options;
    }
.end annotation


# static fields
.field public static final ACTION_REDRAW_IMAGE:Ljava/lang/String; = "urldrawable_redraw_image"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final BLACK_LIST_KEEP_DURATION:J = 0x927c0L

.field protected static final CACHE_PATH:Ljava/lang/String; = ""

.field private static final CORE_POOL_SIZE:I = 0x2

.field public static DEBUG_LOG_ENABLED:Z = false

.field public static DEBUT_LOG_ENABLED:Z = false

.field public static final EXTRA_LIST_POS:Ljava/lang/String; = "urldrawable_redraw_image_in_list_pos"

.field public static final EXTRA_URL:Ljava/lang/String; = "urldrawable_redraw_image_url"

.field private static final KEEP_ALIVE:I = 0xa

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final MAXIMUM_POOL_SIZE:I = 0x2

.field private static final MAX_RETRY_DUPLICATE:I = 0x64

.field private static final MAX_RETRY_GENERAL:I = 0x3

.field public static final MSG_REDRAW_IMAGE:I = 0x101

.field private static final REMOTE_CONNECT_TIMEOUT:I = 0x2710

.field private static final REMOTE_FETCH_TIMEOUT:I = 0x2710

.field private static final RETRY_DUPLICATE_DELAY_TIMEOUT:I = 0xc8

.field private static final RETRY_GENERAL_DELAY_TIMEOUT:I

.field private static final WHITE_LIST:[Ljava/lang/String;

.field private static final blackListMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final sFileLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field protected static final sFileReadLock:Ljava/util/concurrent/locks/Lock;

.field private static final sFileUtilLock:Ljava/lang/Object;

.field protected static final sFileWriteLock:Ljava/util/concurrent/locks/Lock;

.field private static sMaxFetchedImageDimension:I

.field private static final sPaint:Landroid/graphics/Paint;

.field private static final sPoolImageIds:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRamCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sRefQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;

.field private static final sWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBitmap:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field private mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

.field private final mHandler:Landroid/os/Handler;

.field protected mImageId:Ljava/lang/String;

.field public mListPos:I

.field private mNeverDrawn:Z

.field protected mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

.field private mRedrawHandler:Landroid/os/Handler;

.field private mScrollState:Lcom/htc/opensense/plugin/HtcScrollState;

.field protected mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v1, 0x2

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 86
    sput-boolean v3, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUT_LOG_ENABLED:Z

    .line 88
    sput-boolean v3, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUG_LOG_ENABLED:Z

    .line 90
    const-class v0, Lcom/htc/graphics/drawable/UrlDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->LOG_TAG:Ljava/lang/String;

    .line 125
    new-array v0, v1, [Ljava/lang/String;

    const-string v2, "com.htc.deals"

    aput-object v2, v0, v3

    const-string v2, "com.htc.dealswidget"

    aput-object v2, v0, v9

    sput-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->WHITE_LIST:[Ljava/lang/String;

    .line 651
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x226

    :goto_0
    sput v0, Lcom/htc/graphics/drawable/UrlDrawable;->sMaxFetchedImageDimension:I

    .line 675
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 678
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sPoolImageIds:Ljava/util/concurrent/ConcurrentMap;

    .line 680
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->blackListMap:Ljava/util/concurrent/ConcurrentMap;

    .line 682
    new-instance v0, Lcom/htc/graphics/drawable/UrlDrawable$1;

    invoke-direct {v0}, Lcom/htc/graphics/drawable/UrlDrawable$1;-><init>()V

    sput-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 691
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/htc/graphics/drawable/UrlDrawable;->sWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v7, Lcom/htc/graphics/drawable/UrlDrawable;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    move v2, v1

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 777
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sRamCache:Landroid/util/SparseArray;

    .line 778
    new-instance v0, Lcom/htc/graphics/drawable/UrlDrawable$2;

    invoke-direct {v0}, Lcom/htc/graphics/drawable/UrlDrawable$2;-><init>()V

    sput-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sRefQueue:Ljava/lang/ref/ReferenceQueue;

    .line 804
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0, v9}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    sput-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sFileLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 806
    sget-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sFileLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    sput-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sFileReadLock:Ljava/util/concurrent/locks/Lock;

    .line 807
    sget-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sFileLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    sput-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sFileWriteLock:Ljava/util/concurrent/locks/Lock;

    .line 1511
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sFileUtilLock:Ljava/lang/Object;

    .line 1930
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v9}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sPaint:Landroid/graphics/Paint;

    .line 1932
    sget-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1933
    return-void

    .line 651
    :cond_0
    const/16 v0, 0x96

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 1122
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 772
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mRedrawHandler:Landroid/os/Handler;

    .line 809
    new-instance v0, Lcom/htc/graphics/drawable/UrlDrawable$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/graphics/drawable/UrlDrawable$3;-><init>(Lcom/htc/graphics/drawable/UrlDrawable;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mHandler:Landroid/os/Handler;

    .line 1048
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mListPos:I

    .line 1124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/UrlDrawable$Options;)V
    .locals 8
    .parameter "hostContext"
    .parameter "pluginContext"
    .parameter "url"
    .parameter "options"

    .prologue
    const/4 v7, 0x0

    .line 992
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 772
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mRedrawHandler:Landroid/os/Handler;

    .line 809
    new-instance v5, Lcom/htc/graphics/drawable/UrlDrawable$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/htc/graphics/drawable/UrlDrawable$3;-><init>(Lcom/htc/graphics/drawable/UrlDrawable;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mHandler:Landroid/os/Handler;

    .line 1048
    const/4 v5, -0x1

    iput v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mListPos:I

    .line 993
    iget-object v5, p4, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-virtual {v5}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->isSet()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 994
    iget-object v5, p4, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    iget v5, v5, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    iget-object v6, p4, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    iget v6, v6, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    invoke-virtual {p0, v7, v7, v5, v6}, Lcom/htc/graphics/drawable/UrlDrawable;->setBounds(IIII)V

    .line 1001
    :goto_0
    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    iget v5, p4, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    if-lez v5, :cond_0

    .line 1002
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1003
    .local v4, pkgName:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1004
    sget-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->WHITE_LIST:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1005
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1006
    iget v5, p4, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    sput v5, Lcom/htc/graphics/drawable/UrlDrawable;->sMaxFetchedImageDimension:I

    .line 1007
    sget-boolean v5, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUG_LOG_ENABLED:Z

    if-eqz v5, :cond_0

    .line 1008
    sget-object v5, Lcom/htc/graphics/drawable/UrlDrawable;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sMaxFetchedImageDimension:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/htc/graphics/drawable/UrlDrawable;->sMaxFetchedImageDimension:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #pkgName:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/htc/graphics/drawable/UrlDrawable;->setStart(Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/UrlDrawable$Options;)V

    .line 1018
    return-void

    .line 995
    :cond_1
    iget-object v5, p4, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2

    .line 996
    iget-object v5, p4, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v6, p4, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {p0, v7, v7, v5, v6}, Lcom/htc/graphics/drawable/UrlDrawable;->setBounds(IIII)V

    goto :goto_0

    .line 998
    :cond_2
    sget-object v5, Lcom/htc/graphics/drawable/UrlDrawable;->LOG_TAG:Ljava/lang/String;

    const-string v6, "You must set dimension or deafult bitmap"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1004
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #name:Ljava/lang/String;
    .restart local v4       #pkgName:Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/UrlDrawable$Options;)V
    .locals 3
    .parameter "context"
    .parameter "url"
    .parameter "options"

    .prologue
    const/4 v2, 0x0

    .line 964
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 772
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mRedrawHandler:Landroid/os/Handler;

    .line 809
    new-instance v0, Lcom/htc/graphics/drawable/UrlDrawable$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/graphics/drawable/UrlDrawable$3;-><init>(Lcom/htc/graphics/drawable/UrlDrawable;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mHandler:Landroid/os/Handler;

    .line 1048
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mListPos:I

    .line 966
    iget-object v0, p3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-virtual {v0}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->isSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 967
    iget-object v0, p3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    iget v0, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    iget-object v1, p3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    iget v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/htc/graphics/drawable/UrlDrawable;->setBounds(IIII)V

    .line 974
    :goto_0
    if-eqz p3, :cond_0

    iget v0, p3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxFetchedImageDim:I

    if-lez v0, :cond_0

    sget v0, Lcom/htc/graphics/drawable/UrlDrawable;->sMaxFetchedImageDimension:I

    iget v1, p3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxFetchedImageDim:I

    if-eq v0, v1, :cond_0

    .line 976
    iget v0, p3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxFetchedImageDim:I

    sput v0, Lcom/htc/graphics/drawable/UrlDrawable;->sMaxFetchedImageDimension:I

    .line 977
    sget-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetch dimension:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/graphics/drawable/UrlDrawable;->sMaxFetchedImageDimension:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense/widget/SNLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    sget-boolean v0, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUG_LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 979
    sget-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pkg name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/graphics/drawable/UrlDrawable;->setStart(Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/UrlDrawable$Options;)V

    .line 983
    return-void

    .line 968
    :cond_1
    iget-object v0, p3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 969
    iget-object v0, p3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/htc/graphics/drawable/UrlDrawable;->setBounds(IIII)V

    goto :goto_0

    .line 971
    :cond_2
    sget-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->LOG_TAG:Ljava/lang/String;

    const-string v1, "You must set dimension or deafult bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/UrlDrawable$Options;Lcom/htc/opensense/plugin/HtcScrollState;)V
    .locals 3
    .parameter "context"
    .parameter "url"
    .parameter "options"
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 1128
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 772
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mRedrawHandler:Landroid/os/Handler;

    .line 809
    new-instance v0, Lcom/htc/graphics/drawable/UrlDrawable$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/graphics/drawable/UrlDrawable$3;-><init>(Lcom/htc/graphics/drawable/UrlDrawable;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mHandler:Landroid/os/Handler;

    .line 1048
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mListPos:I

    .line 1129
    iget-object v0, p3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-virtual {v0}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->isSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, p3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    iget v0, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    iget-object v1, p3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    iget v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/htc/graphics/drawable/UrlDrawable;->setBounds(IIII)V

    .line 1136
    :goto_0
    iput-object p4, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mScrollState:Lcom/htc/opensense/plugin/HtcScrollState;

    .line 1137
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/graphics/drawable/UrlDrawable;->setStart(Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/UrlDrawable$Options;)V

    .line 1138
    return-void

    .line 1131
    :cond_0
    iget-object v0, p3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1132
    iget-object v0, p3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/htc/graphics/drawable/UrlDrawable;->setBounds(IIII)V

    goto :goto_0

    .line 1134
    :cond_1
    sget-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->LOG_TAG:Ljava/lang/String;

    const-string v1, "You must set dimension or deafult bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/graphics/drawable/UrlDrawable;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/graphics/drawable/UrlDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/htc/graphics/drawable/UrlDrawable;->writeBitmapToRamCache(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/graphics/drawable/UrlDrawable;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->getFromRemote()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/graphics/drawable/UrlDrawable;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mNeverDrawn:Z

    return v0
.end method

.method static synthetic access$302(Lcom/htc/graphics/drawable/UrlDrawable;Ljava/lang/ref/SoftReference;)Ljava/lang/ref/SoftReference;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mBitmap:Ljava/lang/ref/SoftReference;

    return-object p1
.end method

.method static synthetic access$500(Lcom/htc/graphics/drawable/UrlDrawable;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->getFromLocal()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/graphics/drawable/UrlDrawable;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->canLoadToRamCache()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700()Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->blackListMap:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sPoolImageIds:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$900()Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lcom/htc/graphics/drawable/UrlDrawable;->getDefaultBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    return-object v0
.end method

.method private assertScaledResult(IIII)Z
    .locals 2
    .parameter "fixedWidth"
    .parameter "fixedHeight"
    .parameter "scaledWidth"
    .parameter "scaledHeight"

    .prologue
    .line 1836
    const/4 v0, 0x0

    .line 1837
    .local v0, result:Z
    if-eq p1, p3, :cond_0

    if-ne p2, p4, :cond_2

    .line 1838
    :cond_0
    if-gt p1, p3, :cond_1

    if-gt p2, p4, :cond_1

    const/4 v1, 0x1

    .line 1842
    :goto_0
    return v1

    .line 1838
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1840
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    .line 1842
    goto :goto_0
.end method

.method private canLoadToRamCache()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1437
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mScrollState:Lcom/htc/opensense/plugin/HtcScrollState;

    if-nez v1, :cond_1

    .line 1439
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mScrollState:Lcom/htc/opensense/plugin/HtcScrollState;

    invoke-virtual {v1}, Lcom/htc/opensense/plugin/HtcScrollState;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 7
    .parameter "inputStream"
    .parameter "destFile"

    .prologue
    const/4 v4, 0x0

    .line 1675
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1676
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 1678
    :cond_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1680
    .local v3, out:Ljava/io/FileOutputStream;
    const/16 v5, 0x1000

    :try_start_1
    new-array v0, v5, [B

    .line 1682
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, bytesRead:I
    if-ltz v1, :cond_1

    .line 1683
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1686
    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    :catchall_0
    move-exception v5

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1688
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1691
    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    throw v5

    .line 1694
    .end local v3           #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 1695
    :goto_2
    return v4

    .line 1686
    .restart local v0       #buffer:[B
    .restart local v1       #bytesRead:I
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :cond_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1688
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1691
    :goto_3
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1693
    const/4 v4, 0x1

    goto :goto_2

    .line 1689
    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    :catch_1
    move-exception v6

    goto :goto_1

    .restart local v0       #buffer:[B
    .restart local v1       #bytesRead:I
    :catch_2
    move-exception v5

    goto :goto_3
.end method

.method public static getApplyMaskBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "oldBitmap"
    .parameter "maskBitmap"

    .prologue
    .line 2191
    invoke-static {p0, p1}, Lcom/htc/graphics/util/HtcBitmapUtils;->getMaskedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getBitmapFromRamCache()Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1868
    sget-boolean v2, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUG_LOG_ENABLED:Z

    if-eqz v2, :cond_0

    .line 1869
    sget-object v2, Lcom/htc/graphics/drawable/UrlDrawable;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get Bitmap from Ram by ImageId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mImageId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    :cond_0
    sget-object v2, Lcom/htc/graphics/drawable/UrlDrawable;->sRamCache:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mImageId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 1873
    .local v1, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_3

    .line 1874
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1875
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1876
    sget-boolean v2, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUG_LOG_ENABLED:Z

    if-eqz v2, :cond_1

    .line 1877
    sget-object v2, Lcom/htc/graphics/drawable/UrlDrawable;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[%s][%s] Drawable found in RAM cache"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    .end local v0           #bm:Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-object v0

    .line 1883
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :cond_2
    sget-object v2, Lcom/htc/graphics/drawable/UrlDrawable;->sRamCache:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mImageId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 1884
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->clear()V

    .line 1885
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->isEnqueued()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1886
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->enqueue()Z

    .line 1890
    .end local v0           #bm:Landroid/graphics/Bitmap;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getBitmapWithConfig(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "bitmap"
    .parameter "config"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2275
    invoke-static {p0, p1}, Lcom/htc/graphics/util/HtcBitmapUtils;->getBitmapWithConfig(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static getCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .parameter "context"
    .parameter "extraPath"

    .prologue
    .line 1514
    move-object v1, p1

    .line 1515
    .local v1, rPath:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1516
    const-string v1, ""

    .line 1518
    :cond_0
    sget-object v3, Lcom/htc/graphics/drawable/UrlDrawable;->sFileUtilLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1519
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1520
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1521
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1522
    sget-object v2, Lcom/htc/graphics/drawable/UrlDrawable;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Unable to create cache directory"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    const/4 v0, 0x0

    monitor-exit v3

    .line 1527
    .end local v0           #dir:Ljava/io/File;
    :goto_0
    return-object v0

    .restart local v0       #dir:Ljava/io/File;
    :cond_1
    monitor-exit v3

    goto :goto_0

    .line 1528
    .end local v0           #dir:Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static getDefaultBitmapConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 2260
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method private static getDefaultBitmapFactoryOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 2

    .prologue
    .line 2264
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2265
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    invoke-static {}, Lcom/htc/graphics/drawable/UrlDrawable;->getDefaultBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 2266
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 2267
    return-object v0
.end method

.method private getFixedScaledSize(IIII)[I
    .locals 6
    .parameter "originalWidth"
    .parameter "originalHeight"
    .parameter "fixedWidth"
    .parameter "fixedHeight"

    .prologue
    .line 1762
    const/4 v2, 0x0

    .line 1763
    .local v2, resultWidth:I
    const/4 v1, 0x0

    .line 1800
    .local v1, resultHeight:I
    int-to-float v4, p1

    int-to-float v5, p3

    div-float v3, v4, v5

    .line 1801
    .local v3, widthScale:F
    int-to-float v4, p2

    int-to-float v5, p4

    div-float v0, v4, v5

    .line 1802
    .local v0, heightScale:F
    cmpg-float v4, v3, v0

    if-gez v4, :cond_0

    .line 1803
    move v2, p3

    .line 1804
    int-to-float v4, p2

    div-float/2addr v4, v3

    float-to-int v1, v4

    .line 1809
    :goto_0
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v5, 0x1

    aput v1, v4, v5

    return-object v4

    .line 1806
    :cond_0
    move v1, p4

    .line 1807
    int-to-float v4, p1

    div-float/2addr v4, v0

    float-to-int v2, v4

    goto :goto_0
.end method

.method private getFromLocal()Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1847
    invoke-direct {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->getBitmapFromRamCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 1860
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .local v1, bm:Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 1850
    .end local v1           #bm:Landroid/graphics/Bitmap;
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-boolean v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->writeDisk:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->canLoadToRamCache()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1851
    invoke-virtual {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->getBitmapFromDiskCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1856
    invoke-direct {p0, v0}, Lcom/htc/graphics/drawable/UrlDrawable;->writeBitmapToRamCache(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    .line 1857
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .restart local v1       #bm:Landroid/graphics/Bitmap;
    goto :goto_0

    .end local v1           #bm:Landroid/graphics/Bitmap;
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :cond_1
    move-object v1, v0

    .line 1860
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .restart local v1       #bm:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private getFromRemote()Landroid/graphics/Bitmap;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 1638
    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mImageId:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1639
    .local v3, image_hash:Ljava/lang/Integer;
    const/4 v0, 0x0

    .line 1640
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->getRelativeCachePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/graphics/drawable/UrlDrawable;->getCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    const-string v6, "%s.tmp"

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/graphics/drawable/UrlDrawable;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1643
    .local v2, f:Ljava/io/File;
    :try_start_0
    sget-object v5, Lcom/htc/graphics/drawable/UrlDrawable;->sPoolImageIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v3, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1645
    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-boolean v6, v6, Lcom/htc/graphics/drawable/UrlDrawable$Options;->useApacheHttpClient:Z

    iget-object v7, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-boolean v7, v7, Lcom/htc/graphics/drawable/UrlDrawable$Options;->checkDefaultProxy:Z

    invoke-static {v5, v6, v7}, Lcom/htc/graphics/drawable/UrlDrawable;->getInputStream(Ljava/lang/String;ZZ)Ljava/io/InputStream;

    move-result-object v4

    .line 1647
    .local v4, is:Ljava/io/InputStream;
    invoke-static {v4, v2}, Lcom/htc/graphics/drawable/UrlDrawable;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    .line 1649
    if-eqz v4, :cond_0

    .line 1650
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 1652
    :cond_0
    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-boolean v5, v5, Lcom/htc/graphics/drawable/UrlDrawable$Options;->writeDisk:Z

    if-eqz v5, :cond_1

    .line 1653
    invoke-direct {p0, v2}, Lcom/htc/graphics/drawable/UrlDrawable;->writeToCaches(Ljava/io/File;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1661
    :cond_1
    sget-object v5, Lcom/htc/graphics/drawable/UrlDrawable;->sPoolImageIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1662
    if-eqz v2, :cond_2

    .line 1663
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1666
    .end local v4           #is:Ljava/io/InputStream;
    :cond_2
    :goto_0
    return-object v0

    .line 1657
    :catch_0
    move-exception v1

    .line 1658
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v5, Lcom/htc/graphics/drawable/UrlDrawable;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[%s][%s] Unable to fetch remotely!"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1661
    sget-object v5, Lcom/htc/graphics/drawable/UrlDrawable;->sPoolImageIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1662
    if-eqz v2, :cond_2

    .line 1663
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 1661
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    sget-object v6, Lcom/htc/graphics/drawable/UrlDrawable;->sPoolImageIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1662
    if-eqz v2, :cond_3

    .line 1663
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_3
    throw v5
.end method

.method private static getInputStream(Ljava/lang/String;ZZ)Ljava/io/InputStream;
    .locals 14
    .parameter "url"
    .parameter "useApacheHttpClient"
    .parameter "checkDefaultProxy"

    .prologue
    .line 1592
    const/4 v5, 0x0

    .line 1594
    .local v5, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1595
    .local v10, url_url:Ljava/net/URL;
    const/4 v8, 0x0

    .line 1596
    .local v8, proxy:Lorg/apache/http/HttpHost;
    if-eqz p2, :cond_0

    .line 1597
    invoke-static {}, Lcom/htc/graphics/drawable/UrlDrawable;->getProxy()Lorg/apache/http/HttpHost;

    move-result-object v8

    .line 1599
    :cond_0
    if-eqz p1, :cond_2

    .line 1600
    new-instance v6, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v6}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 1601
    .local v6, params:Lorg/apache/http/params/HttpParams;
    sget-object v11, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v6, v11}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 1602
    const-string v11, "UTF-8"

    invoke-static {v6, v11}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 1604
    const/4 v11, 0x0

    invoke-static {v6, v11}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 1605
    const/16 v11, 0x2710

    invoke-static {v6, v11}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1607
    const/16 v11, 0x2710

    invoke-static {v6, v11}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1608
    if-eqz v8, :cond_1

    .line 1609
    const-string v11, "http.route.default-proxy"

    invoke-interface {v6, v11, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1611
    :cond_1
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v10}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v11

    invoke-direct {v4, v11}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 1612
    .local v4, getRequest:Lorg/apache/http/client/methods/HttpGet;
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 1613
    .local v0, client:Lorg/apache/http/client/HttpClient;
    invoke-interface {v0, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 1614
    .local v9, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 1615
    .local v3, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 1633
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v3           #entity:Lorg/apache/http/HttpEntity;
    .end local v4           #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v6           #params:Lorg/apache/http/params/HttpParams;
    .end local v8           #proxy:Lorg/apache/http/HttpHost;
    .end local v9           #response:Lorg/apache/http/HttpResponse;
    .end local v10           #url_url:Ljava/net/URL;
    :goto_0
    return-object v5

    .line 1617
    .restart local v8       #proxy:Lorg/apache/http/HttpHost;
    .restart local v10       #url_url:Ljava/net/URL;
    :cond_2
    if-eqz v8, :cond_3

    .line 1618
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v7

    .line 1619
    .local v7, prop:Ljava/util/Properties;
    const-string v11, "http.proxyHost"

    invoke-virtual {v8}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1620
    const-string v11, "http.proxyPort"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1622
    .end local v7           #prop:Ljava/util/Properties;
    :cond_3
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 1623
    .local v1, conn:Ljava/net/URLConnection;
    const/16 v11, 0x2710

    invoke-virtual {v1, v11}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 1624
    const/16 v11, 0x2710

    invoke-virtual {v1, v11}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 1625
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 1626
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 1627
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 1629
    .end local v1           #conn:Ljava/net/URLConnection;
    .end local v8           #proxy:Lorg/apache/http/HttpHost;
    .end local v10           #url_url:Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 1630
    .local v2, e:Ljava/lang/Exception;
    sget-object v11, Lcom/htc/graphics/drawable/UrlDrawable;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getInputStream failed! "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getProxy()Lorg/apache/http/HttpHost;
    .locals 6

    .prologue
    .line 1574
    const/4 v2, 0x0

    .line 1575
    .local v2, proxy:Lorg/apache/http/HttpHost;
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    .line 1576
    .local v0, defaultHost:Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v1

    .line 1578
    .local v1, defaultPort:I
    if-eqz v0, :cond_0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 1579
    new-instance v2, Lorg/apache/http/HttpHost;

    .end local v2           #proxy:Lorg/apache/http/HttpHost;
    invoke-direct {v2, v0, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 1580
    .restart local v2       #proxy:Lorg/apache/http/HttpHost;
    sget-boolean v3, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUG_LOG_ENABLED:Z

    if-eqz v3, :cond_0

    .line 1581
    sget-object v3, Lcom/htc/graphics/drawable/UrlDrawable;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "use proxy : defaultHost:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", defaultPort:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    :cond_0
    return-object v2
.end method

.method private static getScaledBitmap(Landroid/graphics/Bitmap;Lcom/htc/graphics/drawable/UrlDrawable$Dimension;II)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "bitmap"
    .parameter "forceDim"
    .parameter "min"
    .parameter "max"

    .prologue
    const/4 v4, 0x1

    .line 921
    invoke-static {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 922
    new-instance v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;-><init>(II)V

    .line 924
    .local v0, default_dim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;
    invoke-virtual {p1}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->isSet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 925
    invoke-virtual {p1, v0}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 926
    iget v2, p1, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    iget v3, p1, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    invoke-static {p0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 939
    .end local v0           #default_dim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;
    :cond_0
    :goto_0
    return-object p0

    .line 931
    .restart local v0       #default_dim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;
    :cond_1
    invoke-static {v0, p2, p3}, Lcom/htc/graphics/drawable/UrlDrawable;->getScaledDimension(Lcom/htc/graphics/drawable/UrlDrawable$Dimension;II)Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    move-result-object v1

    .line 932
    .local v1, scaled_dim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;
    invoke-virtual {v1}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->isSet()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 933
    iget v2, v1, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    iget v3, v1, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    invoke-static {p0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method public static getScaledCenterCropBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "oldBitmap"
    .parameter "newBitmapWidth"
    .parameter "newBitmapHeight"
    .parameter "newBitmapConfig"

    .prologue
    .line 2199
    invoke-static {p0, p1, p2, p3}, Lcom/htc/graphics/util/HtcBitmapUtils;->getScaledAndCenterCroppedBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static getScaledDimension(Lcom/htc/graphics/drawable/UrlDrawable$Dimension;II)Lcom/htc/graphics/drawable/UrlDrawable$Dimension;
    .locals 3
    .parameter "original"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 884
    invoke-virtual {p0}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->isSet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 885
    new-instance v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-direct {v0}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;-><init>()V

    .line 916
    :cond_0
    :goto_0
    return-object v0

    .line 886
    :cond_1
    if-gtz p1, :cond_2

    if-gtz p2, :cond_2

    .line 887
    new-instance v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-direct {v0}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;-><init>()V

    goto :goto_0

    .line 888
    :cond_2
    if-lez p1, :cond_3

    if-lez p2, :cond_3

    if-le p1, p2, :cond_3

    .line 889
    new-instance v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-direct {v0}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;-><init>()V

    goto :goto_0

    .line 892
    :cond_3
    invoke-virtual {p0}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->clone()Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    move-result-object v0

    .line 894
    .local v0, scaled:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;
    if-lez p1, :cond_4

    .line 895
    iget v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    if-ge v1, p1, :cond_5

    iget v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    iget v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    if-gt v1, v2, :cond_5

    .line 896
    iput p1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    .line 897
    iget v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    .line 905
    :cond_4
    :goto_1
    if-lez p2, :cond_0

    .line 906
    iget v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    if-le v1, p2, :cond_6

    iget v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    iget v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    if-gt v1, v2, :cond_6

    .line 907
    iput p2, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    .line 908
    iget v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    goto :goto_0

    .line 898
    :cond_5
    iget v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    if-ge v1, p1, :cond_4

    iget v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    iget v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    if-gt v1, v2, :cond_4

    .line 900
    iput p1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    .line 901
    iget v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    goto :goto_1

    .line 909
    :cond_6
    iget v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    if-le v1, p2, :cond_0

    iget v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    iget v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    if-gt v1, v2, :cond_0

    .line 911
    iput p2, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    .line 912
    iget v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    goto/16 :goto_0
.end method

.method public static final isValidBitmap(Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 879
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "base"
    .parameter "name"

    .prologue
    .line 1532
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 1533
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 1535
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contains a path separator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static roundifyBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "context"
    .parameter "bitmap"
    .parameter "recycleOriginal"

    .prologue
    .line 1448
    invoke-static {p0, p1, p2}, Lcom/htc/graphics/util/HtcBitmapUtils;->roundifyBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private writeBitmapToRamCache(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "bitmap"

    .prologue
    const/4 v4, 0x0

    .line 1452
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maskBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1453
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maskBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1, v0}, Lcom/htc/graphics/util/HtcBitmapUtils;->getMaskedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1462
    :cond_0
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-boolean v0, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->roundify:Z

    if-eqz v0, :cond_1

    .line 1463
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v4}, Lcom/htc/graphics/drawable/UrlDrawable;->roundifyBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1466
    :cond_1
    sget-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sRamCache:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mImageId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Ljava/lang/ref/SoftReference;

    sget-object v3, Lcom/htc/graphics/drawable/UrlDrawable;->sRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, p1, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1468
    sget-boolean v0, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUG_LOG_ENABLED:Z

    if-eqz v0, :cond_2

    .line 1469
    sget-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[%s][%s] Bitmap stored to RAM cache"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    :cond_2
    return-object p1
.end method

.method private writeToCaches(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1540
    const/4 v0, 0x0

    .line 1541
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-virtual {v1}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->isSet()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1542
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v3, v3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    iget v3, v3, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/graphics/drawable/UrlDrawable;->loadBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1553
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1562
    invoke-virtual {p0, v0}, Lcom/htc/graphics/drawable/UrlDrawable;->writeBitmapToDiskCache(Landroid/graphics/Bitmap;)V

    .line 1567
    invoke-direct {p0, v0}, Lcom/htc/graphics/drawable/UrlDrawable;->writeBitmapToRamCache(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1569
    :cond_1
    return-object v0

    .line 1544
    :cond_2
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 1545
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v3, v3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/graphics/drawable/UrlDrawable;->loadBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 16
    .parameter "canvas"

    .prologue
    .line 1946
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/graphics/drawable/UrlDrawable;->mBitmap:Ljava/lang/ref/SoftReference;

    if-nez v9, :cond_5

    const/4 v1, 0x0

    .line 1948
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    invoke-static {v1}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v9

    if-eqz v9, :cond_8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-boolean v9, v9, Lcom/htc/graphics/drawable/UrlDrawable$Options;->drawOnScroll:Z

    if-nez v9, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/graphics/drawable/UrlDrawable;->getScrollState()Lcom/htc/opensense/plugin/HtcScrollState;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/graphics/drawable/UrlDrawable;->getScrollState()Lcom/htc/opensense/plugin/HtcScrollState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/HtcScrollState;->getState()I

    move-result v9

    if-nez v9, :cond_8

    .line 1952
    :cond_0
    sget-boolean v9, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUG_LOG_ENABLED:Z

    if-eqz v9, :cond_1

    .line 1953
    sget-object v9, Lcom/htc/graphics/drawable/UrlDrawable;->LOG_TAG:Ljava/lang/String;

    const-string v10, "[%d][%s] Draw real avatar"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    :cond_1
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/htc/graphics/drawable/UrlDrawable;->mNeverDrawn:Z

    .line 1957
    invoke-virtual/range {p0 .. p0}, Lcom/htc/graphics/drawable/UrlDrawable;->getIntrinsicWidth()I

    move-result v6

    .line 1958
    .local v6, rectWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/graphics/drawable/UrlDrawable;->getIntrinsicHeight()I

    move-result v5

    .line 1959
    .local v5, rectHeight:I
    new-instance v4, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v4, v9, v10, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1960
    .local v4, rect:Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    sub-int/2addr v9, v6

    div-int/lit8 v2, v9, 0x2

    .line 1961
    .local v2, destLeft:I
    new-instance v3, Landroid/graphics/Rect;

    const/4 v9, 0x0

    add-int v10, v2, v6

    invoke-direct {v3, v2, v9, v10, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1962
    .local v3, destRect:Landroid/graphics/Rect;
    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3, v4, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1966
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v9, v9, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-static {v9}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1967
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1968
    const/4 v7, 0x0

    .local v7, transX:F
    const/4 v8, 0x0

    .line 1969
    .local v8, transY:F
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v9, v9, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayPos:I

    and-int/lit8 v9, v9, 0x10

    if-lez v9, :cond_6

    .line 1970
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v9, v9, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int v9, v5, v9

    int-to-float v8, v9

    .line 1976
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v9, v9, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayPos:I

    and-int/lit8 v9, v9, 0x2

    if-lez v9, :cond_7

    .line 1977
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v9, v9, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    sub-int v9, v6, v9

    int-to-float v7, v9

    .line 1983
    :cond_3
    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1984
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v9, v9, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    new-instance v11, Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v14, v14, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v15, v15, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v12, Lcom/htc/graphics/drawable/UrlDrawable;->sPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1987
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 2025
    .end local v2           #destLeft:I
    .end local v3           #destRect:Landroid/graphics/Rect;
    .end local v4           #rect:Landroid/graphics/Rect;
    .end local v5           #rectHeight:I
    .end local v6           #rectWidth:I
    .end local v7           #transX:F
    .end local v8           #transY:F
    :cond_4
    :goto_3
    return-void

    .line 1946
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :cond_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/graphics/drawable/UrlDrawable;->mBitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {v9}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    move-object v1, v9

    goto/16 :goto_0

    .line 1972
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #destLeft:I
    .restart local v3       #destRect:Landroid/graphics/Rect;
    .restart local v4       #rect:Landroid/graphics/Rect;
    .restart local v5       #rectHeight:I
    .restart local v6       #rectWidth:I
    .restart local v7       #transX:F
    .restart local v8       #transY:F
    :cond_6
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v9, v9, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayPos:I

    and-int/lit8 v9, v9, 0x20

    if-lez v9, :cond_2

    .line 1973
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v9, v9, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int v9, v5, v9

    int-to-float v9, v9

    const/high16 v10, 0x4000

    div-float v8, v9, v10

    goto :goto_1

    .line 1979
    :cond_7
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v9, v9, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayPos:I

    and-int/lit8 v9, v9, 0x4

    if-lez v9, :cond_3

    .line 1980
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v9, v9, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    sub-int v9, v6, v9

    int-to-float v9, v9

    const/high16 v10, 0x4000

    div-float v7, v9, v10

    goto :goto_2

    .line 1989
    .end local v2           #destLeft:I
    .end local v3           #destRect:Landroid/graphics/Rect;
    .end local v4           #rect:Landroid/graphics/Rect;
    .end local v5           #rectHeight:I
    .end local v6           #rectWidth:I
    .end local v7           #transX:F
    .end local v8           #transY:F
    :cond_8
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    if-eqz v9, :cond_e

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v9, v9, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-static {v9}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 1990
    sget-boolean v9, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUG_LOG_ENABLED:Z

    if-eqz v9, :cond_9

    .line 1991
    sget-object v9, Lcom/htc/graphics/drawable/UrlDrawable;->LOG_TAG:Ljava/lang/String;

    const-string v10, "[%d][%s] Draw default avatar"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/htc/graphics/drawable/UrlDrawable;->getIntrinsicWidth()I

    move-result v6

    .line 1995
    .restart local v6       #rectWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/graphics/drawable/UrlDrawable;->getIntrinsicHeight()I

    move-result v5

    .line 1996
    .restart local v5       #rectHeight:I
    new-instance v4, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v4, v9, v10, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1997
    .restart local v4       #rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v9, v9, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10, v4, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1998
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v9, v9, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-static {v9}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1999
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2000
    const/4 v7, 0x0

    .restart local v7       #transX:F
    const/4 v8, 0x0

    .line 2001
    .restart local v8       #transY:F
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v9, v9, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayPos:I

    and-int/lit8 v9, v9, 0x10

    if-lez v9, :cond_c

    .line 2002
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v9, v9, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v10, v10, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v8, v9

    .line 2008
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v9, v9, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayPos:I

    and-int/lit8 v9, v9, 0x2

    if-lez v9, :cond_d

    .line 2009
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v9, v9, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v10, v10, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v7, v9

    .line 2015
    :cond_b
    :goto_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2016
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v9, v9, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    new-instance v11, Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v14, v14, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v15, v15, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v12, Lcom/htc/graphics/drawable/UrlDrawable;->sPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2019
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_3

    .line 2004
    :cond_c
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v9, v9, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayPos:I

    and-int/lit8 v9, v9, 0x20

    if-lez v9, :cond_a

    .line 2005
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v9, v9, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v10, v10, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    const/high16 v10, 0x4000

    div-float v8, v9, v10

    goto :goto_4

    .line 2011
    :cond_d
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v9, v9, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayPos:I

    and-int/lit8 v9, v9, 0x4

    if-lez v9, :cond_b

    .line 2012
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v9, v9, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v10, v10, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    const/high16 v10, 0x4000

    div-float v7, v9, v10

    goto :goto_5

    .line 2022
    .end local v4           #rect:Landroid/graphics/Rect;
    .end local v5           #rectHeight:I
    .end local v6           #rectWidth:I
    .end local v7           #transX:F
    .end local v8           #transY:F
    :cond_e
    sget-object v9, Lcom/htc/graphics/drawable/UrlDrawable;->LOG_TAG:Ljava/lang/String;

    const-string v10, "[%d][%s] Nothing can be drawn"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method public getAvatarOptions()Lcom/htc/graphics/drawable/UrlDrawable$Options;
    .locals 1

    .prologue
    .line 2184
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 2173
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mBitmap:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mBitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getBitmapFromDiskCache()Landroid/graphics/Bitmap;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1900
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 1901
    sget-object v2, Lcom/htc/graphics/drawable/UrlDrawable;->sFileReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lockInterruptibly()V

    .line 1903
    :try_start_0
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->getRelativeCachePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/graphics/drawable/UrlDrawable;->getCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "%s.png"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mImageId:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/graphics/drawable/UrlDrawable;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1905
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/htc/graphics/drawable/UrlDrawable;->getDefaultBitmapFactoryOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1908
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1909
    sget-boolean v2, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUG_LOG_ENABLED:Z

    if-eqz v2, :cond_0

    .line 1910
    sget-object v2, Lcom/htc/graphics/drawable/UrlDrawable;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[%s][%s] Drawable found in Disk cache"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1919
    :cond_0
    sget-object v2, Lcom/htc/graphics/drawable/UrlDrawable;->sFileReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1927
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #f:Ljava/io/File;
    :goto_0
    return-object v0

    .line 1919
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v1       #f:Ljava/io/File;
    :cond_1
    sget-object v2, Lcom/htc/graphics/drawable/UrlDrawable;->sFileReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1921
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #f:Ljava/io/File;
    :goto_1
    sget-boolean v2, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUG_LOG_ENABLED:Z

    if-eqz v2, :cond_2

    .line 1922
    sget-object v2, Lcom/htc/graphics/drawable/UrlDrawable;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[%s][%s] Drawable NOT found in Disk cache"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1916
    :catch_0
    move-exception v2

    .line 1919
    sget-object v2, Lcom/htc/graphics/drawable/UrlDrawable;->sFileReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v2

    sget-object v3, Lcom/htc/graphics/drawable/UrlDrawable;->sFileReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getImageId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mImageId:Ljava/lang/String;

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2237
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 2083
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-virtual {v0}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->isSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2084
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    iget v0, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    .line 2089
    :goto_0
    return v0

    .line 2085
    :cond_0
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 2086
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0

    .line 2088
    :cond_1
    sget-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->LOG_TAG:Ljava/lang/String;

    const-string v1, "You must set dimension or deafult bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 2121
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-virtual {v0}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->isSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2122
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    iget v0, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    .line 2127
    :goto_0
    return v0

    .line 2123
    :cond_0
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 2124
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0

    .line 2126
    :cond_1
    sget-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->LOG_TAG:Ljava/lang/String;

    const-string v1, "You must set dimension or deafult bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getListPos()I
    .locals 1

    .prologue
    .line 1051
    iget v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mListPos:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 2160
    invoke-virtual {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 2169
    invoke-virtual {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 2034
    const/4 v0, -0x3

    return v0
.end method

.method protected getOptions()Lcom/htc/graphics/drawable/UrlDrawable$Options;
    .locals 1

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    return-object v0
.end method

.method public getRedrawHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 2252
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mRedrawHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected getRelativeCachePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2256
    const-string v0, ""

    return-object v0
.end method

.method public getScrollState()Lcom/htc/opensense/plugin/HtcScrollState;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 960
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mScrollState:Lcom/htc/opensense/plugin/HtcScrollState;

    return-object v0
.end method

.method protected getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isDimChanged()Z
    .locals 2

    .prologue
    .line 2068
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-virtual {v0}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->isSet()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->getIntrinsicWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->getIntrinsicHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "path"
    .parameter "fixedWidth"
    .parameter "fixedHeight"

    .prologue
    .line 1715
    invoke-static {p1}, Lcom/htc/util/media/ImageUtil;->getOriginalSize(Ljava/lang/String;)[I

    move-result-object v6

    .line 1721
    .local v6, originalSize:[I
    const/4 v8, 0x0

    aget v8, v6, v8

    const/4 v9, 0x1

    aget v9, v6, v9

    invoke-direct {p0, v8, v9, p2, p3}, Lcom/htc/graphics/drawable/UrlDrawable;->getFixedScaledSize(IIII)[I

    move-result-object v5

    .line 1723
    .local v5, newSize:[I
    const/4 v8, 0x0

    aget v8, v6, v8

    const/4 v9, 0x1

    aget v9, v6, v9

    const/4 v10, 0x0

    aget v10, v5, v10

    const/4 v11, 0x1

    aget v11, v5, v11

    invoke-static {v8, v9, v10, v11}, Lcom/htc/util/media/ImageUtil;->countSampleValue(IIII)I

    move-result v7

    .line 1726
    .local v7, sampleValue:I
    invoke-static {}, Lcom/htc/graphics/drawable/UrlDrawable;->getDefaultBitmapFactoryOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    .line 1727
    .local v4, bopts:Landroid/graphics/BitmapFactory$Options;
    iput v7, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1729
    invoke-static {p1, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1730
    .local v2, bitmap:Landroid/graphics/Bitmap;
    if-nez v2, :cond_0

    .line 1731
    sget-object v8, Lcom/htc/graphics/drawable/UrlDrawable;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bitmap could not be decoded: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    const/4 v8, 0x0

    .line 1757
    :goto_0
    return-object v8

    .line 1735
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 1736
    .local v1, afterSameplWidth:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 1739
    .local v0, afterSameplHeight:I
    invoke-direct {p0, p2, p3, v1, v0}, Lcom/htc/graphics/drawable/UrlDrawable;->assertScaledResult(IIII)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v2

    .line 1740
    goto :goto_0

    .line 1742
    :cond_1
    const/4 v8, 0x0

    aget v8, v5, v8

    const/4 v9, 0x1

    aget v9, v5, v9

    const/4 v10, 0x1

    invoke-static {v2, v8, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1744
    .local v3, bitmap2:Landroid/graphics/Bitmap;
    if-eq v3, v2, :cond_2

    .line 1745
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1746
    move-object v2, v3

    :cond_2
    move-object v8, v2

    .line 1757
    goto :goto_0
.end method

.method protected redrawImage()V
    .locals 4

    .prologue
    .line 2211
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-boolean v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->needSendRedrawMsg:Z

    if-eqz v1, :cond_2

    .line 2214
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mRedrawHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 2215
    sget-boolean v1, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUG_LOG_ENABLED:Z

    if-eqz v1, :cond_0

    .line 2216
    sget-object v1, Lcom/htc/graphics/drawable/UrlDrawable;->LOG_TAG:Ljava/lang/String;

    const-string v2, "sendbroadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "urldrawable_redraw_image"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2219
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "urldrawable_redraw_image_url"

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2220
    const-string v1, "urldrawable_redraw_image_in_list_pos"

    iget v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mListPos:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2221
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mContext:Landroid/content/Context;

    const-string v2, "htc.opensense.permission.USE_BROADCAST"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2226
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mRedrawHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 2227
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mRedrawHandler:Landroid/os/Handler;

    const/16 v2, 0x101

    iget v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mListPos:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2231
    :cond_2
    return-void
.end method

.method public resetParams()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1109
    iput-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mContext:Landroid/content/Context;

    .line 1110
    iput-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    .line 1111
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    if-eqz v0, :cond_0

    .line 1112
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    invoke-virtual {v0}, Lcom/htc/graphics/drawable/UrlDrawable$Options;->reset()V

    .line 1113
    iput-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    .line 1115
    :cond_0
    iput-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mBitmap:Ljava/lang/ref/SoftReference;

    .line 1116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mNeverDrawn:Z

    .line 1117
    iput-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    .line 1118
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mListPos:I

    .line 1119
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 2045
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bmp"

    .prologue
    .line 2180
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mBitmap:Ljava/lang/ref/SoftReference;

    .line 2181
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 2055
    return-void
.end method

.method protected setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 1099
    iput-object p1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mContext:Landroid/content/Context;

    .line 1100
    return-void
.end method

.method protected setHeight(Lcom/htc/graphics/drawable/UrlDrawable$Options;)V
    .locals 0
    .parameter "option"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1083
    iput-object p1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    .line 1084
    return-void
.end method

.method protected setHeight(Ljava/lang/String;)V
    .locals 0
    .parameter "imageId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1071
    iput-object p1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mImageId:Ljava/lang/String;

    .line 1072
    return-void
.end method

.method public setListPos(I)V
    .locals 0
    .parameter "listPos"

    .prologue
    .line 1055
    iput p1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mListPos:I

    .line 1056
    return-void
.end method

.method public setRedrawHandler(Landroid/os/Handler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 2242
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mRedrawHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mRedrawHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2243
    :cond_0
    iput-object p1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mRedrawHandler:Landroid/os/Handler;

    .line 2245
    :cond_1
    return-void
.end method

.method public setScrollState(Lcom/htc/opensense/plugin/HtcScrollState;)V
    .locals 0
    .parameter "state"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 949
    iput-object p1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mScrollState:Lcom/htc/opensense/plugin/HtcScrollState;

    .line 950
    return-void
.end method

.method public setStart()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1144
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    invoke-virtual {v2}, Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1145
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    invoke-virtual {v2, v6}, Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;->cancel(Z)Z

    .line 1146
    sget-boolean v2, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUG_LOG_ENABLED:Z

    if-eqz v2, :cond_0

    .line 1147
    sget-object v2, Lcom/htc/graphics/drawable/UrlDrawable;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[%s][%s] setStart begins, cancelling previous FutureTask %d"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    :cond_0
    const/4 v0, 0x0

    .line 1155
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-direct {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->getBitmapFromRamCache()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1160
    :goto_0
    invoke-static {v0}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1161
    new-instance v2, Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    new-instance v3, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;-><init>(Lcom/htc/graphics/drawable/UrlDrawable;Lcom/htc/graphics/drawable/UrlDrawable$1;)V

    invoke-direct {v2, p0, v3}, Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;-><init>(Lcom/htc/graphics/drawable/UrlDrawable;Ljava/util/concurrent/Callable;)V

    iput-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    .line 1162
    sget-object v2, Lcom/htc/graphics/drawable/UrlDrawable;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1163
    sget-boolean v2, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUG_LOG_ENABLED:Z

    if-eqz v2, :cond_1

    .line 1164
    sget-object v2, Lcom/htc/graphics/drawable/UrlDrawable;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[%s][%s] setStart begins, dispatching new FutureTask %d"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    :cond_1
    :goto_1
    return-void

    .line 1156
    :catch_0
    move-exception v1

    .line 1157
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1178
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mBitmap:Ljava/lang/ref/SoftReference;

    goto :goto_1
.end method

.method setStart(Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/UrlDrawable$Options;)V
    .locals 9
    .parameter "context"
    .parameter "url"
    .parameter "options"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1184
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    invoke-virtual {v1}, Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1185
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    invoke-virtual {v1, v5}, Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;->cancel(Z)Z

    .line 1186
    sget-boolean v1, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUG_LOG_ENABLED:Z

    if-eqz v1, :cond_0

    .line 1187
    sget-object v1, Lcom/htc/graphics/drawable/UrlDrawable;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[%s][%s] setStart begins, cancelling previous FutureTask %d"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    :cond_0
    invoke-virtual {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->resetParams()V

    .line 1195
    iput-object p1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mContext:Landroid/content/Context;

    .line 1196
    iput-object p2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    .line 1197
    if-eqz p3, :cond_2

    .end local p3
    :goto_0
    iput-object p3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    .line 1199
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mContext:Landroid/content/Context;

    if-nez v1, :cond_3

    .line 1200
    sget-object v1, Lcom/htc/graphics/drawable/UrlDrawable;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Context is empty!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    :cond_1
    :goto_1
    return-void

    .line 1197
    .restart local p3
    :cond_2
    new-instance p3, Lcom/htc/graphics/drawable/UrlDrawable$Options;

    .end local p3
    invoke-direct {p3}, Lcom/htc/graphics/drawable/UrlDrawable$Options;-><init>()V

    goto :goto_0

    .line 1204
    :cond_3
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1205
    new-instance v1, Lcom/htc/graphics/drawable/UrlDrawable$4;

    invoke-direct {v1, p0}, Lcom/htc/graphics/drawable/UrlDrawable$4;-><init>(Lcom/htc/graphics/drawable/UrlDrawable;)V

    new-array v2, v5, [Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v3, v3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Lcom/htc/graphics/drawable/UrlDrawable$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1247
    :cond_4
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1248
    sget-object v1, Lcom/htc/graphics/drawable/UrlDrawable;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Url is empty!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1252
    :cond_5
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-virtual {v1}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->isSet()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->minDim:I

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    iget v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->minDim:I

    if-ge v1, v2, :cond_6

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    iget v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->minDim:I

    if-ge v1, v2, :cond_6

    .line 1255
    sget-object v1, Lcom/htc/graphics/drawable/UrlDrawable;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Options.minDim is not within the valid range set by Options.forceDim!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1260
    :cond_6
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-virtual {v1}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->isSet()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    if-lez v1, :cond_7

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    iget v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    if-le v1, v2, :cond_7

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    iget v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    if-le v1, v2, :cond_7

    .line 1263
    sget-object v1, Lcom/htc/graphics/drawable/UrlDrawable;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Options.maxDim is not within the valid range set by Options.forceDim!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1268
    :cond_7
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->minDim:I

    if-lez v1, :cond_8

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    if-lez v1, :cond_8

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->minDim:I

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    if-le v1, v2, :cond_8

    .line 1270
    sget-object v1, Lcom/htc/graphics/drawable/UrlDrawable;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Options.minDim should not exceed Options.maxDim!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1274
    :cond_8
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->preferImageId:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->preferImageId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->minDim:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mImageId:Ljava/lang/String;

    .line 1284
    :goto_2
    const/4 v0, 0x0

    .line 1286
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-direct {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->getBitmapFromRamCache()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1291
    :goto_3
    invoke-static {v0}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1292
    invoke-direct {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->canLoadToRamCache()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1293
    new-instance v1, Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    new-instance v2, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;-><init>(Lcom/htc/graphics/drawable/UrlDrawable;Lcom/htc/graphics/drawable/UrlDrawable$1;)V

    invoke-direct {v1, p0, v2}, Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;-><init>(Lcom/htc/graphics/drawable/UrlDrawable;Ljava/util/concurrent/Callable;)V

    iput-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    .line 1294
    sget-object v1, Lcom/htc/graphics/drawable/UrlDrawable;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1295
    sget-boolean v1, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUG_LOG_ENABLED:Z

    if-eqz v1, :cond_1

    .line 1296
    sget-object v1, Lcom/htc/graphics/drawable/UrlDrawable;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[%s][%s] setStart begins, dispatching new FutureTask %d"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1279
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->minDim:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mImageId:Ljava/lang/String;

    goto/16 :goto_2

    .line 1303
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_a
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mBitmap:Ljava/lang/ref/SoftReference;

    goto/16 :goto_1

    .line 1287
    :catch_0
    move-exception v1

    goto/16 :goto_3
.end method

.method protected setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 1091
    iput-object p1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    .line 1092
    return-void
.end method

.method public writeBitmapToDiskCache(Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "bitmap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1483
    iget-object v4, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-boolean v4, v4, Lcom/htc/graphics/drawable/UrlDrawable$Options;->writeDisk:Z

    if-eqz v4, :cond_2

    .line 1484
    iget-object v4, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_2

    .line 1485
    const/4 v2, 0x0

    .line 1486
    .local v2, fos:Ljava/io/FileOutputStream;
    sget-object v4, Lcom/htc/graphics/drawable/UrlDrawable;->sFileWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lockInterruptibly()V

    .line 1488
    :try_start_0
    iget-object v4, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->getRelativeCachePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/graphics/drawable/UrlDrawable;->getCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const-string v5, "%s.png"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mImageId:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/graphics/drawable/UrlDrawable;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1490
    .local v1, f:Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1491
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1492
    sget-boolean v4, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUG_LOG_ENABLED:Z

    if-eqz v4, :cond_0

    .line 1493
    sget-object v4, Lcom/htc/graphics/drawable/UrlDrawable;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[%s][%s] Bitmap stored to Disk cache"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1502
    :cond_0
    if-eqz v3, :cond_1

    .line 1503
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 1505
    :cond_1
    sget-object v4, Lcom/htc/graphics/drawable/UrlDrawable;->sFileWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1509
    .end local v1           #f:Ljava/io/File;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    :cond_2
    :goto_0
    return-void

    .line 1497
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 1498
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    :try_start_2
    sget-object v4, Lcom/htc/graphics/drawable/UrlDrawable;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[%s][%s] Bitmap NOT stored to Disk cache"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1502
    if-eqz v2, :cond_3

    .line 1503
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1505
    :cond_3
    sget-object v4, Lcom/htc/graphics/drawable/UrlDrawable;->sFileWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 1502
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_4

    .line 1503
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1505
    :cond_4
    sget-object v5, Lcom/htc/graphics/drawable/UrlDrawable;->sFileWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4

    .line 1502
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/File;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 1497
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method
