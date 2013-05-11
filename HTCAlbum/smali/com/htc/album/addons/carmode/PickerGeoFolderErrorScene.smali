.class public Lcom/htc/album/addons/carmode/PickerGeoFolderErrorScene;
.super Lcom/htc/album/TabPluginDevice/SceneLocalError;
.source "PickerGeoFolderErrorScene.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalError;-><init>()V

    return-void
.end method


# virtual methods
.method protected createErrorView()Landroid/widget/RelativeLayout;
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, errorView:Lcom/htc/album/helper/ErrorViewManager;
    new-instance v0, Lcom/htc/album/helper/ErrorViewManager;

    .end local v0           #errorView:Lcom/htc/album/helper/ErrorViewManager;
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/album/helper/ErrorViewManager;-><init>(Landroid/content/Context;)V

    .line 45
    .restart local v0       #errorView:Lcom/htc/album/helper/ErrorViewManager;
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/ErrorViewManager;->initialize(Landroid/app/Activity;Z)V

    .line 46
    return-object v0
.end method

.method public enableDropList()V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalError;->enableDropList()V

    .line 91
    return-void
.end method

.method public enableFullScreen()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public onActionBarBackPressed()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 159
    return-void
.end method

.method protected onActionBarClicked(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoFolderErrorScene;->onActionBarBackPressed()V

    .line 133
    return-void
.end method

.method public onActionBarFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "startEvent"
    .parameter "endEvent"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoFolderErrorScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->isCarModeActionBarFling(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    .line 125
    .local v0, isFling:Z
    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoFolderErrorScene;->onActionBarBackPressed()V

    .line 127
    :cond_0
    return v0
.end method

.method protected onDropListItemClick(I)V
    .locals 6
    .parameter "nIndex"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 96
    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoFolderErrorScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 97
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->dismissDropList()V

    .line 100
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mAdapter4DropList:Lcom/htc/album/AlbumMain/AdapterEventsDropList;

    invoke-virtual {v2, p1}, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 101
    .local v1, nItem:I
    const/16 v2, 0x37

    if-ne v2, v1, :cond_2

    .line 103
    invoke-interface {v0, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setDropdownListContent(Landroid/widget/BaseAdapter;)V

    .line 104
    invoke-interface {v0, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setDropdownListItemListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 105
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v4, "PickerGeoFolderScene"

    invoke-interface {v2, v3, v4, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 106
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;->FOLDERS:Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    invoke-static {v2, v3}, Lcom/htc/album/Customizable/CustAlbumCollection;->setCarModeAlbumCollection(Landroid/content/Context;Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;)V

    .line 115
    :cond_1
    :goto_0
    return-void

    .line 108
    :cond_2
    const/16 v2, 0x38

    if-ne v2, v1, :cond_1

    .line 110
    invoke-interface {v0, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setDropdownListContent(Landroid/widget/BaseAdapter;)V

    .line 111
    invoke-interface {v0, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setDropdownListItemListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 112
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v4, "PickerGeoEventScene"

    invoke-interface {v2, v3, v4, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 113
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;->EVENTS:Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    invoke-static {v2, v3}, Lcom/htc/album/Customizable/CustAlbumCollection;->setCarModeAlbumCollection(Landroid/content/Context;Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;)V

    goto :goto_0
.end method

.method public onEnableActionBarAppButton()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    return v0
.end method

.method public onEnableActionBarTouchEvent()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalError;->onEnterScene(Landroid/os/Bundle;)V

    .line 32
    return-void
.end method

.method protected onNewEventDropList()Lcom/htc/album/AlbumMain/AdapterEventsDropList;
    .locals 3

    .prologue
    .line 80
    new-instance v0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/htc/album/AlbumMain/AdapterEventsDropList;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalError;->onSendToForeground(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoFolderErrorScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityRoot()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->detach(Landroid/view/ViewGroup;)V

    .line 67
    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoFolderErrorScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityRoot()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->attach(Landroid/view/ViewGroup;)V

    .line 68
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 137
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 138
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/album/Customizable/CustAlbumCollection;->getCarModeAlbumCollection(Landroid/content/Context;)Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    move-result-object v1

    .line 139
    .local v1, result:Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;
    sget-object v2, Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;->FOLDERS:Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    if-ne v1, v2, :cond_0

    .line 140
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 142
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
    .line 52
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;->getErrorState(Landroid/content/Context;IZ)Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;

    move-result-object v0

    .line 54
    .local v0, errMsg:Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mErrorViewManager:Lcom/htc/album/helper/ErrorViewManager;

    invoke-virtual {v0}, Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;->getMsg()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/album/helper/ErrorViewManager;->setErrorText(I)V

    .line 55
    return-void
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "SceneLocalError"

    return-object v0
.end method
