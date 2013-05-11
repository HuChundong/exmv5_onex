.class public Lcom/htc/album/picker/PickerErrorScene;
.super Lcom/htc/album/TabPluginDevice/SceneLocalError;
.source "PickerErrorScene.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "PickerErrorScene"


# instance fields
.field private mMediaType:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "mediaType"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalError;-><init>()V

    .line 24
    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/album/picker/PickerErrorScene;->mMediaType:I

    .line 28
    iput p1, p0, Lcom/htc/album/picker/PickerErrorScene;->mMediaType:I

    .line 29
    return-void
.end method


# virtual methods
.method public enableHostCamera()Z
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public enableHostPadding()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public isHostScene()Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateScene()Lcom/htc/sunnyCore/view/SView;
    .locals 2

    .prologue
    .line 38
    const-string v0, "PickerErrorScene"

    const-string v1, "[PickerErrorScene][onCreateScene]"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalError;->onCreateScene()Lcom/htc/sunnyCore/view/SView;

    move-result-object v0

    return-object v0
.end method

.method protected onDropListItemClick(I)V
    .locals 6
    .parameter "nIndex"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 112
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerErrorScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 113
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mAdapter4DropList:Lcom/htc/album/AlbumMain/AdapterEventsDropList;

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 115
    :cond_0
    const-string v2, "PickerErrorScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onDropListItemClick] mAdapter4DropList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mAdapter4DropList:Lcom/htc/album/AlbumMain/AdapterEventsDropList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", actionBar = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :goto_0
    return-void

    .line 120
    :cond_1
    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->dismissDropList()V

    .line 121
    invoke-interface {v0, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setDropdownListContent(Landroid/widget/BaseAdapter;)V

    .line 122
    invoke-interface {v0, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setDropdownListItemListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 125
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mAdapter4DropList:Lcom/htc/album/AlbumMain/AdapterEventsDropList;

    invoke-virtual {v2, p1}, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 126
    .local v1, nItem:I
    const/16 v2, 0x37

    if-ne v2, v1, :cond_2

    .line 128
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v4, "PickerFolderScene"

    invoke-interface {v2, v3, v4, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto :goto_0

    .line 130
    :cond_2
    const/16 v2, 0x38

    if-ne v2, v1, :cond_3

    .line 132
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v4, "PickerEventScene"

    invoke-interface {v2, v3, v4, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto :goto_0

    .line 135
    :cond_3
    const-string v2, "PickerErrorScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onDropListItemClick] nIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", not define"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalError;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 159
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 160
    const/4 v0, 0x1

    return v0
.end method

.method protected onRefreshAdapter()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 188
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityLifeCycle()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v1, :cond_0

    .line 194
    const/16 v1, 0x138f

    invoke-virtual {p0, v1}, Lcom/htc/album/picker/PickerErrorScene;->onRemoveMessage(I)V

    .line 195
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalError;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalError;->unregisterObserver()V

    .line 198
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isAllStorageReady()Z

    move-result v0

    .line 199
    .local v0, bIsStorageReady:Z
    if-eqz v0, :cond_2

    .line 200
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v2, "PickerFolderScene"

    invoke-interface {v1, v4, v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 203
    :goto_1
    const-string v1, "PickerErrorScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][PickerErrorScene][onRefreshAdapter]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v2, "PickerErrorScene"

    invoke-interface {v1, v4, v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 100
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 101
    .local v0, activity:Landroid/app/Activity;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v3, "goto_errorscene_from"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, sceneIdentity:Ljava/lang/String;
    const-string v2, "PickerFolderScene"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0055

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 105
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0056

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 90
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 91
    .local v0, activity:Landroid/app/Activity;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v3, "goto_errorscene_from"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, sceneIdentity:Ljava/lang/String;
    const-string v2, "PickerFolderScene"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 95
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
    .line 178
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/picker/PickerErrorScene;->mMediaType:I

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;->getErrorState(Landroid/content/Context;IZ)Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;

    move-result-object v0

    .line 179
    .local v0, errMsg:Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mErrorViewManager:Lcom/htc/album/helper/ErrorViewManager;

    invoke-virtual {v0}, Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;->getMsg()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/album/helper/ErrorViewManager;->setErrorText(I)V

    .line 180
    return-void
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "PickerErrorScene"

    return-object v0
.end method
