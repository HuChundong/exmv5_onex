.class public Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;
.super Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;
.source "MfFragmentMainExpandBrowser.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MfFragmentMainExpandBrowser"

.field protected static final timerSearchDeviceCode:I = 0x1


# instance fields
.field private mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

.field protected mChildAlreadyAppend:Z

.field protected mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

.field protected mCurStartIdx:J

.field private mDelayUpdateList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mErrorReason:Ljava/lang/String;

.field protected mErrorTitle:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIsIdleUpdateList:Z

.field private mIsScrolling:Z

.field private mItemList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mItemRequested:Ljava/lang/Object;

.field private mLayoutEmptyView:Landroid/widget/RelativeLayout;

.field private mLayoutTitle:Landroid/widget/RelativeLayout;

.field private mListView:Lcom/htc/widget/MoreExpandableHtcListView;

.field private mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

.field private mOnGroupCollapseListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;

.field private mOnGroupExpandListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;

.field private mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

.field protected mbDestroy:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;-><init>()V

    .line 72
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mLayoutTitle:Landroid/widget/RelativeLayout;

    .line 73
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    .line 75
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    .line 76
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    .line 77
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    .line 79
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mIsScrolling:Z

    .line 80
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mIsIdleUpdateList:Z

    .line 81
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mDelayUpdateList:Ljava/util/LinkedList;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mErrorTitle:Ljava/lang/String;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mErrorReason:Ljava/lang/String;

    .line 86
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurStartIdx:J

    .line 87
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    .line 89
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemRequested:Ljava/lang/Object;

    .line 92
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mbDestroy:Z

    .line 93
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mChildAlreadyAppend:Z

    .line 412
    new-instance v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$1;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$1;-><init>(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mOnGroupExpandListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;

    .line 427
    new-instance v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$2;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$2;-><init>(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mOnGroupCollapseListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;

    .line 460
    new-instance v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$3;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$3;-><init>(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

    .line 938
    new-instance v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$5;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$5;-><init>(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    .line 1092
    new-instance v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$6;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$6;-><init>(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->expandBrowse(Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)Lcom/htc/widget/MoreExpandableHtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->onLaunchMediaListPage()V

    return-void
.end method

.method static synthetic access$402(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mIsScrolling:Z

    return p1
.end method

.method static synthetic access$500(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mIsIdleUpdateList:Z

    return v0
.end method

.method static synthetic access$502(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mIsIdleUpdateList:Z

    return p1
.end method

.method static synthetic access$600(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mDelayUpdateList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->onMessageHandler2(Landroid/os/Message;)V

    return-void
.end method

.method private expandBrowse(Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;)V
    .locals 7
    .parameter "item"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    .line 372
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->getChildrenCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 373
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mChildAlreadyAppend:Z

    .line 375
    :cond_0
    if-nez p1, :cond_2

    .line 410
    :cond_1
    :goto_0
    return-void

    .line 378
    :cond_2
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetId()Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, serverID:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetContainerID()Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, containerID:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->IsContainer()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 383
    iget-wide v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurStartIdx:J

    invoke-virtual {p0, v2, v3}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->cancelBrowse(J)V

    .line 384
    invoke-virtual {p1, v4}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->setCancelled(Z)V

    .line 387
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurServerID:Ljava/lang/String;

    .line 388
    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurContainerID:Ljava/lang/String;

    .line 389
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetContainerName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurContainerName:Ljava/lang/String;

    .line 390
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    .line 391
    invoke-virtual {p0, v5, v6, v5, v6}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->initBrowse(JJ)V

    .line 392
    invoke-virtual {p0, v4}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showTitleProgression(Z)V

    goto :goto_0

    .line 394
    :cond_3
    if-eqz v1, :cond_1

    .line 397
    iget-wide v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurStartIdx:J

    invoke-virtual {p0, v2, v3}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->cancelBrowse(J)V

    .line 398
    invoke-virtual {p1, v4}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->setCancelled(Z)V

    .line 401
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurServerID:Ljava/lang/String;

    .line 402
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurServerName:Ljava/lang/String;

    .line 403
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetImgPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurServerImg:Ljava/lang/String;

    .line 404
    const-string v2, "0"

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurContainerID:Ljava/lang/String;

    .line 405
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurContainerName:Ljava/lang/String;

    .line 406
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    .line 407
    invoke-virtual {p0, v5, v6, v5, v6}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->initBrowse(JJ)V

    .line 408
    invoke-virtual {p0, v4}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showTitleProgression(Z)V

    goto :goto_0
.end method

.method private onLaunchMediaListPage()V
    .locals 11

    .prologue
    .line 485
    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-nez v7, :cond_0

    .line 558
    :goto_0
    return-void

    .line 492
    :cond_0
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 494
    iget-wide v7, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurStartIdx:J

    invoke-virtual {p0, v7, v8}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->cancelBrowse(J)V

    .line 495
    const-string v7, "MfFragmentMainExpandBrowser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[onLaunchMediaListPage]cancelBrowse"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurStartIdx:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    :cond_1
    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v7}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getServiceDirectory()Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    move-result-object v6

    .line 500
    .local v6, serviceDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;
    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v7}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getServerInfo()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    .line 502
    .local v5, serverInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->addCurrentPageInfo()V

    .line 504
    const-string v7, "MfFragmentMainExpandBrowser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onLaunchMediaListPage : top:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-virtual {v9}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getTopIndex()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", bottom:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-virtual {v9}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 508
    .local v2, bundleNew:Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 510
    .local v1, bunBrowse:Landroid/os/Bundle;
    if-eqz v5, :cond_2

    .line 512
    const-string v7, "server_id"

    iget-object v8, v5, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-string v7, "server_name"

    iget-object v8, v5, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :cond_2
    if-eqz v6, :cond_3

    .line 518
    const-string v7, "directory_info"

    invoke-virtual {v6}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->exportDirectories()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 522
    :cond_3
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 524
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_4

    instance-of v7, v0, Lcom/htc/album/AlbumMain/ActivityMainDropList;

    if-eqz v7, :cond_4

    .line 526
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 527
    .local v4, parentIntent:Landroid/content/Intent;
    if-eqz v4, :cond_4

    .line 529
    const-string v7, "directmode"

    const-string v8, "directmode"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 541
    .end local v4           #parentIntent:Landroid/content/Intent;
    :cond_4
    const-string v7, "browse_info"

    invoke-virtual {v2, v7, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 542
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 543
    const-class v7, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaListThumbnail;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v2}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->startFragmentInNextPane(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 546
    :cond_5
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 547
    .local v3, intent:Landroid/content/Intent;
    const-string v7, "goto_scene"

    const-string v8, "SceneDlnaGridview"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 548
    const-string v7, "dlna_bundle"

    invoke-virtual {v3, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 550
    const-class v7, Lcom/htc/album/TabPluginDLNA/ActivityMainMediaList;

    invoke-virtual {v3, v0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 551
    const/high16 v7, 0x400

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 552
    invoke-virtual {v0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private onMessageHandler2(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 1106
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1128
    :cond_0
    :goto_0
    return-void

    .line 1109
    :sswitch_0
    const-string v0, "MfFragmentMainExpandBrowser"

    const-string v1, "[HTCAlbum] Update list when scroll idle."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mDelayUpdateList:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    .line 1112
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mDelayUpdateList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->addChildrenToListView(Ljava/util/LinkedList;)V

    .line 1113
    const-string v0, "MfFragmentMainExpandBrowser"

    const-string v1, "[HTCAlbum] Update children list"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mDelayUpdateList:Ljava/util/LinkedList;

    goto :goto_0

    .line 1119
    :sswitch_1
    const-string v0, "MfFragmentMainExpandBrowser"

    const-string v1, "searching timeout ..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showTitleProgression(Z)V

    .line 1122
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1124
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showEmptyView(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1106
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4ea5 -> :sswitch_0
    .end sparse-switch
.end method

.method private setBrowseDirectory(Ljava/util/LinkedList;)V
    .locals 21
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1132
    .local p1, serverList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;>;"
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v18

    if-nez v18, :cond_1

    .line 1273
    :cond_0
    :goto_0
    return-void

    .line 1136
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getActivity()Landroid/app/Activity;

    move-result-object v16

    .line 1138
    .local v16, parentActivity:Landroid/app/Activity;
    if-eqz v16, :cond_0

    .line 1141
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/htc/album/AlbumMain/ActivityMainDropList;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 1143
    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    .line 1144
    .local v14, intent:Landroid/content/Intent;
    if-eqz v14, :cond_0

    .line 1147
    const-string v18, "com.htc.album.action.DLNA_BROWSE_DMS_RECOVERY"

    invoke-virtual {v14}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1150
    const-string v18, "browse_info"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1152
    .local v3, bunBrowse:Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 1155
    const-string v18, "server_id"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurServerID:Ljava/lang/String;

    .line 1156
    const-string v18, "server_name"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurServerName:Ljava/lang/String;

    .line 1158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurServerID:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 1161
    const-string v18, "directory_info"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 1163
    .local v10, directoryInfo:Ljava/util/ArrayList;
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1165
    .local v9, dirInfoSize:I
    const/16 v18, 0x2

    move/from16 v0, v18

    if-lt v9, v0, :cond_0

    .line 1168
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v17

    .line 1170
    .local v17, serverCount:I
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    .line 1172
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    move/from16 v0, v17

    if-ge v12, v0, :cond_2

    .line 1174
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    .line 1176
    .local v15, item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurServerID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual {v15}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 1178
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    .line 1183
    .end local v15           #item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 1186
    const/4 v4, 0x0

    .line 1187
    .local v4, childSelectedID:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1188
    .local v6, childSelectedName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1190
    .local v5, childSelectedItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    const/4 v13, 0x1

    .line 1191
    .local v13, index:I
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurContainerID:Ljava/lang/String;

    .line 1192
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurContainerName:Ljava/lang/String;

    .line 1194
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mbVirtualFolderAdd:Z

    .line 1196
    :goto_2
    if-ge v13, v9, :cond_3

    .line 1198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurContainerID:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_6

    .line 1200
    const-string v18, "MfFragmentMainExpandBrowser"

    const-string v19, "setBrowseDirectory: current container id invalid"

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mbVirtualFolderAdd:Z

    move/from16 v18, v0

    if-eqz v18, :cond_a

    .line 1251
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getCurrentPageInfo()V

    .line 1259
    const/16 v18, 0x1

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 1261
    const-string v18, "MfFragmentMainExpandBrowser"

    const-string v19, "[setBrowseDirectory][onLaunchMediaListPage]"

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    invoke-direct/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->onLaunchMediaListPage()V

    .line 1271
    :cond_4
    :goto_4
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 1172
    .end local v4           #childSelectedID:Ljava/lang/String;
    .end local v5           #childSelectedItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    .end local v6           #childSelectedName:Ljava/lang/String;
    .end local v13           #index:I
    .restart local v15       #item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 1204
    .end local v15           #item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    .restart local v4       #childSelectedID:Ljava/lang/String;
    .restart local v5       #childSelectedItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    .restart local v6       #childSelectedName:Ljava/lang/String;
    .restart local v13       #index:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    move-object/from16 v18, v0

    if-nez v18, :cond_7

    .line 1206
    const-string v18, "MfFragmentMainExpandBrowser"

    const-string v19, "setBrowseDirectory: current item invalid"

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1210
    :cond_7
    move v8, v13

    .line 1212
    .local v8, curBrowseCacheIndex:I
    add-int/lit8 v13, v13, 0x4

    .line 1213
    if-ge v13, v9, :cond_8

    .line 1215
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #childSelectedID:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 1216
    .restart local v4       #childSelectedID:Ljava/lang/String;
    add-int/lit8 v18, v13, 0x1

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #childSelectedName:Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 1219
    .restart local v6       #childSelectedName:Ljava/lang/String;
    :cond_8
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 1220
    .local v7, childrenList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->queryRecoveryContentList(Ljava/lang/String;Ljava/util/LinkedList;)Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    move-result-object v5

    .line 1222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v18

    if-lez v18, :cond_9

    .line 1225
    const/16 v18, 0x1

    :try_start_0
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mChildAlreadyAppend:Z

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Lcom/htc/widget/MoreExpandableHtcListView;->expandAndSetChildrenWithOutAnimation(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V

    .line 1227
    const-string v18, "MfFragmentMainExpandBrowser"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[setBrowseDirecotry]ExpandChild : Container: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetContainerName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->addDirectoryInfo()V

    .line 1229
    add-int/lit8 v18, v8, 0x2

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v19

    add-int/lit8 v18, v8, 0x3

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->addPagesInfo(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1235
    :cond_9
    :goto_5
    if-eqz v4, :cond_3

    .line 1241
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurContainerID:Ljava/lang/String;

    .line 1242
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurContainerName:Ljava/lang/String;

    .line 1243
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    .line 1245
    const/4 v4, 0x0

    .line 1247
    goto/16 :goto_2

    .line 1230
    :catch_0
    move-exception v11

    .line 1231
    .local v11, e:Ljava/lang/Exception;
    const-string v18, "MfFragmentMainExpandBrowser"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "setBrowseDirectory error:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1268
    .end local v7           #childrenList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;>;"
    .end local v8           #curBrowseCacheIndex:I
    .end local v11           #e:Ljava/lang/Exception;
    :cond_a
    const-string v18, "MfFragmentMainExpandBrowser"

    const-string v19, "[setBrowseDirectory] virtual folder not add."

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method private startSearchingTimer()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1081
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1082
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1083
    const-string v0, "MfFragmentMainExpandBrowser"

    const-string v1, "startSearchingTimer"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    return-void
.end method

.method private stopSearchingTimer()V
    .locals 2

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1089
    const-string v0, "MfFragmentMainExpandBrowser"

    const-string v1, "stopSearchingTimer"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    return-void
.end method


# virtual methods
.method protected addChildrenToListView(Ljava/util/LinkedList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;>;"
    const/4 v2, 0x1

    .line 978
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-nez v0, :cond_1

    .line 1005
    :cond_0
    :goto_0
    return-void

    .line 981
    :cond_1
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mIsScrolling:Z

    if-eqz v0, :cond_2

    .line 983
    const-string v0, "MfFragmentMainExpandBrowser"

    const-string v1, "[addChildrenToListView]: keep list and delay update bcz scrolling..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mDelayUpdateList:Ljava/util/LinkedList;

    .line 986
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mIsIdleUpdateList:Z

    goto :goto_0

    .line 990
    :cond_2
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 992
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mChildAlreadyAppend:Z

    if-nez v0, :cond_3

    .line 994
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mChildAlreadyAppend:Z

    .line 995
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    invoke-virtual {v0, v1, p1}, Lcom/htc/widget/MoreExpandableHtcListView;->appendChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V

    .line 996
    const-string v0, "MfFragmentMainExpandBrowser"

    const-string v1, "ListView: append chidlren"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1000
    :cond_3
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    invoke-virtual {v0, v1, p1}, Lcom/htc/widget/MoreExpandableHtcListView;->changeChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V

    goto :goto_0
.end method

.method public addMenu(Landroid/view/Menu;III)V
    .locals 2
    .parameter "menu"
    .parameter "menuItemId"
    .parameter "menuItemTextId"
    .parameter "icon"

    .prologue
    const/4 v1, 0x0

    .line 562
    if-nez p1, :cond_1

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 566
    .local v0, item:Landroid/view/MenuItem;
    if-nez v0, :cond_0

    .line 568
    invoke-interface {p1, v1, p2, v1, p3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_0
.end method

.method public collapseAll()V
    .locals 2

    .prologue
    .line 1056
    const-string v0, "MfFragmentMainExpandBrowser"

    const-string v1, "Collpase to root"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    iget-wide v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurStartIdx:J

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->cancelBrowse(J)V

    .line 1059
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-eqz v0, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->collapseAll()V

    .line 1063
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showTitleProgression(Z)V

    .line 1064
    return-void
.end method

.method public enable2Pane()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public enableDataSourceUpdating(Z)V
    .locals 2
    .parameter "bEnable"

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 128
    .local v0, activity:Landroid/app/Activity;
    instance-of v1, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v1, :cond_0

    .line 130
    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableDataSourceUpdating(Z)V

    .line 132
    :cond_0
    return-void
.end method

.method public enableSourceContentPadding(Z)V
    .locals 5
    .parameter "bEnable"

    .prologue
    const/4 v4, 0x1

    .line 135
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 137
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getView()Landroid/view/View;

    move-result-object v2

    .line 139
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 140
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 141
    .local v1, param:Landroid/widget/FrameLayout$LayoutParams;
    if-ne v4, p1, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->getHeight(Landroid/content/Context;I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 148
    .end local v1           #param:Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    return-void

    .line 144
    .restart local v1       #param:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    const/4 v3, 0x0

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 147
    .end local v1           #param:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    const-string v3, "MfFragmentMainExpandBrowser"

    const-string v4, "view null"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enableSourceSwitch(ZZ)V
    .locals 0
    .parameter "bEnable"
    .parameter "bEnableAnimation"

    .prologue
    .line 124
    return-void
.end method

.method public goParentFolder()V
    .locals 3

    .prologue
    .line 1068
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-nez v1, :cond_1

    .line 1077
    :cond_0
    :goto_0
    return-void

    .line 1071
    :cond_1
    const-string v1, "MfFragmentMainExpandBrowser"

    const-string v2, "Move to parent folder"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpandedPosition()I

    move-result v0

    .line 1075
    .local v0, position:I
    if-ltz v0, :cond_0

    .line 1076
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v1, v0}, Lcom/htc/widget/MoreExpandableHtcListView;->setSelection(I)V

    goto :goto_0
.end method

.method public initPageComponents(Landroid/view/View;)V
    .locals 7
    .parameter "viewRoot"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 339
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 340
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 342
    .local v2, bundleArg:Landroid/os/Bundle;
    const v3, 0x7f090057

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    .line 344
    const v3, 0x7f090056

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/MoreExpandableHtcListView;

    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    .line 345
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    .line 346
    new-instance v3, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-direct {v3, v0, v4}, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;-><init>(Landroid/content/Context;Ljava/util/LinkedList;)V

    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    .line 348
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    invoke-virtual {v3, v4}, Lcom/htc/widget/MoreExpandableHtcListView;->setAdapter(Lcom/htc/widget/MoreExpandableBaseAdapter;)V

    .line 349
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mOnGroupExpandListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;

    invoke-virtual {v3, v4}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnGroupExpandListener(Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;)V

    .line 350
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mOnGroupCollapseListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;

    invoke-virtual {v3, v4}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnGroupCollapseListener(Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;)V

    .line 351
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

    invoke-virtual {v3, v4}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnChildClickListener(Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;)V

    .line 352
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    invoke-virtual {v3, v4}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 353
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-static {v3, v4, v5, v5}, Lcom/htc/album/Customizable/CustHtcListViewStyle;->setStyle(Landroid/content/Context;Lcom/htc/widget/HtcListView;ZZ)V

    .line 355
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00d4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v6}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showEmptyView(Ljava/lang/String;Z)V

    .line 356
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->startSearchingTimer()V

    .line 357
    invoke-virtual {p0, v6}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showTitleProgression(Z)V

    .line 360
    const/4 v1, 0x0

    .line 361
    .local v1, bundle:Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 362
    const-string v3, "browse_info"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1           #bundle:Landroid/os/Bundle;
    check-cast v1, Landroid/os/Bundle;

    .line 364
    .restart local v1       #bundle:Landroid/os/Bundle;
    :cond_0
    if-eqz v1, :cond_1

    .line 366
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemRequested:Ljava/lang/Object;

    .line 368
    :cond_1
    return-void
.end method

.method public isNetworkAvailable()Z
    .locals 1

    .prologue
    .line 676
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isWifiActive(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public onActionBarBackPressed()V
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 165
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 210
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 212
    return-void
.end method

.method protected onConnectionCancel()V
    .locals 2

    .prologue
    .line 719
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0121

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showEmptyView(Ljava/lang/String;Z)V

    .line 720
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->enableDLNAControl(Z)V

    .line 183
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->onCreate(Landroid/os/Bundle;)V

    .line 196
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 199
    invoke-super {p0, p1, p2, p3}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 200
    const v2, 0x7f03002c

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 202
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 203
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_WindowDefaultBackground(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 205
    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->initPageComponents(Landroid/view/View;)V

    .line 206
    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mbDestroy:Z

    .line 281
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->onDestroy()V

    .line 283
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    .line 284
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    .line 285
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    .line 287
    const-string v0, "MfFragmentMainExpandBrowser"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public onEnableActionBarAppButton()Z
    .locals 2

    .prologue
    .line 170
    const/4 v0, 0x1

    .line 171
    .local v0, bResult:Z
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableLandingPage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    const/4 v0, 0x0

    .line 174
    :cond_0
    return v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 2

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, bResult:Z
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableLandingPage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    const/4 v0, 0x1

    .line 157
    :cond_0
    return v0
.end method

.method protected onErrorCommunication(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 1015
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 1016
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 1047
    :goto_0
    return-void

    .line 1019
    :cond_0
    const/4 v1, 0x0

    .line 1020
    .local v1, nErrorID:I
    const-string v2, "error_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1022
    const-string v2, "MfFragmentMainExpandBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ActivityMainFolderBrowser][onErrorCommunication]: Error Id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    packed-switch v1, :pswitch_data_0

    .line 1035
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isWifiActive(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1037
    const/16 v2, 0x272c

    invoke-virtual {p0, v2, v5}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showFragmentDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 1028
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mErrorTitle:Ljava/lang/String;

    .line 1029
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mErrorReason:Ljava/lang/String;

    .line 1030
    const/16 v2, 0x40a

    invoke-virtual {p0, v2, v5}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showFragmentDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 1041
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0049

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mErrorTitle:Ljava/lang/String;

    .line 1042
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00e4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mErrorReason:Ljava/lang/String;

    .line 1043
    const/16 v2, 0x272b

    invoke-virtual {p0, v2, v5}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showFragmentDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 1024
    :pswitch_data_0
    .packed-switch 0x321
        :pswitch_0
    .end packed-switch
.end method

.method protected onMessageHandler(Landroid/os/Message;)V
    .locals 22
    .parameter "msg"

    .prologue
    .line 724
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mbDestroy:Z

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 936
    :cond_0
    :goto_0
    return-void

    .line 727
    :cond_1
    const/16 v20, 0x0

    .line 728
    .local v20, size:I
    const/16 v21, 0x0

    .line 732
    .local v21, tmpList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;>;"
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 762
    :sswitch_0
    invoke-virtual/range {p0 .. p1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->onErrorCommunication(Landroid/os/Message;)V

    .line 763
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showTitleProgression(Z)V

    goto :goto_0

    .line 735
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->onContentUpdate(Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;)Ljava/util/LinkedList;

    move-result-object v21

    .line 736
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->addChildrenToListView(Ljava/util/LinkedList;)V

    goto :goto_0

    .line 742
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-eqz v2, :cond_0

    .line 745
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v14

    check-cast v14, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    .line 747
    .local v14, itemInfo:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    if-eqz v14, :cond_0

    .line 750
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-virtual {v14}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->getChildrenCount()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->onContentUpdateComplete(Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;I)Ljava/util/LinkedList;

    move-result-object v21

    .line 751
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->addChildrenToListView(Ljava/util/LinkedList;)V

    .line 753
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mbBrowseComplete:Z

    if-eqz v2, :cond_0

    .line 755
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showTitleProgression(Z)V

    .line 756
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->setCancelled(Z)V

    goto :goto_0

    .line 768
    .end local v14           #itemInfo:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-eqz v2, :cond_0

    .line 771
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showListView()V

    .line 773
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    .line 774
    .local v13, itemAdd:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;
    if-nez v13, :cond_2

    .line 776
    const-string v2, "MfFragmentMainExpandBrowser"

    const-string v3, "SYNC_SERVER_ADD: null!!!"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 780
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v20

    .line 781
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    move/from16 v0, v20

    if-ge v11, v0, :cond_3

    .line 783
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v2, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetId()Ljava/lang/String;

    move-result-object v19

    .line 784
    .local v19, serverID:Ljava/lang/String;
    iget-object v2, v13, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 781
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 788
    .end local v19           #serverID:Ljava/lang/String;
    :cond_3
    const-string v2, "MfFragmentMainExpandBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SYNC_SERVER_ADD:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v13, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v13, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    new-instance v21, Ljava/util/LinkedList;

    .end local v21           #tmpList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;>;"
    invoke-direct/range {v21 .. v21}, Ljava/util/LinkedList;-><init>()V

    .line 791
    .restart local v21       #tmpList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;>;"
    new-instance v2, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    iget-object v3, v13, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    iget-object v4, v13, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    const/4 v5, 0x0

    move/from16 v0, v20

    int-to-long v6, v0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 793
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/htc/widget/MoreExpandableHtcListView;->appendRoot(Ljava/util/LinkedList;)V

    .line 795
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showTitleProgression(Z)V

    goto/16 :goto_0

    .line 801
    .end local v11           #i:I
    .end local v13           #itemAdd:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-nez v2, :cond_4

    .line 803
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00d4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showEmptyView(Ljava/lang/String;Z)V

    .line 804
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->refreshServers()V

    goto/16 :goto_0

    .line 808
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getServerList()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    .line 809
    .local v18, listServer:Ljava/util/List;
    if-nez v18, :cond_5

    .line 811
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00d4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showEmptyView(Ljava/lang/String;Z)V

    .line 812
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->refreshServers()V

    goto/16 :goto_0

    .line 816
    :cond_5
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v20

    .line 818
    const-string v2, "MfFragmentMainExpandBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SYNC_SERVER_ADD_LIST: size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    if-nez v20, :cond_6

    .line 823
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    .line 826
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->BlockingChangeRoot(Ljava/util/LinkedList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->refreshServers()V

    goto/16 :goto_0

    .line 828
    :catch_0
    move-exception v10

    .line 830
    .local v10, e:Ljava/lang/Exception;
    const-string v2, "MfFragmentMainExpandBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Blocking change root : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->changeRoot(Ljava/util/LinkedList;)V

    goto :goto_2

    .line 839
    .end local v10           #e:Ljava/lang/Exception;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showListView()V

    .line 841
    new-instance v21, Ljava/util/LinkedList;

    .end local v21           #tmpList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;>;"
    invoke-direct/range {v21 .. v21}, Ljava/util/LinkedList;-><init>()V

    .line 843
    .restart local v21       #tmpList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;>;"
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_3
    move/from16 v0, v20

    if-ge v11, v0, :cond_7

    .line 845
    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    .line 846
    .local v16, listItem:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;
    new-instance v2, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mUriThumb:Ljava/lang/String;

    int-to-long v6, v11

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 843
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 849
    .end local v16           #listItem:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;
    :cond_7
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    .line 851
    const/4 v9, 0x1

    .line 855
    .local v9, bRecovery:Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->BlockingChangeRoot(Ljava/util/LinkedList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 863
    :goto_4
    const-string v2, "MfFragmentMainExpandBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adapter count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->removePagesInfo()V

    .line 867
    if-eqz v9, :cond_8

    .line 868
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->setBrowseDirectory(Ljava/util/LinkedList;)V

    .line 870
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showTitleProgression(Z)V

    goto/16 :goto_0

    .line 857
    :catch_1
    move-exception v10

    .line 859
    .restart local v10       #e:Ljava/lang/Exception;
    const-string v2, "MfFragmentMainExpandBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Blocking change root : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    const/4 v9, 0x0

    .line 861
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->changeRoot(Ljava/util/LinkedList;)V

    goto :goto_4

    .line 876
    .end local v9           #bRecovery:Z
    .end local v10           #e:Ljava/lang/Exception;
    .end local v11           #i:I
    .end local v18           #listServer:Ljava/util/List;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-eqz v2, :cond_0

    .line 879
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showListView()V

    .line 881
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    .line 882
    .local v15, itemRemove:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;
    if-nez v15, :cond_9

    .line 884
    const-string v2, "MfFragmentMainExpandBrowser"

    const-string v3, "SYNC_SERVER_REMOVE: null!!!"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 888
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v20

    .line 890
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_5
    move/from16 v0, v20

    if-ge v11, v0, :cond_a

    .line 892
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v2, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetId()Ljava/lang/String;

    move-result-object v19

    .line 893
    .restart local v19       #serverID:Ljava/lang/String;
    iget-object v2, v15, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 895
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2, v11}, Lcom/htc/widget/MoreExpandableHtcListView;->deleteItem(I)V

    .line 900
    .end local v19           #serverID:Ljava/lang/String;
    :cond_a
    const-string v2, "MfFragmentMainExpandBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SYNC_SERVER_REMOVE:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v15, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v15, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 890
    .restart local v19       #serverID:Ljava/lang/String;
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 905
    .end local v11           #i:I
    .end local v15           #itemRemove:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;
    .end local v19           #serverID:Ljava/lang/String;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    .line 906
    .local v12, item:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;
    if-eqz v12, :cond_0

    .line 908
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v20

    .line 909
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_6
    move/from16 v0, v20

    if-ge v11, v0, :cond_0

    .line 911
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v2, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    .line 912
    .local v16, listItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    if-nez v16, :cond_d

    .line 914
    const-string v2, "MfFragmentMainExpandBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SYNC_PHOTO_SERVER: index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    :cond_c
    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 917
    :cond_d
    invoke-virtual/range {v16 .. v16}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e

    .line 918
    const-string v2, "MfFragmentMainExpandBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SYNC_PHOTO_SERVER server_id : index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 922
    :cond_e
    invoke-virtual/range {v16 .. v16}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetId()Ljava/lang/String;

    move-result-object v17

    .line 923
    .local v17, listItemId:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetImgPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    iget-object v2, v12, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 924
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->requestServerThumbnail(Ljava/lang/String;)V

    .line 926
    :cond_f
    iget-object v2, v12, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 928
    iget-object v2, v12, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mUriThumb:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->SetImgPath(Ljava/lang/String;)V

    .line 929
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->refreshUI()V

    .line 930
    const-string v2, "MfFragmentMainExpandBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SYNC_PHOTO_SERVER: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 732
    :sswitch_data_0
    .sparse-switch
        0x2767 -> :sswitch_0
        0x4e98 -> :sswitch_3
        0x4e99 -> :sswitch_4
        0x4e9a -> :sswitch_5
        0x4e9b -> :sswitch_1
        0x4e9c -> :sswitch_2
        0x4e9d -> :sswitch_6
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "newIntent"

    .prologue
    .line 292
    const-string v0, "MfFragmentMainExpandBrowser"

    const-string v1, "[HTCAlbum][ActivityExpandableListView][onNewIntent]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 603
    const-string v1, "MfFragmentMainExpandBrowser"

    const-string v2, "[HTCAlbum][ExapandBrowser]onMenuItemSelected"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const/4 v0, 0x0

    .line 607
    .local v0, bResult:Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 628
    :goto_0
    return v0

    .line 611
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->onRefresh()V

    .line 612
    const/4 v0, 0x1

    .line 614
    goto :goto_0

    .line 617
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->goParentFolder()V

    .line 618
    const/4 v0, 0x1

    .line 620
    goto :goto_0

    .line 623
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->collapseAll()V

    .line 624
    const/4 v0, 0x1

    goto :goto_0

    .line 607
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090092 -> :sswitch_0
        0x7f0a00dc -> :sswitch_2
        0x7f0a00dd -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 260
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->onPause()V

    .line 261
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showTitleProgression(Z)V

    .line 262
    iget-wide v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurStartIdx:J

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->cancelBrowse(J)V

    .line 263
    const-string v0, "MfFragmentMainExpandBrowser"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const v6, 0x7f0a00dd

    const v5, 0x7f0a00dc

    const/4 v3, 0x0

    .line 575
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 577
    invoke-virtual {p0, p1, v6, v6, v3}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->addMenu(Landroid/view/Menu;III)V

    .line 578
    invoke-virtual {p0, p1, v5, v5, v3}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->addMenu(Landroid/view/Menu;III)V

    .line 579
    const v1, 0x7f090092

    const v4, 0x204021a

    invoke-virtual {p0, p1, v1, v4, v3}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->addMenu(Landroid/view/Menu;III)V

    .line 581
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-eqz v1, :cond_1

    .line 584
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 585
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 586
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 588
    :cond_0
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 589
    if-eqz v0, :cond_1

    .line 590
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    :goto_1
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 593
    .end local v0           #item:Landroid/view/MenuItem;
    :cond_1
    const-string v1, "MfFragmentMainExpandBrowser"

    const-string v2, "[HTCAlbum][ExapandBrowser]onPrepareOptionsMenu"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    return-void

    .restart local v0       #item:Landroid/view/MenuItem;
    :cond_2
    move v1, v3

    .line 586
    goto :goto_0

    :cond_3
    move v2, v3

    .line 590
    goto :goto_1
.end method

.method public onRefresh()V
    .locals 4

    .prologue
    .line 311
    const-string v2, "MfFragmentMainExpandBrowser"

    const-string v3, "onRefresh"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00d4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showEmptyView(Ljava/lang/String;Z)V

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->refreshServers()V

    .line 320
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-nez v2, :cond_2

    .line 335
    :cond_1
    :goto_0
    return-void

    .line 323
    :cond_2
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 325
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpandedPosition()I

    move-result v1

    .line 327
    .local v1, pos:I
    if-ltz v1, :cond_1

    .line 330
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    .line 332
    .local v0, itemInfo:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetContainerID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->removeChildrenDirectoryInfo(Ljava/lang/String;)V

    .line 333
    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->expandBrowse(Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const v6, 0x7f0a0121

    const v5, 0x7f0a00d4

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 215
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->onResume()V

    .line 216
    const-string v1, "MfFragmentMainExpandBrowser"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 220
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showEmptyView(Ljava/lang/String;Z)V

    .line 221
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->stopSearchingTimer()V

    .line 222
    const/16 v1, 0x272c

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showFragmentDialog(ILandroid/os/Bundle;)Z

    .line 255
    :cond_0
    :goto_0
    invoke-virtual {p0, v3, v4}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->enableSourceSwitch(ZZ)V

    .line 256
    :cond_1
    return-void

    .line 226
    :cond_2
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 228
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showListView()V

    goto :goto_0

    .line 233
    :cond_3
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    .line 236
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    .line 238
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showEmptyView(Ljava/lang/String;Z)V

    .line 239
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->startSearchingTimer()V

    .line 240
    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showTitleProgression(Z)V

    goto :goto_0

    .line 244
    :cond_4
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    const v2, 0x7f090012

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 245
    .local v0, viewText:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->startSearchingTimer()V

    .line 249
    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showTitleProgression(Z)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 268
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->onStart()V

    .line 269
    const-string v0, "MfFragmentMainExpandBrowser"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 274
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->onStop()V

    .line 275
    const-string v0, "MfFragmentMainExpandBrowser"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public paneRight()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public refreshServers()V
    .locals 1

    .prologue
    .line 304
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->refreshServers()V

    .line 305
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->startSearchingTimer()V

    .line 306
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showTitleProgression(Z)V

    .line 307
    return-void
.end method

.method protected refreshUI()V
    .locals 1

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    if-eqz v0, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->notifyDataSetChanged()V

    .line 1011
    :cond_0
    return-void
.end method

.method protected showDialogErrorCommunication()V
    .locals 3

    .prologue
    .line 680
    invoke-static {}, Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;->instance()Landroid/app/DialogFragment;

    move-result-object v0

    check-cast v0, Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;

    .line 681
    .local v0, dialog:Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mErrorTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;->setTitle(Ljava/lang/String;)V

    .line 682
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mErrorReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;->setMessage(Ljava/lang/String;)V

    .line 683
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 684
    return-void
.end method

.method protected showDialogNoAuthorization()V
    .locals 3

    .prologue
    .line 687
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_AUTHORIZATION;->instance(Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)Landroid/app/DialogFragment;

    move-result-object v0

    check-cast v0, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_AUTHORIZATION;

    .line 688
    .local v0, dialog:Lcom/htc/album/helper/HtcDialogManager$DLG_NO_AUTHORIZATION;
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mErrorTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_AUTHORIZATION;->setTitle(Ljava/lang/String;)V

    .line 689
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mErrorReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_AUTHORIZATION;->setMessage(Ljava/lang/String;)V

    .line 690
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_AUTHORIZATION;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 691
    return-void
.end method

.method protected showDialogNoConnection()V
    .locals 3

    .prologue
    .line 694
    new-instance v1, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$4;

    invoke-direct {v1, p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$4;-><init>(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)V

    invoke-static {v1}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;->instance(Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)Landroid/app/DialogFragment;

    move-result-object v0

    check-cast v0, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;

    .line 712
    .local v0, dialog:Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;
    const v1, 0x7f0a00df

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;->setTitle(Ljava/lang/String;)V

    .line 713
    const v1, 0x7f0a0120

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;->setMessage(Ljava/lang/String;)V

    .line 714
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 715
    return-void
.end method

.method public showEmptyView(Ljava/lang/String;Z)V
    .locals 6
    .parameter "text"
    .parameter "showProgressBar"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 633
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    if-nez v2, :cond_0

    .line 657
    :goto_0
    return-void

    .line 636
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    const v3, 0x7f090060

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 637
    .local v0, progressbar:Landroid/widget/ProgressBar;
    if-eqz v0, :cond_1

    .line 639
    if-eqz p2, :cond_3

    .line 640
    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 646
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    const v3, 0x7f090012

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 647
    .local v1, viewText_1:Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 651
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-eqz v2, :cond_2

    .line 652
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2, v5}, Lcom/htc/widget/MoreExpandableHtcListView;->setVisibility(I)V

    .line 654
    :cond_2
    invoke-virtual {p0, v4}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->enableSourceContentPadding(Z)V

    .line 656
    const-string v2, "MfFragmentMainExpandBrowser"

    const-string v3, "show empty view"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 642
    .end local v1           #viewText_1:Landroid/widget/TextView;
    :cond_3
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1
.end method

.method public showListView()V
    .locals 2

    .prologue
    .line 661
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->stopSearchingTimer()V

    .line 663
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-eqz v0, :cond_1

    .line 667
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->setVisibility(I)V

    .line 669
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->enableSourceContentPadding(Z)V

    .line 671
    const-string v0, "MfFragmentMainExpandBrowser"

    const-string v1, "show listview"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    return-void
.end method

.method public showTitleProgression(Z)V
    .locals 0
    .parameter "bEnable"

    .prologue
    .line 1051
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->enableDataSourceUpdating(Z)V

    .line 1052
    return-void
.end method
