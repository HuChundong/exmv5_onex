.class public Lcom/htc/album/TabPluginDevice/SceneLocalError;
.super Lcom/htc/album/TabPluginDevice/SceneLocalBase;
.source "SceneLocalError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDevice/SceneLocalError$EventsDropListClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/TabPluginDevice/SceneLocalBase",
        "<",
        "Lcom/htc/sunnyCore/view/SView;",
        "Lcom/htc/album/TabPluginDevice/AdapterLocalError;",
        ">;"
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "SceneLocalError"


# instance fields
.field protected mAdapter4DropList:Lcom/htc/album/AlbumMain/AdapterEventsDropList;

.field protected mErrorViewManager:Lcom/htc/album/helper/ErrorViewManager;

.field private mMediaAction:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mErrorViewManager:Lcom/htc/album/helper/ErrorViewManager;

    .line 48
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mMediaAction:Ljava/lang/String;

    .line 377
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mAdapter4DropList:Lcom/htc/album/AlbumMain/AdapterEventsDropList;

    .line 416
    return-void
.end method


# virtual methods
.method public adapterIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string v0, "AdapterLocalError"

    return-object v0
.end method

.method protected createErrorView()Landroid/widget/RelativeLayout;
    .locals 6

    .prologue
    .line 85
    const/4 v1, 0x0

    .line 86
    .local v1, errorView:Lcom/htc/album/helper/ErrorViewManager;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 88
    .local v0, activity:Landroid/app/Activity;
    new-instance v1, Lcom/htc/album/helper/ErrorViewManager;

    .end local v1           #errorView:Lcom/htc/album/helper/ErrorViewManager;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/htc/album/helper/ErrorViewManager;-><init>(Landroid/content/Context;)V

    .line 89
    .restart local v1       #errorView:Lcom/htc/album/helper/ErrorViewManager;
    invoke-virtual {v1, v0}, Lcom/htc/album/helper/ErrorViewManager;->initialize(Landroid/app/Activity;)V

    .line 92
    const/4 v2, 0x0

    .line 93
    .local v2, nTop:I
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalError;->getPageLoadingPadding()I

    move-result v3

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07002b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int v2, v3, v4

    .line 102
    :cond_0
    invoke-virtual {v1, v2}, Lcom/htc/album/helper/ErrorViewManager;->setPageLoadingPadding(I)V

    .line 104
    return-object v1
.end method

.method public enableDropList()V
    .locals 2

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalError;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 382
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mAdapter4DropList:Lcom/htc/album/AlbumMain/AdapterEventsDropList;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mAdapter4DropList:Lcom/htc/album/AlbumMain/AdapterEventsDropList;

    invoke-virtual {v1}, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->isPrepared()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 390
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mAdapter4DropList:Lcom/htc/album/AlbumMain/AdapterEventsDropList;

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setDropdownListContent(Landroid/widget/BaseAdapter;)V

    goto :goto_0

    .line 393
    :cond_2
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mAdapter4DropList:Lcom/htc/album/AlbumMain/AdapterEventsDropList;

    invoke-virtual {v1}, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->onPrepareDropList()V

    .line 394
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mAdapter4DropList:Lcom/htc/album/AlbumMain/AdapterEventsDropList;

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setDropdownListContent(Landroid/widget/BaseAdapter;)V

    .line 395
    new-instance v1, Lcom/htc/album/TabPluginDevice/SceneLocalError$EventsDropListClickListener;

    invoke-direct {v1, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalError$EventsDropListClickListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalError;)V

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setDropdownListItemListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method public enableHostCamera()Z
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x1

    return v0
.end method

.method public enableHostPadding()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method protected getAdapterMediaType()I
    .locals 1

    .prologue
    .line 510
    const/16 v0, 0xff

    return v0
.end method

.method public isHostScene()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public onActionBarBackPressed()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 164
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 354
    invoke-super {p0, p1, p2, p3}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 355
    return-void
.end method

.method public onAnimationEnd(I)V
    .locals 2
    .parameter "nAnimState"

    .prologue
    .line 370
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onAnimationEnd(I)V

    .line 371
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalError;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->getVisibility()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalError;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    .line 373
    :cond_0
    return-void
.end method

.method public onBindAdapter()V
    .locals 2

    .prologue
    .line 317
    const-string v0, "SceneLocalError"

    const-string v1, "[HTCAlbum][SceneLocalError][onBindAdapter]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onBindAdapter()V

    .line 319
    return-void
.end method

.method public onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 431
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v1, :cond_0

    .line 441
    :goto_0
    return v3

    .line 434
    :cond_0
    const-string v1, "SceneLocalError"

    const-string v2, "[HTCAlbum][SceneLocalError][onBroadcastMediaConnected]"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 436
    .local v0, activity:Landroid/app/Activity;
    instance-of v1, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v1, :cond_1

    .line 437
    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .end local v0           #activity:Landroid/app/Activity;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableDataSourceUpdating(Z)V

    .line 439
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mMediaAction:Ljava/lang/String;

    goto :goto_0
.end method

.method public onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 447
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v1, :cond_0

    .line 457
    :goto_0
    return v3

    .line 450
    :cond_0
    const-string v1, "SceneLocalError"

    const-string v2, "[HTCAlbum][SceneLocalError][onBroadcastMediaDisconnected]"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 452
    .local v0, activity:Landroid/app/Activity;
    instance-of v1, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v1, :cond_1

    .line 453
    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .end local v0           #activity:Landroid/app/Activity;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableDataSourceUpdating(Z)V

    .line 455
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mMediaAction:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreateScene()Lcom/htc/sunnyCore/view/SView;
    .locals 3

    .prologue
    .line 109
    const-string v0, "SceneLocalError"

    const-string v1, "[HTCAlbum][SceneLocalError][onCreateScene]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalError;->createErrorView()Landroid/widget/RelativeLayout;

    move-result-object v0

    check-cast v0, Lcom/htc/album/helper/ErrorViewManager;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mErrorViewManager:Lcom/htc/album/helper/ErrorViewManager;

    .line 116
    new-instance v0, Lcom/htc/sunnyCore/view/SView;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/htc/sunnyCore/view/SView;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    return-object v0
.end method

.method protected onDropListItemClick(I)V
    .locals 6
    .parameter "nIndex"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 400
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalError;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 401
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    if-eqz v0, :cond_0

    .line 402
    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->dismissDropList()V

    .line 404
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mAdapter4DropList:Lcom/htc/album/AlbumMain/AdapterEventsDropList;

    invoke-virtual {v2, p1}, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 405
    .local v1, nItem:I
    const/16 v2, 0x37

    if-ne v2, v1, :cond_2

    .line 407
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v3, "SceneLocalFolder"

    invoke-interface {v2, v5, v3, v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 408
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;->FOLDERS:Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    invoke-static {v2, v3}, Lcom/htc/album/Customizable/CustAlbumCollection;->setDefaultAlbumCollection(Landroid/content/Context;Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;)V

    .line 415
    :cond_1
    :goto_0
    return-void

    .line 410
    :cond_2
    const/16 v2, 0x38

    if-ne v2, v1, :cond_1

    .line 412
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v3, "SmartFolderScene"

    invoke-interface {v2, v5, v3, v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 413
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;->EVENTS:Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    invoke-static {v2, v3}, Lcom/htc/album/Customizable/CustAlbumCollection;->setDefaultAlbumCollection(Landroid/content/Context;Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;)V

    goto :goto_0
.end method

.method public onEnableActionBarAppButton()Z
    .locals 2

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, bResult:Z
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableLandingPage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    const/4 v0, 0x1

    .line 149
    :cond_0
    return v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 2

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, bResult:Z
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableLandingPage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    const/4 v0, 0x1

    .line 157
    :cond_0
    return v0
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onEnterScene(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalError;->onNewEventDropList()Lcom/htc/album/AlbumMain/AdapterEventsDropList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mAdapter4DropList:Lcom/htc/album/AlbumMain/AdapterEventsDropList;

    .line 122
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mAdapter4DropList:Lcom/htc/album/AlbumMain/AdapterEventsDropList;

    invoke-virtual {v0}, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->onCreate()V

    .line 124
    return-void
.end method

.method public onLeaveScene()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 336
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SceneLocalError"

    const-string v3, "[HTCAlbum][SceneLocalError][onLeaveScene]: "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalError;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 338
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    if-eqz v0, :cond_1

    .line 340
    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->dismissDropList()V

    .line 343
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mErrorViewManager:Lcom/htc/album/helper/ErrorViewManager;

    invoke-virtual {v2}, Lcom/htc/album/helper/ErrorViewManager;->onDestroy()V

    .line 344
    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mErrorViewManager:Lcom/htc/album/helper/ErrorViewManager;

    .line 345
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 346
    .local v1, activity:Landroid/app/Activity;
    instance-of v2, v1, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v2, :cond_2

    .line 347
    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .end local v1           #activity:Landroid/app/Activity;
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableSourceContentPadding(Z)V

    .line 348
    :cond_2
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mAdapter4DropList:Lcom/htc/album/AlbumMain/AdapterEventsDropList;

    invoke-virtual {v2}, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->onDestroy()V

    .line 349
    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mAdapter4DropList:Lcom/htc/album/AlbumMain/AdapterEventsDropList;

    .line 350
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onLeaveScene()V

    .line 351
    return-void
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "message"

    .prologue
    .line 475
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 481
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onMessage(Landroid/os/Message;)Z

    .line 483
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 478
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalError;->onRefreshAdapter()V

    goto :goto_0

    .line 475
    :pswitch_data_0
    .packed-switch 0x138f
        :pswitch_0
    .end packed-switch
.end method

.method public onNewAdapter(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onNewAdapter(Landroid/os/Bundle;)V

    .line 135
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 137
    .local v0, activity:Landroid/app/Activity;
    new-instance v1, Lcom/htc/album/TabPluginDevice/AdapterLocalError;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalError;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalError;->getAdapterMediaType()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalError;-><init>(Landroid/app/Activity;Landroid/os/Handler;I)V

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 141
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalError;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalError;->enableObserverNotify()V

    .line 142
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-interface {v1, p0, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->setNewAdapter(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;)V

    .line 143
    return-void
.end method

.method protected onNewEventDropList()Lcom/htc/album/AlbumMain/AdapterEventsDropList;
    .locals 3

    .prologue
    .line 128
    new-instance v0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/htc/album/AlbumMain/AdapterEventsDropList;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .parameter "item"

    .prologue
    const/4 v11, 0x0

    .line 243
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 244
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 298
    :cond_0
    :goto_0
    return v11

    .line 247
    :cond_1
    const-string v8, "SceneLocalError"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][SceneLocalError][onMenuItemSelected]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const/4 v2, 0x0

    .line 250
    .local v2, bResult:Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_0

    .line 261
    :sswitch_0
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v11}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoCamera(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 254
    :sswitch_1
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 255
    .local v5, hideShowAlbum:Landroid/content/Intent;
    const-class v8, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    invoke-virtual {v5, v0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 256
    const/16 v8, 0x13a1

    invoke-virtual {v0, v5, v8}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 268
    .end local v5           #hideShowAlbum:Landroid/content/Intent;
    :sswitch_2
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 269
    .local v1, appContext:Landroid/content/Context;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 270
    .local v7, settingsIntent:Landroid/content/Intent;
    const-class v8, Lcom/htc/album/TabPluginDevice/smart/EventSettings;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    invoke-virtual {v0, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 273
    .end local v1           #appContext:Landroid/content/Context;
    .end local v7           #settingsIntent:Landroid/content/Intent;
    :catch_0
    move-exception v4

    .line 275
    .local v4, e1:Ljava/lang/Exception;
    const-string v8, "SceneLocalError"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][SceneLocalError][onOptionsItemSelected] SETTINGS:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 282
    .end local v4           #e1:Ljava/lang/Exception;
    :sswitch_3
    sget-boolean v8, Lcom/htc/opensense2/album/AlbumCommon/Constants;->FLAG_IS_SUPPORT_MAPVIEW:Z

    if-eqz v8, :cond_0

    .line 286
    :try_start_1
    new-instance v6, Landroid/content/Intent;

    const-string v8, "com.htc.album.action.LAUNCH_LOCATION_VIEW"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 287
    .local v6, intent:Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 289
    .end local v6           #intent:Landroid/content/Intent;
    :catch_1
    move-exception v3

    .line 291
    .local v3, e:Ljava/lang/Exception;
    const-string v8, "SceneLocalError"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[onOptionsItemSelected]:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 250
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x42 -> :sswitch_3
        0x7f09008e -> :sswitch_2
        0x7f0a00cd -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onPause()V

    .line 77
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalError;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 78
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    if-eqz v0, :cond_0

    .line 80
    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->dismissDropList()V

    .line 82
    :cond_0
    return-void
.end method

.method public onPrepareAnimation(I)Z
    .locals 2
    .parameter "nAnimState"

    .prologue
    .line 358
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onPrepareAnimation(I)Z

    .line 360
    const/4 v0, 0x3

    if-eq v0, p1, :cond_0

    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mErrorViewManager:Lcom/htc/album/helper/ErrorViewManager;

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mErrorViewManager:Lcom/htc/album/helper/ErrorViewManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/ErrorViewManager;->setVisibility(I)V

    .line 366
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 13
    .parameter "menu"

    .prologue
    const v12, 0x7f0a00cd

    const/4 v11, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 177
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 179
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 180
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isAllStorageReady()Z

    move-result v1

    .line 182
    .local v1, bIsStorageReady:Z
    if-nez v1, :cond_0

    .line 184
    const-string v8, "SceneLocalError"

    const-string v9, "[HTCAlbum][SceneLocalError][onPrepareOptionsMenu]: exits 1 "

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :goto_0
    return v7

    .line 187
    :cond_0
    const-string v9, "SceneLocalError"

    const-string v10, "[HTCAlbum][SceneLocalError][onPrepareOptionsMenu]... "

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v2

    .line 190
    .local v2, intent:Landroid/content/Intent;
    const-string v9, "in_pickermode"

    invoke-virtual {v2, v9, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-ne v8, v9, :cond_1

    .line 192
    const-string v8, "SceneLocalError"

    const-string v9, "[HTCAlbum][SceneLocalError][onPrepareOptionsMenu]: picker mode skip..."

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_1
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 197
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/htc/album/Customizable/CustAlbumCollection;->getDefaultAlbumCollection(Landroid/content/Context;)Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    move-result-object v6

    .line 198
    .local v6, result:Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;
    sget-object v9, Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;->FOLDERS:Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    if-ne v6, v9, :cond_4

    .line 200
    invoke-interface {p1, v7, v12, v7, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 224
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalError;->enableHostCamera()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 226
    const/4 v9, 0x3

    const v10, 0x7f0a012d

    invoke-interface {p1, v7, v9, v7, v10}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    .line 227
    .local v5, menuItem:Landroid/view/MenuItem;
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Camera_Dark_Rest(Landroid/content/Context;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 228
    invoke-interface {v5, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .end local v5           #menuItem:Landroid/view/MenuItem;
    :cond_3
    move v7, v8

    .line 231
    goto :goto_0

    .line 207
    :cond_4
    const v9, 0x7f090092

    const v10, 0x7f0a00b1

    invoke-interface {p1, v7, v9, v7, v10}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 208
    .local v3, item:Landroid/view/MenuItem;
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 211
    const v9, 0x7f09008e

    const v10, 0x7f0a0157

    invoke-interface {p1, v7, v9, v8, v10}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 215
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isCHS()Z

    move-result v9

    if-nez v9, :cond_2

    sget-boolean v9, Lcom/htc/opensense2/album/AlbumCommon/Constants;->FLAG_IS_SUPPORT_MAPVIEW:Z

    if-eqz v9, :cond_2

    .line 217
    const/16 v9, 0x42

    const v10, 0x7f0a01a4

    invoke-interface {p1, v7, v9, v7, v10}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    .line 218
    .local v4, itemOutput:Landroid/view/MenuItem;
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getDrawableBtnMapDarkRest(Landroid/content/Context;)I

    move-result v9

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 219
    invoke-interface {v4, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1
.end method

.method protected onRefreshAdapter()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 487
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityLifeCycle()I

    move-result v4

    if-gt v3, v4, :cond_1

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v3, :cond_0

    .line 493
    const/16 v3, 0x138f

    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalError;->onRemoveMessage(I)V

    .line 494
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalError;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalError;->unregisterObserver()V

    .line 496
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 497
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 499
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isAllStorageReady()Z

    move-result v1

    .line 500
    .local v1, bIsStorageReady:Z
    if-eqz v1, :cond_2

    .line 502
    invoke-virtual {p0, v6}, Lcom/htc/album/TabPluginDevice/SceneLocalError;->startOpeningScene(Landroid/content/Intent;)V

    .line 506
    :goto_1
    const-string v3, "SceneLocalError"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SceneLocalError][onRefreshAdapter]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 505
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v4, "SceneLocalError"

    const/4 v5, 0x1

    invoke-interface {v3, v6, v4, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 327
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SceneLocalError"

    const-string v1, "[HTCAlbum][SceneLocalError][onSendToBackground]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mErrorViewManager:Lcom/htc/album/helper/ErrorViewManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/ErrorViewManager;->detach()V

    .line 331
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalError;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalError;->unregisterObserver()V

    .line 332
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onSendToBackground(Landroid/os/Bundle;)V

    .line 333
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 302
    const-string v1, "SceneLocalError"

    const-string v2, "[HTCAlbum][SceneLocalError][onSendToForeground]: "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onSendToForeground(Landroid/os/Bundle;)V

    .line 305
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mErrorViewManager:Lcom/htc/album/helper/ErrorViewManager;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityRoot()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/album/helper/ErrorViewManager;->attachTo(Landroid/view/ViewGroup;)V

    .line 306
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 308
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalError;->onUpdateErrorView()V

    .line 310
    instance-of v1, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v1, :cond_0

    .line 311
    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .end local v0           #activity:Landroid/app/Activity;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableDataSourceUpdating(Z)V

    .line 313
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalError;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalError;->registerObserver()V

    .line 314
    return-void
.end method

.method public onUnbindAdapter()V
    .locals 2

    .prologue
    .line 322
    const-string v0, "SceneLocalError"

    const-string v1, "[HTCAlbum][SceneLocalError][onUnbindAdapter]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onUnbindAdapter()V

    .line 324
    return-void
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 167
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 168
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/album/Customizable/CustAlbumCollection;->getDefaultAlbumCollection(Landroid/content/Context;)Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    move-result-object v1

    .line 169
    .local v1, result:Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;
    sget-object v2, Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;->FOLDERS:Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    if-ne v1, v2, :cond_0

    .line 170
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 172
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0184

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public onUpdateErrorView()V
    .locals 4

    .prologue
    .line 462
    const-string v2, "SceneLocalError"

    const-string v3, "[HTCAlbum][SceneLocalError][onUpdateErrorView]"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    .line 465
    const/16 v1, 0xff

    .line 466
    .local v1, mediaType:I
    const-string v2, "com.htc.album.action.ALL_VIDEOS"

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 467
    const/16 v1, 0x10

    .line 469
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;->getErrorState(Landroid/content/Context;IZ)Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;

    move-result-object v0

    .line 471
    .local v0, errMsg:Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mErrorViewManager:Lcom/htc/album/helper/ErrorViewManager;

    invoke-virtual {v0}, Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;->getMsg()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/album/helper/ErrorViewManager;->setErrorText(I)V

    .line 472
    return-void
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "SceneLocalError"

    return-object v0
.end method

.method protected startOpeningScene(Landroid/content/Intent;)V
    .locals 7
    .parameter "bundle"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 514
    const/4 v2, 0x0

    .line 515
    .local v2, mode:I
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v3, :cond_0

    .line 516
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/album/picker/PickerConstants;->getPickerMode(Landroid/app/Activity;)I

    move-result v2

    .line 517
    :cond_0
    invoke-static {v2}, Lcom/htc/album/picker/PickerConstants;->isExternalPicker(I)Z

    move-result v1

    .line 519
    .local v1, isExternPick:Z
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/album/Customizable/CustAlbumCollection;->getDefaultAlbumCollection(Landroid/content/Context;)Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    move-result-object v0

    .line 520
    .local v0, collection:Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;
    sget-object v3, Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;->FOLDERS:Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    if-ne v3, v0, :cond_2

    .line 521
    if-ne v1, v5, :cond_1

    .line 522
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v4, "PickerFolderScene"

    invoke-interface {v3, v6, v4, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->startScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 532
    :goto_0
    return-void

    .line 524
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v4, "SceneLocalFolder"

    invoke-interface {v3, v6, v4, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto :goto_0

    .line 527
    :cond_2
    if-ne v1, v5, :cond_3

    .line 528
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v4, "PickerEventScene"

    invoke-interface {v3, v6, v4, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->startScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto :goto_0

    .line 530
    :cond_3
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v4, "SmartFolderScene"

    invoke-interface {v3, v6, v4, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto :goto_0
.end method
