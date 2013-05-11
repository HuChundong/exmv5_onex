.class public Lcom/htc/album/addons/carmode/PickerGeoFolderScene;
.super Lcom/htc/album/picker/PickerFolderScene;
.source "PickerGeoFolderScene.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "PickerGeoFolderScene"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/htc/album/picker/PickerFolderScene;-><init>()V

    return-void
.end method


# virtual methods
.method public adapterIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "PickerGeoFolderAdapter"

    return-object v0
.end method

.method protected doCreateAdapter(Landroid/app/Activity;)Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;
    .locals 5
    .parameter "activity"

    .prologue
    .line 96
    const-string v0, "PickerGeoFolderScene"

    const-string v1, "[HTCAlbum][PickerGeoFolderScene][doNewAdapter]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v0, Lcom/htc/album/addons/carmode/PickerGeoFolderAdapter;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoFolderScene;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoFolderScene;->getAdapterMediaType()I

    move-result v3

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/album/addons/carmode/PickerGeoFolderAdapter;-><init>(Landroid/app/Activity;Landroid/os/Handler;ILandroid/os/Bundle;)V

    return-object v0
.end method

.method public enableDropList()V
    .locals 0

    .prologue
    .line 212
    invoke-super {p0}, Lcom/htc/album/picker/PickerFolderScene;->enableDropList()V

    .line 213
    return-void
.end method

.method public enableFullScreen()Z
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x1

    return v0
.end method

.method protected getAdapterMediaType()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method protected getBottomPadding()I
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    return v0
.end method

.method public getEnvironmentRenderOrder()I
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x1

    return v0
.end method

.method protected getLeftPadding()I
    .locals 2

    .prologue
    .line 308
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/CarModeFolderLayoutGetter;->MAIN_VIEW_LEFT_PADDING:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    return v0
.end method

.method protected getParamsGridItem(Landroid/content/Context;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;
    .locals 1
    .parameter "context"

    .prologue
    .line 335
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/htc/sunny2/widget/gridview/resource/CarModeFolderParams;->spawn(Landroid/content/Context;Z)Lcom/htc/sunny2/widget/gridview/resource/CarModeFolderParams;

    move-result-object v0

    return-object v0
.end method

.method protected getRightPadding()I
    .locals 2

    .prologue
    .line 316
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/CarModeFolderLayoutGetter;->MAIN_VIEW_RIGHT_PADDING:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    return v0
.end method

.method protected getTopPadding()I
    .locals 1

    .prologue
    .line 303
    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->CARMODE_ACTION_BAR_HEIGHT_DIMEN:I

    return v0
.end method

.method public onActionBarBackPressed()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 279
    :cond_0
    const-string v0, "PickerGeoFolderScene"

    const-string v1, "[onActionBarBackPressed] mSceneControl null"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :goto_0
    return-void

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onActionBarClicked(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoFolderScene;->onActionBarBackPressed()V

    .line 252
    return-void
.end method

.method public onActionBarFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "startEvent"
    .parameter "endEvent"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoFolderScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->isCarModeActionBarFling(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    .line 239
    .local v0, isFling:Z
    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoFolderScene;->onActionBarBackPressed()V

    .line 241
    :cond_0
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, -0x1

    .line 167
    const-string v1, "PickerGeoFolderScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onActivityResult]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    if-eq v4, p2, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    const/high16 v1, 0x30

    if-ne p1, v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 175
    .local v0, activity:Landroid/app/Activity;
    if-eqz p3, :cond_2

    .line 177
    invoke-virtual {v0, v4, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 183
    :goto_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 181
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    goto :goto_1
.end method

.method protected onConfigMainViewLayout(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 397
    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerFolderScene;->onConfigMainViewLayout(Landroid/content/res/Configuration;)V

    .line 399
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/resource/CarModeFolderLayoutGetter;->verticalSpacing(Landroid/content/res/Configuration;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setVerticalSpacing(I)V

    .line 400
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/resource/CarModeFolderLayoutGetter;->horizontalSpacing(Landroid/content/res/Configuration;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setHorizontalSpacing(I)V

    .line 402
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 403
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mIsInAnimation:Z

    if-nez v1, :cond_0

    .line 405
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/album/addons/carmode/PickerGeoFolderScene;->setGlobalBackgroundOrOverlapRoundCorner(Z)V

    .line 407
    :cond_0
    return-void
.end method

.method protected onCreateItemPrototype(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)Lcom/htc/sunnyCore/widget/gridview/GridViewItem;
    .locals 4
    .parameter "param"

    .prologue
    .line 355
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 356
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 358
    .local v1, context:Landroid/content/Context;
    new-instance v2, Lcom/htc/sunny2/widget/gridview/CarModeFolderGridItem;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v3

    check-cast p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    .end local p1
    invoke-direct {v2, v1, v3, p1}, Lcom/htc/sunny2/widget/gridview/CarModeFolderGridItem;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;)V

    .line 362
    .local v2, item:Lcom/htc/sunny2/widget/gridview/CarModeFolderGridItem;
    new-instance v3, Lcom/htc/album/addons/carmode/PickerGeoFolderScene$1;

    invoke-direct {v3, p0}, Lcom/htc/album/addons/carmode/PickerGeoFolderScene$1;-><init>(Lcom/htc/album/addons/carmode/PickerGeoFolderScene;)V

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/CarModeFolderGridItem;->setBindMediaDataListener(Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;)V

    .line 380
    return-object v2
.end method

.method protected onCreateParams4Preparator()Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;
    .locals 4

    .prologue
    .line 340
    invoke-static {}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4CarMode;->spawn()Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4CarMode;

    move-result-object v1

    .line 341
    .local v1, params:Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4CarMode;
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4CarMode;->setCacheSet(I)V

    .line 342
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4CarMode;->enableFileCache()V

    .line 346
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 348
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_ENABLE_QUALITY_OPTIONS"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 349
    invoke-virtual {v1, v0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4CarMode;->setExtra(Landroid/os/Bundle;)V

    .line 350
    return-object v1
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunnyCore/view/SView;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoFolderScene;->onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;
    .locals 5

    .prologue
    .line 62
    invoke-super {p0}, Lcom/htc/album/picker/PickerFolderScene;->onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-result-object v0

    .line 63
    .local v0, gv:Lcom/htc/sunnyCore/widget/gridview/GridView;
    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoFolderScene;->getLeftPadding()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoFolderScene;->getTopPadding()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoFolderScene;->getRightPadding()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoFolderScene;->getBottomPadding()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setPadding(IIII)V

    .line 68
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setOrientation(I)V

    .line 69
    return-object v0
.end method

.method protected onDropListItemClick(I)V
    .locals 6
    .parameter "nIndex"

    .prologue
    const/4 v3, 0x0

    .line 217
    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoFolderScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 218
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    if-eqz v0, :cond_0

    .line 219
    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->dismissDropList()V

    .line 221
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAdapter4DropList:Lcom/htc/album/AlbumMain/AdapterEventsDropList;

    invoke-virtual {v2, p1}, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 222
    .local v1, nItem:I
    const/16 v2, 0x38

    if-ne v2, v1, :cond_1

    .line 224
    invoke-interface {v0, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setDropdownListContent(Landroid/widget/BaseAdapter;)V

    .line 225
    invoke-interface {v0, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setDropdownListItemListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 226
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v4, "PickerGeoEventScene"

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 227
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;->EVENTS:Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    invoke-static {v2, v3}, Lcom/htc/album/Customizable/CustAlbumCollection;->setCarModeAlbumCollection(Landroid/content/Context;Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;)V

    .line 229
    :cond_1
    return-void
.end method

.method public onEnableActionBarAppButton()Z
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x1

    return v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x1

    return v0
.end method

.method public onEnableActionBarTouchEvent()Z
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x1

    return v0
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerFolderScene;->onEnterScene(Landroid/os/Bundle;)V

    .line 48
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v1, "MimeTypeFilter"

    const-string v2, "media/geo_only"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v1, "mediaType"

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public onItemSelected(I)V
    .locals 10
    .parameter "index"

    .prologue
    .line 126
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {v7, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 128
    .local v2, collection:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getBucketId()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    .line 130
    :cond_0
    const-string v7, "PickerGeoFolderScene"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "collection : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 136
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 140
    .local v1, callerIntent:Landroid/content/Intent;
    const-string v7, "mediaType"

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getSupportedMediaTypes()I

    move-result v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 141
    .local v4, mediaType:I
    const-string v7, "MimeTypeFilter"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, filter:Ljava/lang/String;
    invoke-virtual {v2, v4}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->setSupportedMediaTypes(I)V

    .line 143
    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->setFilter(Ljava/lang/String;)V

    .line 146
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 148
    .local v6, nextSceneInputData:Landroid/os/Bundle;
    const-string v7, "collection_info"

    invoke-virtual {v6, v7, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 157
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 158
    .local v5, newIntent:Landroid/content/Intent;
    const-string v7, "com.htc.album.ACTION_PICK_NF_GEO_PHOTO"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    invoke-virtual {v5, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 160
    const/high16 v7, 0x30

    invoke-virtual {v0, v5, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onNewEventDropList()Lcom/htc/album/AlbumMain/AdapterEventsDropList;
    .locals 3

    .prologue
    .line 202
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
    .line 108
    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerFolderScene;->onSendToForeground(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoFolderScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityRoot()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->detach(Landroid/view/ViewGroup;)V

    .line 110
    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoFolderScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityRoot()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->attach(Landroid/view/ViewGroup;)V

    .line 111
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 258
    :cond_0
    const-string v0, "PickerGeoFolderScene"

    const-string v1, "[onUpdateActionBarTitle] mSceneControl null"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v0, ""

    .line 261
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onUpdateGridViewPadding(Landroid/app/Activity;Lcom/htc/sunnyCore/widget/gridview/GridView;)V
    .locals 4
    .parameter "activity"
    .parameter "gridview"

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoFolderScene;->getLeftPadding()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoFolderScene;->getTopPadding()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoFolderScene;->getRightPadding()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoFolderScene;->getBottomPadding()I

    move-result v3

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setPadding(IIII)V

    .line 391
    return-void
.end method

.method protected prepareDropList()V
    .locals 0

    .prologue
    .line 116
    invoke-super {p0}, Lcom/htc/album/picker/PickerFolderScene;->prepareDropList()V

    .line 117
    return-void
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "PickerGeoFolderScene"

    return-object v0
.end method
