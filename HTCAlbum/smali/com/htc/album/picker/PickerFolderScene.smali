.class public Lcom/htc/album/picker/PickerFolderScene;
.super Lcom/htc/album/TabPluginDevice/SceneLocalFolder;
.source "PickerFolderScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/picker/PickerFolderScene$1;,
        Lcom/htc/album/picker/PickerFolderScene$OnItemVibrateListener;
    }
.end annotation


# static fields
.field protected static final HEADER_PICKER:I = 0x3e8

.field public static final LOG_TAG:Ljava/lang/String; = "PickerFolderScene"

.field private static mIsTablet:Z


# instance fields
.field private mOnItemVibrateListener:Lcom/htc/album/picker/PickerFolderScene$OnItemVibrateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/album/picker/PickerFolderScene;->mIsTablet:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;-><init>()V

    .line 36
    new-instance v0, Lcom/htc/album/picker/PickerFolderScene$OnItemVibrateListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/album/picker/PickerFolderScene$OnItemVibrateListener;-><init>(Lcom/htc/album/picker/PickerFolderScene;Lcom/htc/album/picker/PickerFolderScene$1;)V

    iput-object v0, p0, Lcom/htc/album/picker/PickerFolderScene;->mOnItemVibrateListener:Lcom/htc/album/picker/PickerFolderScene$OnItemVibrateListener;

    .line 38
    return-void
.end method


# virtual methods
.method public actionBarMode()I
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method protected doCreateAdapter(Landroid/app/Activity;)Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;
    .locals 4
    .parameter "activity"

    .prologue
    .line 82
    new-instance v0, Lcom/htc/album/picker/PickerFolderAdapter;

    invoke-virtual {p0}, Lcom/htc/album/picker/PickerFolderScene;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/album/picker/PickerFolderScene;->getAdapterMediaType()I

    move-result v2

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/htc/album/picker/PickerFolderAdapter;-><init>(Landroid/app/Activity;Landroid/os/Handler;ILandroid/os/Bundle;)V

    return-object v0
.end method

.method public enableActionBarOverlay()Z
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method public enableContextMenu()Z
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public enablePageLoading()Z
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public enableProgressLoading()Z
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x1

    return v0
.end method

.method protected getAdapterMediaType()I
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mediaType"

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isHostScene()Z
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public onActionBarBackPressed()V
    .locals 0

    .prologue
    .line 231
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-static {v0, p1, p2, p3}, Lcom/htc/album/picker/PickerFolderHelper;->onActivityResult(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;IILandroid/content/Intent;)V

    .line 132
    return-void
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunnyCore/view/SView;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerFolderScene;->onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v1

    sput-boolean v1, Lcom/htc/album/picker/PickerFolderScene;->mIsTablet:Z

    .line 53
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-result-object v0

    .line 54
    .local v0, gv:Lcom/htc/sunnyCore/widget/gridview/GridView;
    iget-object v1, p0, Lcom/htc/album/picker/PickerFolderScene;->mOnItemVibrateListener:Lcom/htc/album/picker/PickerFolderScene$OnItemVibrateListener;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setOnItemLongPressVibrateListener(Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongPressVibrateListener;)V

    .line 55
    return-object v0
.end method

.method protected onDismissGlobalBackgroundOrOverlapRoundCorner()V
    .locals 0

    .prologue
    .line 315
    return-void
.end method

.method protected onDropListItemClick(I)V
    .locals 6
    .parameter "nIndex"

    .prologue
    const/4 v3, 0x0

    .line 242
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerFolderScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 243
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    if-eqz v0, :cond_0

    .line 244
    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->dismissDropList()V

    .line 246
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAdapter4DropList:Lcom/htc/album/AlbumMain/AdapterEventsDropList;

    invoke-virtual {v2, p1}, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 247
    .local v1, nItem:I
    const/16 v2, 0x38

    if-ne v2, v1, :cond_1

    .line 249
    invoke-interface {v0, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setDropdownListContent(Landroid/widget/BaseAdapter;)V

    .line 250
    invoke-interface {v0, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setDropdownListItemListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 251
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v4, "PickerEventScene"

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 254
    :cond_1
    return-void
.end method

.method public onEnableActionBarAppButton()Z
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x1

    return v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onEnterScene(Landroid/os/Bundle;)V

    .line 75
    const/4 v0, 0x1

    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/picker/PickerFolderScene;->createControlBar(II)V

    .line 76
    return-void
.end method

.method public onItemSelected(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 122
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-static {v1, v0, p1}, Lcom/htc/album/picker/PickerFolderHelper;->onItemSelected(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;I)V

    .line 123
    return-void
.end method

.method public onNewAdapter(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 91
    const-string v0, "PickerFolderScene"

    const-string v1, "[HTCAlbum][PickerFolderScene][onNewAdapter]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onNewAdapter(Landroid/os/Bundle;)V

    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/picker/PickerFolderScene;->onEnableProgressLoading(Z)V

    .line 94
    return-void
.end method

.method public onNotifyUpdating(Z)V
    .locals 4
    .parameter "bIsLoading"

    .prologue
    .line 138
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onNotifyUpdating(Z)V

    .line 140
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->getLastLoadState()I

    move-result v0

    .line 141
    .local v0, nLoadState:I
    const-string v1, "PickerFolderScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][PickerFolderScene][onNotifyUpdating]: "

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

    .line 142
    if-nez p1, :cond_0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 144
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/album/picker/PickerFolderScene;->onEnableProgressLoading(Z)V

    .line 146
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 180
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 173
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method protected onSceneLoading()V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 281
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onSendToForeground(Landroid/os/Bundle;)V

    .line 290
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerFolderScene;->prepareDropList()V

    .line 291
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected prepareDropList()V
    .locals 3

    .prologue
    .line 259
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAdapter4DropList:Lcom/htc/album/AlbumMain/AdapterEventsDropList;

    if-eqz v1, :cond_1

    .line 261
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAdapter4DropList:Lcom/htc/album/AlbumMain/AdapterEventsDropList;

    invoke-virtual {v1}, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->onPrepareDropList()V

    .line 262
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerFolderScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 263
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    if-eqz v0, :cond_0

    .line 265
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAdapter4DropList:Lcom/htc/album/AlbumMain/AdapterEventsDropList;

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setDropdownListContent(Landroid/widget/BaseAdapter;)V

    .line 266
    new-instance v1, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$EventsDropListClickListener;

    invoke-direct {v1, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$EventsDropListClickListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)V

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setDropdownListItemListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 273
    .end local v0           #actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    :goto_0
    return-void

    .line 269
    .restart local v0       #actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    :cond_0
    const-string v1, "PickerFolderScene"

    const-string v2, "[prepareDropList] actionBar null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 272
    .end local v0           #actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    :cond_1
    const-string v1, "PickerFolderScene"

    const-string v2, "[prepareDropList] mAdapter4DropList null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "PickerFolderScene"

    return-object v0
.end method
