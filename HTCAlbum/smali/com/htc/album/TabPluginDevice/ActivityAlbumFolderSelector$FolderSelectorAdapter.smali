.class Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;
.super Landroid/widget/BaseAdapter;
.source "ActivityAlbumFolderSelector.java"

# interfaces
.implements Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DataUpdateNotifier;
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;
.implements Lcom/htc/widget/HtcAbsListView$OnScrollListener;
.implements Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$BitmapDecodeNotifier;
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderSelectorAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;
    }
.end annotation


# instance fields
.field private mDecodeThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;

.field private mDefaultImage:Landroid/graphics/Bitmap;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadingThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;

.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 417
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 411
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    .line 413
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDefaultImage:Landroid/graphics/Bitmap;

    .line 420
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 422
    new-instance v1, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$900(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;-><init>(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DataUpdateNotifier;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mLoadingThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;

    .line 423
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mLoadingThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->start()V

    .line 424
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mLoadingThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->doLoading()V

    .line 426
    invoke-virtual {p1}, Lcom/htc/album/AlbumMain/MainActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getIconDefaultAlbum(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 427
    .local v0, bitmapTemp:Landroid/graphics/Bitmap;
    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->SQR_THUMBNAIL_SIZE:I

    sget v2, Lcom/htc/album/AlbumCommon/LayoutConstants;->SQR_THUMBNAIL_SIZE:I

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->bitmapResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDefaultImage:Landroid/graphics/Bitmap;

    .line 433
    new-instance v1, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;

    invoke-direct {v1, p1, p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;-><init>(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$BitmapDecodeNotifier;)V

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;

    .line 434
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->start()V

    .line 435
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->doPause()V

    .line 436
    return-void
.end method

.method static synthetic access$100(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;)Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mLoadingThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;

    return-object v0
.end method

.method private getListCategoryItem(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/AlbumCollection;
    .locals 1
    .parameter "context"
    .parameter "szCategoryType"

    .prologue
    .line 823
    const/4 v0, 0x0

    .line 824
    .local v0, acCategory:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    return-object v0
.end method

.method private inflateListViewItem(ILcom/htc/album/TabPluginDevice/AlbumCollection;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "acItem"
    .parameter "parent"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 464
    const/4 v1, 0x0

    .line 466
    .local v1, view:Landroid/view/View;
    new-instance v0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;-><init>(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;)V

    .line 467
    .local v0, tag:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030023

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 469
    const v2, 0x7f09004d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, v0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->mViewText:Lcom/htc/widget/HtcListItem2LineText;

    .line 470
    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->mViewText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextVisibility(I)V

    .line 471
    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->mViewText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 473
    const v2, 0x7f09004c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v2, v0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->mViewBackground:Lcom/htc/widget/HtcListItemTileImage;

    .line 474
    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->mViewBackground:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDefaultImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 476
    const v2, 0x7f09004a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v2, v0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->mViewImage:Lcom/htc/widget/HtcListItemTileImage;

    .line 477
    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->mViewImage:Lcom/htc/widget/HtcListItemTileImage;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 479
    const v2, 0x7f09004e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcCheckBox;

    iput-object v2, v0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->mViewChkBx:Lcom/htc/widget/HtcCheckBox;

    .line 480
    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->mViewChkBx:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcCheckBox;->setClickable(Z)V

    .line 481
    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->mViewChkBx:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcCheckBox;->setFocusable(Z)V

    .line 483
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 485
    return-object v1
.end method

.method private insertSeparatorInfo(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 11
    .parameter
    .parameter "szFolderType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, listAlbumCollection:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 722
    const/4 v0, 0x0

    .line 723
    .local v0, acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 724
    .local v3, nCount:I
    const/4 v4, 0x0

    .line 725
    .local v4, nIndex:I
    const/4 v5, -0x1

    .line 726
    .local v5, nIndexFirst:I
    const/4 v6, -0x1

    .line 731
    .local v6, nIndexLast:I
    const/4 v4, 0x0

    :goto_0
    if-le v3, v4, :cond_4

    .line 733
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    check-cast v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .restart local v0       #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    if-nez v0, :cond_1

    .line 731
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 736
    :cond_1
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.htc.HTCAlbum.DUMMY"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 739
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getFolderType()Ljava/lang/String;

    move-result-object v2

    .line 741
    .local v2, folderType:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 744
    const-string v7, "com.htc.HTCAlbum.SMART_DEFAULT"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 746
    const-string v7, "com.htc.HTCAlbum.SMART_DEFAULT"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.htc.HTCAlbum.SNAPBOOTH"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.htc.HTCAlbum.PANORAMA_SHOTS"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.htc.HTCAlbum.BURST_SHOTS"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.htc.HTCAlbum.MY_FAVORITES"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.htc.HTCAlbum.MY_INKS"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.htc.HTCAlbum.ALL_PHOTOS"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.htc.HTCAlbum.ALL_VIDEOS"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.htc.HTCAlbum.ALL_DOWNLOADS"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.htc.HTCAlbum.ALL_3DS"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v2}, Lcom/htc/album/Customizable/CustAlbumCollection;->isCustomerSmartFolder(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 760
    :cond_2
    if-ne v9, v5, :cond_0

    .line 761
    move v5, v4

    goto :goto_1

    .line 765
    :cond_3
    if-eq v9, v5, :cond_0

    if-ne v9, v6, :cond_0

    .line 767
    move v6, v4

    .line 790
    .end local v2           #folderType:Ljava/lang/String;
    :cond_4
    :goto_2
    if-ne v9, v5, :cond_8

    if-ne v9, v6, :cond_8

    .line 819
    :cond_5
    :goto_3
    return-void

    .line 774
    .restart local v2       #folderType:Ljava/lang/String;
    :cond_6
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 776
    if-ne v9, v5, :cond_0

    .line 777
    move v5, v4

    goto/16 :goto_1

    .line 781
    :cond_7
    if-eq v9, v5, :cond_0

    if-ne v9, v6, :cond_0

    .line 783
    move v6, v4

    .line 784
    goto :goto_2

    .line 792
    .end local v2           #folderType:Ljava/lang/String;
    :cond_8
    if-eq v9, v5, :cond_9

    if-ne v9, v6, :cond_9

    .line 793
    move v6, v4

    .line 798
    :cond_9
    const/4 v1, 0x0

    .line 799
    .local v1, bIsEnableDivider:Z
    const-string v7, "com.htc.HTCAlbum.SMART_DEFAULT"

    if-ne v7, p2, :cond_b

    .line 800
    const/4 v1, 0x1

    .line 810
    :cond_a
    :goto_4
    if-ne v10, v1, :cond_5

    .line 812
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    invoke-direct {p0, v7, p2}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->getListCategoryItem(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 814
    invoke-virtual {p1, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 815
    add-int/lit8 v5, v5, 0x1

    .line 816
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 802
    :cond_b
    const-string v7, "com.htc.HTCAlbum.LOCAL_FOLDER"

    if-ne v7, p2, :cond_c

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isSupportPhoneStorageUri()Z

    move-result v7

    if-ne v10, v7, :cond_c

    .line 804
    const/4 v1, 0x1

    goto :goto_4

    .line 806
    :cond_c
    const-string v7, "com.htc.HTCAlbum.PHONE_STORAGE"

    if-ne v7, p2, :cond_a

    .line 807
    const/4 v1, 0x1

    goto :goto_4
.end method

.method private onUpdateCheckBox(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;Lcom/htc/album/TabPluginDevice/AlbumCollection;)V
    .locals 4
    .parameter "tag"
    .parameter "acItem"

    .prologue
    .line 545
    iget-object v1, p1, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->mViewChkBx:Lcom/htc/widget/HtcCheckBox;

    .line 546
    .local v1, viewChkbox:Lcom/htc/widget/HtcCheckBox;
    const-string v2, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {p2}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getFolderType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 547
    .local v0, isCameraShots:Z
    if-nez v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcCheckBox;->setEnabled(Z)V

    .line 548
    invoke-virtual {p2}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->isVisible()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 549
    return-void

    .line 547
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private onUpdateImage(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;Landroid/graphics/Bitmap;Z)V
    .locals 5
    .parameter "tag"
    .parameter "bitmap"
    .parameter "bForce"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 552
    iget-object v0, p1, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->mViewBackground:Lcom/htc/widget/HtcListItemTileImage;

    .line 553
    .local v0, imgBackground:Lcom/htc/widget/HtcListItemTileImage;
    iget-object v1, p1, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->mViewImage:Lcom/htc/widget/HtcListItemTileImage;

    .line 555
    .local v1, imgView:Lcom/htc/widget/HtcListItemTileImage;
    if-eqz p2, :cond_2

    .line 557
    if-nez p3, :cond_0

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mLastScrollState:I
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$300(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)I

    move-result v2

    if-nez v2, :cond_1

    .line 559
    :cond_0
    invoke-virtual {v1, p2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 560
    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 561
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 569
    :cond_1
    :goto_0
    return-void

    .line 566
    :cond_2
    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 567
    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    goto :goto_0
.end method

.method private setDisplaySeparatorInfo(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 712
    .local p1, listAlbumCollection:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    const/4 v0, 0x0

    .line 713
    .local v0, acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 715
    .local v1, nCount:I
    const-string v2, "com.htc.HTCAlbum.SMART_DEFAULT"

    invoke-direct {p0, p1, v2}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->insertSeparatorInfo(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 716
    const-string v2, "com.htc.HTCAlbum.PHONE_STORAGE"

    invoke-direct {p0, p1, v2}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->insertSeparatorInfo(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 717
    const-string v2, "com.htc.HTCAlbum.LOCAL_FOLDER"

    invoke-direct {p0, p1, v2}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->insertSeparatorInfo(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 718
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDeSelectedItem()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 690
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 692
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 707
    :cond_0
    return-object v3

    .line 696
    :cond_1
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 697
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 699
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 701
    .local v0, acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->isVisible()Z

    move-result v4

    if-nez v4, :cond_2

    .line 703
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 697
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 454
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 459
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .locals 1
    .parameter "section"

    .prologue
    .line 867
    const/4 v0, 0x0

    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 872
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 877
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " "

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "pos"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 496
    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, p1, :cond_1

    :cond_0
    const/4 v3, 0x0

    .line 538
    :goto_0
    return-object v3

    .line 498
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 504
    .local v0, acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    if-nez p2, :cond_2

    .line 505
    invoke-direct {p0, p1, v0, p3}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->inflateListViewItem(ILcom/htc/album/TabPluginDevice/AlbumCollection;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 507
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;

    .line 510
    .local v1, tag:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;
    iget v3, v1, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->mIndex:I

    if-eq v3, p1, :cond_3

    .line 512
    iput p1, v1, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->mIndex:I

    .line 513
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->mText:Ljava/lang/String;

    .line 514
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->isVisible()Z

    move-result v3

    iput-boolean v3, v1, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->mIsVisible:Z

    .line 515
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getDegreesRotated()I

    move-result v3

    int-to-float v3, v3

    iput v3, v1, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->mRotation:F

    .line 519
    iget-object v2, v1, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->mViewText:Lcom/htc/widget/HtcListItem2LineText;

    .line 520
    .local v2, txtView:Lcom/htc/widget/HtcListItem2LineText;
    iget-object v3, v1, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->mText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 525
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;

    invoke-virtual {v3, p1, v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->pull(ILcom/htc/album/TabPluginDevice/AlbumCollection;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v1, v3, v4}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->onUpdateImage(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;Landroid/graphics/Bitmap;Z)V

    .line 526
    invoke-direct {p0, v1, v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->onUpdateCheckBox(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;Lcom/htc/album/TabPluginDevice/AlbumCollection;)V

    .end local v2           #txtView:Lcom/htc/widget/HtcListItem2LineText;
    :goto_1
    move-object v3, p2

    .line 538
    goto :goto_0

    .line 534
    :cond_3
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;

    invoke-virtual {v3, p1, v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->pull(ILcom/htc/album/TabPluginDevice/AlbumCollection;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v1, v3, v4}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->onUpdateImage(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;Landroid/graphics/Bitmap;Z)V

    .line 535
    invoke-direct {p0, v1, v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->onUpdateCheckBox(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;Lcom/htc/album/TabPluginDevice/AlbumCollection;)V

    goto :goto_1
.end method

.method public isDeselectAll()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 662
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 676
    :goto_0
    return v4

    .line 663
    :cond_0
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 664
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 666
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 667
    .local v0, acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    const-string v6, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getFolderType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 668
    .local v3, isCameraShots:Z
    if-eqz v3, :cond_2

    .line 664
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 671
    :cond_2
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->isVisible()Z

    move-result v6

    if-ne v5, v6, :cond_1

    goto :goto_0

    .end local v0           #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    .end local v3           #isCameraShots:Z
    :cond_3
    move v4, v5

    .line 676
    goto :goto_0
.end method

.method public isSelectAll()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 646
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 657
    :cond_0
    :goto_0
    return v3

    .line 647
    :cond_1
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 648
    .local v1, count:I
    const/4 v0, 0x0

    .line 649
    .local v0, acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 651
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    check-cast v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 652
    .restart local v0       #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 649
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 657
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public notifyDecodeReady(I)V
    .locals 2
    .parameter "nIndex"

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->notifyDataSetChanged()V

    .line 490
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    const/4 v1, 0x0

    #setter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mNotifyUpdateflag:Z
    invoke-static {v0, v1}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$202(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;Z)Z

    .line 492
    return-void
.end method

.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const/4 v3, 0x1

    .line 606
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 623
    :cond_0
    :goto_0
    return-void

    .line 608
    :cond_1
    invoke-virtual {p0, p3}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 609
    .local v0, acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    if-eqz v0, :cond_0

    .line 611
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->toggleVisibility()V

    .line 613
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;

    iget-object v1, v2, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->mViewChkBx:Lcom/htc/widget/HtcCheckBox;

    .line 614
    .local v1, viewChkbox:Lcom/htc/widget/HtcCheckBox;
    if-eqz v1, :cond_0

    .line 616
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->isVisible()Z

    move-result v2

    if-ne v3, v2, :cond_2

    .line 617
    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_0

    .line 620
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public onNotifyUpdateComplete(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 590
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->notifyDataSetChanged()V

    .line 592
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 594
    if-nez p1, :cond_0

    .line 595
    new-instance p1, Ljava/util/ArrayList;

    .end local p1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 596
    .restart local p1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 598
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 599
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->doClear()V

    .line 600
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->doResume()V

    .line 601
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->invalidateOptionsMenu()V

    .line 602
    return-void
.end method

.method public onReady(ILandroid/graphics/Bitmap;)V
    .locals 2
    .parameter "position"
    .parameter "bitmap"

    .prologue
    .line 682
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$900(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 683
    .local v0, m:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 684
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 685
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$900(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 686
    return-void
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 3
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 859
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;

    sget v1, Lcom/htc/opensense2/album/cache/CacheManager;->PREV_LISTVIEW_VISIBLE_RANGE:I

    sub-int v1, p2, v1

    sget v2, Lcom/htc/opensense2/album/cache/CacheManager;->NEXT_LISTVIEW_VISIBLE_RANGE:I

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->setVisibleRange(II)V

    .line 863
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 855
    return-void
.end method

.method public pauseBackgroundActivities()V
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->doPause()V

    .line 441
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->doStop()V

    .line 572
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->doClear()V

    .line 573
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDefaultImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDefaultImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 575
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDefaultImage:Landroid/graphics/Bitmap;

    .line 577
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mLoadingThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->doStop()V

    .line 579
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 580
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->doPause()V

    .line 584
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mLoadingThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->doLoading()V

    .line 586
    return-void
.end method

.method public resumeBackgroundActivities()V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->doResume()V

    .line 446
    :cond_0
    return-void
.end method

.method public setAllItemSelection(Z)V
    .locals 7
    .parameter "isSelected"

    .prologue
    .line 626
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 643
    :goto_0
    return-void

    .line 628
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->getCount()I

    move-result v1

    .line 629
    .local v1, count:I
    const/4 v5, 0x1

    if-ne p1, v5, :cond_1

    const/4 v4, 0x0

    .line 630
    .local v4, visible:I
    :goto_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v1, :cond_3

    .line 632
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 636
    .local v0, acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    const-string v5, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getFolderType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 637
    .local v3, isCameraShots:Z
    if-eqz v3, :cond_2

    .line 630
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 629
    .end local v0           #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    .end local v2           #i:I
    .end local v3           #isCameraShots:Z
    .end local v4           #visible:I
    :cond_1
    const/4 v4, 0x4

    goto :goto_1

    .line 639
    .restart local v0       #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    .restart local v2       #i:I
    .restart local v3       #isCameraShots:Z
    .restart local v4       #visible:I
    :cond_2
    invoke-virtual {v0, v4}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->setVisibility(I)V

    goto :goto_3

    .line 642
    .end local v0           #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    .end local v3           #isCameraShots:Z
    :cond_3
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mFolderSelectorAdapter:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$000(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
