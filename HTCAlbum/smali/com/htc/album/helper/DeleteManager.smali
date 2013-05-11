.class public Lcom/htc/album/helper/DeleteManager;
.super Ljava/lang/Object;
.source "DeleteManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/helper/DeleteManager$DeleteTask;,
        Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;,
        Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;,
        Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;,
        Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;
    }
.end annotation


# static fields
.field public static final DIALOG_DELETE_ALL:I = 0x120001

.field public static final DIALOG_DELETE_FILES:I = 0x120002

.field public static final DIALOG_DELETE_PROGRESS:I = 0x120000

.field public static final DIALOG_DELETE_SINGLE:I = 0x120003

.field private static final KEY_DATA:Ljava/lang/String; = "key_data"

.field public static final KEY_IS_DELETE_FOLDER:Ljava/lang/String; = "key_is_delete_folder"

.field private static final KEY_MESSAGE:Ljava/lang/String; = "key_message"

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field deleteAll:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;

.field deleteProgress:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;

.field deleteSingle:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;

.field private mCollection:Lcom/htc/album/modules/collection/Collection;

.field private mDeleteCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

.field private mDeleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;

.field private mDialogId:I

.field private mFragment:Landroid/app/Fragment;

.field private mIsFavoriteCollection:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/helper/DeleteManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;)V
    .locals 3
    .parameter "fragment"
    .parameter "collection"
    .parameter "callback"

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v2, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    .line 62
    iput-object v2, p0, Lcom/htc/album/helper/DeleteManager;->mCollection:Lcom/htc/album/modules/collection/Collection;

    .line 63
    iput-object v2, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;

    .line 64
    iput-object v2, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    .line 65
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/album/helper/DeleteManager;->mDialogId:I

    .line 66
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/album/helper/DeleteManager;->mIsFavoriteCollection:Z

    .line 68
    iput-object v2, p0, Lcom/htc/album/helper/DeleteManager;->deleteProgress:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;

    .line 69
    iput-object v2, p0, Lcom/htc/album/helper/DeleteManager;->deleteAll:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;

    .line 70
    iput-object v2, p0, Lcom/htc/album/helper/DeleteManager;->deleteSingle:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;

    .line 85
    iput-object p1, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    .line 86
    iput-object p2, p0, Lcom/htc/album/helper/DeleteManager;->mCollection:Lcom/htc/album/modules/collection/Collection;

    .line 87
    iput-object p3, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    .line 89
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, mediaType:Ljava/lang/String;
    const-string v1, "com.htc.HTCAlbum.MY_FAVORITES"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/album/helper/DeleteManager;->mIsFavoriteCollection:Z

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/helper/DeleteManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/htc/album/helper/DeleteManager;->mIsFavoriteCollection:Z

    return v0
.end method

.method static synthetic access$102(Lcom/htc/album/helper/DeleteManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/htc/album/helper/DeleteManager;->mDialogId:I

    return p1
.end method

.method static synthetic access$200(Lcom/htc/album/helper/DeleteManager;)Lcom/htc/album/modules/collection/Collection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mCollection:Lcom/htc/album/modules/collection/Collection;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/helper/DeleteManager;)Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/htc/album/helper/DeleteManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/album/helper/DeleteManager;Lcom/htc/opensense2/album/util/ImageManager$IImageList;Ljava/util/ArrayList;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/htc/album/helper/DeleteManager;->getNewBurstBestPosition(Lcom/htc/opensense2/album/util/ImageManager$IImageList;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method private getAllPositionList(I)Ljava/util/ArrayList;
    .locals 3
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 691
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 692
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 693
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 695
    :cond_0
    return-object v1
.end method

.method private getNewBurstBestPosition(Lcom/htc/opensense2/album/util/ImageManager$IImageList;Ljava/util/ArrayList;)I
    .locals 5
    .parameter "burstList"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/opensense2/album/util/ImageManager$IImageList;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 676
    .local p2, selectedImageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 677
    :cond_0
    const/4 v1, -0x1

    .line 686
    :goto_0
    return v1

    .line 679
    :cond_1
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v0

    .line 680
    .local v0, count:I
    const/4 v1, 0x0

    .line 681
    .local v1, newBestPos:I
    move-object v3, p2

    .line 682
    .local v3, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, v0}, Lcom/htc/album/helper/DeleteManager;->getAllPositionList(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 683
    .local v2, restList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 684
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 686
    goto :goto_0
.end method

.method private onDismissDeleteAllDialog()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->deleteAll:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;

    if-eqz v0, :cond_0

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->deleteAll:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;->dismiss()V

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/DeleteManager;->deleteAll:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private onDismissDeleteProgressDialog()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->deleteProgress:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;

    if-eqz v0, :cond_0

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->deleteProgress:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;->dismiss()V

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/DeleteManager;->deleteProgress:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private onDismissDeleteSingleDialog()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->deleteSingle:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;

    if-eqz v0, :cond_0

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->deleteSingle:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;->dismiss()V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/DeleteManager;->deleteSingle:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public cancelDeleteMedias()V
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->cancel(Z)Z

    .line 513
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;

    .line 514
    return-void
.end method

.method public checkDeleteBurstShot(Ljava/util/ArrayList;)Z
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, selectedImageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 614
    if-eqz p1, :cond_0

    iget-object v11, p0, Lcom/htc/album/helper/DeleteManager;->mCollection:Lcom/htc/album/modules/collection/Collection;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v11}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    if-nez v11, :cond_1

    .line 671
    :cond_0
    :goto_0
    return v9

    .line 616
    :cond_1
    const-string v11, "com.htc.HTCAlbum.BURST_SHOTS"

    iget-object v12, p0, Lcom/htc/album/helper/DeleteManager;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v12}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 618
    sget-object v10, Lcom/htc/album/helper/DeleteManager;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[DeleteManager][checkDeleteBurstShot] collection is not a burst shot collection."

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 622
    :cond_2
    iget-object v11, p0, Lcom/htc/album/helper/DeleteManager;->mCollection:Lcom/htc/album/modules/collection/Collection;

    iget-object v12, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v12}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/htc/album/modules/collection/Collection;->doLoadData(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 623
    iget-object v11, p0, Lcom/htc/album/helper/DeleteManager;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v11}, Lcom/htc/album/modules/collection/Collection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    .line 624
    .local v6, listUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    if-eqz v6, :cond_0

    .line 626
    invoke-virtual {v6}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getCount()I

    move-result v2

    .line 627
    .local v2, count:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int v8, v2, v11

    .line 630
    .local v8, rest:I
    if-gtz v8, :cond_3

    move v9, v10

    .line 631
    goto :goto_0

    .line 634
    :cond_3
    invoke-virtual {v6, v9}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v3

    .line 635
    .local v3, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v3, :cond_4

    .line 636
    sget-object v10, Lcom/htc/album/helper/DeleteManager;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[DeleteManager][checkDeleteBurstShot]image is null."

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 640
    :cond_4
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;

    .line 641
    .local v1, burstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;
    if-nez v1, :cond_5

    .line 642
    sget-object v10, Lcom/htc/album/helper/DeleteManager;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[DeleteManager][checkDeleteBurstShot]burstPhotoImageList is null."

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 646
    :cond_5
    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->getBestShotIndex()I

    move-result v0

    .line 647
    .local v0, bestShotIndex:I
    const/4 v11, -0x1

    if-ne v0, v11, :cond_6

    .line 648
    sget-object v10, Lcom/htc/album/helper/DeleteManager;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[DeleteManager][checkDeleteBurstShot]Can\'t find best shot."

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 653
    :cond_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 654
    .local v5, isContainBestShot:Z
    if-nez v5, :cond_7

    if-le v8, v10, :cond_7

    move v9, v10

    .line 655
    goto :goto_0

    .line 658
    :cond_7
    if-ne v8, v10, :cond_8

    .line 660
    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->checkExpand()Z

    move-result v9

    goto :goto_0

    .line 664
    :cond_8
    invoke-direct {p0, v6, p1}, Lcom/htc/album/helper/DeleteManager;->getNewBurstBestPosition(Lcom/htc/opensense2/album/util/ImageManager$IImageList;Ljava/util/ArrayList;)I

    move-result v7

    .line 665
    .local v7, newBestPos:I
    invoke-virtual {v6, v7}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v4

    .line 666
    .local v4, imageNewBest:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v4, :cond_9

    .line 667
    sget-object v10, Lcom/htc/album/helper/DeleteManager;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[DeleteManager][checkDeleteBurstShot]imageNewBest is null."

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 671
    :cond_9
    invoke-virtual {v1, v4, v9}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->checkSetBestShot(Lcom/htc/opensense2/album/util/ImageManager$IImage;Z)Z

    move-result v9

    goto/16 :goto_0
.end method

.method public deleteAllMedias()V
    .locals 3

    .prologue
    .line 422
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    const v1, 0x120001

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->showFragmentDialog(ILandroid/os/Bundle;)Z

    .line 426
    :cond_0
    return-void
.end method

.method public deleteMedias(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 463
    .local p1, deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 464
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "key_data"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 465
    const v1, 0x120002

    invoke-virtual {p0, v1, v0}, Lcom/htc/album/helper/DeleteManager;->doDelete(ILandroid/os/Bundle;)V

    .line 466
    return-void
.end method

.method public deleteSingleMedia(ILcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 10
    .parameter "position"
    .parameter "image"

    .prologue
    const v9, 0x120003

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 430
    const-string v2, ""

    .line 431
    .local v2, message:Ljava/lang/String;
    move-object v3, p2

    .line 432
    .local v3, selectedImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v3, :cond_1

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isFavorite()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 437
    iget-object v4, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00b2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 446
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 447
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "key_message"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 449
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    const-string v4, "key_data"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 451
    iget-object v4, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    if-eqz v4, :cond_0

    .line 453
    iget-object v4, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    instance-of v4, v4, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    if-eqz v4, :cond_0

    .line 455
    iget-object v4, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    check-cast v4, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    invoke-interface {v4, v9}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->dismissFragmentDialog(I)Z

    .line 456
    iget-object v4, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    check-cast v4, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    invoke-interface {v4, v9, v0}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->showFragmentDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 442
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    iget-object v4, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public doDelete(ILandroid/os/Bundle;)V
    .locals 8
    .parameter "style"
    .parameter "extras"

    .prologue
    const/4 v7, 0x0

    .line 470
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->mCollection:Lcom/htc/album/modules/collection/Collection;

    if-nez v1, :cond_1

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;

    invoke-virtual {v1}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 476
    :cond_2
    const/4 v0, 0x0

    .line 477
    .local v0, deleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;
    packed-switch p1, :pswitch_data_0

    .line 498
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 499
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 501
    :cond_4
    iput-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;

    goto :goto_0

    .line 482
    :pswitch_0
    new-instance v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;

    .end local v0           #deleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;
    iget-object v2, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    iget-object v3, p0, Lcom/htc/album/helper/DeleteManager;->mCollection:Lcom/htc/album/modules/collection/Collection;

    const-string v1, "key_data"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/album/helper/DeleteManager$DeleteTask;-><init>(Lcom/htc/album/helper/DeleteManager;Landroid/app/Fragment;Lcom/htc/album/modules/collection/Collection;Ljava/util/ArrayList;Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;)V

    .line 484
    .restart local v0       #deleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;
    goto :goto_1

    .line 488
    :pswitch_1
    const/4 v6, 0x0

    .line 489
    .local v6, isDeleteFolder:Z
    if-eqz p2, :cond_5

    .line 490
    const-string v1, "key_is_delete_folder"

    invoke-virtual {p2, v1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 491
    :cond_5
    new-instance v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;

    .end local v0           #deleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/htc/album/helper/DeleteManager;->mCollection:Lcom/htc/album/modules/collection/Collection;

    iget-object v3, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/htc/album/helper/DeleteManager$DeleteTask;-><init>(Lcom/htc/album/helper/DeleteManager;Landroid/app/Fragment;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;)V

    .line 492
    .restart local v0       #deleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;
    if-eqz v6, :cond_3

    .line 493
    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->setDeleteFolder()V

    goto :goto_1

    .line 477
    :pswitch_data_0
    .packed-switch 0x120001
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isDeleting()Z
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    const/4 v0, 0x1

    .line 521
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCancelDeleteSingle()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->deleteSingle:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->deleteSingle:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;->onDeleteCancel()V

    .line 151
    :cond_0
    return-void
.end method

.method public onCreateFragmentDialog(ILandroid/os/Bundle;)Z
    .locals 4
    .parameter "id"
    .parameter "extras"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 95
    iget-object v2, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-ne v0, v2, :cond_1

    :cond_0
    move v0, v1

    .line 117
    :goto_0
    return v0

    .line 96
    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 117
    goto :goto_0

    .line 100
    :pswitch_1
    new-instance v1, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;

    invoke-direct {v1, p0, p2, v3}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;-><init>(Lcom/htc/album/helper/DeleteManager;Landroid/os/Bundle;Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V

    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager;->deleteProgress:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;

    .line 101
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->deleteProgress:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;

    iget-object v2, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "DIALOG_DELETE_PROGRESS"

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :pswitch_2
    new-instance v1, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;

    invoke-direct {v1, p0, p2, v3}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;-><init>(Lcom/htc/album/helper/DeleteManager;Landroid/os/Bundle;Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V

    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager;->deleteAll:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;

    .line 107
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->deleteAll:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;

    iget-object v2, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "DIALOG_DELETE_ALL"

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :pswitch_3
    new-instance v1, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;

    invoke-direct {v1, p0, p2, v3}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;-><init>(Lcom/htc/album/helper/DeleteManager;Landroid/os/Bundle;Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V

    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager;->deleteSingle:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;

    .line 113
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->deleteSingle:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;

    iget-object v2, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "DIALOG_DELETE_SINGLE"

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x120000
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onDismissAllFragmentDialog()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    invoke-direct {p0}, Lcom/htc/album/helper/DeleteManager;->onDismissDeleteProgressDialog()V

    .line 143
    invoke-direct {p0}, Lcom/htc/album/helper/DeleteManager;->onDismissDeleteAllDialog()V

    .line 144
    invoke-direct {p0}, Lcom/htc/album/helper/DeleteManager;->onDismissDeleteSingleDialog()V

    goto :goto_0
.end method

.method public onDismissFragmentDialog(I)Z
    .locals 3
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 123
    iget-object v2, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-ne v0, v2, :cond_1

    :cond_0
    move v0, v1

    .line 136
    :goto_0
    return v0

    .line 124
    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 136
    goto :goto_0

    .line 127
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/album/helper/DeleteManager;->onDismissDeleteProgressDialog()V

    goto :goto_0

    .line 130
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/album/helper/DeleteManager;->onDismissDeleteAllDialog()V

    goto :goto_0

    .line 133
    :pswitch_3
    invoke-direct {p0}, Lcom/htc/album/helper/DeleteManager;->onDismissDeleteSingleDialog()V

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x120000
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public release()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 527
    sget-object v1, Lcom/htc/album/helper/DeleteManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[release] Do release now..."

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    invoke-virtual {p0}, Lcom/htc/album/helper/DeleteManager;->cancelDeleteMedias()V

    .line 529
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->deleteProgress:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;

    if-eqz v1, :cond_1

    .line 542
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->deleteProgress:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;

    invoke-virtual {v1}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 543
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->deleteProgress:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;

    invoke-virtual {v1}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    :cond_0
    iput-object v4, p0, Lcom/htc/album/helper/DeleteManager;->deleteProgress:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;

    .line 555
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->deleteAll:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;

    if-eqz v1, :cond_3

    .line 568
    :try_start_1
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->deleteAll:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;

    invoke-virtual {v1}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 569
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->deleteAll:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;

    invoke-virtual {v1}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;->dismiss()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 578
    :cond_2
    iput-object v4, p0, Lcom/htc/album/helper/DeleteManager;->deleteAll:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;

    .line 581
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->deleteSingle:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;

    if-eqz v1, :cond_5

    .line 594
    :try_start_2
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->deleteSingle:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;

    invoke-virtual {v1}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_4

    .line 595
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->deleteSingle:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;

    invoke-virtual {v1}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;->dismiss()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 604
    :cond_4
    iput-object v4, p0, Lcom/htc/album/helper/DeleteManager;->deleteSingle:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;

    .line 608
    :cond_5
    :goto_2
    iput-object v4, p0, Lcom/htc/album/helper/DeleteManager;->mFragment:Landroid/app/Fragment;

    .line 609
    iput-object v4, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    .line 610
    return-void

    .line 546
    :catch_0
    move-exception v0

    .line 548
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    sget-object v1, Lcom/htc/album/helper/DeleteManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DeleteManager][release]: can\'t dismiss dialog."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 552
    iput-object v4, p0, Lcom/htc/album/helper/DeleteManager;->deleteProgress:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iput-object v4, p0, Lcom/htc/album/helper/DeleteManager;->deleteProgress:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;

    throw v1

    .line 572
    :catch_1
    move-exception v0

    .line 574
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_4
    sget-object v1, Lcom/htc/album/helper/DeleteManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DeleteManager][release]: can\'t dismiss dialog."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 578
    iput-object v4, p0, Lcom/htc/album/helper/DeleteManager;->deleteAll:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;

    goto :goto_1

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    iput-object v4, p0, Lcom/htc/album/helper/DeleteManager;->deleteAll:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;

    throw v1

    .line 598
    :catch_2
    move-exception v0

    .line 600
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_5
    sget-object v1, Lcom/htc/album/helper/DeleteManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DeleteManager][release]: can\'t dismiss dialog."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 604
    iput-object v4, p0, Lcom/htc/album/helper/DeleteManager;->deleteSingle:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;

    goto :goto_2

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_2
    move-exception v1

    iput-object v4, p0, Lcom/htc/album/helper/DeleteManager;->deleteSingle:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;

    throw v1
.end method
