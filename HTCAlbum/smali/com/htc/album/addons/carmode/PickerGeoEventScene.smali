.class public Lcom/htc/album/addons/carmode/PickerGeoEventScene;
.super Lcom/htc/album/addons/carmode/PickerGeoFolderScene;
.source "PickerGeoEventScene.java"

# interfaces
.implements Lcom/htc/album/TabPluginDevice/smart/IAddressFinderListener;


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "PickerGeoEventScene"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/album/addons/carmode/PickerGeoFolderScene;-><init>()V

    return-void
.end method


# virtual methods
.method public adapterIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "AdapterSmartEvent"

    return-object v0
.end method

.method protected doCreateAdapter(Landroid/app/Activity;)Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;
    .locals 6
    .parameter "activity"

    .prologue
    .line 64
    const-string v0, "PickerGeoEventScene"

    const-string v1, "[HTCAlbum][PickerGeoEventScene][doNewAdapter]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v1, "key_show_event_seperator"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 66
    new-instance v0, Lcom/htc/album/addons/carmode/PickerGeoEventAdapter;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoEventScene;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoEventScene;->getAdapterMediaType()I

    move-result v4

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/album/addons/carmode/PickerGeoEventAdapter;-><init>(Lcom/htc/sunnyCore/SunnyContext;Landroid/app/Activity;Landroid/os/Handler;ILandroid/os/Bundle;)V

    return-object v0
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunnyCore/view/SView;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoEventScene;->onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;
    .locals 2

    .prologue
    .line 29
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    if-eqz v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    .line 32
    .local v0, addressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;->setEnableNetworkAccessWarning(Z)V

    .line 33
    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoEventScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;->bindAddressListener(Ljava/lang/String;Lcom/htc/album/TabPluginDevice/smart/IAddressFinderListener;)V

    .line 35
    .end local v0           #addressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;
    :cond_0
    invoke-super {p0}, Lcom/htc/album/addons/carmode/PickerGeoFolderScene;->onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-result-object v1

    return-object v1
.end method

.method public onDestroyScene()V
    .locals 2

    .prologue
    .line 41
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    if-eqz v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    .line 44
    .local v0, addressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;
    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoEventScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;->unbindAddressListener(Ljava/lang/String;)V

    .line 46
    .end local v0           #addressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;
    :cond_0
    invoke-super {p0}, Lcom/htc/album/addons/carmode/PickerGeoFolderScene;->onDestroyScene()V

    .line 47
    return-void
.end method

.method protected onDropListItemClick(I)V
    .locals 6
    .parameter "nIndex"

    .prologue
    const/4 v3, 0x0

    .line 76
    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoEventScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 77
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    if-nez v0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->dismissDropList()V

    .line 82
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAdapter4DropList:Lcom/htc/album/AlbumMain/AdapterEventsDropList;

    invoke-virtual {v2, p1}, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 83
    .local v1, nItem:I
    const/16 v2, 0x37

    if-ne v2, v1, :cond_0

    .line 85
    invoke-interface {v0, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setDropdownListContent(Landroid/widget/BaseAdapter;)V

    .line 86
    invoke-interface {v0, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setDropdownListItemListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 87
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v4, "PickerGeoFolderScene"

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 88
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;->FOLDERS:Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    invoke-static {v2, v3}, Lcom/htc/album/Customizable/CustAlbumCollection;->setCarModeAlbumCollection(Landroid/content/Context;Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;)V

    goto :goto_0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
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

.method public onUpdateAddressBegin()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public onUpdateAddressEnd()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public onUpdateAddressResult([Lcom/htc/AddressFinderService/interfaces/AddressData;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 108
    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p0, p1}, Lcom/htc/album/addons/carmode/PickerGeoEventScene;->updateLocationInfo([Lcom/htc/AddressFinderService/interfaces/AddressData;)V

    .line 114
    :goto_0
    return-void

    .line 113
    :cond_0
    const-string v0, "PickerGeoEventScene"

    const-string v1, "data is null"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "PickerGeoEventScene"

    return-object v0
.end method

.method public updateLocationInfo([Lcom/htc/AddressFinderService/interfaces/AddressData;)V
    .locals 9
    .parameter "updateArray"

    .prologue
    .line 130
    if-eqz p1, :cond_3

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v6, :cond_3

    .line 132
    array-length v5, p1

    .line 133
    .local v5, size:I
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    if-ge v2, v5, :cond_4

    .line 135
    aget-object v0, p1, v2

    .line 136
    .local v0, addressData:Lcom/htc/AddressFinderService/interfaces/AddressData;
    if-nez v0, :cond_1

    .line 138
    const-string v6, "PickerGeoEventScene"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addressData null + index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    :cond_1
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;

    invoke-virtual {v6, v0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->getIndexFromLatLong(Lcom/htc/AddressFinderService/interfaces/AddressData;)Ljava/util/ArrayList;

    move-result-object v3

    .line 142
    .local v3, indexList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 144
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 147
    .local v4, item:I
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v6, :cond_2

    .line 148
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v6, Lcom/htc/sunnyCore/widget/gridview/GridView;

    const/4 v7, 0x2

    invoke-virtual {v6, v4, v7}, Lcom/htc/sunnyCore/widget/gridview/GridView;->notifyPreparatorMediaDataChange(II)V

    goto :goto_1

    .line 150
    :cond_2
    const-string v6, "PickerGeoEventScene"

    const-string v7, "mMainView null"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 156
    .end local v0           #addressData:Lcom/htc/AddressFinderService/interfaces/AddressData;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #index:I
    .end local v3           #indexList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4           #item:I
    .end local v5           #size:I
    :cond_3
    const-string v6, "PickerGeoEventScene"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateArray = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mAdapter = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_4
    return-void
.end method
