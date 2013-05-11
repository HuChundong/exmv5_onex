.class Lcom/htc/album/helper/ImageProcessManager$ProcessThread;
.super Ljava/lang/Thread;
.source "ImageProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/ImageProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProcessThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/helper/ImageProcessManager$ProcessThread$MergeListener;
    }
.end annotation


# instance fields
.field private cancelProcess:Z

.field private currentProcessedBMP:Landroid/graphics/Bitmap;

.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

.field private mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

.field private mIsSDCardFull:Z

.field final synthetic this$0:Lcom/htc/album/helper/ImageProcessManager;


# direct methods
.method public constructor <init>(Lcom/htc/album/helper/ImageProcessManager;Landroid/app/Activity;)V
    .locals 2
    .parameter
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1069
    iput-object p1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1022
    iput-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mAdapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    .line 1023
    iput-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    .line 1024
    iput-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 1025
    iput-boolean v1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->cancelProcess:Z

    .line 1026
    iput-boolean v1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mIsSDCardFull:Z

    .line 1027
    iput-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    .line 1070
    iput-object p2, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    .line 1072
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->setPriority(I)V

    .line 1073
    const-string v0, "ImageProcessor"

    invoke-virtual {p0, v0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->setName(Ljava/lang/String;)V

    .line 1074
    return-void
.end method

.method public constructor <init>(Lcom/htc/album/helper/ImageProcessManager;Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/ObserverAdapter;)V
    .locals 2
    .parameter
    .parameter "activity"
    .parameter "adapter"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1053
    iput-object p1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1022
    iput-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mAdapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    .line 1023
    iput-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    .line 1024
    iput-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 1025
    iput-boolean v1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->cancelProcess:Z

    .line 1026
    iput-boolean v1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mIsSDCardFull:Z

    .line 1027
    iput-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    .line 1054
    iput-object p3, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mAdapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    .line 1055
    iput-object p2, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    .line 1056
    iput-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 1057
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mAdapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    instance-of v0, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    if-eqz v0, :cond_1

    .line 1058
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mAdapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 1064
    :cond_0
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->setPriority(I)V

    .line 1065
    const-string v0, "ImageProcessor"

    invoke-virtual {p0, v0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->setName(Ljava/lang/String;)V

    .line 1066
    return-void

    .line 1060
    :cond_1
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mAdapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    instance-of v0, v0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    if-eqz v0, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mAdapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    goto :goto_0
.end method

.method private DoRun(Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 43
    .parameter "image"
    .parameter "dataPath"
    .parameter "mimeType"
    .parameter "lDataSize"
    .parameter "lModifyTime"

    .prologue
    .line 1719
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->isSingle:Z
    invoke-static {v3}, Lcom/htc/album/helper/ImageProcessManager;->access$1100(Lcom/htc/album/helper/ImageProcessManager;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1721
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[HTCAlbum][ImageProcessManager][ProcessThread][DoRun][Single]"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1723
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->cancelProcess:Z

    if-eqz v3, :cond_2

    .line 1725
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[HTCAlbum][ImageProcessManager][ProcessThread][DoRun][Single]cancelProcess"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1890
    :cond_1
    :goto_0
    return-void

    .line 1731
    :cond_2
    const/16 v30, 0x0

    .line 1733
    .local v30, fos:Ljava/io/FileOutputStream;
    const/16 v38, 0x0

    .line 1734
    .local v38, root:Ljava/io/File;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->isSaveToTheSameFolder:Z
    invoke-static {v3}, Lcom/htc/album/helper/ImageProcessManager;->access$2300(Lcom/htc/album/helper/ImageProcessManager;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1736
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    const/4 v4, 0x0

    const-string v5, "/"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->rootFolder:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/htc/album/helper/ImageProcessManager;->access$1302(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1737
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][ImageProcessManager][ProcessThread]rootFolder = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->rootFolder:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/album/helper/ImageProcessManager;->access$1300(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1738
    :cond_3
    new-instance v39, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->rootFolder:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/album/helper/ImageProcessManager;->access$1300(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v38           #root:Ljava/io/File;
    .local v39, root:Ljava/io/File;
    move-object/from16 v38, v39

    .line 1768
    .end local v39           #root:Ljava/io/File;
    .restart local v38       #root:Ljava/io/File;
    :goto_1
    invoke-virtual/range {v38 .. v38}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1770
    invoke-virtual/range {v38 .. v38}, Ljava/io/File;->mkdir()Z

    .line 1773
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    .line 1775
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][ImageProcessManager][ProcessThread]image.getDataPath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    :cond_5
    move-object/from16 v29, p2

    .line 1777
    .local v29, filePath:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v29

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v28

    .line 1779
    .local v28, fileName:Ljava/lang/String;
    const-string v3, "/"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v34

    .line 1780
    .local v34, lastIndexOfSlash:I
    const-string v3, "."

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v33

    .line 1781
    .local v33, lastIndexOfDot:I
    if-ltz v34, :cond_11

    .line 1783
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    const/4 v4, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->originalFolder:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/htc/album/helper/ImageProcessManager;->access$902(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1791
    :cond_6
    :goto_2
    add-int/lit8 v37, v34, 0x1

    .line 1792
    .local v37, nextCharIndexOfLastSlash:I
    move/from16 v0, v33

    move/from16 v1, v37

    if-lt v0, v1, :cond_13

    .line 1795
    move-object/from16 v0, v29

    move/from16 v1, v37

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v42

    .line 1796
    .local v42, tempFileName:Ljava/lang/String;
    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_12

    .line 1798
    move-object/from16 v28, v42

    .line 1811
    .end local v42           #tempFileName:Ljava/lang/String;
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->generateFileNameInTheSameFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 1812
    .local v40, strFilenameAtTheSameFolder:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->originalFolder:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/album/helper/ImageProcessManager;->access$900(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->originalFolderOutputPath:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/htc/album/helper/ImageProcessManager;->access$1402(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1815
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->featureID:I
    invoke-static {v3}, Lcom/htc/album/helper/ImageProcessManager;->access$1500(Lcom/htc/album/helper/ImageProcessManager;)I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->featureID:I
    invoke-static {v3}, Lcom/htc/album/helper/ImageProcessManager;->access$1500(Lcom/htc/album/helper/ImageProcessManager;)I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->featureID:I
    invoke-static {v3}, Lcom/htc/album/helper/ImageProcessManager;->access$1500(Lcom/htc/album/helper/ImageProcessManager;)I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_14

    .line 1818
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->originalFolderOutputPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/album/helper/ImageProcessManager;->access$1400(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->resultDataPath:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/htc/album/helper/ImageProcessManager;->access$1602(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1819
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    move-object/from16 v0, v40

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->resultFileName:Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/htc/album/helper/ImageProcessManager;->access$2402(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1828
    :goto_4
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][ImageProcessManager][ProcessThread]resultDataPath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultDataPath:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/album/helper/ImageProcessManager;->access$1600(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    :cond_9
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][ImageProcessManager][ProcessThread]resultFileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultFileName:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/album/helper/ImageProcessManager;->access$2400(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1830
    :cond_a
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][ImageProcessManager][ProcessThread]originalFolderOutputPath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->originalFolderOutputPath:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/album/helper/ImageProcessManager;->access$1400(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1832
    :cond_b
    const/4 v10, 0x0

    .line 1835
    .local v10, loc:Landroid/location/Location;
    :try_start_1
    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/album/AlbumUtility/ExifUtil;->getLatLng(Ljava/lang/String;)[F

    move-result-object v35

    .line 1837
    .local v35, latlng:[F
    if-eqz v35, :cond_c

    .line 1839
    new-instance v36, Landroid/location/Location;

    const-string v3, ""

    move-object/from16 v0, v36

    invoke-direct {v0, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1840
    .end local v10           #loc:Landroid/location/Location;
    .local v36, loc:Landroid/location/Location;
    const/4 v3, 0x0

    :try_start_2
    aget v3, v35, v3

    float-to-double v3, v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Landroid/location/Location;->setLatitude(D)V

    .line 1841
    const/4 v3, 0x1

    aget v3, v35, v3

    float-to-double v3, v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Landroid/location/Location;->setLongitude(D)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v10, v36

    .line 1849
    .end local v35           #latlng:[F
    .end local v36           #loc:Landroid/location/Location;
    .restart local v10       #loc:Landroid/location/Location;
    :cond_c
    :goto_5
    :try_start_3
    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateTaken()J

    move-result-wide v25

    .line 1850
    .local v25, dateTaken:J
    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateModified()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v23, v3, v5

    .line 1851
    .local v23, dateModified:J
    const-wide/16 v3, 0x0

    cmp-long v3, v25, v3

    if-lez v3, :cond_15

    move-wide/from16 v8, v25

    .line 1853
    .local v8, time:J
    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDescription()Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->rootFolder:Ljava/lang/String;
    invoke-static {v12}, Lcom/htc/album/helper/ImageProcessManager;->access$1300(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultFileName:Ljava/lang/String;
    invoke-static {v13}, Lcom/htc/album/helper/ImageProcessManager;->access$2400(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v3 .. v13}, Lcom/htc/opensense2/album/util/ImageManager;->addImage(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JLandroid/location/Location;ILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->resultUri:Landroid/net/Uri;
    invoke-static {v14, v3}, Lcom/htc/album/helper/ImageProcessManager;->access$2502(Lcom/htc/album/helper/ImageProcessManager;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1864
    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/album/AlbumUtility/ExifUtil;->getExifData(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v18

    .line 1866
    .local v18, exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/htc/album/helper/ImageProcessManager;->access$2500(Lcom/htc/album/helper/ImageProcessManager;)Landroid/net/Uri;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->rootFolder:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/album/helper/ImageProcessManager;->access$1300(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v19

    move-wide/from16 v20, v8

    invoke-virtual/range {v11 .. v21}, Lcom/htc/opensense2/album/util/ImageManager;->storeImage(Landroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;ILandroid/graphics/Bitmap;[BLjava/util/HashMap;Ljava/lang/String;J)Lcom/htc/opensense2/album/util/ImageManager$IAddImage_cancelable;

    move-result-object v22

    .line 1877
    .local v22, cancelable:Lcom/htc/opensense2/album/util/ImageManager$IAddImage_cancelable;
    invoke-interface/range {v22 .. v22}, Lcom/htc/opensense2/album/util/ImageManager$IAddImage_cancelable;->get()V

    .line 1879
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 1880
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 1883
    .end local v8           #time:J
    .end local v10           #loc:Landroid/location/Location;
    .end local v18           #exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22           #cancelable:Lcom/htc/opensense2/album/util/ImageManager$IAddImage_cancelable;
    .end local v23           #dateModified:J
    .end local v25           #dateTaken:J
    .end local v28           #fileName:Ljava/lang/String;
    .end local v29           #filePath:Ljava/lang/String;
    .end local v33           #lastIndexOfDot:I
    .end local v34           #lastIndexOfSlash:I
    .end local v37           #nextCharIndexOfLastSlash:I
    .end local v40           #strFilenameAtTheSameFolder:Ljava/lang/String;
    :catch_0
    move-exception v27

    .line 1885
    .local v27, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    const/4 v4, 0x0

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->mShouldShow3DConverted2DHintToast:Z
    invoke-static {v3, v4}, Lcom/htc/album/helper/ImageProcessManager;->access$1902(Lcom/htc/album/helper/ImageProcessManager;Z)Z

    .line 1886
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][ImageProcessManager][ProcessThread]exception occured: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1887
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1742
    .end local v27           #e:Ljava/lang/Exception;
    :cond_d
    if-eqz p1, :cond_10

    .line 1744
    :try_start_4
    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v31

    .line 1745
    .local v31, is3D:Z
    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isInked()Z

    move-result v32

    .line 1746
    .local v32, isInked:Z
    if-eqz v31, :cond_e

    .line 1748
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    sget-object v4, Lcom/htc/opensense2/album/util/AlbumObjectManager;->FOLDER_3D_FLATTEN:Ljava/lang/String;

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->rootFolder:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/htc/album/helper/ImageProcessManager;->access$1302(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1759
    :goto_7
    new-instance v39, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->rootFolder:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/album/helper/ImageProcessManager;->access$1300(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v38           #root:Ljava/io/File;
    .restart local v39       #root:Ljava/io/File;
    move-object/from16 v38, v39

    .line 1760
    .end local v39           #root:Ljava/io/File;
    .restart local v38       #root:Ljava/io/File;
    goto/16 :goto_1

    .line 1750
    :cond_e
    if-eqz v32, :cond_f

    .line 1752
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    sget-object v4, Lcom/htc/opensense2/album/util/AlbumObjectManager;->FOLDER_INK_MERGE:Ljava/lang/String;

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->rootFolder:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/htc/album/helper/ImageProcessManager;->access$1302(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_7

    .line 1756
    :cond_f
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[HTCAlbum][ImageProcessManager][ProcessThread]no image info to set saving root folder."

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1763
    .end local v31           #is3D:Z
    .end local v32           #isInked:Z
    :cond_10
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[HTCAlbum][ImageProcessManager][ProcessThread]image is null"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1787
    .restart local v28       #fileName:Ljava/lang/String;
    .restart local v29       #filePath:Ljava/lang/String;
    .restart local v33       #lastIndexOfDot:I
    .restart local v34       #lastIndexOfSlash:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->rootFolder:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/album/helper/ImageProcessManager;->access$1300(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->originalFolder:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/htc/album/helper/ImageProcessManager;->access$902(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1788
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][ImageProcessManager][ProcessThread]can\'t get original folder, use default root folder: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->rootFolder:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/album/helper/ImageProcessManager;->access$1300(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1802
    .restart local v37       #nextCharIndexOfLastSlash:I
    .restart local v42       #tempFileName:Ljava/lang/String;
    :cond_12
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][ImageProcessManager][ProcessThread]tempFileName trimmed length is 0, use default file name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1807
    .end local v42           #tempFileName:Ljava/lang/String;
    :cond_13
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][ImageProcessManager][ProcessThread]can\'t get file name, use default file name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .restart local v40       #strFilenameAtTheSameFolder:Ljava/lang/String;
    :cond_14
    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-wide/from16 v5, p6

    move-wide/from16 v7, p4

    .line 1823
    invoke-virtual/range {v3 .. v8}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->makeHashFileName(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v41

    .line 1824
    .local v41, strHashFileName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->rootFolder:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/album/helper/ImageProcessManager;->access$1300(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->resultDataPath:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/htc/album/helper/ImageProcessManager;->access$1602(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1825
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->resultFileName:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/htc/album/helper/ImageProcessManager;->access$2402(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_4

    .line 1844
    .end local v41           #strHashFileName:Ljava/lang/String;
    .restart local v10       #loc:Landroid/location/Location;
    :catch_1
    move-exception v27

    .line 1846
    .restart local v27       #e:Ljava/lang/Exception;
    :goto_8
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][ImageProcessManager][ProcessThread]ExifUtil.getLatLng():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_5

    .end local v27           #e:Ljava/lang/Exception;
    .restart local v23       #dateModified:J
    .restart local v25       #dateTaken:J
    :cond_15
    move-wide/from16 v8, v23

    .line 1851
    goto/16 :goto_6

    .line 1844
    .end local v10           #loc:Landroid/location/Location;
    .end local v23           #dateModified:J
    .end local v25           #dateTaken:J
    .restart local v35       #latlng:[F
    .restart local v36       #loc:Landroid/location/Location;
    :catch_2
    move-exception v27

    move-object/from16 v10, v36

    .end local v36           #loc:Landroid/location/Location;
    .restart local v10       #loc:Landroid/location/Location;
    goto :goto_8
.end method

.method private DoRun(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 8
    .parameter "dataPath"
    .parameter "mimeType"
    .parameter "lDataSize"
    .parameter "lModifyTime"

    .prologue
    .line 1894
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->DoRun(Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 1895
    return-void
.end method

.method static synthetic access$2600(Lcom/htc/album/helper/ImageProcessManager$ProcessThread;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/album/helper/ImageProcessManager$ProcessThread;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/album/helper/ImageProcessManager$ProcessThread;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1020
    iput-object p1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 1899
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][ImageProcessManager][ProcessThread]Cancel processing now..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1900
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->setPriority(I)V

    .line 1901
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->cancelProcess:Z

    .line 1902
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mProcessCallback:Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$1000(Lcom/htc/album/helper/ImageProcessManager;)Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1904
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mProcessCallback:Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$1000(Lcom/htc/album/helper/ImageProcessManager;)Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;->onProcessCancel()V

    .line 1906
    :cond_1
    return-void
.end method

.method public checkFileExist(Ljava/lang/String;)Z
    .locals 4
    .parameter "strPath"

    .prologue
    .line 1144
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 1151
    :goto_0
    return v1

    .line 1146
    :cond_1
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][ImageProcessManager][checkFileExist]: fileCheck.exists()+"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1148
    .local v0, fileCheck:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 1149
    .local v1, isExist:Z
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][ImageProcessManager][checkFileExist]: fileCheck.exists()-"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public checkSDCardFull()Z
    .locals 2

    .prologue
    .line 1209
    const-wide/32 v0, 0x500000

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->checkStorageFullWithSize(J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mIsSDCardFull:Z

    .line 1210
    iget-boolean v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mIsSDCardFull:Z

    if-eqz v0, :cond_0

    .line 1212
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][ImageProcessManager][checkSDCardFull]: Storage Size small than 5242880 byte, skip save to 2D."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mIsSDCardFull:Z

    return v0
.end method

.method public clearCache(Ljava/lang/String;JJ)Z
    .locals 24
    .parameter "strTargetPath"
    .parameter "lKeepTime"
    .parameter "lExcuteDuration"

    .prologue
    .line 1078
    const-wide/16 p2, 0x0

    .line 1080
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_1

    .line 1082
    :cond_0
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[HTCAlbum][ImageProcessManager][clearCache]: clearcache parameter NG !"

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    const/4 v6, 0x0

    .line 1132
    :goto_0
    return v6

    .line 1086
    :cond_1
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[HTCAlbum][ImageProcessManager][clearCache]: Start, CurTime: "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1089
    .local v14, lTimeStart:J
    const-wide/16 v6, 0x3e8

    div-long v6, v14, v6

    sub-long v10, v6, p2

    .line 1090
    .local v10, lCurTime:J
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v3

    .line 1091
    .local v3, uriBase:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1092
    .local v2, resolver:Landroid/content/ContentResolver;
    const/16 v16, 0x0

    .line 1095
    .local v16, nCount:I
    const/4 v6, 0x3

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "_data"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "date_modified"

    aput-object v7, v4, v6

    .line 1097
    .local v4, columns:[Ljava/lang/String;
    const-string v5, ""

    .line 1098
    .local v5, szWhere:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_data like \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%\' AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "date_modified"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " < "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1100
    const/4 v8, 0x0

    .line 1103
    .local v8, cur:Landroid/database/Cursor;
    const/4 v6, 0x0

    :try_start_0
    const-string v7, "date_modified"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1104
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->cancelProcess:Z

    if-nez v6, :cond_3

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1106
    const-string v6, "_data"

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1107
    .local v17, strData:Ljava/lang/String;
    const-string v6, "_id"

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1108
    .local v18, strId:Ljava/lang/String;
    const-string v6, "date_modified"

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1109
    .local v12, lModiftTime:J
    new-instance v6, Ljava/lang/Long;

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 1110
    .local v19, uri:Landroid/net/Uri;
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[HTCAlbum][ImageProcessManager][clearCache]: Delete - ID: "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v20, ", Data: "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v20, ", URI: "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v20, ", ModifyTime: "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1115
    add-int/lit8 v16, v16, 0x1

    .line 1118
    const-wide/16 v6, 0x0

    cmp-long v6, p4, v6

    if-eqz v6, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    sub-long/2addr v6, v14

    cmp-long v6, v6, p4

    if-ltz v6, :cond_2

    .line 1127
    .end local v12           #lModiftTime:J
    .end local v17           #strData:Ljava/lang/String;
    .end local v18           #strId:Ljava/lang/String;
    .end local v19           #uri:Landroid/net/Uri;
    :cond_3
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1130
    :cond_4
    :goto_1
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[HTCAlbum][ImageProcessManager][clearCache]: End, Delete "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v20, " temp files, Use Time: "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v14

    move-wide/from16 v0, v20

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1121
    :catch_0
    move-exception v9

    .line 1123
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[HTCAlbum][ImageProcessManager][clearCache]: delete cache NG !"

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1127
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v6
.end method

.method public doProcessImage(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "image"

    .prologue
    .line 1219
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[HTCAlbum][ImageProcessManager][doProcessImage IImage]"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    :cond_0
    instance-of v0, p1, Lcom/htc/sunnyCore/IMediaData;

    .line 1221
    .local v0, isIMediaData:Z
    if-eqz v0, :cond_1

    .line 1223
    check-cast p1, Lcom/htc/sunnyCore/IMediaData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->doProcessImage(Lcom/htc/sunnyCore/IMediaData;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1225
    :goto_0
    return-object v1

    .restart local p1
    :cond_1
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->doProcessImage(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public doProcessImage(Lcom/htc/sunnyCore/IMediaData;)Landroid/graphics/Bitmap;
    .locals 18
    .parameter "image"

    .prologue
    .line 1230
    const/4 v8, 0x0

    .line 1231
    .local v8, is3D:Z
    const/4 v9, 0x0

    .line 1232
    .local v9, isInked:Z
    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v15, :cond_3

    move-object/from16 v15, p1

    .line 1234
    check-cast v15, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v15}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v8

    move-object/from16 v15, p1

    .line 1235
    check-cast v15, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v15}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isInked()Z

    move-result v9

    .line 1242
    :goto_0
    if-eqz v8, :cond_14

    .line 1244
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    const-string v16, "[HTCAlbum][ImageProcessManager][doProcessImage IMediaData]is3D + "

    invoke-static/range {v15 .. v16}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    :cond_0
    const/4 v14, -0x1

    .line 1246
    .local v14, ret:I
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v15

    invoke-virtual {v15}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v5

    .line 1247
    .local v5, handle:I
    invoke-interface/range {p1 .. p1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v4

    .line 1248
    .local v4, filePath:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/htc/sunnyCore/IMediaData;->getMediaMimeType()Ljava/lang/String;

    move-result-object v11

    .line 1249
    .local v11, mimeType:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageSourceType()I

    move-result v10

    .line 1250
    .local v10, mediaSourceType:I
    if-nez v10, :cond_7

    .line 1252
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    const-string v16, "[HTCAlbum][ImageProcessManager][doProcessImage IMediaData]mediaSourceType == IMediaData.SOURCE_FILE_PATH"

    invoke-static/range {v15 .. v16}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    :cond_1
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_6

    .line 1255
    if-eqz v11, :cond_2

    .line 1257
    const-string v15, "image/jps"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1259
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v15, v5, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->setJPSDecodePart(II)I

    .line 1260
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v15

    invoke-virtual {v15, v5, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    move-result v14

    .line 1367
    :cond_2
    :goto_1
    if-nez v14, :cond_11

    .line 1369
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v15

    const-wide/16 v16, 0x7d0

    move-wide/from16 v0, v16

    invoke-virtual {v15, v5, v0, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeIterate(IJ)I

    move-result v14

    goto :goto_1

    .line 1239
    .end local v4           #filePath:Ljava/lang/String;
    .end local v5           #handle:I
    .end local v10           #mediaSourceType:I
    .end local v11           #mimeType:Ljava/lang/String;
    .end local v14           #ret:I
    :cond_3
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    const-string v16, "[HTCAlbum][ImageProcessManager][doProcessImage IMediaData]image not instance of IImage"

    invoke-static/range {v15 .. v16}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1262
    .restart local v4       #filePath:Ljava/lang/String;
    .restart local v5       #handle:I
    .restart local v10       #mediaSourceType:I
    .restart local v11       #mimeType:Ljava/lang/String;
    .restart local v14       #ret:I
    :cond_4
    const-string v15, "image/mpo"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1265
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v15

    invoke-virtual {v15, v5, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    move-result v14

    .line 1266
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v15

    invoke-virtual {v15, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->getMPOPhotosCount(I)I

    move-result v12

    .line 1267
    .local v12, mpoPhotoCount:I
    if-lez v12, :cond_5

    .line 1269
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v5, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOMonoIndex(II)I

    goto :goto_1

    .line 1273
    :cond_5
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    const-string v16, "[HTCAlbum][ImageProcessManager][doProcessImage IMediaData]mpo file contains no photos!"

    invoke-static/range {v15 .. v16}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1280
    .end local v12           #mpoPhotoCount:I
    :cond_6
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    const-string v16, "[HTCAlbum][ImageProcessManager][doProcessImage IMediaData]FilePath is empty"

    invoke-static/range {v15 .. v16}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1283
    :cond_7
    const/4 v15, 0x1

    if-ne v10, v15, :cond_d

    .line 1285
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    const-string v16, "[HTCAlbum][ImageProcessManager][doProcessImage IMediaData]mediaSourceType == IMediaData.SOURCE_PARCEL_FILE_DESCRIPTOR"

    invoke-static/range {v15 .. v16}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    :cond_8
    invoke-interface/range {p1 .. p1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v13

    .line 1287
    .local v13, pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v13, :cond_c

    .line 1289
    if-eqz v11, :cond_b

    .line 1291
    const-string v15, "image/jps"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 1293
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v15, v5, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->setJPSDecodePart(II)I

    .line 1296
    :try_start_0
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v15

    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v15, v5, v0, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFileDescriptor(ILjava/io/FileDescriptor;Z)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    goto/16 :goto_1

    .line 1298
    :catch_0
    move-exception v2

    .line 1300
    .local v2, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1303
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :cond_9
    const-string v15, "image/mpo"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1308
    :try_start_1
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v15

    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v15, v5, v0, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFileDescriptor(ILjava/io/FileDescriptor;Z)I

    move-result v14

    .line 1309
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v15

    invoke-virtual {v15, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->getMPOPhotosCount(I)I

    move-result v12

    .line 1310
    .restart local v12       #mpoPhotoCount:I
    if-lez v12, :cond_a

    .line 1312
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v5, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOMonoIndex(II)I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 1319
    .end local v12           #mpoPhotoCount:I
    :catch_1
    move-exception v2

    .line 1321
    .restart local v2       #e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1316
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    .restart local v12       #mpoPhotoCount:I
    :cond_a
    :try_start_2
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    const-string v16, "[HTCAlbum][ImageProcessManager][doProcessImage IMediaData]mpo file contains no photos!"

    invoke-static/range {v15 .. v16}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 1329
    .end local v12           #mpoPhotoCount:I
    :cond_b
    :try_start_3
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v15

    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v15, v5, v0, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFileDescriptor(ILjava/io/FileDescriptor;Z)I
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2

    move-result v14

    goto/16 :goto_1

    .line 1331
    :catch_2
    move-exception v2

    .line 1333
    .restart local v2       #e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1339
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :cond_c
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    const-string v16, "[HTCAlbum][ImageProcessManager][doProcessImage IMediaData]MediaData ParcelFileDescriptor is null"

    invoke-static/range {v15 .. v16}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1342
    .end local v13           #pfd:Landroid/os/ParcelFileDescriptor;
    :cond_d
    const/4 v15, 0x2

    if-ne v10, v15, :cond_10

    .line 1344
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    const-string v16, "[HTCAlbum][ImageProcessManager][doProcessImage IMediaData]mediaSourceType == IMediaData.SOURCE_INPUT_STREAM"

    invoke-static/range {v15 .. v16}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    :cond_e
    invoke-interface/range {p1 .. p1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 1346
    .local v7, is:Ljava/io/InputStream;
    if-eqz v7, :cond_f

    .line 1350
    :try_start_4
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v5, v7, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromInputStream(ILjava/io/InputStream;Z)I
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_3

    move-result v14

    goto/16 :goto_1

    .line 1352
    :catch_3
    move-exception v2

    .line 1354
    .restart local v2       #e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1359
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :cond_f
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    const-string v16, "[HTCAlbum][ImageProcessManager][doProcessImage IMediaData]MediaData InputStream is null"

    invoke-static/range {v15 .. v16}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1364
    .end local v7           #is:Ljava/io/InputStream;
    :cond_10
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    const-string v16, "[HTCAlbum][ImageProcessManager][doProcessImage IMediaData]Unknown source type"

    invoke-static/range {v15 .. v16}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1372
    :cond_11
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v15

    invoke-virtual {v15, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    .line 1373
    const/4 v5, 0x0

    .line 1374
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v15

    if-eqz v15, :cond_12

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    const-string v16, "[HTCAlbum][ImageProcessManager][doProcessImage IMediaData]is3D - "

    invoke-static/range {v15 .. v16}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    .end local v4           #filePath:Ljava/lang/String;
    .end local v5           #handle:I
    .end local v10           #mediaSourceType:I
    .end local v11           #mimeType:Ljava/lang/String;
    .end local v14           #ret:I
    :cond_12
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    if-nez v15, :cond_13

    .line 1410
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    const-string v16, "[HtcAlbum][ImageProcessManager][doProcessImage IMediaData]ScaladoLib2 FINISH bmp == null"

    invoke-static/range {v15 .. v16}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    return-object v15

    .line 1376
    :cond_14
    if-eqz v9, :cond_12

    .line 1378
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v15

    if-eqz v15, :cond_15

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    const-string v16, "[HTCAlbum][ImageProcessManager][doProcessImage IMediaData]inInked + "

    invoke-static/range {v15 .. v16}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    :cond_15
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v15

    if-eqz v15, :cond_16

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[InkMergeManager][MergeThread]Call htcPaintMergeTool, image = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    :cond_16
    const/4 v6, 0x0

    .line 1382
    .local v6, iimage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v15, :cond_17

    move-object/from16 v6, p1

    .line 1384
    check-cast v6, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1387
    :cond_17
    if-eqz v6, :cond_18

    .line 1389
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mPaintMergeTool:Lcom/htc/album/PaintManager/HtcPaintMergeTool;
    invoke-static {v15}, Lcom/htc/album/helper/ImageProcessManager;->access$700(Lcom/htc/album/helper/ImageProcessManager;)Lcom/htc/album/PaintManager/HtcPaintMergeTool;

    move-result-object v15

    new-instance v16, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$MergeListener;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$MergeListener;-><init>(Lcom/htc/album/helper/ImageProcessManager$ProcessThread;)V

    move-object/from16 v0, v16

    invoke-virtual {v15, v6, v0}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->setMergeInfo(Lcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/PaintManager/Interface/IPaintMergeProgressListener;)V

    .line 1390
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mPaintMergeTool:Lcom/htc/album/PaintManager/HtcPaintMergeTool;
    invoke-static {v15}, Lcom/htc/album/helper/ImageProcessManager;->access$700(Lcom/htc/album/helper/ImageProcessManager;)Lcom/htc/album/PaintManager/HtcPaintMergeTool;

    move-result-object v15

    invoke-virtual {v15}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->asyncMerge()Z

    .line 1391
    monitor-enter p0

    .line 1395
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1401
    :goto_3
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1404
    :cond_18
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v15

    if-eqz v15, :cond_12

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    const-string v16, "[HTCAlbum][ImageProcessManager][doProcessImage IMediaData]inInked - "

    invoke-static/range {v15 .. v16}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1397
    :catch_4
    move-exception v3

    .line 1399
    .local v3, e1:Ljava/lang/InterruptedException;
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 1401
    .end local v3           #e1:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v15

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v15
.end method

.method public doProcessImage(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "path"
    .parameter "type"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 1418
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[HTCAlbum][ImageProcessManager][doProcessImage] + "

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    :cond_0
    const/4 v4, 0x0

    .line 1420
    .local v4, retBitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v5

    .line 1421
    .local v5, tempHandle:I
    const/4 v3, -0x1

    .line 1422
    .local v3, ret:I
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6, v5, v9}, Lcom/htc/opensense/album/util/ScaladoLib2;->setDegree(II)I

    .line 1423
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6, v5, v8, v8}, Lcom/htc/opensense/album/util/ScaladoLib2;->setPreferSize(III)I

    .line 1424
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6, v5, v10}, Lcom/htc/opensense/album/util/ScaladoLib2;->setScaleType(II)I

    .line 1426
    move-object v0, p1

    .line 1427
    .local v0, filePath:Ljava/lang/String;
    move-object v1, p2

    .line 1429
    .local v1, mimeType:Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    .line 1431
    if-eqz v1, :cond_1

    .line 1433
    const-string v6, "image/jps"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1435
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6, v5, v10}, Lcom/htc/opensense/album/util/ScaladoLib2;->setJPSDecodePart(II)I

    .line 1436
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6, v5, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    move-result v3

    .line 1459
    :cond_1
    :goto_0
    if-nez v3, :cond_5

    .line 1461
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    const-wide/16 v7, 0x7d0

    invoke-virtual {v6, v5, v7, v8}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeIterate(IJ)I

    move-result v3

    goto :goto_0

    .line 1438
    :cond_2
    const-string v6, "image/mpo"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1441
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6, v5, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    move-result v3

    .line 1442
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->getMPOPhotosCount(I)I

    move-result v2

    .line 1443
    .local v2, mpoPhotoCount:I
    if-lez v2, :cond_3

    .line 1445
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6, v5, v9}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOMonoIndex(II)I

    goto :goto_0

    .line 1449
    :cond_3
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[HTCAlbum][ImageProcessManager][doProcessImage]mpo file contains no photos!"

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1456
    .end local v2           #mpoPhotoCount:I
    :cond_4
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[HTCAlbum][ImageProcessManager][doProcessImage]FilePath is empty"

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1464
    :cond_5
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1465
    const/4 v5, 0x0

    .line 1466
    if-nez v4, :cond_6

    .line 1469
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[HtcAlbum][ImageProcessManager][doProcessImage]ScaladoLib2 FINISH bmp == null"

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    :cond_6
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[HTCAlbum][ImageProcessManager][doProcessImage] - "

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    :cond_7
    return-object v4
.end method

.method public finished()V
    .locals 13

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x6

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 1910
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1912
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mShouldShow3DConverted2DHintToast:Z
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$1900(Lcom/htc/album/helper/ImageProcessManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1914
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$2;

    invoke-direct {v1, p0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$2;-><init>(Lcom/htc/album/helper/ImageProcessManager$ProcessThread;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1943
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->isSingle:Z
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$1100(Lcom/htc/album/helper/ImageProcessManager;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1945
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_3

    .line 1947
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][ImageProcessManager][ProcessThread][finished]mActivity is null"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1948
    invoke-virtual {p0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->release()V

    .line 2067
    :goto_1
    return-void

    .line 1927
    :cond_1
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$2000(Lcom/htc/album/helper/ImageProcessManager;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1929
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$2000(Lcom/htc/album/helper/ImageProcessManager;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1931
    :cond_2
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1934
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mFragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$2100(Lcom/htc/album/helper/ImageProcessManager;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mFragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$2100(Lcom/htc/album/helper/ImageProcessManager;)Landroid/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    if-eqz v0, :cond_0

    .line 1936
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mFragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$2100(Lcom/htc/album/helper/ImageProcessManager;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    const v1, 0x440001

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->dismissFragmentDialog(I)Z

    .line 1937
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mFragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$2100(Lcom/htc/album/helper/ImageProcessManager;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    const/high16 v1, 0x44

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->dismissFragmentDialog(I)Z

    goto :goto_0

    .line 1953
    :cond_3
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultDataPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$1600(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1955
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][ImageProcessManager][ProcessThread][finished]resultDataPath is null"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1956
    invoke-virtual {p0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->release()V

    goto :goto_1

    .line 1963
    :cond_4
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$2500(Lcom/htc/album/helper/ImageProcessManager;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_5

    .line 1964
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][ImageProcessManager][ProcessThread][finished]resultUri is null"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1968
    :cond_5
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->featureID:I
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$1500(Lcom/htc/album/helper/ImageProcessManager;)I

    move-result v0

    if-ne v0, v3, :cond_a

    .line 1970
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1971
    .local v9, cv:Landroid/content/ContentValues;
    const-string v0, "orientation"

    const/16 v1, 0x5a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1972
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$2700(Lcom/htc/album/helper/ImageProcessManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/album/helper/ImageProcessManager;->access$2500(Lcom/htc/album/helper/ImageProcessManager;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v9, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 1973
    .local v12, update:I
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ImageProcessManager][ProcessThread][finished]update = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1983
    .end local v9           #cv:Landroid/content/ContentValues;
    .end local v12           #update:I
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->featureID:I
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$1500(Lcom/htc/album/helper/ImageProcessManager;)I

    move-result v0

    if-eq v0, v4, :cond_7

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->featureID:I
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$1500(Lcom/htc/album/helper/ImageProcessManager;)I

    move-result v0

    if-eq v0, v3, :cond_7

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->featureID:I
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$1500(Lcom/htc/album/helper/ImageProcessManager;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    .line 1986
    :cond_7
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$2700(Lcom/htc/album/helper/ImageProcessManager;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$3;

    invoke-direct {v1, p0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$3;-><init>(Lcom/htc/album/helper/ImageProcessManager$ProcessThread;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2034
    :cond_8
    iget-boolean v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->cancelProcess:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_9

    .line 2036
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->startRequery()Z

    .line 2038
    :cond_9
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    iget-object v1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->featureID:I
    invoke-static {v1}, Lcom/htc/album/helper/ImageProcessManager;->access$1500(Lcom/htc/album/helper/ImageProcessManager;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$2700(Lcom/htc/album/helper/ImageProcessManager;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->targetIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/htc/album/helper/ImageProcessManager;->access$2200(Lcom/htc/album/helper/ImageProcessManager;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/htc/album/helper/ImageProcessManager;->access$2500(Lcom/htc/album/helper/ImageProcessManager;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultMimeType:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/album/helper/ImageProcessManager;->access$500(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultDataPath:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/album/helper/ImageProcessManager;->access$1600(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v6

    move v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/htc/album/helper/ImageProcessManager;->handleRoutes(ILandroid/app/Activity;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 2065
    :goto_3
    invoke-virtual {p0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->release()V

    goto/16 :goto_1

    .line 1975
    :cond_a
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->featureID:I
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$1500(Lcom/htc/album/helper/ImageProcessManager;)I

    move-result v0

    if-ne v0, v4, :cond_6

    .line 1977
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1978
    .restart local v9       #cv:Landroid/content/ContentValues;
    const-string v0, "orientation"

    const/16 v1, 0x10e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1979
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$2700(Lcom/htc/album/helper/ImageProcessManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/album/helper/ImageProcessManager;->access$2500(Lcom/htc/album/helper/ImageProcessManager;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v9, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 1980
    .restart local v12       #update:I
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ImageProcessManager][ProcessThread][finished]update = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2042
    .end local v9           #cv:Landroid/content/ContentValues;
    .end local v12           #update:I
    :cond_b
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_c

    .line 2044
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][ImageProcessManager][ProcessThread][finished]mActivity is null"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2045
    invoke-virtual {p0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->release()V

    goto/16 :goto_1

    .line 2051
    :cond_c
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$1800(Lcom/htc/album/helper/ImageProcessManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_d
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2053
    .local v10, i:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    instance-of v0, v10, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;

    if-eqz v0, :cond_d

    move-object v0, v10

    .line 2055
    check-cast v0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;

    iget-object v0, v0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->imageUri:Landroid/net/Uri;

    if-nez v0, :cond_d

    move-object v0, v10

    check-cast v0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;

    iget-object v0, v0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->dataPath:Ljava/lang/String;

    if-eqz v0, :cond_d

    move-object v0, v10

    .line 2057
    check-cast v0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;

    iget-object v1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    check-cast v10, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;

    .end local v10           #i:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    iget-object v2, v10, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->dataPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultMimeType:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/album/helper/ImageProcessManager;->access$500(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/album/AlbumUtility/MediaScannerRes;->SyncScanSingleFile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->imageUri:Landroid/net/Uri;

    goto :goto_4

    .line 2062
    :cond_e
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #calls: Lcom/htc/album/helper/ImageProcessManager;->shareMultiProcessedMedia()V
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$3100(Lcom/htc/album/helper/ImageProcessManager;)V

    goto/16 :goto_3
.end method

.method public generateFileNameInTheSameFolder(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "fileName"

    .prologue
    .line 1188
    const/4 v3, 0x0

    .line 1191
    .local v3, x2:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 1192
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->originalFolder:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/album/helper/ImageProcessManager;->access$900(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1193
    .local v0, candidate:Ljava/lang/String;
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][ImageProcessManager]candidate2 is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .line 1195
    .local v1, exists:Z
    if-nez v1, :cond_0

    .line 1201
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 1202
    .local v2, strNewFilename:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1204
    return-object v2
.end method

.method public makeHashFileName(Ljava/lang/String;JJ)Ljava/lang/String;
    .locals 5
    .parameter "strFilePath"
    .parameter "strModifyTime"
    .parameter "lFileSize"

    .prologue
    .line 1137
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 1138
    .local v0, hash:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1139
    const-string v1, "%08X-%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2071
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2073
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$4;

    invoke-direct {v1, p0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$4;-><init>(Lcom/htc/album/helper/ImageProcessManager$ProcessThread;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2084
    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    iget-object v1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    #calls: Lcom/htc/album/helper/ImageProcessManager;->setKeepScreenOn(Landroid/app/Activity;Z)V
    invoke-static {v0, v1, v3}, Lcom/htc/album/helper/ImageProcessManager;->access$3200(Lcom/htc/album/helper/ImageProcessManager;Landroid/app/Activity;Z)V

    .line 2085
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->isShareCancel:Z
    invoke-static {v0, v3}, Lcom/htc/album/helper/ImageProcessManager;->access$002(Lcom/htc/album/helper/ImageProcessManager;Z)Z

    .line 2086
    iput-object v2, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    .line 2087
    iput-object v2, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mAdapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    .line 2088
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 2090
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2091
    iput-object v2, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    .line 2093
    :cond_1
    return-void
.end method

.method public run()V
    .locals 32

    .prologue
    .line 1478
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1479
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][HTCAlbum][ImageProcessManager][ProcessThread]Start processing now..."

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mProcessCallback:Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1000(Lcom/htc/album/helper/ImageProcessManager;)Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1482
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mProcessCallback:Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1000(Lcom/htc/album/helper/ImageProcessManager;)Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;->onProcessStart()V

    .line 1486
    :cond_1
    sget-object v3, Lcom/htc/opensense2/album/util/AlbumObjectManager;->FOLDER_3D_FLATTEN:Ljava/lang/String;

    const-wide/32 v4, 0x15180

    const-wide/16 v6, 0x5dc

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->clearCache(Ljava/lang/String;JJ)Z

    .line 1487
    sget-object v3, Lcom/htc/opensense2/album/util/AlbumObjectManager;->FOLDER_INK_MERGE:Ljava/lang/String;

    const-wide/32 v4, 0x15180

    const-wide/16 v6, 0x5dc

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->clearCache(Ljava/lang/String;JJ)Z

    .line 1489
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->checkSDCardFull()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1491
    sget-object v3, Lcom/htc/opensense2/album/util/AlbumObjectManager;->FOLDER_3D_FLATTEN:Ljava/lang/String;

    const-wide/32 v4, 0x15180

    const-wide/16 v6, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->clearCache(Ljava/lang/String;JJ)Z

    .line 1492
    sget-object v3, Lcom/htc/opensense2/album/util/AlbumObjectManager;->FOLDER_INK_MERGE:Ljava/lang/String;

    const-wide/32 v4, 0x15180

    const-wide/16 v6, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->clearCache(Ljava/lang/String;JJ)Z

    .line 1493
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->checkSDCardFull()Z

    .line 1496
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mIsSDCardFull:Z

    if-nez v2, :cond_7

    .line 1498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-object/from16 v18, v0

    .line 1500
    .local v18, imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->isSingle:Z
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1100(Lcom/htc/album/helper/ImageProcessManager;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1502
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][ImageProcessManager][ProcessThread][Single]"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->position:I
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1200(Lcom/htc/album/helper/ImageProcessManager;)I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v17

    .line 1504
    .local v17, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v17, :cond_4

    .line 1506
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][ImageProcessManager][ProcessThread]image is null"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    .end local v17           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v18           #imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :goto_0
    return-void

    .line 1510
    .restart local v17       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .restart local v18       #imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_4
    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v19

    .line 1511
    .local v19, is3D:Z
    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isInked()Z

    move-result v21

    .line 1513
    .local v21, isInked:Z
    if-eqz v19, :cond_8

    .line 1515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    sget-object v3, Lcom/htc/opensense2/album/util/AlbumObjectManager;->FOLDER_3D_FLATTEN:Ljava/lang/String;

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->rootFolder:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/album/helper/ImageProcessManager;->access$1302(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1528
    :goto_1
    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateModified()J

    move-result-wide v4

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSize()J

    move-result-wide v6

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->makeHashFileName(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v26

    .line 1529
    .local v26, strFilename:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->rootFolder:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/album/helper/ImageProcessManager;->access$1300(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1530
    .local v29, strFullPath:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->checkFileExist(Ljava/lang/String;)Z

    move-result v20

    .line 1532
    .local v20, isFileExist:Z
    if-eqz v20, :cond_b

    .line 1534
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][ImageProcessManager][ProcessThread]: File exist.. - strFullPath"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultMimeType:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$500(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->updateModifyTime(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1540
    new-instance v2, Ljava/io/File;

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    .line 1541
    .local v12, fileName:Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "."

    invoke-virtual {v12, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 1542
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->originalFolder:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/album/helper/ImageProcessManager;->access$902(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1543
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->generateFileNameInTheSameFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1544
    .local v27, strFilenameAttheSameFolder:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->originalFolder:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/album/helper/ImageProcessManager;->access$900(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->originalFolderOutputPath:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/album/helper/ImageProcessManager;->access$1402(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1547
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->featureID:I
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1500(Lcom/htc/album/helper/ImageProcessManager;)I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->featureID:I
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1500(Lcom/htc/album/helper/ImageProcessManager;)I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->featureID:I
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1500(Lcom/htc/album/helper/ImageProcessManager;)I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_a

    .line 1550
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->originalFolderOutputPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/album/helper/ImageProcessManager;->access$1400(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->resultDataPath:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/album/helper/ImageProcessManager;->access$1602(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1682
    .end local v12           #fileName:Ljava/lang/String;
    .end local v17           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v18           #imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .end local v19           #is3D:Z
    .end local v20           #isFileExist:Z
    .end local v21           #isInked:Z
    .end local v26           #strFilename:Ljava/lang/String;
    .end local v27           #strFilenameAttheSameFolder:Ljava/lang/String;
    .end local v29           #strFullPath:Ljava/lang/String;
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->isShareCancel:Z
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$000(Lcom/htc/album/helper/ImageProcessManager;)Z

    move-result v2

    if-nez v2, :cond_21

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mIsSDCardFull:Z

    if-nez v2, :cond_21

    .line 1684
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->finished()V

    goto/16 :goto_0

    .line 1517
    .restart local v17       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .restart local v18       #imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .restart local v19       #is3D:Z
    .restart local v21       #isInked:Z
    :cond_8
    if-eqz v21, :cond_9

    .line 1519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    sget-object v3, Lcom/htc/opensense2/album/util/AlbumObjectManager;->FOLDER_INK_MERGE:Ljava/lang/String;

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->rootFolder:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/album/helper/ImageProcessManager;->access$1302(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 1523
    :cond_9
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][ImageProcessManager][ProcessThread]image not 3D or image not inked"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1553
    .restart local v12       #fileName:Ljava/lang/String;
    .restart local v20       #isFileExist:Z
    .restart local v26       #strFilename:Ljava/lang/String;
    .restart local v27       #strFilenameAttheSameFolder:Ljava/lang/String;
    .restart local v29       #strFullPath:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    move-object/from16 v0, v29

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->resultDataPath:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/htc/album/helper/ImageProcessManager;->access$1602(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 1558
    .end local v12           #fileName:Ljava/lang/String;
    .end local v27           #strFilenameAttheSameFolder:Ljava/lang/String;
    :cond_b
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][ImageProcessManager][ProcessThread]: File not exist.. - strFullPath"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1560
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->doProcessImage(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    .line 1561
    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSize()J

    move-result-wide v6

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateModified()J

    move-result-wide v8

    move-object/from16 v2, p0

    move-object/from16 v3, v17

    invoke-direct/range {v2 .. v9}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->DoRun(Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/lang/String;Ljava/lang/String;JJ)V

    goto :goto_2

    .line 1566
    .end local v17           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v19           #is3D:Z
    .end local v20           #isFileExist:Z
    .end local v21           #isInked:Z
    .end local v26           #strFilename:Ljava/lang/String;
    .end local v29           #strFullPath:Ljava/lang/String;
    :cond_d
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][ImageProcessManager][ProcessThread][Multi]"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->pickerResult:Landroid/content/Intent;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1700(Lcom/htc/album/helper/ImageProcessManager;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "picker_index_list"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v22

    .line 1568
    .local v22, pickerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->resultList:Ljava/util/ArrayList;
    invoke-static {v2, v3}, Lcom/htc/album/helper/ImageProcessManager;->access$1802(Lcom/htc/album/helper/ImageProcessManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1569
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_f
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    .line 1571
    .local v23, pos:Ljava/lang/Integer;
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ImageProcessManager][ProcessThread]pos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->checkSDCardFull()Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->cancelProcess:Z

    if-eqz v2, :cond_11

    .line 1574
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][ImageProcessManager][ProcessThread]cancelled"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1578
    :cond_11
    new-instance v24, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;-><init>(Lcom/htc/album/helper/ImageProcessManager;)V

    .line 1579
    .local v24, processedIImage:Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v17

    .line 1580
    .restart local v17       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v17, :cond_12

    .line 1582
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][ImageProcessManager][ProcessThread]image is null"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1585
    :cond_12
    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isInked()Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_13
    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1587
    :cond_14
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][ImageProcessManager][ProcessThread]image !is3D or isVideo"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    :cond_15
    new-instance v2, Ljava/io/File;

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    .line 1590
    .local v13, filename:Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "."

    invoke-virtual {v13, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v13, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    iput-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->displayName:Ljava/lang/String;

    .line 1591
    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    iput-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->dataPath:Ljava/lang/String;

    .line 1592
    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    iput-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->mimeType:Ljava/lang/String;

    .line 1593
    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, v24

    iput-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->imageUri:Landroid/net/Uri;

    .line 1595
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1800(Lcom/htc/album/helper/ImageProcessManager;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1596
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ImageProcessManager][ProcessThread]add image = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1599
    .end local v13           #filename:Ljava/lang/String;
    :cond_16
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][ImageProcessManager][ProcessThread]image is3D or isInked"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    :cond_17
    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateModified()J

    move-result-wide v4

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSize()J

    move-result-wide v6

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->makeHashFileName(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v28

    .line 1602
    .local v28, strFilenameHashed:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->rootFolder:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/album/helper/ImageProcessManager;->access$1300(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 1603
    .local v30, strFullPathHashed:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->checkFileExist(Ljava/lang/String;)Z

    move-result v20

    .line 1605
    .restart local v20       #isFileExist:Z
    if-eqz v20, :cond_1a

    .line 1607
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][ImageProcessManager][ProcessThread]: File exist... - strFullPath"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultMimeType:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$500(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->updateModifyTime(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1613
    move-object/from16 v0, v30

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->dataPath:Ljava/lang/String;

    .line 1616
    new-instance v2, Ljava/io/File;

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    .line 1617
    .restart local v12       #fileName:Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "."

    invoke-virtual {v12, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 1618
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->originalFolder:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/album/helper/ImageProcessManager;->access$902(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1619
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->generateFileNameInTheSameFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1620
    .restart local v27       #strFilenameAttheSameFolder:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->originalFolder:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/album/helper/ImageProcessManager;->access$900(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->originalFolderOutputPath:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/album/helper/ImageProcessManager;->access$1402(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1622
    move-object/from16 v0, v24

    iput-object v12, v0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->displayName:Ljava/lang/String;

    .line 1676
    .end local v12           #fileName:Ljava/lang/String;
    .end local v27           #strFilenameAttheSameFolder:Ljava/lang/String;
    :cond_19
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1800(Lcom/htc/album/helper/ImageProcessManager;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1677
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ImageProcessManager]add processedIImage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1627
    :cond_1a
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][ImageProcessManager][ProcessThread]: File not exist... - strFullPath"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->doProcessImage(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    .line 1634
    const/4 v14, 0x0

    .line 1636
    .local v14, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v25, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->rootFolder:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1300(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1637
    .local v25, root:Ljava/io/File;
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 1639
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->mkdir()Z

    .line 1641
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_19

    .line 1643
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ImageProcessManager][ProcessThread]image = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
    :cond_1d
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ImageProcessManager][ProcessThread]image.getDataPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    :cond_1e
    const/16 v31, 0x0

    .line 1646
    .local v31, x:I
    new-instance v2, Ljava/io/File;

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    .line 1647
    .restart local v12       #fileName:Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "."

    invoke-virtual {v12, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 1648
    move-object/from16 v0, v24

    iput-object v12, v0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->displayName:Ljava/lang/String;

    .line 1649
    move-object/from16 v0, v30

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->dataPath:Ljava/lang/String;

    .line 1651
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ImageProcessManager][ProcessThread]resultDataPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->dataPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    :cond_1f
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->dataPath:Ljava/lang/String;

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1653
    .local v11, file:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_20

    .line 1655
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z

    .line 1657
    :cond_20
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1658
    .end local v14           #fos:Ljava/io/FileOutputStream;
    .local v15, fos:Ljava/io/FileOutputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x55

    invoke-virtual {v2, v3, v4, v15}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1659
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->flush()V

    .line 1660
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

    .line 1662
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1663
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v14, v15

    .end local v15           #fos:Ljava/io/FileOutputStream;
    .restart local v14       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 1666
    .end local v11           #file:Ljava/io/File;
    .end local v12           #fileName:Ljava/lang/String;
    .end local v25           #root:Ljava/io/File;
    .end local v31           #x:I
    :catch_0
    move-exception v10

    .line 1668
    .local v10, e:Ljava/io/FileNotFoundException;
    :goto_5
    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_4

    .line 1670
    .end local v10           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v10

    .line 1672
    .local v10, e:Ljava/io/IOException;
    :goto_6
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 1686
    .end local v10           #e:Ljava/io/IOException;
    .end local v14           #fos:Ljava/io/FileOutputStream;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v17           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v18           #imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .end local v20           #isFileExist:Z
    .end local v22           #pickerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v23           #pos:Ljava/lang/Integer;
    .end local v24           #processedIImage:Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;
    .end local v28           #strFilenameHashed:Ljava/lang/String;
    .end local v30           #strFullPathHashed:Ljava/lang/String;
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mIsSDCardFull:Z

    if-eqz v2, :cond_23

    .line 1688
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mShouldShow3DConverted2DHintToast:Z
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1900(Lcom/htc/album/helper/ImageProcessManager;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 1690
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$2000(Lcom/htc/album/helper/ImageProcessManager;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1692
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mFragment:Landroid/app/Fragment;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$2100(Lcom/htc/album/helper/ImageProcessManager;)Landroid/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mFragment:Landroid/app/Fragment;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$2100(Lcom/htc/album/helper/ImageProcessManager;)Landroid/app/Fragment;

    move-result-object v2

    instance-of v2, v2, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    if-eqz v2, :cond_22

    .line 1694
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mFragment:Landroid/app/Fragment;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$2100(Lcom/htc/album/helper/ImageProcessManager;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    const v3, 0x440001

    invoke-interface {v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->dismissFragmentDialog(I)Z

    .line 1695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mFragment:Landroid/app/Fragment;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$2100(Lcom/htc/album/helper/ImageProcessManager;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    const/high16 v3, 0x44

    invoke-interface {v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->dismissFragmentDialog(I)Z

    .line 1699
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    new-instance v3, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$1;-><init>(Lcom/htc/album/helper/ImageProcessManager$ProcessThread;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1709
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->release()V

    goto/16 :goto_0

    .line 1713
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->release()V

    goto/16 :goto_0

    .line 1670
    .restart local v11       #file:Ljava/io/File;
    .restart local v12       #fileName:Ljava/lang/String;
    .restart local v15       #fos:Ljava/io/FileOutputStream;
    .restart local v16       #i$:Ljava/util/Iterator;
    .restart local v17       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .restart local v18       #imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .restart local v20       #isFileExist:Z
    .restart local v22       #pickerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v23       #pos:Ljava/lang/Integer;
    .restart local v24       #processedIImage:Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;
    .restart local v25       #root:Ljava/io/File;
    .restart local v28       #strFilenameHashed:Ljava/lang/String;
    .restart local v30       #strFullPathHashed:Ljava/lang/String;
    .restart local v31       #x:I
    :catch_2
    move-exception v10

    move-object v14, v15

    .end local v15           #fos:Ljava/io/FileOutputStream;
    .restart local v14       #fos:Ljava/io/FileOutputStream;
    goto :goto_6

    .line 1666
    .end local v14           #fos:Ljava/io/FileOutputStream;
    .restart local v15       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v10

    move-object v14, v15

    .end local v15           #fos:Ljava/io/FileOutputStream;
    .restart local v14       #fos:Ljava/io/FileOutputStream;
    goto :goto_5
.end method

.method public updateModifyTime(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter "strPath"
    .parameter "strMimeType"

    .prologue
    const/4 v7, 0x0

    .line 1158
    :try_start_0
    iget-object v8, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    invoke-static {v8, p1, p2}, Lcom/htc/album/AlbumUtility/MediaScannerRes;->SyncScanSingleFile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1159
    .local v5, uriImage:Landroid/net/Uri;
    if-nez v5, :cond_0

    .line 1183
    .end local v5           #uriImage:Landroid/net/Uri;
    :goto_0
    return v7

    .line 1164
    .restart local v5       #uriImage:Landroid/net/Uri;
    :cond_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1165
    .local v6, values:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v1, v8, v10

    .line 1167
    .local v1, lCurTime:J
    const-string v8, "date_modified"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1169
    iget-object v8, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1170
    .local v4, resolver:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v5, v6, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1175
    .local v3, nResult:I
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][ImageProcessManager][updateModifyTime]: UpdateTime: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Uri: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1183
    const/4 v7, 0x1

    goto :goto_0

    .line 1177
    .end local v1           #lCurTime:J
    .end local v3           #nResult:I
    .end local v4           #resolver:Landroid/content/ContentResolver;
    .end local v5           #uriImage:Landroid/net/Uri;
    .end local v6           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 1179
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[HTCAlbum][ImageProcessManager][updateModifyTime]: updateModifyTime NG !"

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
