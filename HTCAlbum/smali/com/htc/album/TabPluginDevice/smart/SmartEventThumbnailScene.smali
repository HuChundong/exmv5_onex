.class public Lcom/htc/album/TabPluginDevice/smart/SmartEventThumbnailScene;
.super Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;
.source "SmartEventThumbnailScene.java"

# interfaces
.implements Lcom/htc/album/TabPluginDevice/smart/IAddressFinderListener;


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "SmartEventThumbnailScene"


# direct methods
.method public constructor <init>(Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)V
    .locals 0
    .parameter "tvListener"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;-><init>(Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected getFolderSceneId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "SmartFolderScene"

    return-object v0
.end method

.method protected getFullscreenSceneId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "SmartEventFullscreenScene"

    return-object v0
.end method

.method public getHeaderSubtitle()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 79
    iget v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    move-object v3, v4

    .line 97
    :cond_0
    :goto_0
    return-object v3

    .line 82
    :cond_1
    const/4 v3, 0x0

    .line 83
    .local v3, szTitle:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 84
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-nez v0, :cond_2

    .line 86
    const-string v5, "SmartEventThumbnailScene"

    const-string v6, "[HTCAlbum][SmartEventThumbnailScene][getHeaderSubtitle]"

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 87
    goto :goto_0

    .line 90
    :cond_2
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    .line 91
    .local v1, collection:Lcom/htc/album/modules/collection/Collection;
    instance-of v4, v1, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;

    if-eqz v4, :cond_0

    move-object v2, v1

    .line 93
    check-cast v2, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;

    .line 94
    .local v2, smartC:Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;
    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->getDateName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunnyCore/view/SView;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartEventThumbnailScene;->onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;
    .locals 2

    .prologue
    .line 34
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    if-eqz v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    .line 37
    .local v0, addressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;->setResetNetworkAccessWarning(Z)V

    .line 38
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartEventThumbnailScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;->bindAddressListener(Ljava/lang/String;Lcom/htc/album/TabPluginDevice/smart/IAddressFinderListener;)V

    .line 40
    .end local v0           #addressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;
    :cond_0
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-result-object v1

    return-object v1
.end method

.method public onDestroyScene()V
    .locals 2

    .prologue
    .line 46
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    .line 49
    .local v0, addressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartEventThumbnailScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;->unbindAddressListener(Ljava/lang/String;)V

    .line 51
    .end local v0           #addressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;
    :cond_0
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onDestroyScene()V

    .line 52
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onSendToForeground(Landroid/os/Bundle;)V

    .line 103
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->retrieveAddress(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Z)V

    .line 104
    return-void
.end method

.method public onUpdateAddressBegin()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public onUpdateAddressEnd()V
    .locals 3

    .prologue
    .line 124
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartEventThumbnailScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->handleRetrievedAddress(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public onUpdateAddressResult([Lcom/htc/AddressFinderService/interfaces/AddressData;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 119
    return-void
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "SmartEventThumbnailScene"

    return-object v0
.end method
