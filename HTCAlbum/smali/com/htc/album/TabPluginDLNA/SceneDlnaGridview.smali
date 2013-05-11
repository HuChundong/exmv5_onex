.class public Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;
.super Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;
.source "SceneDlnaGridview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview$1;,
        Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview$GridViewScrollListener;,
        Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview$OnItemVibrateListener;
    }
.end annotation


# static fields
.field private static final GO_BACK_TYPE_DEFAULT:I = 0x0

.field static final LOG_TAG:Ljava/lang/String; = "SceneDlnaGridview"

.field private static final VIDEO_LANDSCAPE:Ljava/lang/String; = "landscape"

.field private static final VIDEO_LAUNCHER:Ljava/lang/String; = "launcher"


# instance fields
.field private final SCENE_ID:I

.field private bContainerActivityForeground:Z

.field private mItemClickPosition:Lcom/htc/sunnyCore/view/Vector3F;

.field private mOnItemVibrateListener:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview$OnItemVibrateListener;


# direct methods
.method public constructor <init>(Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)V
    .locals 2
    .parameter "tvListener"

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;-><init>()V

    .line 42
    const-class v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->SCENE_ID:I

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->bContainerActivityForeground:Z

    .line 50
    new-instance v0, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v0, v1, v1, v1}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mItemClickPosition:Lcom/htc/sunnyCore/view/Vector3F;

    .line 52
    new-instance v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview$OnItemVibrateListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview$OnItemVibrateListener;-><init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview$1;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mOnItemVibrateListener:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview$OnItemVibrateListener;

    .line 56
    iput-object p1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mTVDisplayListener:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;

    .line 57
    return-void
.end method

.method static synthetic access$200(Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;Lcom/htc/sunnyCore/widget/gridview/GridView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onSceneScrollStateChangedIRT(Lcom/htc/sunnyCore/widget/gridview/GridView;I)V

    return-void
.end method

.method private cancelAllRequestingContent()V
    .locals 5

    .prologue
    .line 858
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v1, :cond_0

    .line 874
    :goto_0
    return-void

    .line 861
    :cond_0
    const-string v1, "SceneDlnaGridview"

    const-string v2, "[HTCAlbum][SceneDlnaGridview]cancelRequestingContent"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->cancelThumbnailDownloadRequests()V

    .line 865
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;

    .line 867
    .local v0, gridAdapter:Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    if-eqz v1, :cond_1

    .line 869
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v1, v1, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v2, v2, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mMediumID:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;->browseCancel(Ljava/lang/String;Ljava/lang/String;J)V

    .line 873
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;->setLoadMoreState(Z)V

    goto :goto_0
.end method

.method private onSceneScrollStateChangedIRT(Lcom/htc/sunnyCore/widget/gridview/GridView;I)V
    .locals 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 485
    const/16 v0, 0x4f4f

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onPostMessage(ILjava/lang/Object;I)V

    .line 486
    return-void
.end method

.method private showMore(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 445
    .local p1, moreBtn:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 447
    :cond_0
    const-string v0, "SceneDlnaGridview"

    const-string v1, "[showMore]can\'t get context"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    :cond_1
    :goto_0
    return-void

    .line 451
    :cond_2
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->clearBubble()V

    .line 454
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_DLNA:Z

    if-nez v0, :cond_1

    .line 456
    const/16 v0, 0xf

    const/4 v1, 0x0

    const v2, 0x7f0a00da

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    goto :goto_0
.end method


# virtual methods
.method public adapterIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const-string v0, "AdapterDlnaMediumItem"

    return-object v0
.end method

.method public getHeaderSubtitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 745
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 746
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    if-nez v0, :cond_0

    .line 736
    const/4 v0, 0x0

    .line 737
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mMediumName:Ljava/lang/String;

    goto :goto_0
.end method

.method public notifyDataChangedAt(I)V
    .locals 3
    .parameter "nIndex"

    .prologue
    .line 71
    const-string v0, "SceneDlnaGridview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneDlnaGridview][notifyDataChangedAt]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->notifyPreparatorMediaDataChange(II)V

    .line 73
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->notifyDataSetChanged()V

    .line 65
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->sendIDLEScrollState(I)V

    .line 66
    const-string v0, "SceneDlnaGridview"

    const-string v1, "[HTCAlbum][SceneDlnaGridview][notifyDataSetChanged]..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public onActionBarBackPressed()V
    .locals 2

    .prologue
    .line 316
    const/4 v0, 0x1

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 319
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 325
    :goto_0
    return-void

    .line 323
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onBackPressed()Z

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 800
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->cancelAllRequestingContent()V

    .line 802
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v7, :cond_1

    .line 850
    :cond_0
    :goto_0
    return v5

    .line 805
    :cond_1
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 806
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 810
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v7

    if-eq v6, v7, :cond_0

    .line 817
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 818
    .local v3, newIntent:Landroid/content/Intent;
    const-class v7, Lcom/htc/album/AlbumMain/ActivityMainDropList;

    invoke-virtual {v3, v0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 819
    const-string v7, "tab_default"

    const v8, 0x7f0a00d1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 821
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 822
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_2

    .line 824
    const-string v7, "directmode"

    const-string v8, "directmode"

    invoke-virtual {v2, v8, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 825
    const-string v7, "browse_mode"

    const-string v8, "browse_mode"

    invoke-virtual {v2, v8, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 826
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    if-eqz v5, :cond_2

    .line 828
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 829
    .local v1, bundle:Landroid/os/Bundle;
    const-string v5, "server_id"

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v8, "server_id"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    const-string v5, "server_name"

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v8, "server_name"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v5, :cond_3

    .line 834
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getServiceDirectory()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    .line 835
    .local v4, serviceDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;
    const-string v5, "directory_info"

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->exportDirectories()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 842
    .end local v4           #serviceDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;
    :goto_1
    const-string v5, "browse_info"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 843
    const-string v5, "com.htc.album.action.DLNA_BROWSE_DMS_RECOVERY"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 847
    .end local v1           #bundle:Landroid/os/Bundle;
    :cond_2
    const/high16 v5, 0x400

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 848
    invoke-virtual {v0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 849
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    move v5, v6

    .line 850
    goto/16 :goto_0

    .line 839
    .restart local v1       #bundle:Landroid/os/Bundle;
    :cond_3
    const-string v5, "directory_info"

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v8, "directory_info"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method public onBindAdapter()V
    .locals 3

    .prologue
    .line 391
    const-string v0, "SceneDlnaGridview"

    const-string v1, "[HTCAlbum][SceneDlnaGridview][onBindAdapter]: ..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onBindAdapter()V

    .line 393
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setMediaList(Lcom/htc/sunnyCore/IMediaList;)V

    .line 394
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    new-instance v1, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview$GridViewScrollListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview$GridViewScrollListener;-><init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview$1;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setOnScrollListener(Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;)V

    .line 395
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->invalidateControlBars()V

    .line 396
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->sendIDLEScrollState(I)V

    .line 397
    return-void
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 419
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    const-string v0, "SceneDlnaGridview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneDlnaGridview][onControlButtonClick]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 424
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onBackPressed()Z

    goto :goto_0

    .line 427
    :sswitch_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->refreshFolder()V

    .line 430
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onNotifyUpdating(Z)V

    .line 431
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->enablePageProgressLoading(Z)V

    goto :goto_0

    .line 435
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onSelectPlayer()V

    goto :goto_0

    .line 438
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->showMore(Lcom/htc/album/modules/ui/widget/ControlButton;)V

    goto :goto_0

    .line 420
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
        0xf -> :sswitch_2
        0x11 -> :sswitch_3
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateAnimation(I)Landroid/os/Bundle;
    .locals 2
    .parameter "nAnimState"

    .prologue
    .line 259
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onCreateAnimation(I)Landroid/os/Bundle;

    move-result-object v0

    .line 260
    .local v0, animationBundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onNotifyAnimationReady()V

    .line 263
    :cond_0
    return-object v0
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 6
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 751
    const-string v3, "SceneDlnaGridview"

    const-string v4, "[HtcAlbum][SceneDlnaGridview][onCreateFooterBar]  "

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v3, :cond_1

    .line 770
    :cond_0
    :goto_0
    return-object v0

    .line 755
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 756
    .local v1, context:Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 759
    const/4 v0, 0x0

    .line 760
    .local v0, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->enableRightFooter()Z

    move-result v3

    invoke-static {v1, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;Z)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    .line 761
    const/4 v3, 0x6

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Updates_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x204021a

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 763
    sget-boolean v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_DLNA:Z

    if-nez v3, :cond_2

    .line 765
    const/16 v3, 0xf

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_TvOut_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x7f0a00da

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 768
    :cond_2
    const-string v2, "SceneDlnaGridview"

    const-string v3, "onCreateFooterBar"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunnyCore/view/SView;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 189
    const-string v4, "SceneDlnaGridview"

    const-string v5, "[HTCAlbum][SceneDlnaGridView][onCreateScene]"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-result-object v1

    .line 193
    .local v1, gridview:Lcom/htc/sunnyCore/widget/gridview/GridView;
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 194
    .local v0, context:Landroid/content/Context;
    const/4 v3, 0x0

    .line 195
    .local v3, nTop:I
    const/4 v2, 0x0

    .line 196
    .local v2, nBottom:I
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 198
    invoke-static {v0, v6}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->getHeight(Landroid/content/Context;I)I

    move-result v3

    .line 209
    :goto_0
    invoke-virtual {v1, v7, v3, v7, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setPadding(IIII)V

    .line 210
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onUpdateMainViewLayout(Lcom/htc/sunnyCore/widget/gridview/GridView;Landroid/content/res/Configuration;)V

    .line 212
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mOnItemVibrateListener:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview$OnItemVibrateListener;

    invoke-virtual {v1, v4}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setOnItemLongPressVibrateListener(Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongPressVibrateListener;)V

    .line 214
    return-object v1

    .line 204
    :cond_0
    invoke-static {v0, v6}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->getHeight(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07002b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v4, -0x1

    .line 207
    invoke-static {v0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v2

    goto :goto_0
.end method

.method public onCreateSceneAnimation()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;
    .locals 2

    .prologue
    .line 254
    new-instance v1, Lcom/htc/album/Animation/animationSetGridview;

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-direct {v1, v0}, Lcom/htc/album/Animation/animationSetGridview;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;)V

    return-object v1
.end method

.method public onEnableActionBarAppButton()Z
    .locals 3

    .prologue
    .line 328
    const/4 v1, 0x0

    .line 329
    .local v1, bResult:Z
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 331
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 332
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/sunny2/common/HtcPaneManager;->isLandscape(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    const/4 v1, 0x1

    .line 340
    .end local v0           #activity:Landroid/app/Activity;
    :cond_0
    return v1
.end method

.method public onEnableActionBarBackButton()Z
    .locals 3

    .prologue
    .line 300
    const/4 v1, 0x0

    .line 301
    .local v1, bResult:Z
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 303
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 304
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/sunny2/common/HtcPaneManager;->isLandscape(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 305
    const/4 v1, 0x1

    .line 312
    .end local v0           #activity:Landroid/app/Activity;
    :cond_0
    :goto_0
    return v1

    .line 310
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 5
    .parameter "bundle"

    .prologue
    .line 220
    const-string v2, "SceneDlnaGridview"

    const-string v3, "[HTCAlbum][SceneDlnaGridview][onEnterScene]"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onEnterScene(Landroid/os/Bundle;)V

    .line 223
    if-eqz p1, :cond_1

    .line 225
    const-string v2, "directory_info"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 227
    .local v0, importInfo:Ljava/util/ArrayList;
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    if-nez v2, :cond_0

    .line 229
    new-instance v2, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    invoke-direct {v2}, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;-><init>()V

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    .line 232
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    const-string v3, "server_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    .line 233
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    const-string v3, "server_name"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    .line 235
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 237
    .local v1, nIndexCurrentDirectory:I
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mMediumID:Ljava/lang/String;

    .line 238
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mMediumName:Ljava/lang/String;

    .line 240
    const-string v2, "SceneDlnaGridview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SceneDlnaGridview][onEnterScene]: Directories: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v2, "SceneDlnaGridview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SceneDlnaGridview][onEnterScene]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v4, v4, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .end local v0           #importInfo:Ljava/util/ArrayList;
    .end local v1           #nIndexCurrentDirectory:I
    :cond_1
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 251
    :goto_0
    return-void

    .line 247
    :cond_2
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->defaultControlBarOn()Z

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->createFooterBar(IZ)V

    goto :goto_0
.end method

.method protected onFilmstripViewScrollStateChanged(I)V
    .locals 0
    .parameter "scrollState"

    .prologue
    .line 512
    return-void
.end method

.method protected onGoToActivityView(ILcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)V
    .locals 7
    .parameter "nIndex"
    .parameter "mediumInfo"

    .prologue
    .line 613
    const-string v4, "SceneDlnaGridview"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][SceneDlnaGridview][onGoToActivityView]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 616
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->isDLNAPlaying(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 618
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->getRunningDMR(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 619
    .local v2, dmr:Ljava/lang/String;
    invoke-virtual {p0, v2, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onDMRChanged(Ljava/lang/String;I)V

    .line 640
    .end local v2           #dmr:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v4, :cond_0

    .line 626
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getDirectoryInfo()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    .line 627
    .local v1, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    if-eqz v1, :cond_0

    .line 630
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getServiceDirectory()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    .line 632
    .local v3, serviceDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;
    const-string v4, "2"

    iget-object v5, p2, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 634
    invoke-virtual {p0, p1, v1, v3, p2}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onGoToViewImage(ILcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)V

    goto :goto_0

    .line 636
    :cond_2
    const-string v4, "4"

    iget-object v5, p2, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 638
    invoke-virtual {p0, p1, v1, v3, p2}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onGoToViewVideo(ILcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)V

    goto :goto_0
.end method

.method public onGoToViewImage(ILcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)V
    .locals 8
    .parameter "nIndex"
    .parameter "dirInfo"
    .parameter "serviceDirectory"
    .parameter "mediumInfo"

    .prologue
    .line 647
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->cancelAllRequestingContent()V

    .line 649
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    check-cast v1, Lcom/htc/album/Animation/animationSetGridview;

    .line 650
    .local v1, animationSet:Lcom/htc/album/Animation/animationSetGridview;
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mItemClickPosition:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-virtual {v1, p1, v4}, Lcom/htc/album/Animation/animationSetGridview;->setFocused(ILcom/htc/sunnyCore/view/Vector3F;)V

    .line 651
    const-string v4, "SceneDlnaGridview"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][SceneDlnaGridview][onGoToActivityView]1: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    invoke-virtual {p3}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->exportDirectories()Ljava/util/ArrayList;

    move-result-object v3

    .line 654
    .local v3, objList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v5, "directory_info"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 655
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v5, "DLNA_CONTENT"

    iget-object v6, p4, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 658
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 660
    .local v0, activity:Landroid/app/Activity;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 661
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "goto_scene"

    const-string v5, "SceneDlnaFullscreen"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 662
    const-string v4, "dlna_bundle"

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 664
    const-class v4, Lcom/htc/album/TabPluginDLNA/ActivityMainMediaList;

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 665
    const/high16 v4, 0x400

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 666
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 672
    .end local v0           #activity:Landroid/app/Activity;
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 670
    :cond_0
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v6, "SceneDlnaFullscreen"

    const/4 v7, 0x0

    invoke-interface {v4, v5, v6, v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onGoToViewVideo(ILcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)V
    .locals 10
    .parameter "nIndex"
    .parameter "dirInfo"
    .parameter "serviceDirectory"
    .parameter "mediumInfo"

    .prologue
    const/4 v9, 0x0

    .line 678
    invoke-virtual {p3}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->exportDirectories()Ljava/util/ArrayList;

    move-result-object v5

    .line 679
    .local v5, objList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static {v5}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->exportDirectoriesToStringURI(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    .line 681
    .local v4, location:Ljava/lang/String;
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->cancelAllRequestingContent()V

    .line 683
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 684
    .local v0, bunBrowse:Landroid/os/Bundle;
    const-string v6, "key_bucket_id"

    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v7, v7, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    const-string v6, "key_folder_name"

    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v7, v7, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const-string v6, "location"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const-string v6, "directory_info"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 688
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    iget-object v7, p4, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 689
    .local v3, intent:Landroid/content/Intent;
    const/4 v1, 0x1

    .line 692
    .local v1, canPlay:Z
    :try_start_0
    const-string v6, "SceneDlnaGridview"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Launch Video Player "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p4, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    const-string v6, "com.htc.video"

    const-string v7, "com.htc.video.ViewVideo"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 694
    iget-object v6, p4, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "video/3gpp"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 695
    const-string v6, "landscape"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 696
    const-string v6, "launcher"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 697
    const-string v6, "DLNA_SERVER"

    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v7, v7, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 698
    const-string v6, "DLNA_CONTENT"

    iget-object v7, p4, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 699
    const-string v6, "DLNA_CONTENT_TITLE"

    iget-object v7, p4, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 700
    const-string v6, "DLNA_CONTAINER"

    invoke-virtual {p2}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 701
    const-string v6, "Extras"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 704
    const-string v6, "dmc_mode"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 706
    const-string v6, "SceneDlnaGridview"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SceneDlnaGridview][LaunchVideo]:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p4, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    :goto_0
    if-nez v1, :cond_0

    .line 718
    const-string v6, "com.htc.album"

    const-string v7, "com.htc.album.TabPluginDevice.ViewVideo"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 719
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v3, v9}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 721
    :cond_0
    return-void

    .line 710
    :catch_0
    move-exception v2

    .line 712
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "SceneDlnaGridview"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Launch Video Player failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onItemClickMediumInfo(ILcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)V
    .locals 3
    .parameter "nIndex"
    .parameter "mediumInfo"

    .prologue
    .line 601
    const-string v0, "SceneDlnaGridview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneDlnaGridview][onItemClickPageInfo]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const-string v0, "2"

    iget-object v1, p2, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "4"

    iget-object v1, p2, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 607
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onGoToActivityView(ILcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)V

    .line 609
    :cond_1
    return-void
.end method

.method public onItemClickPageInfo(Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;)V
    .locals 4
    .parameter "pageInfo"

    .prologue
    const/4 v3, 0x1

    .line 559
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getIntermediate()Z

    move-result v1

    if-ne v3, v1, :cond_0

    .line 561
    const-string v1, "SceneDlnaGridview"

    const-string v2, "[HTCAlbum][SceneDlnaGridview][onItemClickPageInfo]: already loading..."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    :goto_0
    return-void

    .line 565
    :cond_0
    const/4 v0, 0x0

    .line 567
    .local v0, gridAdapter:Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v1, :cond_1

    .line 568
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .end local v0           #gridAdapter:Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;
    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;

    .line 570
    .restart local v0       #gridAdapter:Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;
    :cond_1
    if-eqz v0, :cond_3

    .line 572
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;->getLoadMoreState()Z

    move-result v1

    if-ne v1, v3, :cond_2

    .line 574
    const-string v1, "SceneDlnaGridview"

    const-string v2, "[HTCAlbum][SceneDlnaGridview][onItemClickPageInfo]: request loading processing..."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 578
    :cond_2
    invoke-virtual {v0, v3}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;->setLoadMoreState(Z)V

    .line 583
    :cond_3
    const/4 v1, -0x1

    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 585
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onPageUp()V

    .line 586
    const-string v1, "SceneDlnaGridview"

    const-string v2, "[HTCAlbum][SceneDlnaGridview][onItemClickPageInfo]: start loading up..."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 588
    :cond_4
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v1

    if-ne v3, v1, :cond_5

    .line 590
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onPageDown()V

    .line 591
    const-string v1, "SceneDlnaGridview"

    const-string v2, "[HTCAlbum][SceneDlnaGridview][onItemClickPageInfo]: start loading down..."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 595
    :cond_5
    const-string v1, "SceneDlnaGridview"

    const-string v2, "[HTCAlbum][SceneDlnaGridview][onItemClickPageInfo]: page direction wrong..."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onItemSelected(I)V
    .locals 7
    .parameter "nIndex"

    .prologue
    const/4 v6, -0x1

    .line 516
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v3, p1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v2

    .line 518
    .local v2, objItem:Lcom/htc/sunnyCore/IMediaData;
    if-nez v2, :cond_1

    .line 520
    const-string v3, "SceneDlnaGridview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SceneDlnaGridview][onItemSelected]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    .end local v2           #objItem:Lcom/htc/sunnyCore/IMediaData;
    :cond_0
    :goto_0
    return-void

    .line 525
    .restart local v2       #objItem:Lcom/htc/sunnyCore/IMediaData;
    :cond_1
    instance-of v3, v2, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    if-eqz v3, :cond_2

    .line 527
    iput v6, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mTVOutIndex:I

    .line 528
    check-cast v2, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .end local v2           #objItem:Lcom/htc/sunnyCore/IMediaData;
    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onItemClickPageInfo(Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;)V

    goto :goto_0

    .line 530
    .restart local v2       #objItem:Lcom/htc/sunnyCore/IMediaData;
    :cond_2
    instance-of v3, v2, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    if-eqz v3, :cond_0

    .line 534
    :try_start_0
    iput p1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mTVOutIndex:I

    .line 535
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 536
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 537
    .local v1, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mTVDisplayListener:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;

    invoke-static {v1, v3}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->shouldPlayOnTV(Landroid/content/Context;Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 539
    const-string v3, "SceneDlnaGridview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SceneDlnaGridview][onItemSelected]: launch DMC TV Mode. Index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 543
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #context:Landroid/content/Context;
    :catch_0
    move-exception v3

    .line 547
    :cond_3
    const-string v3, "SceneDlnaGridview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SceneDlnaGridview][onItemSelected]: No TV Mode. Index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iput v6, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mTVOutIndex:I

    .line 550
    check-cast v2, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .end local v2           #objItem:Lcom/htc/sunnyCore/IMediaData;
    invoke-virtual {p0, p1, v2}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onItemClickMediumInfo(ILcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)V

    goto :goto_0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "message"

    .prologue
    .line 878
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 887
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onMessage(Landroid/os/Message;)Z

    .line 889
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 881
    :pswitch_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;->continueBrowseDown()V

    goto :goto_0

    .line 878
    :pswitch_data_0
    .packed-switch 0x4e84
        :pswitch_0
    .end packed-switch
.end method

.method public onNewAdapter(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 91
    const-string v0, "SceneDlnaGridview"

    const-string v1, "[HTCAlbum][SceneDlnaGridview][onNewAdapter]: ..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onNewAdapter(Landroid/os/Bundle;)V

    .line 94
    new-instance v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 95
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0, p0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->addSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V

    .line 97
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setDataBundle(Landroid/os/Bundle;)V

    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onLoadData()V

    .line 100
    return-void
.end method

.method public onNotifyUpdateComplete()V
    .locals 2

    .prologue
    .line 84
    const-string v0, "SceneDlnaGridview"

    const-string v1, "[HTCAlbum][SceneDlnaGridview][onNotifyUpdateComplete]"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onNotifyUpdateComplete()V

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->enablePageProgressLoading(Z)V

    .line 87
    return-void
.end method

.method public onNotifyUpdating(Z)V
    .locals 3
    .parameter "bIsLoading"

    .prologue
    .line 77
    const-string v0, "SceneDlnaGridview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneDlnaGridview][onNotifyUpdating]bIsLoading:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onNotifyUpdating(Z)V

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->enablePageProgressLoading(Z)V

    .line 80
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 367
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 386
    :cond_0
    :goto_0
    return v1

    .line 371
    :sswitch_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->refreshFolder()V

    .line 374
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onNotifyUpdating(Z)V

    .line 375
    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->enablePageProgressLoading(Z)V

    goto :goto_0

    .line 380
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->turnOnTV()V

    goto :goto_0

    .line 383
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->turnOffTV()V

    goto :goto_0

    .line 367
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x7f0a0183 -> :sswitch_1
        0x7f0a0184 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPageDown()V
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v0, :cond_0

    .line 796
    :goto_0
    return-void

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->browseNextPage()V

    goto :goto_0
.end method

.method public onPageUp()V
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v0, :cond_0

    .line 788
    :goto_0
    return-void

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->browsePreviousPage()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 167
    const-string v0, "SceneDlnaGridview"

    const-string v1, "[HTCAlbum][SceneDlnaGridView][onPause]:pause..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onPause()V

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->bContainerActivityForeground:Z

    .line 171
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->cancelAllRequestingContent()V

    .line 172
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 344
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 345
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 346
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 348
    const/4 v5, 0x6

    const v6, 0x204021a

    invoke-interface {p1, v3, v5, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 350
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 351
    .local v1, context:Landroid/content/Context;
    const/16 v5, 0x10

    const v6, 0x7f0a012e

    invoke-interface {p1, v3, v5, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 352
    .local v2, output:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Output_Dark_Rest(Landroid/content/Context;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 353
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 354
    invoke-static {v1}, Lcom/htc/album/helper/WirelessDisplayHelper;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    :cond_0
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 363
    .end local v2           #output:Landroid/view/MenuItem;
    :goto_0
    return v4

    .line 359
    .end local v1           #context:Landroid/content/Context;
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 360
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 361
    .restart local v1       #context:Landroid/content/Context;
    invoke-static {v1, p1}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->addTVDisplayMenu(Landroid/content/Context;Landroid/view/Menu;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 152
    const-string v0, "SceneDlnaGridview"

    const-string v1, "[HTCAlbum][SceneDlnaGridView][onResume]:resume..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onResume()V

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->bContainerActivityForeground:Z

    .line 157
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->sendIDLEScrollState(I)V

    .line 159
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->isServiceActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;->continueBrowseDown()V

    .line 163
    :cond_0
    return-void
.end method

.method protected onScrollStateChanged(I)V
    .locals 3
    .parameter "scrollState"

    .prologue
    .line 492
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onScrollStateChanged(I)V

    .line 494
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-nez v0, :cond_1

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->bContainerActivityForeground:Z

    if-eqz v0, :cond_2

    .line 499
    const-string v0, "SceneDlnaGridview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneDlnaGridview][onScrollStateChange]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v2

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getChildrenCount()I

    move-result v1

    invoke-virtual {v0, p1, v2, v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setScrollState(III)V

    goto :goto_0

    .line 504
    :cond_2
    const-string v0, "SceneDlnaGridview"

    const-string v1, "[HTCAlbum][SceneDlnaGridview][onScrollStateChagne]: scene activity is push to background"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 408
    const-string v0, "SceneDlnaGridview"

    const-string v1, "[HTCAlbum][SceneDlnaGridview][onSendToBackground]: ..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onSendToBackground(Landroid/os/Bundle;)V

    .line 411
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->cancelAllRequestingContent()V

    .line 413
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->unBindDLNAService()V

    .line 415
    :cond_0
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 113
    const-string v0, "SceneDlnaGridview"

    const-string v1, "[HTCAlbum][SceneDlnaGridview][onSendToForeground]: ..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onSendToForeground(Landroid/os/Bundle;)V

    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setSceneQuality(Z)V

    .line 120
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setHandler(Landroid/os/Handler;)V

    .line 121
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    iget v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->SCENE_ID:I

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setSceneType(I)V

    .line 123
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->isServiceActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;->continueBrowseDown()V

    .line 134
    :goto_1
    const-string v0, "SceneDlnaGridview"

    const-string v1, "[HTCAlbum][SceneDlnaGridview][onSendToForeground]: trigger refresh..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->sendIDLEScrollState(I)V

    goto :goto_0

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->bindDLNAService()V

    goto :goto_1
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 141
    const-string v0, "SceneDlnaGridview"

    const-string v1, "[HTCAlbum][SceneDlnaGridView][onStart]:start..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onStart()V

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->bContainerActivityForeground:Z

    .line 146
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->bindDLNAService()V

    .line 148
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 176
    const-string v0, "SceneDlnaGridview"

    const-string v1, "[HTCAlbum][SceneDlnaGridView][onStop]:stop..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onStop()V

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->bContainerActivityForeground:Z

    .line 180
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->cancelAllRequestingContent()V

    .line 182
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->unBindDLNAService()V

    .line 184
    :cond_0
    return-void
.end method

.method public onUnbindAdapter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 401
    const-string v0, "SceneDlnaGridview"

    const-string v1, "[HTCAlbum][SceneDlnaGridview][onUnbindAdapter]: ..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onUnbindAdapter()V

    .line 403
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setMediaList(Lcom/htc/sunnyCore/IMediaList;)V

    .line 404
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setOnScrollListener(Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;)V

    .line 405
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 284
    const-string v1, ""

    .line 285
    .local v1, szText:Ljava/lang/String;
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 287
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 288
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/sunny2/common/HtcPaneManager;->isLandscape(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->getHeaderSubtitle()Ljava/lang/String;

    move-result-object v1

    .line 296
    .end local v0           #activity:Landroid/app/Activity;
    :cond_0
    return-object v1
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 267
    const/4 v1, 0x0

    .line 268
    .local v1, szText:Ljava/lang/String;
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 270
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 271
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/sunny2/common/HtcPaneManager;->isLandscape(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->getHeaderTitle()Ljava/lang/String;

    move-result-object v1

    .line 280
    .end local v0           #activity:Landroid/app/Activity;
    :cond_0
    :goto_0
    return-object v1

    .line 277
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->getHeaderTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 779
    const/4 v0, 0x1

    return v0
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-string v0, "SceneDlnaGridview"

    return-object v0
.end method
