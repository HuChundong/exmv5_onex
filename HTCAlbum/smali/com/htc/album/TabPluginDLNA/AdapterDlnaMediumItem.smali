.class public Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;
.super Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
.source "AdapterDlnaMediumItem.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AdapterDlnaMediumItem"

.field private static SCREEN_LONG_SIDE_LENGTH:I

.field private static SCREEN_SHORT_SIDE_LENGTH:I


# instance fields
.field private bRefreshSinglePhoto:Z

.field private mHandlerData:Landroid/os/Handler;

.field protected mHandlerUI:Landroid/os/Handler;

.field protected mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

.field protected mList:Ljava/util/List;

.field protected mSceneType:I

.field protected mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0x258

    sput v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->SCREEN_SHORT_SIDE_LENGTH:I

    .line 44
    const/16 v0, 0x400

    sput v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->SCREEN_LONG_SIDE_LENGTH:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;-><init>(Landroid/app/Activity;)V

    .line 37
    iput v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mSceneType:I

    .line 38
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    .line 39
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    .line 41
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerUI:Landroid/os/Handler;

    .line 46
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->bRefreshSinglePhoto:Z

    .line 677
    new-instance v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem$1;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem$1;-><init>(Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerData:Landroid/os/Handler;

    .line 51
    new-instance v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    .line 52
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getDisplayDimension()V

    .line 53
    return-void
.end method

.method private getDisplayDimension()V
    .locals 7

    .prologue
    .line 865
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 866
    .local v0, display:Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 867
    .local v2, ptSize:Landroid/graphics/Point;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 868
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 869
    .local v3, width:I
    iget v1, v2, Landroid/graphics/Point;->y:I

    .line 872
    .local v1, height:I
    if-le v3, v1, :cond_0

    .line 875
    sput v1, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->SCREEN_SHORT_SIDE_LENGTH:I

    .line 876
    sput v3, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->SCREEN_LONG_SIDE_LENGTH:I

    .line 884
    :goto_0
    const-string v4, "AdapterDlnaMediumItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][AdapterDlnaMediumItem][getDisplayDimension]nWidth:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",height:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    return-void

    .line 880
    :cond_0
    sput v3, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->SCREEN_SHORT_SIDE_LENGTH:I

    .line 881
    sput v1, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->SCREEN_LONG_SIDE_LENGTH:I

    goto :goto_0
.end method

.method private onRequestPhotoDetail(Landroid/os/Message;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 670
    const-string v1, "AdapterDlnaMediumItem"

    const-string v2, "[HTCAlbum][AdapterDlnaMediumItem][onRequestPhotoDetail]... "

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .line 672
    .local v0, mediumInfo:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->requestPhotoDetail(Ljava/lang/String;)Z

    .line 673
    return-void
.end method

.method private requestPhotoDownload(IZ)V
    .locals 9
    .parameter "nIndex"
    .parameter "fullDownload"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 310
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-nez v5, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 315
    .local v1, nCount:I
    if-le v1, p1, :cond_0

    .line 318
    const/4 v3, 0x0

    .line 321
    .local v3, object:Ljava/lang/Object;
    :try_start_0
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 327
    .end local v3           #object:Ljava/lang/Object;
    :goto_1
    if-eqz v3, :cond_0

    instance-of v5, v3, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    if-nez v5, :cond_0

    .line 330
    const/4 v2, -0x1

    .local v2, nIntegrity:I
    move-object v0, v3

    .line 332
    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .line 333
    .local v0, mediumInfo:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    if-eqz v0, :cond_0

    .line 336
    iget-object v4, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    .line 340
    .local v4, szMediumID:Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 342
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    invoke-virtual {v5, v0}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->getFullImageState(Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)I

    move-result v2

    .line 343
    if-ne v2, v6, :cond_2

    .line 345
    invoke-virtual {v0, v6}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->setMediaQuality(I)V

    .line 346
    iget-object v5, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    invoke-direct {p0, v0, v5, v7}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setImageSize(Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;Ljava/lang/String;Z)V

    .line 347
    const-string v5, "AdapterDlnaMediumItem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][AdapterDlnaMediumItem][requestPhotoDownload]Quality high ready: index :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 352
    :cond_2
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    invoke-virtual {v5, v0}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->getThumbnailState(Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)I

    move-result v2

    .line 353
    if-nez v2, :cond_3

    .line 355
    invoke-virtual {v0, v7}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->setMediaQuality(I)V

    .line 356
    iget-object v5, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    invoke-direct {p0, v0, v5, v6}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setImageSize(Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;Ljava/lang/String;Z)V

    .line 357
    const-string v5, "AdapterDlnaMediumItem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][AdapterDlnaMediumItem][requestPhotoDownload]Quality low ready:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :goto_2
    if-eqz p2, :cond_0

    .line 371
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v5, v6, p1, v8, v4}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->forwardFullDownloadRequest(Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 362
    :cond_3
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v5, v6, p1, v8, v4}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->forwardThumbnailDownloadRequest(Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 323
    .end local v0           #mediumInfo:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    .end local v2           #nIntegrity:I
    .end local v4           #szMediumID:Ljava/lang/String;
    .restart local v3       #object:Ljava/lang/Object;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private setImageSize(Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;Ljava/lang/String;Z)V
    .locals 12
    .parameter "mediumInfo"
    .parameter "path"
    .parameter "bthumbnail"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 613
    if-nez p1, :cond_1

    .line 666
    :cond_0
    :goto_0
    return-void

    .line 616
    :cond_1
    if-eqz p2, :cond_0

    .line 619
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    if-eqz v4, :cond_0

    .line 622
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 623
    .local v3, opts:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 624
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    invoke-virtual {v4, p2}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->getCachedFile(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 625
    .local v0, afDescriptor:Landroid/content/res/AssetFileDescriptor;
    if-eqz v0, :cond_0

    .line 628
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 629
    const-string v4, "AdapterDlnaMediumItem"

    new-array v5, v11, [Ljava/lang/Object;

    const-string v6, "[HTCAlbum][AdapterDlnaMediumItem][setImageSize]:outWidth: "

    aput-object v6, v5, v8

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const-string v6, ", outHeight: "

    aput-object v6, v5, v9

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->w2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 631
    const/4 v2, 0x0

    .line 632
    .local v2, nWidth:I
    const/4 v1, 0x0

    .line 633
    .local v1, nHeight:I
    if-eqz p3, :cond_4

    .line 635
    const-class v4, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    iget v5, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mSceneType:I

    if-ne v4, v5, :cond_2

    .line 637
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 638
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 656
    :goto_1
    const-string v4, "AdapterDlnaMediumItem"

    new-array v5, v11, [Ljava/lang/Object;

    const-string v6, "[HTCAlbum][AdapterDlnaMediumItem][setImageSize]:nWidth:"

    aput-object v6, v5, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const-string v6, ", nHeight:"

    aput-object v6, v5, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 664
    :goto_2
    invoke-virtual {p1, v2}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->setDispalyImageWidth(I)V

    .line 665
    invoke-virtual {p1, v1}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->setDisplayImageHeight(I)V

    goto :goto_0

    .line 642
    :cond_2
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v4, v5, :cond_3

    .line 645
    sget v2, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->SCREEN_LONG_SIDE_LENGTH:I

    .line 646
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v4, v2

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int v1, v4, v5

    goto :goto_1

    .line 651
    :cond_3
    sget v1, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->SCREEN_LONG_SIDE_LENGTH:I

    .line 652
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int/2addr v4, v1

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int v2, v4, v5

    goto :goto_1

    .line 660
    :cond_4
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 661
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_2
.end method

.method private syncBackgroundService(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 2
    .parameter "szService"
    .parameter "hHandler"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->isServiceActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mDataBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->initServerInfo(Ljava/lang/Object;)Z

    .line 216
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onStart()V

    .line 218
    :cond_0
    return-void
.end method


# virtual methods
.method public bindDLNAService()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onStart()V

    .line 197
    :cond_0
    return-void
.end method

.method public browseNextPage()V
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-nez v0, :cond_1

    .line 795
    :cond_0
    :goto_0
    return-void

    .line 793
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->goBrowsePageNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onNotifyUpdating(Z)V

    goto :goto_0
.end method

.method public browsePreviousPage()V
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-nez v0, :cond_1

    .line 786
    :cond_0
    :goto_0
    return-void

    .line 784
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->goBrowsePagePrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 785
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onNotifyUpdating(Z)V

    goto :goto_0
.end method

.method protected cancelThumbnailDownloadRequests()V
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-nez v0, :cond_0

    .line 844
    :goto_0
    return-void

    .line 843
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->cancelThumbnailDownloadRequests()V

    goto :goto_0
.end method

.method public destroyController(Ljava/lang/String;)V
    .locals 1
    .parameter "rendererID"

    .prologue
    .line 815
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->destroyController(Ljava/lang/String;)V

    .line 819
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDirectoryInfo()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-nez v0, :cond_0

    .line 800
    const/4 v0, 0x0

    .line 802
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getDirectoryInfo()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerUI:Landroid/os/Handler;

    return-object v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "AdapterDlnaMediumItem"

    return-object v0
.end method

.method public getItem(I)Lcom/htc/sunnyCore/IMediaData;
    .locals 5
    .parameter "itemIndex"

    .prologue
    .line 69
    const/4 v1, 0x0

    .line 71
    .local v1, mediaData:Lcom/htc/sunnyCore/IMediaData;
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 74
    .local v0, listSize:I
    if-ltz p1, :cond_1

    if-ge p1, v0, :cond_1

    .line 77
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #mediaData:Lcom/htc/sunnyCore/IMediaData;
    check-cast v1, Lcom/htc/sunnyCore/IMediaData;

    .line 82
    .end local v0           #listSize:I
    .restart local v1       #mediaData:Lcom/htc/sunnyCore/IMediaData;
    :cond_0
    :goto_0
    return-object v1

    .line 80
    .restart local v0       #listSize:I
    :cond_1
    const-string v2, "AdapterDlnaMediumItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getItem]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getItemIndex(Ljava/lang/String;)I
    .locals 7
    .parameter "contentId"

    .prologue
    .line 87
    const/4 v1, 0x0

    .line 89
    .local v1, index:I
    if-nez p1, :cond_0

    move v2, v1

    .line 112
    .end local v1           #index:I
    .local v2, index:I
    :goto_0
    return v2

    .line 92
    .end local v2           #index:I
    .restart local v1       #index:I
    :cond_0
    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    if-nez v6, :cond_1

    move v2, v1

    .line 93
    .end local v1           #index:I
    .restart local v2       #index:I
    goto :goto_0

    .line 95
    .end local v2           #index:I
    .restart local v1       #index:I
    :cond_1
    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 96
    .local v5, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v5, :cond_4

    .line 99
    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/sunnyCore/IMediaData;

    .line 100
    .local v4, mediaData:Lcom/htc/sunnyCore/IMediaData;
    if-nez v4, :cond_3

    .line 96
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 103
    :cond_3
    instance-of v6, v4, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    if-eqz v6, :cond_2

    move-object v3, v4

    .line 105
    check-cast v3, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .line 107
    .local v3, itemInfo:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    iget-object v6, v3, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 108
    move v1, v0

    goto :goto_2

    .end local v3           #itemInfo:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    .end local v4           #mediaData:Lcom/htc/sunnyCore/IMediaData;
    :cond_4
    move v2, v1

    .line 112
    .end local v1           #index:I
    .restart local v2       #index:I
    goto :goto_0
.end method

.method public getServiceDirectory()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-nez v0, :cond_0

    .line 808
    const/4 v0, 0x0

    .line 810
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getServiceDirectory()Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    move-result-object v0

    goto :goto_0
.end method

.method public isServiceActive()Z
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->isServiceActive()Z

    move-result v0

    .line 209
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLoadData()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 136
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->setRegisterID(I)V

    .line 137
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->setRegisterName(Ljava/lang/String;)V

    .line 138
    const-string v2, "AdapterDlnaMediumItem"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "[AdapterDlnaMediumItem][onLoadData]"

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getRegisterName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string v5, ", "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getRegisterID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    invoke-static {}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->PanelManager()Lcom/htc/album/AlbumMain/ActivityPanelManager;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3, v6}, Lcom/htc/album/AlbumMain/ActivityPanelManager;->setEnterProcessing(IZ)V

    .line 140
    const-string v2, "AdapterDlnaMediumItem"

    const-string v3, "[AdapterDlnaMediumItem][onLoadData][EnterProcessing]"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v2, "AdapterDlnaMediumItem"

    const-string v3, "[HTCAlbum][AdapterDlnaMediumItem][onLoadData]: begin..."

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 147
    .local v0, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->enableBrowseSyncOnServiceConnected()V

    .line 148
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->setDataHandler(Landroid/os/Handler;)V

    .line 149
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerUI:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->setUIHandler(Landroid/os/Handler;)V

    .line 151
    new-instance v2, Lcom/htc/album/TabPluginDLNA/ImageProvider;

    invoke-direct {v2}, Lcom/htc/album/TabPluginDLNA/ImageProvider;-><init>()V

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    .line 152
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    sget v3, Lcom/htc/opensense2/album/cache/CacheManager;->MAX_LISTVIEW_MEM_BUFFER:I

    invoke-virtual {v2, v0, v6, v3}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->Initialize(Landroid/content/Context;ZI)Z

    .line 157
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->setDataHandler(Landroid/os/Handler;)V

    .line 158
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    invoke-static {v0}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Default_Avatar(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->setDefaultImageResource(Landroid/content/Context;I)V

    .line 160
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 161
    .local v1, nOrientation:I
    if-ne v6, v1, :cond_0

    .line 162
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    const/16 v3, 0x1c

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->setMaxDownloadBuffer(I)V

    .line 166
    :goto_0
    invoke-direct {p0, v7, v7}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->syncBackgroundService(Ljava/lang/String;Landroid/os/Handler;)V

    .line 169
    const-string v2, "AdapterDlnaMediumItem"

    const-string v3, "[HTCAlbum][AdapterDlnaMediumItem][onLoadData]: end..."

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void

    .line 164
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->setMaxDownloadBuffer(I)V

    goto :goto_0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "message"

    .prologue
    .line 689
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 722
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 692
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onRequestPhotoDetail(Landroid/os/Message;)V

    goto :goto_0

    .line 695
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onSyncListComplete(Landroid/os/Message;)V

    goto :goto_0

    .line 698
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onSyncList(Landroid/os/Message;)V

    goto :goto_0

    .line 701
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onSyncPhotoThumbnailComplete(Landroid/os/Message;)V

    goto :goto_0

    .line 704
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onSyncPhotoComplete(Landroid/os/Message;)V

    goto :goto_0

    .line 707
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onSyncRecentList(Landroid/os/Message;)V

    goto :goto_0

    .line 710
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onUIUpdateNotify(Landroid/os/Message;)V

    goto :goto_0

    .line 713
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onUIUpdateNotify(Landroid/os/Message;)V

    goto :goto_0

    .line 716
    :sswitch_8
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onUIUpdateNotify(Landroid/os/Message;)V

    goto :goto_0

    .line 719
    :sswitch_9
    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onUIUpdateNotify(Landroid/os/Message;J)V

    goto :goto_0

    .line 689
    nop

    :sswitch_data_0
    .sparse-switch
        0x2767 -> :sswitch_7
        0x4e35 -> :sswitch_0
        0x4e84 -> :sswitch_9
        0x4e88 -> :sswitch_2
        0x4e89 -> :sswitch_4
        0x4e8f -> :sswitch_5
        0x4e94 -> :sswitch_8
        0x4e95 -> :sswitch_1
        0x4e9a -> :sswitch_6
        0x4ea0 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPostMessage(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 727
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerData:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerData:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 730
    :cond_0
    return-void
.end method

.method public onRemoveMessage(I)V
    .locals 1
    .parameter "nMessageID"

    .prologue
    .line 734
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerData:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 736
    :cond_0
    return-void
.end method

.method protected onSyncList(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 470
    return-void
.end method

.method protected onSyncListComplete(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 476
    return-void
.end method

.method public onSyncPhotoComplete(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    .line 544
    const-string v0, "AdapterDlnaMediumItem"

    const-string v2, "[HTCAlbum][AdaperDlnaMediuamItem][onSyncPhotoComplete]..."

    invoke-static {v0, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    if-nez v0, :cond_1

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 549
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    if-eqz v0, :cond_0

    .line 552
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .line 553
    .local v7, mediumInfoTemp:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    const/4 v6, 0x0

    .line 554
    .local v6, mediumInfo:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    const/4 v8, 0x0

    .line 556
    .local v8, object:Ljava/lang/Object;
    const/4 v1, 0x0

    .end local v8           #object:Ljava/lang/Object;
    .local v1, nIndex:I
    :goto_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 558
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .restart local v8       #object:Ljava/lang/Object;
    if-nez v8, :cond_3

    .line 556
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 561
    :cond_3
    instance-of v0, v8, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    if-eqz v0, :cond_2

    move-object v6, v8

    .line 564
    check-cast v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .line 565
    iget-object v0, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    iget-object v2, v7, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 569
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->bRefreshSinglePhoto:Z

    if-nez v0, :cond_4

    iget-object v0, v7, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, v7, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    iget-object v2, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 573
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    invoke-virtual {v0, v6}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->getFullImageState(Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)I

    move-result v0

    if-ne v0, v5, :cond_4

    .line 575
    const-string v0, "AdapterDlnaMediumItem"

    const-string v2, "[HTCAlbum][AdapterDlnaMediumItem][onSyncPhotoComplete]High quality is already notified"

    invoke-static {v0, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 580
    :cond_4
    iput-boolean v9, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->bRefreshSinglePhoto:Z

    .line 582
    iget-object v0, v7, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    iput-object v0, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    .line 587
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    if-eqz v0, :cond_5

    .line 588
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    const/4 v2, 0x0

    iget-object v3, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    iget-object v4, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->setPhotoDownload(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 594
    :cond_5
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    invoke-virtual {v6, v0}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->setReferenceImageProvider(Lcom/htc/album/TabPluginDLNA/ImageProvider;)V

    .line 596
    const-string v0, "AdapterDlnaMediumItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][AdapterDlnaMediumItem][onSyncPhotoComplete]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    iget-object v0, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 602
    const-string v0, "AdapterDlnaMediumItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][AdapterDlnaMediumItem][onSyncPhotoComplete]: Notify Index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-virtual {v6, v5}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->setMediaQuality(I)V

    .line 604
    iget-object v0, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    invoke-direct {p0, v6, v0, v9}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setImageSize(Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;Ljava/lang/String;Z)V

    .line 605
    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->notifyDataChangedAt(I)V

    goto/16 :goto_0
.end method

.method public onSyncPhotoThumbnailComplete(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 481
    const-string v0, "AdapterDlnaMediumItem"

    const-string v2, "[HTCAlbum][AdaperDlnaMediuamItem][onSyncPhotoThumbnailComplete]..."

    invoke-static {v0, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    if-nez v0, :cond_1

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    if-eqz v0, :cond_0

    .line 489
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .line 490
    .local v7, mediumInfoTemp:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    const/4 v6, 0x0

    .line 491
    .local v6, mediumInfo:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    const/4 v8, 0x0

    .line 493
    .local v8, object:Ljava/lang/Object;
    const/4 v1, 0x0

    .end local v8           #object:Ljava/lang/Object;
    .local v1, nIndex:I
    :goto_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 495
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .restart local v8       #object:Ljava/lang/Object;
    if-nez v8, :cond_3

    .line 493
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 498
    :cond_3
    instance-of v0, v8, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    if-eqz v0, :cond_2

    move-object v6, v8

    .line 501
    check-cast v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .line 502
    iget-object v0, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    iget-object v2, v7, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 505
    iget-object v0, v7, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    iput-object v0, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    .line 511
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    const/4 v2, 0x0

    iget-object v3, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    iget-object v4, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->setPhotoDownload(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 521
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    invoke-virtual {v6, v0}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->setReferenceImageProvider(Lcom/htc/album/TabPluginDLNA/ImageProvider;)V

    .line 523
    const-string v0, "AdapterDlnaMediumItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][AdapterDlnaMediumItem][onSyncPhotoThumbnailComplete]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    invoke-virtual {v0, v6}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->getFullImageState(Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)I

    move-result v0

    if-eq v0, v9, :cond_0

    .line 529
    iget-object v0, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 531
    const-string v0, "AdapterDlnaMediumItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][AdapterDlnaMediumItem][onSyncPhotoThumbnailComplete]: Notify Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    invoke-virtual {v6, v5}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->setMediaQuality(I)V

    .line 533
    iget-object v0, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    invoke-direct {p0, v6, v0, v9}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setImageSize(Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;Ljava/lang/String;Z)V

    .line 534
    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->notifyDataChangedAt(I)V

    goto/16 :goto_0
.end method

.method protected onSyncRecentList(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 464
    return-void
.end method

.method public onUIUpdateNotify(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 823
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerUI:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 828
    :goto_0
    return-void

    .line 827
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerUI:Landroid/os/Handler;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onUIUpdateNotify(Landroid/os/Message;J)V
    .locals 2
    .parameter "message"
    .parameter "delayMillis"

    .prologue
    .line 832
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerUI:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 836
    :goto_0
    return-void

    .line 835
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerUI:Landroid/os/Handler;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public onUnloadData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 176
    const-string v0, "AdapterDlnaMediumItem"

    const-string v1, "[HTCAlbum][AdapterDlnaMediumItem][onUnloadData]: begin..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-super {p0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->onUnloadData()V

    .line 178
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onStop()V

    .line 179
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->setDataHandler(Landroid/os/Handler;)V

    .line 180
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->setUIHandler(Landroid/os/Handler;)V

    .line 181
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onDestroy()V

    .line 182
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    .line 184
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->Uninitialize()V

    .line 185
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    .line 190
    const-string v0, "AdapterDlnaMediumItem"

    const-string v1, "[HTCAlbum][AdapterDlnaMediumItem][onUnloadData]: end..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public refreshFolder()V
    .locals 2

    .prologue
    .line 751
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->goBrowseFolderThis(Z)Z

    .line 757
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    if-eqz v0, :cond_1

    .line 758
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->resetCacheDownloadRequest()V

    .line 759
    :cond_1
    return-void
.end method

.method public refreshSinglePhoto(I)V
    .locals 7
    .parameter "nIndex"

    .prologue
    .line 762
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 763
    .local v1, nCount:I
    if-gt v1, p1, :cond_1

    .line 778
    :cond_0
    :goto_0
    return-void

    .line 765
    :cond_1
    const/4 v2, 0x0

    .line 768
    .local v2, object:Ljava/lang/Object;
    :try_start_0
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 772
    .end local v2           #object:Ljava/lang/Object;
    :goto_1
    if-eqz v2, :cond_0

    instance-of v4, v2, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    if-nez v4, :cond_0

    move-object v0, v2

    .line 774
    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .line 775
    .local v0, mediumInfo:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    .line 776
    .local v3, szMediumID:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p1, v6, v3}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->forwardFullDownloadRequest(Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;ILjava/lang/String;Ljava/lang/String;)I

    .line 777
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->bRefreshSinglePhoto:Z

    goto :goto_0

    .line 770
    .end local v0           #mediumInfo:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    .end local v3           #szMediumID:Ljava/lang/String;
    .restart local v2       #object:Ljava/lang/Object;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public setFilmstripViewScrollState(III)V
    .locals 10
    .parameter "nScrollState"
    .parameter "nIndex"
    .parameter "nVisibleItems"

    .prologue
    const/4 v7, 0x1

    .line 275
    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    if-nez v6, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    const-string v8, "AdapterDlnaMediumItem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][AdapterDlnaMediumItem][setFilmstripViewScrollState] isScrollIdle = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez p1, :cond_2

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", nIndex = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", nVisibleItems = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    if-eqz p1, :cond_3

    .line 281
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->cancelThumbnailDownloadRequests()V

    goto :goto_0

    .line 278
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 287
    :cond_3
    const/4 v4, 0x0

    .line 288
    .local v4, object:Ljava/lang/Object;
    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 290
    .local v3, nCount:I
    add-int/lit8 v6, p3, -0x1

    div-int/lit8 v0, v6, 0x2

    .line 292
    .local v0, halfVisibleItemSize:I
    invoke-direct {p0, p2, v7}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->requestPhotoDownload(IZ)V

    .line 294
    const/4 v1, 0x1

    .local v1, idx:I
    :goto_2
    if-gt v1, v0, :cond_0

    .line 296
    sub-int v2, p2, v1

    .line 297
    .local v2, leftIndex:I
    add-int v5, p2, v1

    .line 299
    .local v5, rightIndex:I
    if-ltz v2, :cond_4

    .line 300
    invoke-direct {p0, v2, v7}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->requestPhotoDownload(IZ)V

    .line 302
    :cond_4
    if-ge v5, v3, :cond_5

    .line 303
    invoke-direct {p0, v5, v7}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->requestPhotoDownload(IZ)V

    .line 294
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 741
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerUI:Landroid/os/Handler;

    .line 742
    return-void
.end method

.method public setSceneQuality(Z)V
    .locals 4
    .parameter "bThumbOnly"

    .prologue
    .line 121
    const/4 v2, 0x0

    .line 122
    .local v2, object:Ljava/lang/Object;
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 123
    .local v0, nCount:I
    const/4 v1, 0x0

    .end local v2           #object:Ljava/lang/Object;
    .local v1, nIndex:I
    :goto_0
    if-le v0, v1, :cond_0

    .line 125
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 126
    .restart local v2       #object:Ljava/lang/Object;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    if-eqz v3, :cond_1

    .line 131
    .end local v2           #object:Ljava/lang/Object;
    :cond_0
    return-void

    .line 129
    .restart local v2       #object:Ljava/lang/Object;
    :cond_1
    check-cast v2, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .end local v2           #object:Ljava/lang/Object;
    invoke-virtual {v2, p1}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->setThumbnailOnly(Z)V

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setSceneType(I)V
    .locals 0
    .parameter "nSceneType"

    .prologue
    .line 117
    iput p1, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mSceneType:I

    .line 118
    return-void
.end method

.method public setScrollState(III)V
    .locals 11
    .parameter "nScrollState"
    .parameter "nIndex"
    .parameter "nVisibleItems"

    .prologue
    .line 221
    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    if-nez v7, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    const-string v7, "AdapterDlnaMediumItem"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "[HTCAlbum][AdapterDlnaMediumItem][setScrollState]: "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, " : "

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string v10, " : "

    aput-object v10, v8, v9

    const/4 v9, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    if-eqz p1, :cond_2

    .line 227
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->cancelThumbnailDownloadRequests()V

    goto :goto_0

    .line 233
    :cond_2
    const/4 v6, 0x0

    .line 234
    .local v6, object:Ljava/lang/Object;
    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    .line 236
    .local v1, nCount:I
    const-class v7, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    iget v8, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mSceneType:I

    if-ne v7, v8, :cond_6

    .line 238
    if-gez p2, :cond_4

    const/4 v5, 0x0

    .line 239
    .local v5, nVisibleStartIndex:I
    :goto_1
    move v4, v5

    .line 240
    .local v4, nVisibleEndIndex:I
    if-nez p3, :cond_5

    .line 241
    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    invoke-virtual {v7}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->getMaxDownloadBuffer()I

    move-result v7

    add-int/2addr v4, v7

    .line 245
    :goto_2
    if-gt v1, v4, :cond_3

    .line 246
    move v4, v1

    .line 248
    :cond_3
    move v0, v5

    .local v0, i:I
    :goto_3
    if-ge v0, v4, :cond_0

    .line 250
    const/4 v7, 0x0

    invoke-direct {p0, v0, v7}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->requestPhotoDownload(IZ)V

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v0           #i:I
    .end local v4           #nVisibleEndIndex:I
    .end local v5           #nVisibleStartIndex:I
    :cond_4
    move v5, p2

    .line 238
    goto :goto_1

    .line 243
    .restart local v4       #nVisibleEndIndex:I
    .restart local v5       #nVisibleStartIndex:I
    :cond_5
    add-int/2addr v4, p3

    goto :goto_2

    .line 253
    .end local v4           #nVisibleEndIndex:I
    .end local v5           #nVisibleStartIndex:I
    :cond_6
    const-class v7, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    iget v8, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mSceneType:I

    if-ne v7, v8, :cond_0

    .line 255
    add-int/lit8 v2, p2, -0x1

    .line 256
    .local v2, nIndexLeft:I
    add-int/lit8 v3, p2, 0x1

    .line 258
    .local v3, nIndexRight:I
    if-gt v1, v3, :cond_7

    .line 259
    add-int/lit8 v3, v1, -0x1

    .line 261
    :cond_7
    if-gez v2, :cond_8

    .line 262
    const/4 v2, 0x0

    .line 264
    :cond_8
    const/4 v7, 0x1

    invoke-direct {p0, p2, v7}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->requestPhotoDownload(IZ)V

    .line 265
    if-eq p2, v3, :cond_9

    .line 266
    const/4 v7, 0x1

    invoke-direct {p0, v3, v7}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->requestPhotoDownload(IZ)V

    .line 267
    :cond_9
    if-eq p2, v2, :cond_0

    .line 268
    const/4 v7, 0x1

    invoke-direct {p0, v2, v7}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->requestPhotoDownload(IZ)V

    goto/16 :goto_0
.end method

.method protected syncListItem(Ljava/lang/Object;Z)V
    .locals 14
    .parameter "object"
    .parameter "bAddVirtualMoreItem"

    .prologue
    .line 382
    iget-object v11, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-nez v11, :cond_1

    .line 459
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 385
    .restart local p1
    :cond_1
    instance-of v11, p1, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    if-eqz v11, :cond_0

    .line 388
    const-string v11, "AdapterDlnaMediumItem"

    const-string v12, "[HTCAlbum][AdapterDlnaMediumItem][syncListItem]: begin"

    invoke-static {v11, v12}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v11, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    check-cast p1, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .end local p1
    move/from16 v0, p2

    invoke-virtual {v11, p1, v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->scan4MediumItems(Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;Z)Z

    .line 391
    const/4 v6, 0x0

    .line 392
    .local v6, mediumInfoNew:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    const/4 v7, 0x0

    .line 393
    .local v7, mediumInfoOld:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    iget-object v11, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v11}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getBrowseList()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 394
    .local v4, listNew:Ljava/util/List;
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    .line 396
    .local v5, listOld:Ljava/util/List;
    const/4 v8, 0x0

    .local v8, nIndex:I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v8, :cond_6

    .line 398
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    if-eqz v11, :cond_5

    .line 400
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #mediumInfoNew:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    check-cast v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .line 402
    .restart local v6       #mediumInfoNew:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    const/4 v9, 0x0

    .local v9, nIndex2:I
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v9, :cond_4

    .line 404
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    if-eqz v11, :cond_2

    .line 406
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #mediumInfoOld:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    check-cast v7, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .line 408
    .restart local v7       #mediumInfoOld:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    iget-object v11, v7, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    if-nez v11, :cond_3

    .line 402
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 411
    :cond_3
    iget-object v11, v7, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    iget-object v12, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 414
    iget-object v11, v7, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    iput-object v11, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    .line 415
    iget-object v11, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    invoke-virtual {v6, v11}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->setReferenceImageProvider(Lcom/htc/album/TabPluginDLNA/ImageProvider;)V

    .line 417
    invoke-interface {v5, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 396
    .end local v9           #nIndex2:I
    :cond_4
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 422
    :cond_5
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    if-eqz v11, :cond_4

    .line 424
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .line 425
    .local v10, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    iget-object v11, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const v12, 0x7f0a00d9

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setCenterText(Ljava/lang/String;)V

    .line 426
    iget-object v11, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_GalleryBGLoading(Landroid/content/Context;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setBackground(I)V

    goto :goto_3

    .line 429
    .end local v10           #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    :cond_6
    iget-object v11, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 430
    iget-object v11, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 435
    iget-object v11, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 436
    .local v3, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 439
    :cond_7
    :goto_4
    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 441
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 442
    .local v2, entry:Ljava/lang/Object;
    if-eqz v2, :cond_7

    instance-of v11, v2, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    if-eqz v11, :cond_7

    .line 444
    move-object v0, v2

    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    move-object v6, v0

    .line 445
    const-string v11, "0"

    iget-object v12, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 446
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 451
    .end local v2           #entry:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 454
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 457
    .end local v1           #e:Ljava/lang/Exception;
    :cond_8
    const-string v11, "AdapterDlnaMediumItem"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][AdapterDlnaMediumItem][syncListItem]: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v11, "AdapterDlnaMediumItem"

    const-string v12, "[HTCAlbum][AdapterDlnaMediumItem][syncListItem]: end "

    invoke-static {v11, v12}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public unBindDLNAService()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onStop()V

    .line 203
    :cond_0
    return-void
.end method
