.class public Lcom/htc/album/TabPluginDevice/DecodePreViewImage;
.super Ljava/lang/Object;
.source "DecodePreViewImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;
    }
.end annotation


# static fields
.field public static final SOURCE_CAMERA_CONTINUOUS:I = 0x1002

.field public static final SOURCE_CAMERA_PREVIEW:I = 0x1001

.field public static final SOURCE_PREVIEW:I = 0x1003

.field private static final TAG:Ljava/lang/String; = "DecodePreViewImage"

.field private static final lock:Ljava/lang/Object;

.field private static mDecodePreViewImage:Lcom/htc/album/TabPluginDevice/DecodePreViewImage;

.field private static mThread:Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;


# instance fields
.field private mBitmap:Landroid/graphics/drawable/BitmapDrawable;

.field private mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

.field private mFragment:Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    sput-object v0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->mThread:Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;

    .line 39
    sput-object v0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->mDecodePreViewImage:Lcom/htc/album/TabPluginDevice/DecodePreViewImage;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->mBitmap:Landroid/graphics/drawable/BitmapDrawable;

    .line 40
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    .line 41
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->mFragment:Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/TabPluginDevice/DecodePreViewImage;)Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200()Lcom/htc/album/TabPluginDevice/DecodePreViewImage;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->mDecodePreViewImage:Lcom/htc/album/TabPluginDevice/DecodePreViewImage;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/TabPluginDevice/DecodePreViewImage;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->setBitmap(Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/album/TabPluginDevice/DecodePreViewImage;)Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->mFragment:Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;

    return-object v0
.end method

.method public static getInstance()Lcom/htc/album/TabPluginDevice/DecodePreViewImage;
    .locals 2

    .prologue
    .line 47
    sget-object v1, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 48
    :try_start_0
    sget-object v0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->mDecodePreViewImage:Lcom/htc/album/TabPluginDevice/DecodePreViewImage;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;

    invoke-direct {v0}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;-><init>()V

    sput-object v0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->mDecodePreViewImage:Lcom/htc/album/TabPluginDevice/DecodePreViewImage;

    .line 51
    :cond_0
    sget-object v0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->mDecodePreViewImage:Lcom/htc/album/TabPluginDevice/DecodePreViewImage;

    monitor-exit v1

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setBitmap(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 80
    sget-object v1, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 81
    :try_start_0
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->mBitmap:Landroid/graphics/drawable/BitmapDrawable;

    .line 82
    monitor-exit v1

    .line 83
    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/drawable/BitmapDrawable;
    .locals 2

    .prologue
    .line 56
    sget-object v1, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->mBitmap:Landroid/graphics/drawable/BitmapDrawable;

    monitor-exit v1

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setContentView(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)V
    .locals 2
    .parameter "contentView"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    .line 64
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->mBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_1

    .line 66
    sget-object v0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->mThread:Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->mThread:Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setEnableInitBackground(Z)V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->mBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setInitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->mBitmap:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0
.end method

.method public setFragment(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->mFragment:Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;

    .line 77
    return-void
.end method

.method public startDecode(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 2
    .parameter "activity"
    .parameter "intent"
    .parameter "type"

    .prologue
    .line 88
    sget-object v1, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 89
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->mBitmap:Landroid/graphics/drawable/BitmapDrawable;

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    .line 91
    sget-object v0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->mThread:Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->mThread:Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    sget-object v0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->mThread:Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->cancel()V

    .line 94
    :cond_0
    new-instance v0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;-><init>(Lcom/htc/album/TabPluginDevice/DecodePreViewImage;Landroid/app/Activity;Landroid/content/Intent;I)V

    sput-object v0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->mThread:Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;

    .line 95
    sget-object v0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->mThread:Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->start()V

    .line 96
    monitor-exit v1

    .line 97
    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
