.class Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$DownloadPhotoCallback;
.super Ljava/lang/Object;
.source "PickerLandingPageManager.java"

# interfaces
.implements Lcom/htc/opensense/cache/DownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadPhotoCallback"
.end annotation


# instance fields
.field private mFileDownloadMgr:Lcom/htc/opensense/cache/CacheManager;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/htc/opensense/cache/CacheManager;)V
    .locals 1
    .parameter "handler"
    .parameter "fileDownloadManager"

    .prologue
    const/4 v0, 0x0

    .line 356
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-object v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$DownloadPhotoCallback;->mHandler:Landroid/os/Handler;

    .line 354
    iput-object v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$DownloadPhotoCallback;->mFileDownloadMgr:Lcom/htc/opensense/cache/CacheManager;

    .line 357
    iput-object p1, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$DownloadPhotoCallback;->mHandler:Landroid/os/Handler;

    .line 358
    iput-object p2, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$DownloadPhotoCallback;->mFileDownloadMgr:Lcom/htc/opensense/cache/CacheManager;

    .line 359
    return-void
.end method


# virtual methods
.method public onDownloadError(Ljava/lang/Exception;Landroid/os/Bundle;)V
    .locals 3
    .parameter "e"
    .parameter "bundle"

    .prologue
    const/4 v2, 0x0

    .line 363
    sget-boolean v0, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 364
    const-string v0, "PickerLandingPageManager"

    const-string v1, "[PickerLandingPageManager][DownloadPhotoCallback][onDownloadError]"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$DownloadPhotoCallback;->mFileDownloadMgr:Lcom/htc/opensense/cache/CacheManager;

    if-eqz v0, :cond_1

    .line 367
    invoke-static {}, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager;->destroyInstance()V

    .line 368
    iput-object v2, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$DownloadPhotoCallback;->mFileDownloadMgr:Lcom/htc/opensense/cache/CacheManager;

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$DownloadPhotoCallback;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2728

    #calls: Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->sendMessage(Landroid/os/Handler;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->access$000(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 371
    iget-object v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$DownloadPhotoCallback;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x145d

    #calls: Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->sendMessage(Landroid/os/Handler;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->access$000(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 372
    return-void
.end method

.method public onDownloadSuccess(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 3
    .parameter "uri"
    .parameter "bundle"

    .prologue
    const/4 v2, 0x0

    .line 376
    sget-boolean v0, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 377
    const-string v0, "PickerLandingPageManager"

    const-string v1, "[PickerLandingPageManager][DownloadPhotoCallback][onDownloadSuccess]"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :cond_0
    invoke-static {}, Lcom/htc/opensense2/album/SocialNetworkManager/FileDownloadManager;->destroyInstance()V

    .line 379
    iput-object v2, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$DownloadPhotoCallback;->mFileDownloadMgr:Lcom/htc/opensense/cache/CacheManager;

    .line 381
    iget-object v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$DownloadPhotoCallback;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2728

    #calls: Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->sendMessage(Landroid/os/Handler;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->access$000(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 382
    iget-object v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$DownloadPhotoCallback;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x145c

    #calls: Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->sendMessage(Landroid/os/Handler;ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->access$000(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 383
    return-void
.end method
