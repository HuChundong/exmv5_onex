.class public Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDRMProtectInfo;
.super Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;
.source "DetailsViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/DetailsViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DetailsViewAsyncTask_FromDRMProtectInfo"
.end annotation


# instance fields
.field private mCurImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

.field final synthetic this$0:Lcom/htc/album/helper/DetailsViewHelper;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/DetailsViewHelper;Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Z)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "curImage"
    .parameter "isEditable"

    .prologue
    .line 401
    iput-object p1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDRMProtectInfo;->this$0:Lcom/htc/album/helper/DetailsViewHelper;

    .line 402
    invoke-direct {p0, p1, p2, p4}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;-><init>(Lcom/htc/album/helper/DetailsViewHelper;Landroid/content/Context;Z)V

    .line 399
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDRMProtectInfo;->mCurImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 403
    iput-object p3, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDRMProtectInfo;->mCurImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 404
    return-void
.end method


# virtual methods
.method protected getDetailsViewData()Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;
    .locals 12

    .prologue
    const/4 v11, 0x0

    const v10, 0x7f0a00aa

    const v9, 0x7f0a00a9

    const v8, 0x7f0a00a8

    const v7, 0x7f0a00b6

    .line 409
    const-string v4, "[DetailsViewHelper]"

    const-string v5, "[DetailsViewAsyncTask_FromDRMProtectInfo][getDetailsViewData][+]"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    new-instance v2, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;

    iget-object v4, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDRMProtectInfo;->this$0:Lcom/htc/album/helper/DetailsViewHelper;

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;-><init>(Lcom/htc/album/helper/DetailsViewHelper;Lcom/htc/album/helper/DetailsViewHelper$1;)V

    .line 413
    .local v2, detailsViewDataInfo:Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;
    iget-object v4, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    const v5, 0x7f0a00b3

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->setImageFileName(Ljava/lang/String;)V

    .line 416
    iget-object v4, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDRMProtectInfo;->mCurImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v3

    .line 417
    .local v3, drmType:I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 418
    iget-object v4, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    const v5, 0x7f0a00a7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    const v6, 0x7f0a00b5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->AddInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :goto_0
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 426
    iget-object v4, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->AddInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object v4, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->AddInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v4, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->AddInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :goto_1
    const-string v4, "[DetailsViewHelper]"

    const-string v5, "[DetailsViewAsyncTask_FromDRMProtectInfo][getDetailsViewData][-]"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    return-object v2

    .line 420
    :cond_0
    iget-object v4, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    const v5, 0x7f0a00a7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    const v6, 0x7f0a00b4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->AddInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 432
    :cond_1
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    .line 433
    .local v0, constraints:[Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDRMProtectInfo;->mCurImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-static {v5, v4, v0}, Lcom/htc/opensense2/album/util/DrmManager;->getConstranitStringType(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;[Ljava/lang/String;)I

    move-result v1

    .line 434
    .local v1, constriantType:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    .line 435
    iget-object v4, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v2, v4, v5}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->AddInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v4, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->AddInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v4, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->AddInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 439
    :cond_2
    if-nez v1, :cond_3

    .line 440
    iget-object v4, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aget-object v5, v0, v11

    invoke-virtual {v2, v4, v5}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->AddInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v4, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->AddInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v4, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->AddInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 443
    :cond_3
    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    .line 444
    iget-object v4, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v2, v4, v5}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->AddInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v4, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aget-object v5, v0, v11

    invoke-virtual {v2, v4, v5}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->AddInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v4, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-virtual {v2, v4, v5}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->AddInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 448
    :cond_4
    iget-object v4, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v2, v4, v5}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->AddInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v4, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->AddInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v4, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->AddInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected showResult(Landroid/widget/ScrollView;Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;)V
    .locals 10
    .parameter "scrollview"
    .parameter "result"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 460
    const-string v5, "[DetailsViewHelper]"

    const-string v6, "[DetailsViewAsyncTask_FromDRMProtectInfo][showResult][+]"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 463
    :cond_0
    const-string v5, "[DetailsViewHelper]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[showResult] scrollview = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :goto_0
    return-void

    .line 481
    :cond_1
    const v5, 0x7f090026

    invoke-virtual {p1, v5}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItemTileImage;

    .line 484
    .local v4, tileImage:Lcom/htc/widget/HtcListItemTileImage;
    const-string v5, "[DetailsViewHelper]"

    const-string v6, "[DetailsViewAsyncTask_FromDRMProtectInfo][showResult] decode default icon_indicator_drm_l."

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-object v5, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020029

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 486
    .local v1, detailThumb:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/htc/opensense2/album/util/BitmapUtil2;->isUsableBitmap(Landroid/graphics/Bitmap;)Z

    move-result v5

    if-ne v9, v5, :cond_2

    .line 489
    invoke-virtual {v4, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 493
    :cond_2
    iget-object v5, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDRMProtectInfo;->mCurImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    check-cast v5, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v5}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v3

    .line 497
    .local v3, drmType:I
    new-instance v0, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;

    iget-object v5, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDRMProtectInfo;->this$0:Lcom/htc/album/helper/DetailsViewHelper;

    iget-object v6, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDRMProtectInfo;->mCurImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-direct {v0, v5, v6, v4, v7}, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;-><init>(Lcom/htc/album/helper/DetailsViewHelper;Landroid/content/Context;Lcom/htc/widget/HtcListItemTileImage;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 498
    .local v0, DecodeThumbTask:Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    const/4 v6, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v5}, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 499
    iget-object v5, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mHeavyTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v6, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0a00a2

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitleDividerVisible(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x2040174

    new-instance v7, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDRMProtectInfo$1;

    invoke-direct {v7, p0}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDRMProtectInfo$1;-><init>(Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDRMProtectInfo;)V

    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    .line 515
    .local v2, dialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    if-eqz v2, :cond_5

    .line 517
    invoke-virtual {p0}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDRMProtectInfo;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 519
    const-string v5, "[DetailsViewHelper]"

    const-string v6, "[showResult] Task has cancelled."

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 522
    :cond_3
    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mDetailsDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 523
    iget-object v5, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mDetailsDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v5, :cond_4

    .line 525
    iget-object v5, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mDetailsDialog:Lcom/htc/widget/HtcAlertDialog;

    new-instance v6, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDRMProtectInfo$2;

    invoke-direct {v6, p0}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDRMProtectInfo$2;-><init>(Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDRMProtectInfo;)V

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 531
    iget-object v5, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mDetailsDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x400

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 533
    iget-object v5, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mDetailsDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {p0, v5}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDRMProtectInfo;->SafeShow(Lcom/htc/widget/HtcAlertDialog;)V

    .line 541
    :goto_1
    const-string v5, "[DetailsViewHelper]"

    const-string v6, "[DetailsViewAsyncTask_FromDRMProtectInfo][showResult][-]"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 536
    :cond_4
    const-string v5, "[DetailsViewHelper]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[showResult]mDetailsDialog = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mDetailsDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 539
    :cond_5
    const-string v5, "[DetailsViewHelper]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[showResult]dialogBuilder = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
