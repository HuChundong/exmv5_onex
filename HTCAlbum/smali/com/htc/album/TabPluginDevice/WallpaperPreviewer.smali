.class public Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;
.super Lcom/htc/album/modules/ui/ControlBarHostActivity;
.source "WallpaperPreviewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;,
        Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$Saver;,
        Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$HQLoader;,
        Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$BitmapUpdater;
    }
.end annotation


# static fields
.field private static final DLG_LOADING:I = 0x3e8

.field private static final DLG_SAVING:I = 0x7d0

.field private static final FOOTER_BAR_CROP_IMAGE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final sDecodeResolution:I


# instance fields
.field private mActivityState:S

.field private mBUHQ:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$BitmapUpdater;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHQLoader:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$HQLoader;

.field private mHandler:Landroid/os/Handler;

.field private mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

.field private mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

.field private mImageView:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;

.field private mLoadBitmapRunnable:Ljava/lang/Runnable;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTargetUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->LOG_TAG:Ljava/lang/String;

    .line 51
    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->CROP_IMAGE_SAMPE_SIZE:I

    sput v0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->sDecodeResolution:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;-><init>()V

    .line 55
    const/4 v0, 0x3

    iput-short v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mActivityState:S

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mHandler:Landroid/os/Handler;

    .line 284
    new-instance v0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$1;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$1;-><init>(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mLoadBitmapRunnable:Ljava/lang/Runnable;

    .line 422
    new-instance v0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$2;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$2;-><init>(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 453
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)S
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-short v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mActivityState:S

    return v0
.end method

.method static synthetic access$100(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$BitmapUpdater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mBUHQ:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$BitmapUpdater;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$BitmapUpdater;)Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$BitmapUpdater;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mBUHQ:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$BitmapUpdater;

    return-object p1
.end method

.method static synthetic access$102(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mTargetUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;Lcom/htc/opensense2/album/util/ImageManager$IImageList;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    return-object p1
.end method

.method static synthetic access$500(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;Lcom/htc/opensense2/album/util/ImageManager$IImage;)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImageView:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$HQLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mHQLoader:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$HQLoader;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$HQLoader;)Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$HQLoader;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mHQLoader:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$HQLoader;

    return-object p1
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->sDecodeResolution:I

    return v0
.end method

.method private onOk()V
    .locals 2

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    const/16 v1, 0x7d0

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->showDialog(I)V

    .line 230
    :cond_0
    new-instance v0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$Saver;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$Saver;-><init>(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)V

    .line 231
    .local v0, saver:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 232
    return-void
.end method

.method private release()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mLoadBitmapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 180
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mBUHQ:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$BitmapUpdater;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 182
    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mLoadBitmapRunnable:Ljava/lang/Runnable;

    .line 183
    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mBUHQ:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$BitmapUpdater;

    .line 186
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImageView:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImageView:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;->forceRecycleBitmaps()V

    .line 188
    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImageView:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImageView:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;

    if-eqz v1, :cond_1

    .line 194
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImageView:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;

    invoke-virtual {v1, v4}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 195
    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImageView:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;

    .line 198
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 200
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 201
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 202
    :cond_2
    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mBitmap:Landroid/graphics/Bitmap;

    .line 206
    :cond_3
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v1, :cond_4

    .line 208
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 209
    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 212
    :cond_4
    const/16 v1, 0x3e8

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->removeDialog(I)V

    .line 213
    const/16 v1, 0x7d0

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->removeDialog(I)V

    .line 214
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 176
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[release] Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupReceiver()V
    .locals 2

    .prologue
    .line 220
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 223
    return-void
.end method


# virtual methods
.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 265
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    sget-object v0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HtcAlbum][CropImage][onControlButtonClick]: start"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    if-nez p1, :cond_0

    .line 282
    :goto_0
    return-void

    .line 270
    :cond_0
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 281
    :goto_1
    sget-object v0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HtcAlbum][CropImage][onControlButtonClick]: end"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 272
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->onOk()V

    goto :goto_1

    .line 275
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->finish()V

    goto :goto_1

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v3, 0x7f030006

    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->setContentView(I)V

    .line 81
    iget-object v4, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const v3, 0x7f090018

    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Lcom/htc/album/modules/ui/ControlBarManager;->attach(Landroid/view/ViewGroup;)V

    .line 82
    iget-object v3, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/htc/album/modules/ui/ControlBarManager;->createControlBars(II)V

    .line 84
    const v3, 0x7f090019

    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;

    .line 85
    .local v1, image:Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;
    if-eqz v1, :cond_0

    .line 86
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->setVisibility(I)V

    .line 88
    :cond_0
    const v3, 0x7f09001a

    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;

    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImageView:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;

    .line 89
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImageView:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;->setVisibility(I)V

    .line 91
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 92
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mTargetUri:Landroid/net/Uri;

    .line 93
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 95
    .local v0, extras:Landroid/os/Bundle;
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->setupReceiver()V

    .line 96
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mLoadBitmapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 97
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "id"
    .parameter "args"

    .prologue
    const/4 v3, 0x1

    .line 152
    sparse-switch p1, :sswitch_data_0

    .line 162
    invoke-super {p0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 157
    :sswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0051

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v3, v3}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    goto :goto_0

    .line 152
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x7d0 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 6
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 251
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 252
    .local v1, context:Landroid/content/Context;
    const/4 v0, 0x0

    .line 253
    .local v0, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->enableRightFooter()Z

    move-result v3

    invoke-static {v1, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;Z)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    .line 254
    const/4 v3, 0x5

    const v5, 0x20401ee

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 255
    const/4 v3, 0x4

    const v5, 0x7f0a0001

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 257
    return-object v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 134
    sget-object v0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[onDestroy]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const/4 v0, 0x4

    iput-short v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mActivityState:S

    .line 138
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->release()V

    .line 140
    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onDestroy()V

    .line 141
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x3

    iput-short v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mActivityState:S

    .line 109
    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onPause()V

    .line 110
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onResume()V

    .line 122
    const/4 v0, 0x5

    iput-short v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mActivityState:S

    .line 123
    return-void
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 492
    return-void
.end method
