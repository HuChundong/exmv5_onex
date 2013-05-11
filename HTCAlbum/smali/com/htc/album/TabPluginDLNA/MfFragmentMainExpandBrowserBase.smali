.class public Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;
.super Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;
.source "MfFragmentMainExpandBrowserBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl",
        "<",
        "Lcom/htc/widget/MoreExpandableBaseAdapter;",
        ">;"
    }
.end annotation


# static fields
.field protected static final MAX_FOLDER:I = 0x1f4


# instance fields
.field protected LOG_TAG:Ljava/lang/String;

.field protected mActivityPause:Z

.field protected mCurContainerID:Ljava/lang/String;

.field protected mCurContainerName:Ljava/lang/String;

.field protected mCurServerID:Ljava/lang/String;

.field protected mCurServerImg:Ljava/lang/String;

.field protected mCurServerName:Ljava/lang/String;

.field protected mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

.field protected mDirectoryStack:Ljava/util/Stack;

.field protected mFileCount:J

.field protected mHandlerData:Landroid/os/Handler;

.field protected mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

.field protected mbBrowseComplete:Z

.field protected mbVirtualFolderAdd:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;-><init>()V

    .line 23
    const-string v0, "MfFragmentMainExpandBrowserBase"

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->LOG_TAG:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    .line 27
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurServerID:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurServerName:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurServerImg:Ljava/lang/String;

    .line 30
    const-string v0, "0"

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurContainerID:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurContainerName:Ljava/lang/String;

    .line 34
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mbVirtualFolderAdd:Z

    .line 35
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mbBrowseComplete:Z

    .line 37
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mDirectoryStack:Ljava/util/Stack;

    .line 38
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mFileCount:J

    .line 40
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mActivityPause:Z

    .line 68
    new-instance v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase$1;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase$1;-><init>(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mHandlerData:Landroid/os/Handler;

    return-void
.end method

.method private getNoPhotoVideoItem()Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    .locals 11

    .prologue
    const-wide/16 v6, 0x0

    .line 522
    new-instance v0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, "UNKNOWN"

    const/4 v10, 0x0

    move-wide v8, v6

    invoke-direct/range {v0 .. v10}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZ)V

    .line 523
    .local v0, item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    return-object v0
.end method

.method private reSetValueState()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mbVirtualFolderAdd:Z

    .line 141
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mbBrowseComplete:Z

    .line 142
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mFileCount:J

    .line 143
    new-instance v0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-direct {v0}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .line 144
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    .line 145
    return-void
.end method


# virtual methods
.method public addCurrentPageInfo()V
    .locals 6

    .prologue
    .line 545
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    if-nez v2, :cond_1

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 549
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getDirectoryInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    .line 551
    .local v0, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    if-eqz v0, :cond_0

    .line 554
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addCurrentPageInfo: dirName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getPageSize()I

    move-result v2

    if-nez v2, :cond_3

    .line 558
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->addFilePage(Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;)Z

    .line 572
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addCurrentPageInfo: topIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getTopIndex()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bottomIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 562
    :cond_3
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getPageCurrent()Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    move-result-object v1

    .line 563
    .local v1, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    if-eqz v1, :cond_2

    .line 565
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getTopIndex()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setTopIndex(J)V

    .line 566
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setBottomIndex(J)V

    .line 567
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    .line 568
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getMidIndex()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setMidIndex(J)V

    goto :goto_1
.end method

.method protected addDirectoryInfo()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 194
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurContainerID:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 197
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 201
    .local v0, bunBrowse:Landroid/os/Bundle;
    const-string v3, "0"

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurServerName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->createEmtpyDirectory(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    move-result-object v1

    .line 202
    .local v1, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->createEmtpyPage()Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .line 204
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v2, exportDirectory:Ljava/util/ArrayList;
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getCurrentPageIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->exportPages()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    const-string v3, "album_update"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 213
    const-string v3, "server_id"

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurServerID:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v3, "server_name"

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurServerName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v3, "directory_info"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 217
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v3, v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->initServerInfo(Ljava/lang/Object;)Z

    .line 229
    .end local v0           #bunBrowse:Landroid/os/Bundle;
    .end local v2           #exportDirectory:Ljava/util/ArrayList;
    :goto_0
    return-void

    .line 222
    .end local v1           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    :cond_0
    const/4 v1, 0x0

    .line 223
    .restart local v1       #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    new-instance v1, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    .end local v1           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    invoke-direct {v1}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;-><init>()V

    .line 224
    .restart local v1       #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurContainerID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->setID(Ljava/lang/String;)V

    .line 225
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurContainerName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->setName(Ljava/lang/String;)V

    .line 227
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v3, v1}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->addLatestBrowseFolder(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected addPagesInfo(ILjava/util/ArrayList;)V
    .locals 4
    .parameter "currentPageIndex"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 596
    .local p2, importPages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p2, :cond_1

    .line 610
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addPagesInfo: pageSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getDirectoryInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    .line 602
    .local v0, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    if-eqz v0, :cond_0

    .line 605
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->removeAllPages()V

    .line 606
    invoke-virtual {v0, p2}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->importPages(Ljava/util/ArrayList;)V

    .line 607
    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->setCurrentPageIndex(I)V

    .line 609
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addPagesInfo: currentIndex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected cancelBrowse(J)V
    .locals 3
    .parameter "curStartIdx"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-nez v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "cancelBrowse"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurServerID:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurContainerID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->browseCancel(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method protected continueBrowse(JJ)V
    .locals 8
    .parameter "index"
    .parameter "boundary"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-nez v0, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mActivityPause:Z

    if-nez v0, :cond_0

    .line 185
    invoke-static {}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->PanelManager()Lcom/htc/album/AlbumMain/ActivityPanelManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/AlbumMain/ActivityPanelManager;->setEnterProcessing(IZ)V

    .line 186
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[MfFragmentMainExpandBrowserBase][continueBrowse][EnterProcessing]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurServerID:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurContainerID:Ljava/lang/String;

    const/16 v5, 0x1e

    move-wide v3, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->doBrowseAlbum(Ljava/lang/String;Ljava/lang/String;JIJ)V

    goto :goto_0
.end method

.method public getCurrentPageInfo()V
    .locals 6

    .prologue
    .line 577
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-nez v2, :cond_1

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getDirectoryInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    .line 581
    .local v0, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    if-eqz v0, :cond_0

    .line 584
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentPageInfo: dirName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getPageCurrent()Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    move-result-object v1

    .line 587
    .local v1, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    if-eqz v1, :cond_0

    .line 589
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentPageInfo: topIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getTopIndex()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bottomIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    goto :goto_0
.end method

.method protected initBrowse(JJ)V
    .locals 8
    .parameter "index"
    .parameter "boundary"

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->reSetValueState()V

    .line 162
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-nez v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "init browse"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->addDirectoryInfo()V

    .line 171
    invoke-static {}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->PanelManager()Lcom/htc/album/AlbumMain/ActivityPanelManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/AlbumMain/ActivityPanelManager;->setEnterProcessing(IZ)V

    .line 172
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[MfFragmentMainExpandBrowserBase][initBrowse][EnterProcessing]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurServerID:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurContainerID:Ljava/lang/String;

    const/16 v5, 0x1e

    move-wide v3, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->doBrowseAlbum(Ljava/lang/String;Ljava/lang/String;JIJ)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->onActivityCreated(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 62
    .local v0, activity:Landroid/app/Activity;
    instance-of v2, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 64
    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;

    .line 65
    .local v1, paneControl:Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->enable2Pane()Z

    move-result v2

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->paneRight()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;->enable2Pane(ZZ)V

    .line 67
    .end local v1           #paneControl:Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;
    :cond_0
    return-void
.end method

.method protected onContentUpdate(Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;)Ljava/util/LinkedList;
    .locals 5
    .parameter "pageInfo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    if-nez p1, :cond_0

    .line 234
    const/4 v0, 0x0

    .line 240
    :goto_0
    return-object v0

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum]:onContentUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->queryContentList(Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;)Ljava/util/LinkedList;

    move-result-object v0

    .line 240
    .local v0, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;>;"
    goto :goto_0
.end method

.method protected onContentUpdateComplete(Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;I)Ljava/util/LinkedList;
    .locals 6
    .parameter "pageInfo"
    .parameter "childCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;",
            "I)",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 246
    iget-boolean v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mbBrowseComplete:Z

    if-eqz v3, :cond_0

    .line 248
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum]:[onContentUpdateComplete] browse is already completed"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 281
    :goto_0
    return-object v0

    .line 252
    :cond_0
    if-nez p1, :cond_1

    move-object v0, v2

    .line 253
    goto :goto_0

    .line 255
    :cond_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum]: onContnetUpdateComplete"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->queryContentList(Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;)Ljava/util/LinkedList;

    move-result-object v0

    .line 259
    .local v0, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;>;"
    if-nez v0, :cond_2

    move-object v0, v2

    .line 260
    goto :goto_0

    .line 262
    :cond_2
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 264
    .local v1, listSize:I
    if-nez v1, :cond_3

    if-nez p2, :cond_3

    .line 266
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->getNoPhotoVideoItem()Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_3
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v2

    const/4 v3, -0x2

    if-eq v2, v3, :cond_4

    const/16 v2, 0x1f4

    if-lt v1, v2, :cond_5

    .line 273
    :cond_4
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mbBrowseComplete:Z

    .line 274
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum]: BrowseComplete:size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :cond_5
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->continueBrowse(JJ)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 49
    .local v0, activity:Landroid/app/Activity;
    new-instance v1, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    .line 50
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->enableSyncServerListOnServiceConnected()V

    .line 52
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->setRegisterID(I)V

    .line 53
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->setRegisterName(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MfFragmentMainExpandBrowserBase][onCreate]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getRegisterName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getRegisterID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->setDataHandler(Landroid/os/Handler;)V

    .line 57
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->onDestroy()V

    .line 132
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onDestroy()V

    .line 135
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    .line 136
    return-void
.end method

.method protected onMessageHandler(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 81
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 101
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->sendResumeCacheIntent(Landroid/content/Context;)V

    .line 103
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mActivityPause:Z

    .line 104
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->onPause()V

    .line 106
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onPause()V

    .line 108
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 85
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mActivityPause:Z

    .line 86
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->onResume()V

    .line 88
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onResume()V

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 94
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->sendPauseCacheIntent(Landroid/content/Context;)V

    .line 95
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->onStart()V

    .line 114
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onStart()V

    .line 118
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->onStop()V

    .line 124
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onStop()V

    .line 126
    :cond_0
    return-void
.end method

.method protected queryContentList(Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;)Ljava/util/LinkedList;
    .locals 35
    .parameter "pageInfo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    if-nez p1, :cond_1

    .line 287
    const/16 v30, 0x0

    .line 416
    :cond_0
    :goto_0
    return-object v30

    .line 289
    :cond_1
    new-instance v30, Ljava/util/LinkedList;

    invoke-direct/range {v30 .. v30}, Ljava/util/LinkedList;-><init>()V

    .line 291
    .local v30, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;>;"
    const-wide/16 v33, 0x0

    .line 292
    .local v33, topIndex:J
    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v25

    .line 294
    .local v25, bottomIndex:J
    const-string v5, ""

    .line 296
    .local v5, szWhere:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(serve_id = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurServerID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "container"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurContainerID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "file_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "file_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "file_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "index_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >= \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v33

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "index_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <= \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v25

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][queryContentList]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v33

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v25

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const/16 v27, 0x0

    .line 307
    .local v27, cursor:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->getActivity()Landroid/app/Activity;

    move-result-object v24

    .line 310
    .local v24, activity:Landroid/app/Activity;
    :try_start_0
    invoke-virtual/range {v24 .. v24}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getServerContentUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v7, "index_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    if-nez v27, :cond_3

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][queryContentList]: failed to get cursor"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    if-eqz v27, :cond_2

    .line 404
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 405
    const/16 v27, 0x0

    .line 408
    :cond_2
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mFileCount:J

    const-wide/16 v13, 0xc7

    cmp-long v2, v2, v13

    if-gtz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    if-eqz v2, :cond_0

    .line 412
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v3

    :goto_1
    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    goto/16 :goto_0

    .line 321
    :cond_3
    const/16 v32, 0x0

    .line 322
    .local v32, nCount:I
    const/16 v31, 0x0

    .line 324
    .local v31, listCount:I
    :try_start_1
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->getCount()I

    move-result v32

    if-gtz v32, :cond_6

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][queryContentList]: empty cursor"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 402
    :cond_4
    if-eqz v27, :cond_5

    .line 404
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 405
    const/16 v27, 0x0

    .line 408
    :cond_5
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mFileCount:J

    const-wide/16 v13, 0xc7

    cmp-long v2, v2, v13

    if-gtz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    if-eqz v2, :cond_0

    .line 412
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v3

    goto :goto_1

    .line 330
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][queryContentList]: count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const/4 v9, 0x0

    .line 333
    .local v9, contentID:Ljava/lang/String;
    const/4 v10, 0x0

    .line 334
    .local v10, contentName:Ljava/lang/String;
    const/4 v12, 0x0

    .line 335
    .local v12, fileType:Ljava/lang/String;
    const/4 v7, 0x0

    .line 336
    .local v7, serverID:Ljava/lang/String;
    const/4 v8, 0x0

    .line 337
    .local v8, containerID:Ljava/lang/String;
    const-wide/16 v19, -0x1

    .line 339
    .local v19, index:J
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToFirst()Z

    .line 341
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mbVirtualFolderAdd:Z

    .line 343
    const/16 v29, 0x0

    .local v29, i:I
    :goto_2
    move/from16 v0, v29

    move/from16 v1, v32

    if-ge v0, v1, :cond_4

    .line 345
    const-string v2, "content_id"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 346
    const-string v2, "content_name"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 347
    const-string v2, "file_type"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 348
    const-string v2, "index_id"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 349
    const-string v2, "serve_id"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 350
    const-string v2, "container"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 352
    const-string v2, "0"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 354
    new-instance v6, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    const/4 v11, 0x0

    move/from16 v0, v31

    int-to-long v13, v0

    const/4 v15, 0x1

    invoke-direct/range {v6 .. v15}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 355
    .local v6, item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 356
    add-int/lit8 v31, v31, 0x1

    .line 389
    .end local v6           #item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    :cond_7
    :goto_3
    const/16 v2, 0x1f4

    move/from16 v0, v31

    if-ge v0, v2, :cond_4

    .line 392
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToNext()Z

    .line 343
    add-int/lit8 v29, v29, 0x1

    goto :goto_2

    .line 362
    :cond_8
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mFileCount:J

    const-wide/16 v13, 0xc7

    cmp-long v2, v2, v13

    if-gez v2, :cond_9

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    if-eqz v2, :cond_9

    .line 366
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mFileCount:J

    const-wide/16 v13, 0x0

    cmp-long v2, v2, v13

    if-nez v2, :cond_b

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    move-wide/from16 v0, v19

    invoke-virtual {v2, v0, v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setTopIndex(J)V

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    move-wide/from16 v0, v19

    invoke-virtual {v2, v0, v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setBottomIndex(J)V

    .line 370
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mFileCount:J

    const-wide/16 v13, 0x1

    add-long/2addr v2, v13

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mFileCount:J

    .line 380
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mbVirtualFolderAdd:Z

    if-nez v2, :cond_7

    .line 382
    new-instance v6, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurContainerName:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v21, v0

    const/16 v23, 0x0

    move-object v13, v6

    move-object v14, v7

    move-object v15, v8

    move-object/from16 v18, v12

    invoke-direct/range {v13 .. v23}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZ)V

    .line 383
    .restart local v6       #item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 384
    add-int/lit8 v31, v31, 0x1

    .line 385
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mbVirtualFolderAdd:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 396
    .end local v6           #item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    .end local v7           #serverID:Ljava/lang/String;
    .end local v8           #containerID:Ljava/lang/String;
    .end local v9           #contentID:Ljava/lang/String;
    .end local v10           #contentName:Ljava/lang/String;
    .end local v12           #fileType:Ljava/lang/String;
    .end local v19           #index:J
    .end local v29           #i:I
    .end local v31           #listCount:I
    .end local v32           #nCount:I
    :catch_0
    move-exception v28

    .line 398
    .local v28, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 402
    if-eqz v27, :cond_a

    .line 404
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 405
    const/16 v27, 0x0

    .line 408
    :cond_a
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mFileCount:J

    const-wide/16 v13, 0xc7

    cmp-long v2, v2, v13

    if-gtz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    if-eqz v2, :cond_0

    .line 412
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v3

    goto/16 :goto_1

    .line 372
    .end local v28           #e:Ljava/lang/Exception;
    .restart local v7       #serverID:Ljava/lang/String;
    .restart local v8       #containerID:Ljava/lang/String;
    .restart local v9       #contentID:Ljava/lang/String;
    .restart local v10       #contentName:Ljava/lang/String;
    .restart local v12       #fileType:Ljava/lang/String;
    .restart local v19       #index:J
    .restart local v29       #i:I
    .restart local v31       #listCount:I
    .restart local v32       #nCount:I
    :cond_b
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v2

    cmp-long v2, v2, v19

    if-gez v2, :cond_9

    .line 374
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    move-wide/from16 v0, v19

    invoke-virtual {v2, v0, v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setBottomIndex(J)V

    .line 375
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mFileCount:J

    const-wide/16 v13, 0x1

    add-long/2addr v2, v13

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mFileCount:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    .line 402
    .end local v7           #serverID:Ljava/lang/String;
    .end local v8           #containerID:Ljava/lang/String;
    .end local v9           #contentID:Ljava/lang/String;
    .end local v10           #contentName:Ljava/lang/String;
    .end local v12           #fileType:Ljava/lang/String;
    .end local v19           #index:J
    .end local v29           #i:I
    .end local v31           #listCount:I
    .end local v32           #nCount:I
    :catchall_0
    move-exception v2

    if-eqz v27, :cond_c

    .line 404
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 405
    const/16 v27, 0x0

    .line 408
    :cond_c
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mFileCount:J

    const-wide/16 v13, 0xc7

    cmp-long v3, v3, v13

    if-gtz v3, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    if-eqz v3, :cond_d

    .line 412
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    .line 402
    :cond_d
    throw v2
.end method

.method protected queryRecoveryContentList(Ljava/lang/String;Ljava/util/LinkedList;)Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    .locals 32
    .parameter "childSelectedID"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;",
            ">;)",
            "Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;"
        }
    .end annotation

    .prologue
    .line 423
    .local p2, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;>;"
    const-string v5, ""

    .line 425
    .local v5, szWhere:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(serve_id = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurServerID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "container"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurContainerID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "file_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "file_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "file_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 431
    const/16 v27, 0x0

    .line 432
    .local v27, cursor:Landroid/database/Cursor;
    const/16 v25, 0x0

    .line 433
    .local v25, childSelectedItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->getActivity()Landroid/app/Activity;

    move-result-object v24

    .line 436
    .local v24, activity:Landroid/app/Activity;
    :try_start_0
    invoke-virtual/range {v24 .. v24}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getServerContentUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v7, "index_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    if-nez v27, :cond_1

    .line 443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][queryContentList][selectedID]: failed to get cursor"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    if-eqz v27, :cond_0

    .line 512
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 513
    const/16 v27, 0x0

    :cond_0
    move-object/from16 v26, v25

    .line 517
    .end local v25           #childSelectedItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    .local v26, childSelectedItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    :goto_0
    return-object v26

    .line 447
    .end local v26           #childSelectedItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    .restart local v25       #childSelectedItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    :cond_1
    const/16 v31, 0x0

    .line 448
    .local v31, nCount:I
    const/16 v30, 0x0

    .line 450
    .local v30, listCount:I
    :try_start_1
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->getCount()I

    move-result v31

    if-gtz v31, :cond_4

    .line 452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][queryContentList][selectedID]: empty cursor"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 510
    :cond_2
    if-eqz v27, :cond_3

    .line 512
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 513
    .end local v30           #listCount:I
    .end local v31           #nCount:I
    :goto_1
    const/16 v27, 0x0

    :cond_3
    move-object/from16 v26, v25

    .line 517
    .end local v25           #childSelectedItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    .restart local v26       #childSelectedItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    goto :goto_0

    .line 456
    .end local v26           #childSelectedItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    .restart local v25       #childSelectedItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    .restart local v30       #listCount:I
    .restart local v31       #nCount:I
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][queryContentList][selectedID]: count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const/4 v9, 0x0

    .line 459
    .local v9, contentID:Ljava/lang/String;
    const/4 v10, 0x0

    .line 460
    .local v10, contentName:Ljava/lang/String;
    const/4 v12, 0x0

    .line 461
    .local v12, fileType:Ljava/lang/String;
    const/4 v7, 0x0

    .line 462
    .local v7, serverID:Ljava/lang/String;
    const/4 v8, 0x0

    .line 463
    .local v8, containerID:Ljava/lang/String;
    const-wide/16 v19, -0x1

    .line 465
    .local v19, index:J
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToFirst()Z

    .line 467
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mbVirtualFolderAdd:Z

    .line 469
    const/16 v29, 0x0

    .local v29, i:I
    :goto_2
    move/from16 v0, v29

    move/from16 v1, v31

    if-ge v0, v1, :cond_2

    .line 471
    const-string v2, "content_id"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 472
    const-string v2, "content_name"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 473
    const-string v2, "file_type"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 474
    const-string v2, "index_id"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 475
    const-string v2, "serve_id"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 476
    const-string v2, "container"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 478
    const-string v2, "0"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 480
    new-instance v6, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    const/4 v11, 0x0

    move/from16 v0, v30

    int-to-long v13, v0

    const/4 v15, 0x1

    invoke-direct/range {v6 .. v15}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 481
    .local v6, item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    if-eqz p1, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 483
    move-object/from16 v25, v6

    .line 485
    :cond_5
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 486
    add-int/lit8 v30, v30, 0x1

    .line 500
    .end local v6           #item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    :cond_6
    :goto_3
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToNext()Z

    .line 469
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_2

    .line 491
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mbVirtualFolderAdd:Z

    if-nez v2, :cond_6

    .line 493
    new-instance v6, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurContainerName:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v21, v0

    const/16 v23, 0x0

    move-object v13, v6

    move-object v14, v7

    move-object v15, v8

    move-object/from16 v18, v12

    invoke-direct/range {v13 .. v23}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZ)V

    .line 494
    .restart local v6       #item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 495
    add-int/lit8 v30, v30, 0x1

    .line 496
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mbVirtualFolderAdd:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 504
    .end local v6           #item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    .end local v7           #serverID:Ljava/lang/String;
    .end local v8           #containerID:Ljava/lang/String;
    .end local v9           #contentID:Ljava/lang/String;
    .end local v10           #contentName:Ljava/lang/String;
    .end local v12           #fileType:Ljava/lang/String;
    .end local v19           #index:J
    .end local v29           #i:I
    .end local v30           #listCount:I
    .end local v31           #nCount:I
    :catch_0
    move-exception v28

    .line 506
    .local v28, e:Ljava/lang/Exception;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][queryContentList][selectedID]Error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 510
    if-eqz v27, :cond_3

    .line 512
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 510
    .end local v28           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v27, :cond_8

    .line 512
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 513
    const/16 v27, 0x0

    .line 510
    :cond_8
    throw v2
.end method

.method public refreshServers()V
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->reSearchDevices()V

    .line 530
    :cond_0
    return-void
.end method

.method public removeChildrenDirectoryInfo(Ljava/lang/String;)V
    .locals 3
    .parameter "containerID"

    .prologue
    .line 534
    if-nez p1, :cond_0

    .line 541
    :goto_0
    return-void

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-eqz v0, :cond_1

    .line 538
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->removeChildrenBrowseFolder(Ljava/lang/String;)Z

    .line 540
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][removeChildrenDirectoryInfo]containerID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected removePagesInfo()V
    .locals 2

    .prologue
    .line 614
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getDirectoryInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    .line 615
    .local v0, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    if-nez v0, :cond_0

    .line 619
    :goto_0
    return-void

    .line 618
    :cond_0
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->removeAllPages()V

    goto :goto_0
.end method
