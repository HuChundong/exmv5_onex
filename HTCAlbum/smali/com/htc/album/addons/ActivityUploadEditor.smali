.class public Lcom/htc/album/addons/ActivityUploadEditor;
.super Lcom/htc/album/TabPluginDevice/ActivityMainLocal;
.source "ActivityUploadEditor.java"

# interfaces
.implements Lcom/htc/album/UploadEditor/ISceneSourcePluginFactory;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;-><init>()V

    .line 23
    const-string v0, "ActivityUploadEditor"

    iput-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor;->LOG_TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public enableBroadcastReceiver()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateScene()Z
    .locals 4

    .prologue
    .line 26
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isAllStorageReady()Z

    move-result v0

    .line 28
    .local v0, bIsStorageReady:Z
    const-string v1, "ActivityUploadEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ActivityUploadEditor][onCreateScene]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const/4 v2, 0x0

    const-string v3, "ScenePhotoTagEditor"

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 30
    const/4 v1, 0x1

    return v1
.end method

.method public sceneFactory(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .locals 4
    .parameter "szSceneIdentity"

    .prologue
    .line 39
    const-string v1, "ActivityUploadEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ActivityUploadEditor][sceneFactory]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    const-string v1, "ScenePhotoTagEditor"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    new-instance v0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-direct {v0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;-><init>()V

    .line 49
    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :goto_0
    return-object v0

    .line 47
    :cond_0
    const-string v1, "ActivityUploadEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ActivityUploadEditor][sceneFactory]: Unknown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sceneSourceFactory(Ljava/lang/String;)Lcom/htc/album/UploadEditor/ISceneSourcePlugin;
    .locals 4
    .parameter "szIdentity"

    .prologue
    .line 60
    const-string v1, "ActivityUploadEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ActivityUploadEditor][sceneSourceFactory]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v0, Lcom/htc/album/UploadEditor/SceneSourceLocal;

    invoke-direct {v0}, Lcom/htc/album/UploadEditor/SceneSourceLocal;-><init>()V

    .line 63
    .local v0, plugin:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;
    return-object v0
.end method
