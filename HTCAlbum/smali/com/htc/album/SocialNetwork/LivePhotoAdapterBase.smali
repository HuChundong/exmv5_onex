.class public abstract Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;
.super Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;
.source "LivePhotoAdapterBase.java"

# interfaces
.implements Lcom/htc/sunnyCore/IMediaList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final MAX_DOWNLOAD_BUFFER_FULL:I = 0x3

.field public static final MAX_DOWNLOAD_BUFFER_GRID_2PANEL_L:I = 0x1c

.field public static final MAX_DOWNLOAD_BUFFER_GRID_2PANEL_P:I = 0x1c

.field public static final MAX_DOWNLOAD_BUFFER_GRID_FULL:I = 0x1c


# instance fields
.field private mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

.field private mBundle:Landroid/os/Bundle;

.field protected mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

.field protected mFocusItem:I

.field private mIsFilmstripViewMode:Z

.field private mIsFilmstripViewSwitch:Z

.field private mIsFilterVideos:Z

.field private mIsGenuine:Z

.field private mIsInternal:Z

.field protected mIsLatest:Z

.field protected mLastErrorState:I

.field private mListRecycable:Z

.field protected mPhotoDetailCount:I

.field protected mPhotoDetailIndex:I

.field protected mPhotoDetailIndexNext:I

.field private mTemplateID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 5
    .parameter "actParent"
    .parameter "handlerUI"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 97
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;-><init>(Landroid/app/Activity;)V

    .line 40
    iput v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mLastErrorState:I

    .line 41
    iput-boolean v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsGenuine:Z

    .line 42
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsLatest:Z

    .line 43
    iput v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mTemplateID:I

    .line 44
    new-instance v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;-><init>(Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    .line 45
    iput-object v4, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    .line 46
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsInternal:Z

    .line 47
    iput v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mFocusItem:I

    .line 48
    iput-object v4, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBundle:Landroid/os/Bundle;

    .line 49
    iput v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndexNext:I

    .line 50
    iput v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndex:I

    .line 51
    iput v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailCount:I

    .line 52
    iput-boolean v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mListRecycable:Z

    .line 53
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsFilterVideos:Z

    .line 54
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsFilmstripViewMode:Z

    .line 55
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsFilmstripViewSwitch:Z

    .line 98
    invoke-virtual {p0, p2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->setUIHandler(Landroid/os/Handler;)V

    .line 99
    return-void
.end method


# virtual methods
.method public decoderStart()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public decoderStop()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public deocderResumePause(Z)V
    .locals 0
    .parameter "bIsResume"

    .prologue
    .line 90
    return-void
.end method

.method public disableListRecycle()V
    .locals 1

    .prologue
    .line 1225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mListRecycable:Z

    .line 1226
    return-void
.end method

.method protected doUpdateFocusedItem()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1198
    const/4 v0, 0x0

    .line 1199
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    const/4 v2, 0x0

    .line 1200
    .local v2, szMediumId:Ljava/lang/String;
    const/4 v3, -0x1

    iput v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mFocusItem:I

    .line 1201
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mMediumIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1218
    :cond_0
    :goto_0
    return-void

    .line 1204
    :cond_1
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mMediumIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #szMediumId:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2       #szMediumId:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1207
    iput v4, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mFocusItem:I

    .line 1208
    const/4 v1, 0x0

    .local v1, nIndex:I
    :goto_1
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_3

    .line 1210
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .line 1211
    .restart local v0       #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1208
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1214
    :cond_2
    iput v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mFocusItem:I

    .line 1217
    :cond_3
    sget-object v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][LivePhotoAdapterBase][doUpdateFocusedItem]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mFocusItem:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public filterVideos(Z)V
    .locals 0
    .parameter "bIsFilter"

    .prologue
    .line 1230
    iput-boolean p1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsFilterVideos:Z

    .line 1231
    return-void
.end method

.method public getCachedBitmap(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "nPos"
    .parameter "aPhoto"

    .prologue
    .line 445
    const/4 v0, 0x0

    .line 446
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getLayoutType()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getBitmapCache(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 450
    return-object v0
.end method

.method public getDataPlugin()Lcom/htc/opensense/album/plugin/BaseListPlugin;
    .locals 1

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    return-object v0
.end method

.method public getFocusedItem()I
    .locals 1

    .prologue
    .line 1221
    iget v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mFocusItem:I

    return v0
.end method

.method public getImageProvider()Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    return-object v0
.end method

.method public getIndexRange(I)V
    .locals 5
    .parameter "nIndexTrigger"

    .prologue
    .line 611
    const/4 v1, 0x0

    .line 612
    .local v1, nIndexBegin:I
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getCount()I

    move-result v0

    .line 614
    .local v0, nCount:I
    const/4 v3, -0x1

    if-ne v3, p1, :cond_4

    .line 615
    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mFirstVisibleIndex:I

    .line 619
    :goto_0
    iget v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mLastVisibleIndex:I

    .line 620
    .local v2, nIndexEnd:I
    if-gtz v2, :cond_0

    .line 621
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getMaxDownloadBuffer()I

    move-result v3

    add-int v2, v1, v3

    .line 623
    :cond_0
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getLayoutType()I

    move-result v4

    if-ne v3, v4, :cond_5

    .line 625
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    iput v1, v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexBegin:I

    .line 626
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    iput v2, v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexEnd:I

    .line 642
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    iget v3, v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexBegin:I

    if-gez v3, :cond_2

    .line 643
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    const/4 v4, 0x0

    iput v4, v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexBegin:I

    .line 645
    :cond_2
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    iget v3, v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexEnd:I

    if-gt v0, v3, :cond_3

    .line 646
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    iput v0, v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexEnd:I

    .line 650
    :cond_3
    return-void

    .line 617
    .end local v2           #nIndexEnd:I
    :cond_4
    move v1, p1

    goto :goto_0

    .line 628
    .restart local v2       #nIndexEnd:I
    :cond_5
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getLayoutType()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 630
    iget-boolean v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsFilmstripViewMode:Z

    if-eqz v3, :cond_6

    .line 632
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    add-int/lit8 v4, v1, -0x3

    iput v4, v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexBegin:I

    .line 633
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    add-int/lit8 v4, v1, 0x3

    iput v4, v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexEnd:I

    goto :goto_1

    .line 637
    :cond_6
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    add-int/lit8 v4, v1, -0x1

    iput v4, v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexBegin:I

    .line 638
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    add-int/lit8 v4, v1, 0x1

    iput v4, v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexEnd:I

    goto :goto_1
.end method

.method public getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    .locals 1
    .parameter "pos"

    .prologue
    .line 1153
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Lcom/htc/sunnyCore/IMediaData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    return-object v0
.end method

.method public getMediaCount()I
    .locals 1

    .prologue
    .line 1147
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getCount()I

    move-result v0

    .line 1149
    .local v0, nCount:I
    return v0
.end method

.method public getScrollState()I
    .locals 1

    .prologue
    .line 568
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIScrollState:I

    return v0
.end method

.method public getSourceInfo()Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1124
    const/4 v0, 0x0

    .line 1126
    .local v0, anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    const/4 v2, 0x0

    .line 1128
    .local v2, wrapperAlbums:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;>;"
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedAlbumList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1132
    :cond_0
    const/16 v3, 0x2730

    invoke-virtual {p0, v3, v5, v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 1133
    const/16 v3, 0x4e22

    invoke-virtual {p0, v3, v5, v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onDataUpdateNotify(ILjava/lang/Object;I)V

    move-object v1, v0

    .line 1142
    .end local v0           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .local v1, anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    :goto_0
    return-object v1

    .line 1138
    .end local v1           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .restart local v0       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    :cond_1
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .restart local v0       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    move-object v1, v0

    .line 1142
    .end local v0           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .restart local v1       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    goto :goto_0
.end method

.method public getSourceName(Z)Ljava/lang/String;
    .locals 4
    .parameter "bEnableCount"

    .prologue
    .line 1101
    const-string v1, ""

    .line 1103
    .local v1, szText:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1105
    :cond_0
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1107
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .line 1108
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getFolderName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumName:Ljava/lang/String;

    .line 1112
    .end local v0           #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :cond_1
    const/4 v2, 0x1

    if-ne v2, p1, :cond_2

    .line 1113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1119
    :goto_0
    return-object v1

    .line 1115
    :cond_2
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v1, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUIState()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIState:I

    return v0
.end method

.method public isGeunine()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsGenuine:Z

    return v0
.end method

.method public mergeMediaItem(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 1158
    return-void
.end method

.method public notifyUpdateDataPlugin()V
    .locals 2

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-nez v0, :cond_1

    .line 1191
    :cond_0
    :goto_0
    return-void

    .line 1188
    :cond_1
    sget-object v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][LivePhotoAdapterBase][notifyUpdateDataPlugin] InitConnection "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitConnection(Lcom/htc/opensense/album/plugin/BaseListPlugin;)Z

    goto :goto_0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->onCreate()V

    .line 119
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 152
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->onDestroy()V

    .line 153
    return-void
.end method

.method public onErrorAlbumInfo()V
    .locals 3

    .prologue
    .line 911
    const/16 v0, 0x2764

    iput v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mLastErrorState:I

    .line 912
    const/16 v0, 0x2728

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 914
    return-void
.end method

.method public onErrorConnection()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 901
    const/16 v0, 0x274c

    iput v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mLastErrorState:I

    .line 902
    const/16 v0, 0x2761

    invoke-virtual {p0, v0, v2, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 903
    const/16 v0, 0x2728

    invoke-virtual {p0, v0, v2, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 904
    const/16 v0, 0x4e96

    invoke-virtual {p0, v0, v2, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 906
    return-void
.end method

.method public onErrorNoList()V
    .locals 4

    .prologue
    const/16 v3, 0x2761

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 919
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 920
    iput v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mLastErrorState:I

    .line 921
    invoke-virtual {p0, v3, v2, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 922
    const/16 v0, 0x2728

    invoke-virtual {p0, v0, v2, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 923
    const/16 v0, 0x4e96

    invoke-virtual {p0, v0, v2, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 925
    return-void
.end method

.method public onMessageHandler(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 936
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->isDestroyingAdapter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 983
    :goto_0
    :sswitch_0
    return-void

    .line 939
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 980
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->onMessageHandler(Landroid/os/Message;)V

    goto :goto_0

    .line 942
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onRequestAlbumInfo()V

    goto :goto_0

    .line 945
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onRequestPhotoList(Landroid/os/Message;)V

    goto :goto_0

    .line 948
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onRequestDataUpdate(Landroid/os/Message;)V

    goto :goto_0

    .line 953
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onSyncConnection()V

    goto :goto_0

    .line 956
    :sswitch_5
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onSyncAlbumInfo()V

    goto :goto_0

    .line 960
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 962
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsLatest:Z

    .line 964
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onSyncListComplete()V

    goto :goto_0

    .line 968
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onSyncPhotoComplete(Landroid/os/Message;)V

    goto :goto_0

    .line 971
    :sswitch_8
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onErrorConnection()V

    goto :goto_0

    .line 974
    :sswitch_9
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onErrorAlbumInfo()V

    goto :goto_0

    .line 977
    :sswitch_a
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onErrorNoList()V

    goto :goto_0

    .line 939
    :sswitch_data_0
    .sparse-switch
        0x274c -> :sswitch_8
        0x2761 -> :sswitch_a
        0x2764 -> :sswitch_9
        0x4e22 -> :sswitch_1
        0x4e25 -> :sswitch_2
        0x4e28 -> :sswitch_3
        0x4e3d -> :sswitch_0
        0x4e84 -> :sswitch_4
        0x4e87 -> :sswitch_5
        0x4e88 -> :sswitch_6
        0x4e89 -> :sswitch_7
    .end sparse-switch
.end method

.method public onNotifyDataSetChange()V
    .locals 0

    .prologue
    .line 932
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->notifyDataSetChanged()V

    .line 933
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 145
    sget-object v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][LivePhotoAdapterBase][onPause]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->onPause()V

    .line 147
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->onPause()V

    .line 148
    return-void
.end method

.method public onRelease()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->releaseMemoryCache()V

    .line 159
    :cond_0
    return-void
.end method

.method public onRequestAlbumInfo()V
    .locals 4

    .prologue
    .line 337
    const/16 v2, 0x4eee

    iget v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIState:I

    if-ne v2, v3, :cond_1

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v2, :cond_0

    .line 343
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 345
    .local v1, szIds:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, nIndex:I
    :goto_1
    array-length v2, v1

    if-le v2, v0, :cond_2

    .line 347
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v1, v0

    .line 345
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 351
    :cond_2
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getAlbumOp([Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onRequestDataUpdate(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/16 v5, 0x4e25

    const/16 v4, 0x2724

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 287
    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIState:I

    if-ne v0, v1, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    iget v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mLastErrorState:I

    sparse-switch v0, :sswitch_data_0

    .line 324
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v5, v0, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 326
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-nez v0, :cond_0

    .line 328
    invoke-virtual {p0, v4, v3, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 294
    :sswitch_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v0, :cond_2

    .line 296
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitConnection(Lcom/htc/opensense/album/plugin/BaseListPlugin;)Z

    goto :goto_0

    .line 300
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitConnection(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {p0, v4, v3, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 313
    :sswitch_1
    const/16 v0, 0x4e22

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 314
    invoke-virtual {p0, v4, v3, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 319
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v5, v0, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 320
    invoke-virtual {p0, v4, v3, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 290
    :sswitch_data_0
    .sparse-switch
        0x274c -> :sswitch_0
        0x2761 -> :sswitch_2
        0x2764 -> :sswitch_1
    .end sparse-switch
.end method

.method public onRequestPhoto(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "context"
    .parameter "nPos"
    .parameter "aPhoto"

    .prologue
    .line 429
    const/4 v6, 0x0

    .line 430
    .local v6, bIsCacheExit:Z
    const/4 v7, 0x0

    .line 432
    .local v7, bitmap:Landroid/graphics/Bitmap;
    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIState:I

    if-ne v0, v1, :cond_0

    move-object v8, v7

    .line 441
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .local v8, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v8

    .line 435
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-nez v0, :cond_1

    move-object v8, v7

    .line 436
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 439
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    const/4 v4, 0x0

    iget v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mFirstVisibleIndex:I

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageBitmap2(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 440
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onSyncDownloadStatus(I)V

    move-object v8, v7

    .line 441
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public onRequestPhotoIntegrity(I)I
    .locals 5
    .parameter "nPos"

    .prologue
    .line 412
    const/4 v1, -0x1

    .line 413
    .local v1, nIntegrity:I
    const/16 v3, 0x4eee

    iget v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIState:I

    if-ne v3, v4, :cond_0

    move v2, v1

    .line 425
    .end local v1           #nIntegrity:I
    .local v2, nIntegrity:I
    :goto_0
    return v2

    .line 416
    .end local v2           #nIntegrity:I
    .restart local v1       #nIntegrity:I
    :cond_0
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-nez v3, :cond_1

    move v2, v1

    .line 417
    .end local v1           #nIntegrity:I
    .restart local v2       #nIntegrity:I
    goto :goto_0

    .line 419
    .end local v2           #nIntegrity:I
    .restart local v1       #nIntegrity:I
    :cond_1
    const/4 v0, 0x0

    .line 420
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    if-nez v0, :cond_2

    move v2, v1

    .line 421
    .end local v1           #nIntegrity:I
    .restart local v2       #nIntegrity:I
    goto :goto_0

    .line 423
    .end local v2           #nIntegrity:I
    .restart local v1       #nIntegrity:I
    :cond_2
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v3, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageIntegrity(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;)I

    move-result v1

    move v2, v1

    .line 425
    .end local v1           #nIntegrity:I
    .restart local v2       #nIntegrity:I
    goto :goto_0
.end method

.method public onRequestPhotoList(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 356
    sget-object v2, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][LivePhotoAdapterBase][onRequestPhotoList]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const/16 v2, 0x4eee

    iget v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIState:I

    if-ne v2, v3, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v2, :cond_0

    .line 367
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ".ruplist"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ".ruvlist"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ".pomlist"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 372
    const/4 v0, 0x0

    .line 373
    .local v0, nMediumType:I
    const/4 v1, 0x0

    .line 374
    .local v1, szMediumId:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mMediumIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 375
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mMediumIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #szMediumId:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 376
    .restart local v1       #szMediumId:Ljava/lang/String;
    :cond_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v6, v2, :cond_3

    .line 377
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2, v1, v5, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getPhotoList(Ljava/lang/String;Ljava/lang/String;ZI)Z

    goto :goto_0

    .line 379
    :cond_3
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2, v1, v6, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getPhotoList(Ljava/lang/String;Ljava/lang/String;ZI)Z

    goto :goto_0

    .line 381
    .end local v0           #nMediumType:I
    .end local v1           #szMediumId:Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ".pomlist"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 383
    const/4 v0, 0x0

    .line 384
    .restart local v0       #nMediumType:I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v6, v2, :cond_5

    .line 386
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2, v5, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getPhotosOfMeList(Ljava/lang/String;ZI)Z

    goto/16 :goto_0

    .line 390
    :cond_5
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2, v6, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getPhotosOfMeList(Ljava/lang/String;ZI)Z

    goto/16 :goto_0

    .line 396
    .end local v0           #nMediumType:I
    :cond_6
    const/4 v0, 0x0

    .line 397
    .restart local v0       #nMediumType:I
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ".ruvlist"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 398
    const/4 v0, 0x1

    .line 400
    :cond_7
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v6, v2, :cond_8

    .line 402
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2, v5, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getRecentPhotoList(Ljava/lang/String;ZI)Z

    goto/16 :goto_0

    .line 406
    :cond_8
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2, v6, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getRecentPhotoList(Ljava/lang/String;ZI)Z

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 122
    sget-object v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][LivePhotoAdapterBase][onResume]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->onResume()V

    .line 125
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->syncBackgroundService(Ljava/lang/String;Landroid/os/Handler;)V

    .line 130
    const/16 v0, 0x4eec

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIState:I

    if-ne v0, v1, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->triggerListRefresh()V

    .line 133
    :cond_0
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->onResume()V

    .line 134
    return-void
.end method

.method public onSyncAlbumInfo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 484
    const/16 v0, 0x2731

    invoke-virtual {p0, v0, v2, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 485
    const/16 v0, 0x4e87

    invoke-virtual {p0, v0, v2, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 486
    return-void
.end method

.method public onSyncConnection()V
    .locals 5

    .prologue
    const/16 v4, 0x4e25

    const/4 v3, 0x0

    .line 458
    sget-object v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][LivePhotoAdapterBase][onSyncConnection]: "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getItemRequest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 461
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v1, :cond_1

    .line 463
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v1}, Lcom/htc/opensense/album/plugin/BaseListPlugin;->onEnableCacheList()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    iput-boolean v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsLatest:Z

    .line 471
    :goto_0
    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsLatest:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v4, v1, v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 472
    const-string v1, "photo_detail_index"

    iget v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 473
    const/16 v1, 0x4e35

    invoke-virtual {p0, v1, v0, v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 480
    :goto_1
    return-void

    .line 469
    :cond_0
    const-string v1, "from_outside"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsLatest:Z

    goto :goto_0

    .line 477
    :cond_1
    const-string v1, "from_outside"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsLatest:Z

    .line 478
    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsLatest:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v4, v1, v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_1
.end method

.method public onSyncDownloadStatus(I)V
    .locals 2
    .parameter "nTimeOut"

    .prologue
    .line 454
    const/16 v0, 0x4e96

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 455
    return-void
.end method

.method public onSyncListComplete()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x4f4d

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 490
    sget-object v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][LivePhotoAdapterBase][onSyncListComplete]: Begin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIScrollState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const/16 v1, 0x4eec

    iget v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIState:I

    if-gt v1, v2, :cond_0

    .line 523
    :goto_0
    return-void

    .line 494
    :cond_0
    const/4 v0, 0x0

    .line 495
    .local v0, isListSizeChanged:Z
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedPhotoList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->syncListItem(Ljava/lang/Object;)Z

    move-result v0

    .line 497
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setAdapterList(Ljava/util/List;)V

    .line 498
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->doUpdateFocusedItem()V

    .line 500
    const/16 v1, 0x4e88

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 501
    const/16 v1, 0x2728

    invoke-virtual {p0, v1, v7, v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 503
    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsLatest:Z

    if-nez v1, :cond_3

    .line 505
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v1}, Lcom/htc/opensense/album/plugin/BaseListPlugin;->onEnableCacheList()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 506
    :cond_1
    const/16 v1, 0x4e25

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 507
    :cond_2
    iput-boolean v5, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsLatest:Z

    .line 510
    :cond_3
    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIScrollState:I

    if-ne v6, v1, :cond_4

    .line 512
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setScrollState(I)V

    .line 513
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onVerifyImageStatus(I)V

    .line 519
    :cond_4
    const/16 v1, 0x4e47

    const/16 v2, 0xbb8

    invoke-virtual {p0, v1, v7, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 522
    sget-object v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][LivePhotoAdapterBase][onSyncListComplete]: End"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSyncPhotoComplete(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 527
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-nez v4, :cond_1

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 530
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 531
    .local v1, bundleNotify:Landroid/os/Bundle;
    const-string v4, "index_id"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 532
    .local v3, nIndex:I
    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    .line 534
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-eqz v0, :cond_0

    .line 537
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v4, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageCache(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-result-object v2

    .line 538
    .local v2, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-eqz v2, :cond_0

    .line 543
    iget v4, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-nez v4, :cond_5

    .line 545
    iget-object v4, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setPhotoThumbnailFilePath(Landroid/net/Uri;)V

    .line 547
    iget v4, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    if-nez v4, :cond_2

    const/16 v4, 0x4e45

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 549
    :cond_2
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getLayoutType()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    .line 550
    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onVerifyImageStatus(I)V

    .line 560
    :cond_3
    :goto_1
    iget-boolean v4, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsModified:Z

    if-ne v7, v4, :cond_0

    .line 562
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v4, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->triggerNotifyImageDownloaded(I)V

    .line 563
    iput-boolean v6, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsModified:Z

    goto :goto_0

    .line 552
    :cond_4
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onVerifyImageStatus(I)V

    goto :goto_1

    .line 554
    :cond_5
    iget v4, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-ne v7, v4, :cond_3

    .line 556
    iget-object v4, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setPhotoFilePath(Landroid/net/Uri;)V

    goto :goto_1
.end method

.method public onTriggerDownloadRequest(I)V
    .locals 3
    .parameter "nIndex"

    .prologue
    .line 890
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-nez v1, :cond_1

    .line 897
    :cond_0
    :goto_0
    return-void

    .line 893
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    .line 894
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-eqz v0, :cond_0

    .line 895
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v1, p1, v0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->forwardDownloadRequest(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public onVerifyFullstripItemStatus(I)V
    .locals 11
    .parameter "nIndexItem"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 773
    const/4 v8, -0x1

    .line 774
    .local v8, nIntegrity:I
    const/4 v2, 0x0

    .line 775
    .local v2, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    const/4 v6, 0x0

    .line 776
    .local v6, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getCount()I

    move-result v7

    .line 780
    .local v7, nCount:I
    move v1, p1

    .line 782
    .local v1, nIndex:I
    const/4 v0, -0x1

    if-ne v0, v1, :cond_7

    .line 784
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    iget v1, v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexBegin:I

    :goto_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    iget v0, v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexEnd:I

    if-lt v0, v1, :cond_0

    .line 787
    if-gt v7, v1, :cond_1

    .line 887
    :cond_0
    :goto_1
    return-void

    .line 793
    :cond_1
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v2

    if-nez v2, :cond_3

    .line 784
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 796
    :cond_3
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mHandlerData:Landroid/os/Handler;

    iget-object v4, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    iget v4, v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexBegin:I

    iget-object v5, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    iget v5, v5, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexEnd:I

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->forwardDownloadRequest(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;II)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-result-object v6

    .line 798
    if-eqz v6, :cond_2

    .line 802
    iget v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-nez v0, :cond_5

    .line 805
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrlThumbnail()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 806
    iget-object v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setPhotoThumbnailFilePath(Landroid/net/Uri;)V

    .line 810
    :goto_3
    iget-boolean v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsModified:Z

    if-ne v9, v0, :cond_2

    .line 812
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->triggerNotifyImageDownloaded(I)V

    .line 813
    iput-boolean v10, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsModified:Z

    goto :goto_2

    .line 808
    :cond_4
    iget-object v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setPhotoThumbnailFilePath(Landroid/net/Uri;)V

    goto :goto_3

    .line 816
    :cond_5
    iget v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-ne v9, v0, :cond_2

    .line 819
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 820
    iget-object v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setPhotoFilePath(Landroid/net/Uri;)V

    .line 824
    :goto_4
    iget-boolean v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsModified:Z

    if-ne v9, v0, :cond_2

    .line 826
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->triggerNotifyImageDownloaded(I)V

    .line 827
    iput-boolean v10, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsModified:Z

    goto :goto_2

    .line 822
    :cond_6
    iget-object v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setPhotoFilePath(Landroid/net/Uri;)V

    goto :goto_4

    .line 839
    :cond_7
    iget-boolean v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsFilmstripViewMode:Z

    if-nez v0, :cond_0

    .line 842
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 845
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->forwardDownloadRequestSingle(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-result-object v6

    .line 847
    if-eqz v6, :cond_0

    .line 849
    iget v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-eq v0, v9, :cond_0

    .line 851
    iget v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-nez v0, :cond_9

    .line 854
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v0, :cond_8

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrlThumbnail()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    .line 855
    iget-object v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setPhotoThumbnailFilePath(Landroid/net/Uri;)V

    .line 859
    :goto_5
    iget-boolean v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsModified:Z

    if-ne v9, v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->triggerNotifyImageDownloaded(I)V

    .line 862
    iput-boolean v10, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsModified:Z

    goto/16 :goto_1

    .line 857
    :cond_8
    iget-object v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setPhotoThumbnailFilePath(Landroid/net/Uri;)V

    goto :goto_5

    .line 865
    :cond_9
    iget v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-ne v9, v0, :cond_b

    .line 868
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v0, :cond_a

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    .line 869
    iget-object v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setPhotoFilePath(Landroid/net/Uri;)V

    .line 873
    :goto_6
    iget-boolean v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsModified:Z

    if-ne v9, v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->triggerNotifyImageDownloaded(I)V

    .line 876
    iput-boolean v10, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsModified:Z

    goto/16 :goto_1

    .line 871
    :cond_a
    iget-object v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setPhotoFilePath(Landroid/net/Uri;)V

    goto :goto_6

    .line 881
    :cond_b
    sget-object v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][LivePhotoAdapterBase][onVerifyFullstripItemStatus]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onVerifyGridItemStatus(I)V
    .locals 10
    .parameter "nIndexItem"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 669
    const/4 v7, -0x1

    .line 670
    .local v7, nIntegrity:I
    const/4 v2, 0x0

    .line 671
    .local v2, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    const/4 v6, 0x0

    .line 675
    .local v6, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    move v1, p1

    .line 680
    .local v1, nIndex:I
    const/4 v0, -0x1

    if-ne v0, v1, :cond_5

    .line 682
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    iget v1, v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexBegin:I

    :goto_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    iget v0, v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexEnd:I

    if-lt v0, v1, :cond_6

    .line 685
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v2

    if-nez v2, :cond_1

    .line 682
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 688
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mHandlerData:Landroid/os/Handler;

    iget-object v4, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    iget v4, v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexBegin:I

    iget-object v5, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    iget v5, v5, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexEnd:I

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->forwardDownloadRequest(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;II)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-result-object v6

    .line 689
    if-eqz v6, :cond_0

    .line 691
    iget v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-nez v0, :cond_3

    .line 693
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrlThumbnail()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 696
    iget-object v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setPhotoThumbnailFilePath(Landroid/net/Uri;)V

    .line 703
    :goto_2
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->triggerNotifyImageDownloaded(I)V

    .line 704
    iput-boolean v8, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsModified:Z

    goto :goto_1

    .line 701
    :cond_2
    iget-object v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setPhotoThumbnailFilePath(Landroid/net/Uri;)V

    goto :goto_2

    .line 706
    :cond_3
    iget v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-ne v9, v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 712
    iget-object v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setPhotoFilePath(Landroid/net/Uri;)V

    .line 719
    :goto_3
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->triggerNotifyImageDownloaded(I)V

    .line 720
    iput-boolean v8, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsModified:Z

    goto :goto_1

    .line 717
    :cond_4
    iget-object v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setPhotoFilePath(Landroid/net/Uri;)V

    goto :goto_3

    .line 732
    :cond_5
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v2

    if-nez v2, :cond_7

    .line 770
    :cond_6
    :goto_4
    return-void

    .line 735
    :cond_7
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->forwardDownloadRequestSingle(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-result-object v6

    .line 736
    if-eqz v6, :cond_6

    .line 738
    iget v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-eq v0, v9, :cond_6

    .line 740
    iget v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-nez v0, :cond_9

    .line 743
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v0, :cond_8

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrlThumbnail()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    .line 744
    iget-object v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setPhotoThumbnailFilePath(Landroid/net/Uri;)V

    .line 748
    :goto_5
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->triggerNotifyImageDownloaded(I)V

    .line 749
    iput-boolean v8, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsModified:Z

    goto :goto_4

    .line 746
    :cond_8
    iget-object v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setPhotoThumbnailFilePath(Landroid/net/Uri;)V

    goto :goto_5

    .line 751
    :cond_9
    iget v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-ne v9, v0, :cond_6

    .line 754
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v0, :cond_a

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    .line 755
    iget-object v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setPhotoFilePath(Landroid/net/Uri;)V

    .line 759
    :goto_6
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->triggerNotifyImageDownloaded(I)V

    .line 760
    iput-boolean v8, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsModified:Z

    goto :goto_4

    .line 757
    :cond_a
    iget-object v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setPhotoFilePath(Landroid/net/Uri;)V

    goto :goto_6
.end method

.method public onVerifyImageStatus(I)V
    .locals 2
    .parameter "nIndexTrigger"

    .prologue
    .line 653
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-nez v0, :cond_1

    .line 666
    :cond_0
    :goto_0
    return-void

    .line 656
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getIndexRange(I)V

    .line 658
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getLayoutType()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 660
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onVerifyGridItemStatus(I)V

    goto :goto_0

    .line 662
    :cond_2
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getLayoutType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 664
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onVerifyFullstripItemStatus(I)V

    goto :goto_0
.end method

.method public setCenteredVisibleRange(IZ)V
    .locals 3
    .parameter "nPosCenter"
    .parameter "bIsRefresh"

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-eqz v0, :cond_0

    .line 1093
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    add-int/lit8 v1, p1, -0xf

    add-int/lit8 v2, p1, 0xf

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setVisibleRange(II)V

    .line 1094
    :cond_0
    return-void
.end method

.method public setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)Z
    .locals 4
    .parameter "dataPlugin"

    .prologue
    .line 1161
    const/4 v0, 0x0

    .line 1162
    .local v0, bResult:Z
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eq v2, p1, :cond_0

    .line 1164
    sget-object v2, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][LivePhotoAdapterBase][setDataPlugin]: "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getItemRequest()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1166
    .local v1, bundle:Landroid/os/Bundle;
    const-string v2, "from_outside"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1167
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->setDataRequest(Ljava/lang/Object;)V

    .line 1169
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    .line 1170
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)V

    .line 1171
    const/4 v0, 0x1

    .line 1173
    .end local v1           #bundle:Landroid/os/Bundle;
    :cond_0
    return v0
.end method

.method public setGenuine(Z)V
    .locals 0
    .parameter "bIsGenuine"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsGenuine:Z

    .line 107
    return-void
.end method

.method public setInFilmstripViewMode(Z)V
    .locals 2
    .parameter "bIsInFilmstrip"

    .prologue
    const/4 v1, 0x1

    .line 59
    iget-boolean v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsFilmstripViewMode:Z

    if-ne v1, v0, :cond_0

    if-nez p1, :cond_0

    .line 60
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsFilmstripViewSwitch:Z

    .line 61
    :cond_0
    iput-boolean p1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsFilmstripViewMode:Z

    .line 63
    return-void
.end method

.method public setInternal(Z)V
    .locals 3
    .parameter "bIsInternal"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsInternal:Z

    .line 67
    sget-object v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][LivePhotoAdapterBase][setInternal]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsInternal:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public setPhotoPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 1097
    iput p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mFirstVisibleIndex:I

    iput p1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndexNext:I

    iput p1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndex:I

    .line 1098
    return-void
.end method

.method public setScrollState(III)V
    .locals 2
    .parameter "nScrollState"
    .parameter "nFirstIndex"
    .parameter "nLastIndex"

    .prologue
    const/16 v1, 0x4f4d

    .line 572
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-nez v0, :cond_0

    .line 605
    :goto_0
    return-void

    .line 575
    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsFilmstripViewSwitch:Z

    if-nez v0, :cond_1

    .line 577
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIScrollState:I

    if-ne v1, v0, :cond_2

    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mFirstVisibleIndex:I

    if-ne v0, p2, :cond_2

    .line 579
    sget-object v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][LivePhotoAdapterBase][setScrollState]: skip 1"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 584
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsFilmstripViewSwitch:Z

    .line 586
    :cond_2
    iput p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIScrollState:I

    .line 587
    iput p2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mFirstVisibleIndex:I

    .line 588
    iput p3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mLastVisibleIndex:I

    .line 593
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIScrollState:I

    if-ne v1, v0, :cond_3

    .line 596
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setScrollState(I)V

    .line 597
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onVerifyImageStatus(I)V

    goto :goto_0

    .line 601
    :cond_3
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    const/16 v1, 0x4f4e

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setScrollState(I)V

    .line 602
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->cancelDownloadTasks()V

    goto :goto_0
.end method

.method public setTemplateID(I)V
    .locals 0
    .parameter "nTemplateID"

    .prologue
    .line 102
    iput p1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mTemplateID:I

    .line 103
    return-void
.end method

.method public setTemplateLayout(ILcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;)V
    .locals 3
    .parameter "nLayout"
    .parameter "decoderListener"
    .parameter "downloadListener"

    .prologue
    .line 240
    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIState:I

    if-ne v0, v1, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-eqz v0, :cond_0

    .line 246
    sget-object v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][LivePhotoAdapterBase][setTemplateLayout]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const/16 v0, 0x4f4d

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIScrollState:I

    .line 248
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->changeLayoutType(I)V

    .line 249
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setImageDecoder(Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;)V

    .line 250
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setImageDownloadedListener(Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;)V

    .line 251
    const/4 v0, 0x2

    if-ne v0, p1, :cond_2

    .line 253
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->updateMaxDownloadBuffer()V

    goto :goto_0

    .line 255
    :cond_2
    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    .line 257
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setMaxDownloadBuffer(I)V

    goto :goto_0
.end method

.method public setVisibleRange(II)V
    .locals 1
    .parameter "startPos"
    .parameter "endPos"

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-eqz v0, :cond_0

    .line 1087
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setVisibleRange(II)V

    .line 1088
    :cond_0
    return-void
.end method

.method public syncBackgroundService(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 11
    .parameter "szService"
    .parameter "hHandler"

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 163
    const/4 v0, 0x0

    .line 166
    .local v0, bResult:Z
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getItemRequest()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 168
    .local v1, bundle:Landroid/os/Bundle;
    const-string v6, "service_name"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 169
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    const-string v7, "service_name"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    .line 171
    :cond_0
    const-string v6, "user_id"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 172
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v6, v6, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    const-string v7, "user_id"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_1
    const-string v6, "album_name"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 175
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    const-string v7, "album_name"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumName:Ljava/lang/String;

    .line 177
    :cond_2
    const-string v6, "album_id"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 178
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v6, v6, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumIds:Ljava/util/ArrayList;

    const-string v7, "album_id"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_3
    const-string v6, "photo_id"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 181
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v6, v6, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mMediumIds:Ljava/util/ArrayList;

    const-string v7, "photo_id"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_4
    sget-object v6, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][LivePhotoAdapterBase][syncBackgroundService]: service: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v8, v8, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    sget-object v6, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][LivePhotoAdapterBase][syncBackgroundService]: album: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v8, v8, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v7, v7, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getOpenSenseTabPlugin(Ljava/lang/String;)Lcom/htc/opensense/plugin/TabPlugin;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/plugin/TabPluginRemote;

    .line 189
    .local v3, plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/htc/opensense/plugin/TabPluginRemote;->getAccountType()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    move v2, v4

    .line 191
    .local v2, needToCheckAccount:Z
    :goto_0
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v7, v7, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getDataHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getUIHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->scanAvailableService(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)Z

    move-result v6

    if-ne v4, v6, :cond_5

    .line 193
    if-eqz v2, :cond_8

    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountActive()Z

    move-result v6

    if-nez v6, :cond_8

    .line 195
    sget-object v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][LivePhotoAdapterBase][syncBackgroundService]: no account..."

    invoke-static {v4, v6}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const/16 v4, 0x274f

    invoke-virtual {p0, v4, v10, v5}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 236
    :cond_5
    :goto_1
    return-void

    .end local v2           #needToCheckAccount:Z
    :cond_6
    move v2, v5

    .line 189
    goto :goto_0

    :cond_7
    move v2, v4

    goto :goto_0

    .line 200
    .restart local v2       #needToCheckAccount:Z
    :cond_8
    if-eqz v2, :cond_a

    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isExistingAccount()Z

    move-result v6

    if-ne v4, v6, :cond_a

    .line 202
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountStatusChanged()Z

    move-result v4

    if-nez v4, :cond_9

    .line 204
    sget-object v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][LivePhotoAdapterBase][syncBackgroundService]: no change just skip!!"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 208
    :cond_9
    const/16 v4, 0x2750

    invoke-virtual {p0, v4, v10, v5}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_1

    .line 213
    :cond_a
    sget-object v6, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HTCAlbum][LivePhotoAdapterBase][syncBackgroundService]: InitConnection.."

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    if-eqz v2, :cond_b

    .line 215
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->syncActiveAccount()V

    .line 218
    :goto_2
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v6, :cond_c

    .line 220
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v5, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v4, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitConnection(Lcom/htc/opensense/album/plugin/BaseListPlugin;)Z

    goto :goto_1

    .line 217
    :cond_b
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->syncActiveDummyAccount()V

    goto :goto_2

    .line 224
    :cond_c
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v6, v4, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitConnection(ZZ)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 230
    const/16 v4, 0x2724

    invoke-virtual {p0, v4, v10, v5}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_1
.end method

.method public syncListItem(Ljava/lang/Object;)Z
    .locals 14
    .parameter "objList"

    .prologue
    .line 991
    const/4 v8, 0x0

    .local v8, photoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    move-object v8, p1

    .line 992
    check-cast v8, Ljava/util/List;

    .line 994
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_1

    .line 996
    :cond_0
    const/4 v11, 0x0

    .line 1081
    :goto_0
    return v11

    .line 1002
    :cond_1
    const/4 v9, 0x0

    .line 1003
    .local v9, refList:Ljava/util/List;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v11}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    .line 1005
    .local v10, tempList:Ljava/util/List;
    sget-object v11, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][LivePhotoAdapterBase][syncListItem]: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    const/4 v0, 0x0

    .line 1008
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    const/4 v1, 0x0

    .line 1009
    .local v1, aPhotoTemp:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    const/4 v3, 0x0

    .line 1010
    .local v3, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    .line 1011
    .local v5, nCountPhoto:I
    sget-object v11, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][LivePhotoAdapterBase][syncListItem]: recycle: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mListRecycable:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    iget-boolean v11, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mListRecycable:Z

    if-nez v11, :cond_2

    .line 1015
    iget-object v11, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-eqz v11, :cond_2

    .line 1017
    iget-object v11, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v11}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->cancelDownloadTasks()V

    .line 1018
    iget-object v11, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v11}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->releaseMemoryCache()V

    .line 1021
    :cond_2
    const/4 v4, 0x0

    .local v4, index:I
    :goto_1
    if-le v5, v4, :cond_8

    .line 1023
    const/4 v1, 0x0

    .line 1026
    :try_start_0
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #aPhotoTemp:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    check-cast v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1033
    .restart local v1       #aPhotoTemp:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :goto_2
    if-nez v1, :cond_4

    .line 1021
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1028
    .end local v1           #aPhotoTemp:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :catch_0
    move-exception v2

    .line 1030
    .local v2, e:Ljava/lang/Exception;
    sget-object v11, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][LivePhotoAdapterBase][syncListItem]: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    const/4 v1, 0x0

    .restart local v1       #aPhotoTemp:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    goto :goto_2

    .line 1036
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .end local v0           #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getProfile()Lcom/htc/opensense/social/data/Medium;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;-><init>(Lcom/htc/opensense/social/data/Medium;)V

    .line 1037
    .restart local v0       #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getFolderName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setFolderName(Ljava/lang/String;)V

    .line 1038
    invoke-virtual {v0, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setIndex(I)V

    .line 1039
    iget v11, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mTemplateID:I

    invoke-virtual {v0, v11}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setTemplateID(I)V

    .line 1040
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getPhotoURLHeader()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setPhotoURLHeader(Ljava/lang/String;)V

    .line 1041
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getPhotoURLThumbHeader()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setPhotoURLThumbHeader(Ljava/lang/String;)V

    .line 1043
    iget-boolean v11, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mListRecycable:Z

    if-eqz v11, :cond_6

    .line 1045
    iget-object v11, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v11, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageCache(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-result-object v3

    .line 1047
    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    .line 1049
    iget-object v11, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    if-eqz v11, :cond_5

    .line 1051
    iget-object v11, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    iget-object v12, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v0, v11, v12}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setFilePath(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1054
    :cond_5
    iget-object v11, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    if-eqz v11, :cond_6

    .line 1056
    iget-object v11, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    iget-object v12, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v11, v12}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setFilePath(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1062
    :cond_6
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->isPlayable()Z

    move-result v11

    if-eqz v11, :cond_7

    iget-boolean v11, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsFilterVideos:Z

    if-nez v11, :cond_3

    .line 1064
    :cond_7
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1067
    :cond_8
    iget-object v11, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    .line 1068
    .local v7, oldSize:I
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    .line 1071
    .local v6, newSize:I
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    .line 1074
    iput-object v10, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    .line 1075
    sget-object v11, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][LivePhotoAdapterBase][syncListItem]: new list: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    sget-object v11, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][LivePhotoAdapterBase][syncListItem]: clear old: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 1081
    if-eq v7, v6, :cond_9

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method public triggerListRefresh()V
    .locals 2

    .prologue
    .line 137
    sget-object v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][LivePhotoAdapterBase][triggerListRefresh]: re triggering..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->updateMaxDownloadBuffer()V

    .line 139
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    const/16 v1, 0x4f4d

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setScrollState(I)V

    .line 141
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onVerifyImageStatus(I)V

    .line 142
    return-void
.end method

.method public updateMaxDownloadBuffer()V
    .locals 4

    .prologue
    const/16 v3, 0x1c

    .line 262
    const/16 v1, 0x4eee

    iget v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIState:I

    if-ne v1, v2, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-eqz v1, :cond_0

    .line 268
    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsInternal:Z

    if-nez v1, :cond_2

    .line 270
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setMaxDownloadBuffer(I)V

    goto :goto_0

    .line 274
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 275
    .local v0, nOrientation:I
    const/4 v1, 0x1

    if-ne v1, v0, :cond_3

    .line 276
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setMaxDownloadBuffer(I)V

    goto :goto_0

    .line 278
    :cond_3
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setMaxDownloadBuffer(I)V

    goto :goto_0
.end method
