.class public Lcom/htc/album/TabPluginDevice/smart/SmartEventFullscreenScene;
.super Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;
.source "SmartEventFullscreenScene.java"

# interfaces
.implements Lcom/htc/album/TabPluginDevice/smart/IAddressFinderListener;


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "SmartEventFullscreenScene"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;-><init>()V

    return-void
.end method


# virtual methods
.method protected getThumbnailSceneId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "SmartEventThumbnailScene"

    return-object v0
.end method

.method public onCreateScene()Lcom/htc/sunny2/fullfilmview/FullFilmView;
    .locals 2

    .prologue
    .line 24
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    if-eqz v1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    .line 27
    .local v0, addressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;->setResetNetworkAccessWarning(Z)V

    .line 28
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartEventFullscreenScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;->bindAddressListener(Ljava/lang/String;Lcom/htc/album/TabPluginDevice/smart/IAddressFinderListener;)V

    .line 30
    .end local v0           #addressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;
    :cond_0
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onCreateScene()Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunnyCore/view/SView;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartEventFullscreenScene;->onCreateScene()Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyScene()V
    .locals 2

    .prologue
    .line 36
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    if-eqz v1, :cond_0

    .line 38
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    .line 39
    .local v0, addressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartEventFullscreenScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;->unbindAddressListener(Ljava/lang/String;)V

    .line 41
    .end local v0           #addressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;
    :cond_0
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onDestroyScene()V

    .line 42
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onSendToForeground(Landroid/os/Bundle;)V

    .line 61
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->retrieveAddress(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Z)V

    .line 62
    return-void
.end method

.method public onUpdateAddressBegin()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public onUpdateAddressEnd()V
    .locals 3

    .prologue
    .line 83
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartEventFullscreenScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->handleRetrievedAddress(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public onUpdateAddressResult([Lcom/htc/AddressFinderService/interfaces/AddressData;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 78
    return-void
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "SmartEventFullscreenScene"

    return-object v0
.end method
