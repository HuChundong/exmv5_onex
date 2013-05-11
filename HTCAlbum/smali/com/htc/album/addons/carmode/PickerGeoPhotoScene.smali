.class public Lcom/htc/album/addons/carmode/PickerGeoPhotoScene;
.super Lcom/htc/album/picker/PickerSingleItemScene;
.source "PickerGeoPhotoScene.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "PickerGeoPhotoScene"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/htc/album/picker/PickerSingleItemScene;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAdapterLocalPhoto(Lcom/htc/album/modules/collection/Collection;)Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    .locals 1
    .parameter "collection"

    .prologue
    .line 59
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/htc/album/modules/collection/Collection;->setSortOrder(I)V

    .line 60
    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerSingleItemScene;->createAdapterLocalPhoto(Lcom/htc/album/modules/collection/Collection;)Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move-result-object v0

    return-object v0
.end method

.method public enableFullScreen()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLeftPadding()I
    .locals 4

    .prologue
    .line 75
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 76
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 77
    .local v1, nLeft:I
    return v1
.end method

.method protected getParamsPreparator()Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;
    .locals 4

    .prologue
    .line 110
    invoke-static {}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4CarMode;->spawn()Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4CarMode;

    move-result-object v1

    .line 111
    .local v1, params:Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4CarMode;->setCacheSet(I)V

    .line 112
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4CarMode;->enableFileCache()V

    .line 113
    sget v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->MAX_TEXTURES_LIMIT_COUNT:I

    div-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->setMaxTextureCount(I)V

    .line 114
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 116
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_ENABLE_QUALITY_OPTIONS"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 117
    invoke-virtual {v1, v0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4CarMode;->setExtra(Landroid/os/Bundle;)V

    .line 118
    return-object v1
.end method

.method protected getTopPadding()I
    .locals 1

    .prologue
    .line 68
    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->CARMODE_ACTION_BAR_HEIGHT_DIMEN:I

    return v0
.end method

.method public onActionBarBackPressed()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 169
    return-void
.end method

.method protected onActionBarClicked(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoPhotoScene;->onActionBarBackPressed()V

    .line 101
    return-void
.end method

.method public onActionBarFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "startEvent"
    .parameter "endEvent"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoPhotoScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->isCarModeActionBarFling(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    .line 94
    .local v0, isFling:Z
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoPhotoScene;->onActionBarBackPressed()V

    .line 96
    :cond_0
    return v0
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunnyCore/view/SView;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoPhotoScene;->onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;
    .locals 2

    .prologue
    .line 43
    invoke-super {p0}, Lcom/htc/album/picker/PickerSingleItemScene;->onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-result-object v0

    .line 44
    .local v0, gv:Lcom/htc/sunnyCore/widget/gridview/GridView;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setOrientation(I)V

    .line 46
    return-object v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public onEnableActionBarTouchEvent()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method protected onItemSelected(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-virtual {p0, v1, v0}, Lcom/htc/album/addons/carmode/PickerGeoPhotoScene;->sendResultBack(Landroid/app/Fragment;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 182
    return-void
.end method

.method protected onNewThumbnailItem(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;
    .locals 3
    .parameter "context"
    .parameter "sContext"

    .prologue
    .line 123
    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;->spawn(Landroid/content/Context;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;

    move-result-object v1

    .line 124
    .local v1, param:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridItem4CarMode;

    invoke-direct {v0, p1, p2, v1}, Lcom/htc/sunny2/widget/gridview/GridItem4CarMode;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    .line 125
    .local v0, item:Lcom/htc/sunny2/widget/gridview/GridItem4CarMode;
    new-instance v2, Lcom/htc/album/addons/carmode/PickerGeoPhotoScene$1;

    invoke-direct {v2, p0}, Lcom/htc/album/addons/carmode/PickerGeoPhotoScene$1;-><init>(Lcom/htc/album/addons/carmode/PickerGeoPhotoScene;)V

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridItem4CarMode;->setBindMediaDataListener(Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;)V

    .line 135
    return-object v0
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerSingleItemScene;->onSendToForeground(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoPhotoScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityRoot()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->detach(Landroid/view/ViewGroup;)V

    .line 85
    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoPhotoScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityRoot()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->attach(Landroid/view/ViewGroup;)V

    .line 86
    return-void
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onUpdateMainViewLayout(Lcom/htc/sunnyCore/widget/gridview/GridView;Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "gridview"
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x0

    .line 139
    const/4 v0, 0x0

    .line 141
    .local v0, mainView:Lcom/htc/sunnyCore/widget/gridview/GridView;
    if-nez p1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    .end local v0           #mainView:Lcom/htc/sunnyCore/widget/gridview/GridView;
    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    .line 146
    .restart local v0       #mainView:Lcom/htc/sunnyCore/widget/gridview/GridView;
    :goto_0
    if-nez v0, :cond_1

    .line 154
    :goto_1
    return-void

    .line 144
    :cond_0
    move-object v0, p1

    goto :goto_0

    .line 150
    :cond_1
    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;->verticalSpacing(Landroid/content/res/Configuration;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setVerticalSpacing(I)V

    .line 151
    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;->horizontalSpacing(Landroid/content/res/Configuration;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setHorizontalSpacing(I)V

    .line 152
    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getPaddingRight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setPadding(IIII)V

    goto :goto_1
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "PickerGeoPhotoScene"

    return-object v0
.end method

.method protected sendResultBack(Landroid/app/Fragment;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 10
    .parameter "fragment"
    .parameter "image"

    .prologue
    const/4 v9, 0x0

    const-wide v7, 0x406fe00000000000L

    .line 188
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 189
    .local v0, actiivty:Landroid/app/Activity;
    if-eqz p2, :cond_2

    .line 191
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 192
    .local v5, pickerResult:Landroid/content/Intent;
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 194
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getLatitude()D

    move-result-wide v1

    .line 195
    .local v1, lat:D
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getLongitude()D

    move-result-wide v3

    .line 196
    .local v3, lng:D
    cmpl-double v6, v1, v7

    if-eqz v6, :cond_0

    cmpl-double v6, v3, v7

    if-nez v6, :cond_1

    .line 198
    :cond_0
    invoke-virtual {v0, v9}, Landroid/app/Activity;->setResult(I)V

    .line 199
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 212
    .end local v1           #lat:D
    .end local v3           #lng:D
    .end local v5           #pickerResult:Landroid/content/Intent;
    :goto_0
    return-void

    .line 203
    .restart local v1       #lat:D
    .restart local v3       #lng:D
    .restart local v5       #pickerResult:Landroid/content/Intent;
    :cond_1
    const-string v6, "latitude"

    invoke-virtual {v5, v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 204
    const-string v6, "longitude"

    invoke-virtual {v5, v6, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 205
    const/4 v6, -0x1

    invoke-virtual {v0, v6, v5}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 211
    .end local v1           #lat:D
    .end local v3           #lng:D
    .end local v5           #pickerResult:Landroid/content/Intent;
    :goto_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 209
    :cond_2
    invoke-virtual {v0, v9}, Landroid/app/Activity;->setResult(I)V

    goto :goto_1
.end method
