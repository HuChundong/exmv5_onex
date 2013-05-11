.class public Lcom/htc/album/picker/PickerEventScene;
.super Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;
.source "PickerEventScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/picker/PickerEventScene$1;,
        Lcom/htc/album/picker/PickerEventScene$OnItemVibrateListener;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "PickerEventScene"


# instance fields
.field private mOnItemVibrateListener:Lcom/htc/album/picker/PickerEventScene$OnItemVibrateListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;-><init>()V

    .line 25
    new-instance v0, Lcom/htc/album/picker/PickerEventScene$OnItemVibrateListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/album/picker/PickerEventScene$OnItemVibrateListener;-><init>(Lcom/htc/album/picker/PickerEventScene;Lcom/htc/album/picker/PickerEventScene$1;)V

    iput-object v0, p0, Lcom/htc/album/picker/PickerEventScene;->mOnItemVibrateListener:Lcom/htc/album/picker/PickerEventScene$OnItemVibrateListener;

    .line 27
    return-void
.end method


# virtual methods
.method public actionBarMode()I
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method protected doCreateAdapter(Landroid/app/Activity;)Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;
    .locals 6
    .parameter "activity"

    .prologue
    .line 55
    new-instance v0, Lcom/htc/album/picker/PickerEventAdapter;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/album/picker/PickerEventScene;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/album/picker/PickerEventScene;->getAdapterMediaType()I

    move-result v4

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/album/picker/PickerEventAdapter;-><init>(Lcom/htc/sunnyCore/SunnyContext;Landroid/app/Activity;Landroid/os/Handler;ILandroid/os/Bundle;)V

    return-object v0
.end method

.method public enableActionBarOverlay()Z
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x1

    return v0
.end method

.method public enableContextMenu()Z
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public enablePageLoading()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public enableProgressLoading()Z
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method protected getAdapterMediaType()I
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mediaType"

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isHostScene()Z
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public onActionBarBackPressed()V
    .locals 0

    .prologue
    .line 226
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-static {v0, p1, p2, p3}, Lcom/htc/album/picker/PickerFolderHelper;->onActivityResult(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;IILandroid/content/Intent;)V

    .line 146
    return-void
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunnyCore/view/SView;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerEventScene;->onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;
    .locals 2

    .prologue
    .line 37
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-result-object v0

    .line 38
    .local v0, gv:Lcom/htc/sunnyCore/widget/gridview/GridView;
    iget-object v1, p0, Lcom/htc/album/picker/PickerEventScene;->mOnItemVibrateListener:Lcom/htc/album/picker/PickerEventScene$OnItemVibrateListener;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setOnItemLongPressVibrateListener(Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongPressVibrateListener;)V

    .line 39
    return-object v0
.end method

.method protected onDismissGlobalBackgroundOrOverlapRoundCorner()V
    .locals 0

    .prologue
    .line 290
    return-void
.end method

.method protected onDropListItemClick(I)V
    .locals 6
    .parameter "nIndex"

    .prologue
    const/4 v3, 0x0

    .line 254
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerEventScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 255
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    if-eqz v0, :cond_0

    .line 256
    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->dismissDropList()V

    .line 258
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAdapter4DropList:Lcom/htc/album/AlbumMain/AdapterEventsDropList;

    invoke-virtual {v2, p1}, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 259
    .local v1, nItem:I
    const/16 v2, 0x37

    if-ne v2, v1, :cond_1

    .line 261
    invoke-interface {v0, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setDropdownListContent(Landroid/widget/BaseAdapter;)V

    .line 262
    invoke-interface {v0, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setDropdownListItemListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 263
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v4, "PickerFolderScene"

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 265
    :cond_1
    return-void
.end method

.method public onEnableActionBarAppButton()Z
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public onItemSelected(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 136
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-static {v1, v0, p1}, Lcom/htc/album/picker/PickerFolderHelper;->onItemSelected(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;I)V

    .line 137
    return-void
.end method

.method public onNewAdapter(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 65
    const-string v0, "PickerEventScene"

    const-string v1, "[HTCAlbum][PickerEventScene][onNewAdapter]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->onNewAdapter(Landroid/os/Bundle;)V

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/picker/PickerEventScene;->onEnableProgressLoading(Z)V

    .line 68
    return-void
.end method

.method public onNotifyUpdating(Z)V
    .locals 4
    .parameter "bIsLoading"

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->onNotifyUpdating(Z)V

    .line 85
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->getLastLoadState()I

    move-result v0

    .line 86
    .local v0, nLoadState:I
    const-string v1, "PickerEventScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][PickerEventScene][onNotifyUpdating]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    if-nez p1, :cond_0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 89
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/album/picker/PickerEventScene;->onEnableProgressLoading(Z)V

    .line 91
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 118
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method protected onSceneLoading()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->onSendToForeground(Landroid/os/Bundle;)V

    .line 166
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerEventScene;->prepareDropList()V

    .line 167
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0184

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected prepareDropList()V
    .locals 3

    .prologue
    .line 231
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAdapter4DropList:Lcom/htc/album/AlbumMain/AdapterEventsDropList;

    if-eqz v1, :cond_1

    .line 233
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAdapter4DropList:Lcom/htc/album/AlbumMain/AdapterEventsDropList;

    invoke-virtual {v1}, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->onPrepareDropList()V

    .line 234
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerEventScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 235
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    if-eqz v0, :cond_0

    .line 237
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAdapter4DropList:Lcom/htc/album/AlbumMain/AdapterEventsDropList;

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setDropdownListContent(Landroid/widget/BaseAdapter;)V

    .line 238
    new-instance v1, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$EventsDropListClickListener;

    invoke-direct {v1, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$EventsDropListClickListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)V

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setDropdownListItemListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 245
    .end local v0           #actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    :goto_0
    return-void

    .line 241
    .restart local v0       #actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    :cond_0
    const-string v1, "PickerEventScene"

    const-string v2, "[prepareDropList] actionBar null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 244
    .end local v0           #actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    :cond_1
    const-string v1, "PickerEventScene"

    const-string v2, "[prepareDropList] mAdapter4DropList null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "PickerEventScene"

    return-object v0
.end method
