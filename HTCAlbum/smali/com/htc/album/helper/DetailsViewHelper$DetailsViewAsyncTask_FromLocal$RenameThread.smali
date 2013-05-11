.class Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;
.super Ljava/lang/Thread;
.source "DetailsViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RenameThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread$PaintCacheUpdateProgressListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

.field private mContext:Landroid/content/Context;

.field private mIImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

.field private mNameNew:Ljava/lang/String;

.field private mNameOld:Ljava/lang/String;

.field private mNameSub:Ljava/lang/String;

.field private mPaintCacheUpdateTool:Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;

.field private mPos:I

.field private mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field final synthetic this$1:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;


# direct methods
.method public constructor <init>(Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;Landroid/content/Context;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "adapter"
    .parameter "pos"
    .parameter "curImage"
    .parameter "oldName"
    .parameter "newName"
    .parameter "subFileName"

    .prologue
    const/4 v1, 0x0

    .line 1368
    iput-object p1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->this$1:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1337
    iput-object v1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mContext:Landroid/content/Context;

    .line 1338
    iput-object v1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 1339
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mPos:I

    .line 1340
    iput-object v1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mIImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1341
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mNameOld:Ljava/lang/String;

    .line 1342
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mNameNew:Ljava/lang/String;

    .line 1343
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mNameSub:Ljava/lang/String;

    .line 1344
    iput-object v1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 1345
    iput-object v1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mPaintCacheUpdateTool:Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;

    .line 1369
    iput-object p2, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mContext:Landroid/content/Context;

    .line 1370
    iput-object p3, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 1371
    iput p4, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mPos:I

    .line 1372
    iput-object p5, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mIImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1373
    iput-object p6, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mNameOld:Ljava/lang/String;

    .line 1374
    iput-object p7, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mNameNew:Ljava/lang/String;

    .line 1375
    iput-object p8, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mNameSub:Ljava/lang/String;

    .line 1376
    new-instance v0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;

    iget-object v1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mPaintCacheUpdateTool:Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;

    .line 1378
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->setPriority(I)V

    .line 1379
    const-string v0, "RenameThread"

    invoke-virtual {p0, v0}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->setName(Ljava/lang/String;)V

    .line 1380
    return-void
.end method

.method static synthetic access$600(Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;)Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onPostExecute()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1540
    const-string v0, "[DetailsViewHelper]"

    const-string v1, "[HTCAlbum][onPostExecute][+]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    iput-object v2, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mContext:Landroid/content/Context;

    .line 1542
    iput-object v2, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 1543
    iput-object v2, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mIImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1544
    iget-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mPaintCacheUpdateTool:Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;

    if-eqz v0, :cond_0

    .line 1545
    iget-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mPaintCacheUpdateTool:Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;

    invoke-virtual {v0}, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->destroy()V

    .line 1546
    :cond_0
    iput-object v2, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mPaintCacheUpdateTool:Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;

    .line 1547
    const-string v0, "[DetailsViewHelper]"

    const-string v1, "[HTCAlbum][onPostExecute][-]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    return-void
.end method

.method public run()V
    .locals 32

    .prologue
    .line 1387
    const-string v29, "[DetailsViewHelper]"

    const-string v30, "[HTCAlbum][DetailsViewHelper][RenameThread][run]: begin"

    invoke-static/range {v29 .. v30}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mIImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v20

    .line 1389
    .local v20, oldPath:Ljava/lang/String;
    if-nez v20, :cond_1

    .line 1391
    const-string v29, "[DetailsViewHelper]"

    const-string v30, "[HTCAlbum][DetailsViewHelper][RenameThread][run] 1"

    invoke-static/range {v29 .. v30}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    move-object/from16 v29, v0

    if-eqz v29, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v29

    if-eqz v29, :cond_0

    .line 1393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 1537
    :cond_0
    :goto_0
    return-void

    .line 1396
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mIImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateModified()J

    move-result-wide v14

    .line 1397
    .local v14, modifiedTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mIImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSize()J

    move-result-wide v8

    .line 1398
    .local v8, fileSize:J
    move-object/from16 v18, v20

    .line 1399
    .local v18, newPath:Ljava/lang/String;
    const-string v29, "/"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    .line 1400
    .local v13, lastSlashIdx:I
    const/4 v12, -0x1

    .line 1401
    .local v12, index:I
    const/16 v29, -0x1

    move/from16 v0, v29

    if-eq v13, v0, :cond_2

    .line 1402
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    .line 1403
    .local v24, tmp:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mNameOld:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v29

    add-int v12, v13, v29

    .line 1408
    .end local v24           #tmp:Ljava/lang/String;
    :goto_1
    const/16 v29, -0x1

    move/from16 v0, v29

    if-ne v12, v0, :cond_3

    .line 1410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 1411
    const-string v29, "[DetailsViewHelper]"

    const-string v30, "[HTCAlbum][DetailsViewHelper][RenameThread][run] 2"

    invoke-static/range {v29 .. v30}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1405
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mNameOld:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    goto :goto_1

    .line 1416
    :cond_3
    const/16 v29, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 1417
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mNameNew:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 1418
    .local v25, updateData:Ljava/lang/String;
    new-instance v19, Ljava/io/File;

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1419
    .local v19, oldFile:Ljava/io/File;
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1420
    .local v16, newFile:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v6

    .line 1421
    .local v6, duplicate:Z
    if-nez v6, :cond_7

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v23

    .line 1422
    .local v23, success:Z
    :goto_2
    if-eqz v23, :cond_8

    const v22, 0x7f0a00a1

    .line 1424
    .local v22, showMsg:I
    :goto_3
    if-eqz v23, :cond_6

    .line 1430
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mIImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v28

    .line 1431
    .local v28, updateUri:Landroid/net/Uri;
    const/16 v26, 0x0

    .line 1432
    .local v26, updateDisplayName:Ljava/lang/String;
    const/16 v27, 0x0

    .line 1434
    .local v27, updateTitle:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mNameNew:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mNameSub:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 1435
    .local v11, idxOfSubName:I
    const/16 v17, 0x0

    .line 1436
    .local v17, newNameWithoutSubName:Ljava/lang/String;
    const/16 v29, -0x1

    move/from16 v0, v29

    if-eq v11, v0, :cond_9

    .line 1437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mNameNew:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 1441
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mNameNew:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 1442
    move-object/from16 v27, v17

    .line 1443
    const-string v29, "[DetailsViewHelper]"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "[HTCAlbum][DetailsViewHelper][rename] oldPath "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", newPath "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", newDisplayName "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", newTitle "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1445
    .local v5, contentVals:Landroid/content/ContentValues;
    const-string v29, "_data"

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    const-string v29, "_display_name"

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    const-string v29, "title"

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1449
    const/16 v21, 0x0

    .line 1452
    .local v21, rowId:I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v21

    .line 1459
    :goto_5
    :try_start_2
    const-string v29, "[DetailsViewHelper]"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "update data base after rename, got rowId "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    const-string v29, "[DetailsViewHelper]"

    const-string v30, "[HTCAlbum][DetailsViewHelper][RenameThread][run]: paint update begin"

    invoke-static/range {v29 .. v30}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    new-instance v10, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread$PaintCacheUpdateProgressListener;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread$PaintCacheUpdateProgressListener;-><init>(Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;)V

    .line 1468
    .local v10, iUpdateProgressListener:Lcom/htc/album/PaintManager/Interface/IPaintCacheUpdateProgressListener;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1469
    .local v4, bundle:Landroid/os/Bundle;
    const-string v29, "photo_url"

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mPaintCacheUpdateTool:Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mIImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-object/from16 v31, v0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2, v4, v10}, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->setUpdateInfo(ILcom/htc/opensense2/album/util/ImageManager$IImage;Landroid/os/Bundle;Lcom/htc/album/PaintManager/Interface/IPaintCacheUpdateProgressListener;)V

    .line 1472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mPaintCacheUpdateTool:Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->asyncUpdate()Z

    .line 1474
    :cond_4
    invoke-interface {v10}, Lcom/htc/album/PaintManager/Interface/IPaintCacheUpdateProgressListener;->isUpdateEnd()Z

    move-result v29

    if-eqz v29, :cond_4

    .line 1477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move-object/from16 v29, v0

    if-eqz v29, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    if-eqz v29, :cond_5

    .line 1479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    check-cast v29, Landroid/app/Activity;

    new-instance v30, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread$1;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread$1;-><init>(Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;)V

    invoke-virtual/range {v29 .. v30}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1487
    :cond_5
    const-string v29, "[DetailsViewHelper]"

    const-string v30, "[HTCAlbum][DetailsViewHelper][RenameThread][run]: end"

    invoke-static/range {v29 .. v30}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1523
    .end local v4           #bundle:Landroid/os/Bundle;
    .end local v5           #contentVals:Landroid/content/ContentValues;
    .end local v10           #iUpdateProgressListener:Lcom/htc/album/PaintManager/Interface/IPaintCacheUpdateProgressListener;
    .end local v11           #idxOfSubName:I
    .end local v17           #newNameWithoutSubName:Ljava/lang/String;
    .end local v21           #rowId:I
    .end local v26           #updateDisplayName:Ljava/lang/String;
    .end local v27           #updateTitle:Ljava/lang/String;
    .end local v28           #updateUri:Landroid/net/Uri;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    check-cast v29, Landroid/app/Activity;

    new-instance v30, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread$2;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread$2;-><init>(Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;I)V

    invoke-virtual/range {v29 .. v30}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1536
    const-string v29, "[DetailsViewHelper]"

    const-string v30, "[HTCAlbum][DetailsViewHelper][RenameThread][run]: end"

    invoke-static/range {v29 .. v30}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1421
    .end local v22           #showMsg:I
    .end local v23           #success:Z
    :cond_7
    const/16 v23, 0x0

    goto/16 :goto_2

    .line 1422
    .restart local v23       #success:Z
    :cond_8
    const v22, 0x7f0a00a0

    goto/16 :goto_3

    .line 1439
    .restart local v11       #idxOfSubName:I
    .restart local v17       #newNameWithoutSubName:Ljava/lang/String;
    .restart local v22       #showMsg:I
    .restart local v26       #updateDisplayName:Ljava/lang/String;
    .restart local v27       #updateTitle:Ljava/lang/String;
    .restart local v28       #updateUri:Landroid/net/Uri;
    :cond_9
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mNameNew:Ljava/lang/String;

    move-object/from16 v17, v0

    goto/16 :goto_4

    .line 1454
    .restart local v5       #contentVals:Landroid/content/ContentValues;
    .restart local v21       #rowId:I
    :catch_0
    move-exception v7

    .line 1456
    .local v7, e:Ljava/lang/Exception;
    const-string v29, "[DetailsViewHelper]"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "[HTCAlbum][DetailsViewHelper][renameFile]: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_5

    .line 1490
    .end local v5           #contentVals:Landroid/content/ContentValues;
    .end local v7           #e:Ljava/lang/Exception;
    .end local v11           #idxOfSubName:I
    .end local v17           #newNameWithoutSubName:Ljava/lang/String;
    .end local v21           #rowId:I
    .end local v26           #updateDisplayName:Ljava/lang/String;
    .end local v27           #updateTitle:Ljava/lang/String;
    .end local v28           #updateUri:Landroid/net/Uri;
    :catchall_0
    move-exception v29

    throw v29
.end method

.method public setProgressDialogRef(Lcom/htc/app/HtcProgressDialog;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 1383
    iput-object p1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 1384
    return-void
.end method
