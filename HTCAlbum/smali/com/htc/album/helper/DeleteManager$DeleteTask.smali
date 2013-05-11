.class Lcom/htc/album/helper/DeleteManager$DeleteTask;
.super Landroid/os/AsyncTask;
.source "DeleteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/DeleteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final INT_BULK_BURST_IMAGE_DELETE_COUNT:I

.field private final INT_BULK_DELETE_COUNT:I

.field private mActivity:Landroid/app/Activity;

.field private mCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

.field private mCollection:Lcom/htc/album/modules/collection/Collection;

.field private mDeleteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFileCacheList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFragment:Landroid/app/Fragment;

.field private mIsDeleteFolder:Z

.field final synthetic this$0:Lcom/htc/album/helper/DeleteManager;


# direct methods
.method public constructor <init>(Lcom/htc/album/helper/DeleteManager;Landroid/app/Fragment;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;)V
    .locals 2
    .parameter
    .parameter "fragment"
    .parameter "collection"
    .parameter "callback"

    .prologue
    const/4 v1, 0x0

    .line 713
    iput-object p1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->this$0:Lcom/htc/album/helper/DeleteManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 701
    const/16 v0, 0x19

    iput v0, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->INT_BULK_DELETE_COUNT:I

    .line 702
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->INT_BULK_BURST_IMAGE_DELETE_COUNT:I

    .line 703
    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    .line 704
    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    .line 705
    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    .line 706
    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mDeleteList:Ljava/util/ArrayList;

    .line 707
    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    .line 708
    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFileCacheList:Ljava/util/ArrayList;

    .line 709
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mIsDeleteFolder:Z

    .line 714
    iput-object p2, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    .line 715
    invoke-virtual {p2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    .line 716
    iput-object p3, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    .line 717
    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mDeleteList:Ljava/util/ArrayList;

    .line 718
    iput-object p4, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    .line 719
    return-void
.end method

.method public constructor <init>(Lcom/htc/album/helper/DeleteManager;Landroid/app/Fragment;Lcom/htc/album/modules/collection/Collection;Ljava/util/ArrayList;Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;)V
    .locals 0
    .parameter
    .parameter "fragment"
    .parameter "collection"
    .parameter
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Lcom/htc/album/modules/collection/Collection;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 725
    .local p4, deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/htc/album/helper/DeleteManager$DeleteTask;-><init>(Lcom/htc/album/helper/DeleteManager;Landroid/app/Fragment;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;)V

    .line 726
    iput-object p4, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mDeleteList:Ljava/util/ArrayList;

    .line 727
    return-void
.end method

.method private addFileCacheItemToList(Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/util/ArrayList;)V
    .locals 8
    .parameter "image"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 969
    .local p2, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;>;"
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isEnableRemoveLocalImageFileCache()Z

    move-result v1

    if-nez v1, :cond_1

    .line 979
    :cond_0
    :goto_0
    return-void

    .line 971
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 974
    new-instance v0, Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateModified()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateTaken()J

    move-result-wide v4

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSize()J

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;-><init>(Ljava/lang/String;JJJ)V

    .line 978
    .local v0, item:Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private bulkDelete(Landroid/content/ContentResolver;Lcom/htc/album/modules/collection/Collection;Ljava/util/ArrayList;)V
    .locals 6
    .parameter "resolver"
    .parameter "collection"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Lcom/htc/album/modules/collection/Collection;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1232
    .local p3, deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1244
    :cond_0
    :goto_0
    return-void

    .line 1235
    :cond_1
    const/4 v1, 0x0

    .line 1236
    .local v1, deleteIDArr:[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_id"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " in ( ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1237
    .local v3, where:Ljava/lang/StringBuilder;
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1238
    .local v0, count:I
    const/4 v2, 0x1

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 1239
    const-string v4, ", ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1238
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1240
    :cond_2
    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1242
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v1, v4

    check-cast v1, [Ljava/lang/String;

    .line 1243
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, p1, v4, v1}, Lcom/htc/album/modules/collection/Collection;->onBulkDeleteIBT(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteBurstImages(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;Ljava/util/ArrayList;)V
    .locals 24
    .parameter "activity"
    .parameter "collection"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/htc/album/modules/collection/Collection;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1105
    .local p3, deletePositionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-boolean v21, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v21, :cond_0

    .line 1106
    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$400()Ljava/lang/String;

    move-result-object v21

    const-string v22, "[DeleteTask][deleteBurstImages] +++"

    invoke-static/range {v21 .. v22}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 1228
    :cond_1
    :goto_0
    return-void

    .line 1110
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/htc/album/modules/collection/Collection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v11

    check-cast v11, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    .line 1111
    .local v11, imageList:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    if-nez v11, :cond_3

    .line 1113
    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/modules/collection/Collection;->doLoadData(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 1114
    invoke-virtual/range {p2 .. p2}, Lcom/htc/album/modules/collection/Collection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v11

    .end local v11           #imageList:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    check-cast v11, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    .line 1116
    .restart local v11       #imageList:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    :cond_3
    invoke-virtual {v11}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->resetCancelDelete()V

    .line 1118
    const/4 v15, 0x0

    .line 1119
    .local v15, isCanceled:Z
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    .line 1122
    .local v20, resolver:Landroid/content/ContentResolver;
    invoke-virtual {v11}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getCount()I

    move-result v12

    .line 1123
    .local v12, imageListSize:I
    if-lez v12, :cond_1

    .line 1126
    if-eqz p3, :cond_6

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1127
    .local v8, deleteSize:I
    :goto_1
    if-eqz p3, :cond_4

    .line 1128
    invoke-static/range {p3 .. p3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1131
    :cond_4
    const/16 v17, -0x1

    .line 1132
    .local v17, newBestPosition:I
    if-eq v12, v8, :cond_5

    .line 1133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->this$0:Lcom/htc/album/helper/DeleteManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    #calls: Lcom/htc/album/helper/DeleteManager;->getNewBurstBestPosition(Lcom/htc/opensense2/album/util/ImageManager$IImageList;Ljava/util/ArrayList;)I
    invoke-static {v0, v11, v1}, Lcom/htc/album/helper/DeleteManager;->access$500(Lcom/htc/album/helper/DeleteManager;Lcom/htc/opensense2/album/util/ImageManager$IImageList;Ljava/util/ArrayList;)I

    move-result v17

    .line 1136
    :cond_5
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v10

    .line 1137
    .local v10, firstImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v10, :cond_7

    .line 1139
    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$400()Ljava/lang/String;

    move-result-object v21

    const-string v22, "[DeleteTask][deleteBurstImages] firstImage is null"

    invoke-static/range {v21 .. v22}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v8           #deleteSize:I
    .end local v10           #firstImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v17           #newBestPosition:I
    :cond_6
    move v8, v12

    .line 1126
    goto :goto_1

    .line 1142
    .restart local v8       #deleteSize:I
    .restart local v10       #firstImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .restart local v17       #newBestPosition:I
    :cond_7
    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v13

    .line 1144
    .local v13, imagePath:Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1145
    .local v7, deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, -0x1

    .line 1147
    .local v3, bestPosition:I
    const/4 v6, 0x0

    .line 1149
    .local v6, countDeleted:I
    const/4 v14, 0x0

    .local v14, index:I
    :goto_2
    if-ge v14, v8, :cond_9

    .line 1151
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->isCancelled()Z

    move-result v21

    if-eqz v21, :cond_10

    .line 1153
    sget-boolean v21, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v21, :cond_8

    .line 1154
    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$400()Ljava/lang/String;

    move-result-object v21

    const-string v22, "[DeleteTask][deleteBurstImages] delete cancelled"

    invoke-static/range {v21 .. v22}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    :cond_8
    const/4 v15, 0x1

    .line 1157
    const/4 v3, -0x1

    .line 1158
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1193
    :cond_9
    const/16 v21, -0x1

    move/from16 v0, v21

    if-le v3, v0, :cond_b

    .line 1195
    const/16 v21, -0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-le v0, v1, :cond_a

    .line 1196
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v3, v1}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->setNewBurstBestImage(Lcom/htc/opensense2/album/util/ImageManager$IImageList;II)Z

    .line 1198
    :cond_a
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Lcom/htc/album/modules/collection/Collection;->onDeleteIBT(Landroid/content/ContentResolver;I)V

    .line 1203
    :cond_b
    :try_start_0
    invoke-virtual {v11}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getCount()I

    move-result v21

    sub-int v21, v21, v6

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    .line 1205
    const/16 v21, -0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    .line 1206
    const/16 v17, 0x0

    .line 1207
    :cond_c
    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v16

    .line 1208
    .local v16, newBestImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v18

    check-cast v18, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;

    .line 1209
    .local v18, newBurstList:Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;
    invoke-virtual/range {v18 .. v18}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->startRequery()Z

    .line 1210
    invoke-virtual/range {v18 .. v18}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->expand()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1219
    .end local v16           #newBestImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v18           #newBurstList:Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;
    :cond_d
    :goto_3
    if-eqz v15, :cond_e

    if-eqz v13, :cond_f

    .line 1221
    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->isBurstFolder(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 1222
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->deleteEmptyFolder(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    .line 1225
    :cond_f
    invoke-virtual/range {p2 .. p2}, Lcom/htc/album/modules/collection/Collection;->release()V

    .line 1226
    sget-boolean v21, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v21, :cond_1

    .line 1227
    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$400()Ljava/lang/String;

    move-result-object v21

    const-string v22, "[DeleteTask][deleteBurstImages] ---"

    invoke-static/range {v21 .. v22}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1162
    :cond_10
    move/from16 v19, v14

    .line 1163
    .local v19, pos:I
    if-eqz p3, :cond_11

    .line 1164
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 1166
    :cond_11
    move/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v5

    .line 1167
    .local v5, burstImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v5, :cond_13

    .line 1169
    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$400()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[DeleteTask][deleteBurstImages] burstImage is null at position "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    add-int/lit8 v6, v6, 0x1

    .line 1149
    :cond_12
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 1173
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFileCacheList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->addFileCacheItemToList(Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/util/ArrayList;)V

    .line 1175
    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v21

    if-eqz v21, :cond_16

    .line 1176
    move/from16 v3, v19

    .line 1182
    :cond_14
    :goto_5
    add-int/lit8 v6, v6, 0x1

    .line 1183
    rem-int/lit8 v4, v6, 0xa

    .line 1184
    .local v4, bulkDeletes:I
    if-lez v6, :cond_12

    if-eqz v4, :cond_15

    if-ne v6, v8, :cond_12

    .line 1187
    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v7}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->bulkDelete(Landroid/content/ContentResolver;Lcom/htc/album/modules/collection/Collection;Ljava/util/ArrayList;)V

    .line 1188
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    goto :goto_4

    .line 1177
    .end local v4           #bulkDeletes:I
    :cond_16
    move/from16 v0, v19

    move/from16 v1, v17

    if-eq v0, v1, :cond_14

    .line 1180
    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageId()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1213
    .end local v5           #burstImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v19           #pos:I
    :catch_0
    move-exception v9

    .line 1215
    .local v9, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$400()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[DeleteTask][deleteBurstImages] expand burst fail: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1216
    const/4 v15, 0x1

    goto/16 :goto_3
.end method

.method private deleteMedias(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;Ljava/util/ArrayList;)V
    .locals 22
    .parameter "activity"
    .parameter "collection"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/htc/album/modules/collection/Collection;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 997
    .local p3, deletePositionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-boolean v19, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v19, :cond_0

    .line 998
    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$400()Ljava/lang/String;

    move-result-object v19

    const-string v20, "[DeleteTask][deleteMedias] +++"

    invoke-static/range {v19 .. v20}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 1101
    :cond_1
    :goto_0
    return-void

    .line 1002
    :cond_2
    const/16 v16, 0x0

    .line 1004
    .local v16, isCanceled:Z
    invoke-virtual/range {p2 .. p2}, Lcom/htc/album/modules/collection/Collection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v12

    check-cast v12, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    .line 1005
    .local v12, imageList:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    if-nez v12, :cond_3

    .line 1007
    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/modules/collection/Collection;->doLoadData(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 1008
    invoke-virtual/range {p2 .. p2}, Lcom/htc/album/modules/collection/Collection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v12

    .end local v12           #imageList:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    check-cast v12, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    .line 1010
    .restart local v12       #imageList:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    :cond_3
    invoke-virtual {v12}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->resetCancelDelete()V

    .line 1013
    invoke-virtual {v12}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getCount()I

    move-result v13

    .line 1014
    .local v13, imageListSize:I
    if-lez v13, :cond_1

    .line 1017
    if-eqz p3, :cond_5

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1018
    .local v8, deleteSize:I
    :goto_1
    if-eqz p3, :cond_4

    .line 1019
    invoke-static/range {p3 .. p3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1022
    :cond_4
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v9

    .line 1023
    .local v9, firstImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v9, :cond_6

    .line 1025
    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$400()Ljava/lang/String;

    move-result-object v19

    const-string v20, "[DeleteTask][deleteMedias] firstImage is null"

    invoke-static/range {v19 .. v20}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v8           #deleteSize:I
    .end local v9           #firstImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_5
    move v8, v13

    .line 1017
    goto :goto_1

    .line 1028
    .restart local v8       #deleteSize:I
    .restart local v9       #firstImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_6
    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v14

    .line 1029
    .local v14, imagePath:Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1030
    .local v7, deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1031
    .local v6, deleteBurstList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 1033
    .local v18, resolver:Landroid/content/ContentResolver;
    const/4 v5, 0x0

    .line 1035
    .local v5, countDeleted:I
    const/4 v15, 0x0

    .local v15, index:I
    :goto_2
    if-ge v15, v8, :cond_8

    .line 1037
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->isCancelled()Z

    move-result v19

    if-eqz v19, :cond_d

    .line 1039
    sget-boolean v19, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v19, :cond_7

    .line 1040
    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$400()Ljava/lang/String;

    move-result-object v19

    const-string v20, "[DeleteTask][deleteMedias] delete cancelled"

    invoke-static/range {v19 .. v20}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    :cond_7
    const/16 v16, 0x1

    .line 1043
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1077
    :cond_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1079
    .local v11, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->isCancelled()Z

    move-result v19

    if-eqz v19, :cond_14

    .line 1081
    sget-boolean v19, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v19, :cond_9

    .line 1082
    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$400()Ljava/lang/String;

    move-result-object v19

    const-string v20, "[DeleteTask][deleteMedias] delete cancelled"

    invoke-static/range {v19 .. v20}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    :cond_9
    const/16 v16, 0x1

    .line 1084
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1093
    .end local v11           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_a
    if-eqz v16, :cond_b

    if-eqz v14, :cond_c

    .line 1095
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mIsDeleteFolder:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    .line 1096
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->deleteEmptyFolder(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    .line 1099
    :cond_c
    sget-boolean v19, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v19, :cond_1

    .line 1100
    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$400()Ljava/lang/String;

    move-result-object v19

    const-string v20, "[DeleteTask][deleteMedias] ---"

    invoke-static/range {v19 .. v20}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1047
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_d
    move/from16 v17, v15

    .line 1048
    .local v17, pos:I
    if-eqz p3, :cond_e

    .line 1049
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 1051
    :cond_e
    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v11

    .line 1052
    .restart local v11       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v11, :cond_10

    .line 1054
    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$400()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[DeleteTask][deleteMedias] image is null at position "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    add-int/lit8 v5, v5, 0x1

    .line 1035
    :cond_f
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 1058
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFileCacheList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->addFileCacheItemToList(Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/util/ArrayList;)V

    .line 1060
    invoke-interface {v11}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v19

    if-eqz v19, :cond_12

    .line 1061
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1067
    :goto_5
    add-int/lit8 v5, v5, 0x1

    .line 1068
    rem-int/lit8 v3, v5, 0x19

    .line 1069
    .local v3, bulkDeletes:I
    if-lez v5, :cond_f

    if-eqz v3, :cond_11

    if-ne v5, v8, :cond_f

    .line 1072
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v7}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->bulkDelete(Landroid/content/ContentResolver;Lcom/htc/album/modules/collection/Collection;Ljava/util/ArrayList;)V

    .line 1073
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    goto :goto_4

    .line 1062
    .end local v3           #bulkDeletes:I
    :cond_12
    invoke-interface {v11}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v19

    if-eqz v19, :cond_13

    .line 1063
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/modules/collection/Collection;->onDeleteIBT(Landroid/content/ContentResolver;I)V

    goto :goto_5

    .line 1065
    :cond_13
    invoke-interface {v11}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageId()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1087
    .end local v17           #pos:I
    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_14
    new-instance v4, Lcom/htc/album/TabPluginDevice/BurstShotCollection;

    invoke-interface {v11}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getBucketName()Ljava/lang/String;

    move-result-object v19

    invoke-interface {v11}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v4, v0, v1, v2}, Lcom/htc/album/TabPluginDevice/BurstShotCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    .local v4, burstCollection:Lcom/htc/album/modules/collection/Collection;
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v4, v2}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->deleteBurstImages(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;Ljava/util/ArrayList;)V

    goto/16 :goto_3
.end method

.method private removeFavoriteMedias(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "activity"
    .parameter "collection"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/htc/album/modules/collection/Collection;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1271
    .local p3, removePositionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-boolean v5, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 1272
    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$400()Ljava/lang/String;

    move-result-object v5

    const-string v6, "[DeleteTask][removeFavoriteMedias] +++"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 1304
    :cond_1
    :goto_0
    return-void

    .line 1276
    :cond_2
    invoke-virtual {p2}, Lcom/htc/album/modules/collection/Collection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    .line 1277
    .local v0, imageList:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    if-nez v0, :cond_3

    .line 1279
    const/4 v5, 0x0

    invoke-virtual {p2, p1, v5}, Lcom/htc/album/modules/collection/Collection;->doLoadData(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 1280
    invoke-virtual {p2}, Lcom/htc/album/modules/collection/Collection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    .end local v0           #imageList:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    .line 1282
    .restart local v0       #imageList:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    :cond_3
    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->resetCancelDelete()V

    .line 1284
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1285
    .local v4, resolver:Landroid/content/ContentResolver;
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1287
    .local v3, removeSize:I
    :goto_1
    const/4 v1, 0x0

    .local v1, index:I
    :goto_2
    if-ge v1, v3, :cond_4

    .line 1289
    invoke-virtual {p0}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1291
    sget-boolean v5, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v5, :cond_4

    .line 1292
    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$400()Ljava/lang/String;

    move-result-object v5

    const-string v6, "[DeleteTask][removeFavoriteMedias] delete cancelled"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    :cond_4
    sget-boolean v5, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 1303
    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$400()Ljava/lang/String;

    move-result-object v5

    const-string v6, "[DeleteTask][removeFavoriteMedias] ---"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1285
    .end local v1           #index:I
    .end local v3           #removeSize:I
    :cond_5
    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getCount()I

    move-result v3

    goto :goto_1

    .line 1297
    .restart local v1       #index:I
    .restart local v3       #removeSize:I
    :cond_6
    move v2, v1

    .line 1298
    .local v2, pos:I
    if-eqz p3, :cond_7

    .line 1299
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1300
    :cond_7
    invoke-virtual {p2, v4, v2}, Lcom/htc/album/modules/collection/Collection;->onDeleteIBT(Landroid/content/ContentResolver;I)V

    .line 1287
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private setNewBurstBestImage(Lcom/htc/opensense2/album/util/ImageManager$IImageList;II)Z
    .locals 5
    .parameter "imageList"
    .parameter "oldBestPosition"
    .parameter "newBestPosition"

    .prologue
    const/4 v4, 0x0

    .line 1248
    if-nez p1, :cond_1

    move v0, v4

    .line 1266
    :cond_0
    :goto_0
    return v0

    .line 1251
    :cond_1
    const/4 v0, 0x0

    .line 1253
    .local v0, bRes:Z
    invoke-interface {p1, p2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v2

    .line 1254
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v2, :cond_0

    .line 1256
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;

    .line 1257
    .local v1, burstList:Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;
    invoke-interface {p1, p3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v3

    .line 1259
    .local v3, newBestImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 1261
    const/4 v0, 0x1

    .line 1262
    invoke-virtual {v1, v3, v4}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->setBestShot(Lcom/htc/opensense2/album/util/ImageManager$IImage;Z)V

    goto :goto_0
.end method

.method private startToRemoveFileCache(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 985
    .local p2, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;>;"
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isEnableRemoveLocalImageFileCache()Z

    move-result v1

    if-nez v1, :cond_1

    .line 993
    :cond_0
    :goto_0
    return-void

    .line 987
    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 990
    new-instance v0, Lcom/htc/album/helper/RemoveFileCacheTask;

    invoke-direct {v0, p1, p2}, Lcom/htc/album/helper/RemoveFileCacheTask;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 991
    .local v0, removeFileCacheTask:Lcom/htc/album/helper/RemoveFileCacheTask;
    invoke-virtual {v0}, Lcom/htc/album/helper/RemoveFileCacheTask;->start()V

    .line 992
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/RemoveFileCacheTask;->postTask(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public deleteEmptyFolder(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 16
    .parameter "resolver"
    .parameter "imagePath"

    .prologue
    .line 748
    if-nez p2, :cond_0

    .line 749
    const/4 v1, 0x0

    .line 830
    :goto_0
    return v1

    .line 750
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getBucketId()Ljava/lang/String;

    move-result-object v8

    .line 751
    .local v8, bucketID:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageRootBucketID(Ljava/lang/String;)Z

    move-result v7

    .line 753
    .local v7, bIsStorageRoot:Z
    if-eqz v7, :cond_2

    .line 755
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 756
    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v3, "[DeleteManager][deleteEmptyFolder] storage mount point can not be deleted."

    invoke-static {v1, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 760
    :cond_2
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 761
    .local v11, file:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v12

    .line 762
    .local v12, folder:Ljava/io/File;
    if-nez v12, :cond_3

    .line 763
    const/4 v1, 0x0

    goto :goto_0

    .line 765
    :cond_3
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 766
    .local v13, folderPath:Ljava/lang/String;
    if-eqz v12, :cond_c

    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v12}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v12}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_c

    .line 768
    const/4 v15, 0x0

    .line 773
    .local v15, isDeleteSuccess:Z
    const-string v4, "_data in (?, ?)"

    .line 774
    .local v4, where:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v13, v5, v1

    const/4 v1, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v1

    .line 775
    .local v5, whereArgs:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 778
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcom/htc/album/helper/MediaProviderHelper;->EXTERNAL_FILE_CONTENT_URI:Landroid/net/Uri;

    .line 779
    .local v2, fileUri:Landroid/net/Uri;
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 780
    if-eqz v9, :cond_7

    .line 782
    const/4 v5, 0x0

    .line 783
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    .line 784
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_7

    .line 786
    const-string v1, "_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 787
    .local v14, index:I
    const-string v4, "_id in (?)"

    .line 788
    const/4 v1, 0x0

    invoke-interface {v9, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v1

    .line 790
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_4

    .line 791
    const/4 v15, 0x1

    .line 784
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 798
    .end local v2           #fileUri:Landroid/net/Uri;
    .end local v14           #index:I
    :catch_0
    move-exception v10

    .line 800
    .local v10, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v3, "[DeleteTask][deleteEmptyFolder] delete folder failed"

    invoke-static {v1, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DeleteTask][deleteEmptyFolder] "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 805
    if-eqz v9, :cond_5

    .line 807
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 808
    const/4 v9, 0x0

    .line 812
    .end local v10           #e:Landroid/database/sqlite/SQLiteException;
    :cond_5
    :goto_2
    const/4 v1, 0x1

    if-ne v15, v1, :cond_a

    .line 814
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 815
    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DeleteTask][deleteEmptyFolder] folder["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "] has been deleted"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    :cond_6
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 795
    .restart local v2       #fileUri:Landroid/net/Uri;
    :cond_7
    :try_start_2
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 796
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v15

    .line 805
    :cond_8
    if-eqz v9, :cond_5

    .line 807
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 808
    const/4 v9, 0x0

    goto :goto_2

    .line 805
    .end local v2           #fileUri:Landroid/net/Uri;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_9

    .line 807
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 808
    const/4 v9, 0x0

    :cond_9
    throw v1

    .line 820
    :cond_a
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_b

    .line 821
    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DeleteTask][deleteEmptyFolder] Delete folder["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "] failed"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 827
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #whereArgs:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v15           #isDeleteSuccess:Z
    :cond_c
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_d

    .line 828
    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DeleteTask][deleteEmptyFolder] folder["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "] size is not zero, can not be deleted"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 7
    .parameter "arg0"

    .prologue
    const/4 v6, 0x1

    .line 866
    iget-object v3, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFileCacheList:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isEnableRemoveLocalImageFileCache()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 867
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFileCacheList:Ljava/util/ArrayList;

    .line 869
    :cond_0
    const/4 v1, 0x0

    .line 870
    .local v1, isBurstColletion:Z
    const/4 v2, 0x0

    .line 871
    .local v2, isLocalFolder:Z
    iget-object v3, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v3}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v0

    .line 872
    .local v0, collectionType:Ljava/lang/String;
    const-string v3, "com.htc.HTCAlbum.LOCAL_FOLDER"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.htc.HTCAlbum.SMART_LOCAL_FOLDER"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 875
    :cond_1
    const/4 v2, 0x1

    .line 882
    :cond_2
    :goto_0
    if-eqz v2, :cond_6

    iget-boolean v3, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mIsDeleteFolder:Z

    :goto_1
    iput-boolean v3, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mIsDeleteFolder:Z

    .line 884
    sget-boolean v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 885
    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$400()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DeleteTask][doInBK] origin count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v5}, Lcom/htc/album/modules/collection/Collection;->getPhotoCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    :cond_3
    if-nez v1, :cond_8

    .line 889
    iget-object v3, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    instance-of v3, v3, Lcom/htc/album/TabPluginDevice/FavoritesCollection;

    if-eqz v3, :cond_7

    .line 890
    iget-object v3, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    iget-object v5, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mDeleteList:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v4, v5}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->removeFavoriteMedias(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;Ljava/util/ArrayList;)V

    .line 900
    :goto_2
    iget-object v3, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v3}, Lcom/htc/album/modules/collection/Collection;->reloadData()V

    .line 901
    sget-boolean v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 902
    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$400()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DeleteTask][doInBK] result count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v5}, Lcom/htc/album/modules/collection/Collection;->getPhotoCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    :cond_4
    iget-object v3, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/htc/album/helper/MediaProviderHelper;->notifyChange(Landroid/content/Context;)V

    .line 905
    invoke-static {}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->instance()Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->updateLastestInformation(Landroid/content/Context;)V

    .line 906
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    .line 877
    :cond_5
    const-string v3, "com.htc.HTCAlbum.BURST_SHOTS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v6, v3, :cond_2

    .line 880
    const/4 v1, 0x1

    goto :goto_0

    .line 882
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 892
    :cond_7
    iget-object v3, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    iget-object v5, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mDeleteList:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v4, v5}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->deleteMedias(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;Ljava/util/ArrayList;)V

    goto :goto_2

    .line 897
    :cond_8
    iget-object v3, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    iget-object v5, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mDeleteList:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v4, v5}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->deleteBurstImages(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;Ljava/util/ArrayList;)V

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 699
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public isBurstFolder(Ljava/lang/String;)Z
    .locals 3
    .parameter "imagepath"

    .prologue
    const/4 v1, 0x0

    .line 736
    if-nez p1, :cond_1

    .line 743
    :cond_0
    :goto_0
    return v1

    .line 739
    :cond_1
    const-string v0, ".*/DCIM/[0-9]+BURST/.*"

    .line 740
    .local v0, pattern:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 741
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 731
    invoke-virtual {p0}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 3

    .prologue
    .line 943
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 944
    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[DeleteTask][onCancelled] cancelled+"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    :cond_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 947
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->cancelDeleting()V

    .line 949
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    if-eqz v1, :cond_1

    .line 951
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    const/high16 v2, 0x12

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->dismissFragmentDialog(I)Z

    .line 952
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    .line 955
    :cond_1
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    .line 956
    .local v0, callback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;
    if-eqz v0, :cond_2

    .line 957
    invoke-interface {v0}, Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;->onDeleteCancel()V

    .line 959
    :cond_2
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFileCacheList:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 960
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFileCacheList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->startToRemoveFileCache(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 961
    :cond_3
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 962
    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[DeleteTask][onCancelled] cancelled-"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    :cond_4
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 918
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    .line 919
    .local v0, callback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;
    if-eqz v0, :cond_0

    .line 920
    invoke-interface {v0}, Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;->onDeleteEnd()V

    .line 921
    :cond_0
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->keepScreenOn(Landroid/app/Activity;Z)V

    .line 922
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    if-eqz v1, :cond_1

    .line 924
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    const/high16 v2, 0x12

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->dismissFragmentDialog(I)Z

    .line 925
    iput-object v3, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    .line 928
    :cond_1
    iput-object v3, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    .line 930
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFileCacheList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 931
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFileCacheList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->startToRemoveFileCache(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 932
    :cond_2
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 699
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 847
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    if-eqz v1, :cond_0

    .line 849
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    const/high16 v2, 0x12

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->showFragmentDialog(ILandroid/os/Bundle;)Z

    .line 851
    :cond_0
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->keepScreenOn(Landroid/app/Activity;Z)V

    .line 853
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    .line 854
    .local v0, callback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;
    if-eqz v0, :cond_1

    .line 855
    invoke-interface {v0}, Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;->onDeleteStart()V

    .line 856
    :cond_1
    return-void
.end method

.method public setDeleteFolder()V
    .locals 1

    .prologue
    .line 835
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mIsDeleteFolder:Z

    .line 836
    return-void
.end method
