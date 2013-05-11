.class public Lcom/htc/album/TabPluginDevice/ActivityMainLocal;
.super Lcom/htc/opensense2/widget/ActivityMainBase;
.source "ActivityMainLocal.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISceneErrorHost;


# static fields
.field private static final JUMP_ID_FOLDERVIEW:I = 0x1

.field private static final JUMP_ID_FULLSCREENVIEW:I = 0x3

.field private static final JUMP_ID_THUMBNAILVIEW:I = 0x2


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mJumpToScene:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;-><init>()V

    .line 22
    const-string v0, "ActivityMainLocal"

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private onHandleSceneErrorReport(Ljava/lang/Object;)V
    .locals 8
    .parameter "object"

    .prologue
    const/4 v7, 0x0

    .line 273
    iget-object v4, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v2

    .line 274
    .local v2, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-nez v2, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 276
    check-cast v0, Landroid/os/Bundle;

    .line 278
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "scene_identifier"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 279
    .local v3, szSceneIdentity:Ljava/lang/String;
    const-string v4, "scene_error_report"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 281
    .local v1, nCount:I
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 284
    const-string v4, "ActivityMainLocal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][ActivityMainLocal][onHandleSceneErrorReport]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v4, "SceneLocalFolder"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 288
    if-nez v1, :cond_0

    .line 290
    iget-object v4, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    .line 291
    iget-object v4, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v5, "SceneLocalError"

    invoke-virtual {v4, v7, v5}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 294
    :cond_2
    const-string v4, "SceneLocalPhotoThumbnail"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "SceneLocalPhotoFullscreen"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 297
    :cond_3
    if-nez v1, :cond_0

    .line 299
    iget-object v4, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    .line 300
    iget-object v4, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v5, "SceneLocalFolder"

    invoke-virtual {v4, v7, v5}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected checkCallerIntent(Landroid/content/Intent;)Z
    .locals 4
    .parameter "caller"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 58
    if-nez p1, :cond_0

    .line 90
    :goto_0
    return v1

    .line 60
    :cond_0
    iput v2, p0, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->mJumpToScene:I

    .line 66
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 68
    const-string v3, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.htc.album.action.VIEW_BURST_SHOTS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.htc.album.action.VIEW_PANORAMA_SHOTS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.htc.album.action.VIEW_SNAPBOOTH"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.htc.album.action.VIEW_FOLDER"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.htc.album.action.DLNA_VIEW_LOCAL_PHOTO"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 75
    :cond_1
    const/4 v3, 0x3

    iput v3, p0, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->mJumpToScene:I

    .line 82
    :cond_2
    :goto_1
    iget v3, p0, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->mJumpToScene:I

    if-eq v3, v2, :cond_3

    .line 83
    invoke-virtual {p0, v1, v1}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->enableSourceSwitch(ZZ)V

    :cond_3
    move v1, v2

    .line 90
    goto :goto_0

    .line 77
    :cond_4
    const-string v3, "com.htc.album.action.ALL_VIDEOS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "com.htc.album.action.DLNA_BROWSE_LOCAL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 79
    :cond_5
    const/4 v3, 0x2

    iput v3, p0, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->mJumpToScene:I

    goto :goto_1
.end method

.method public enableBroadcastReceiver()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public enableErrorScene()Z
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x1

    return v0
.end method

.method protected getContentView()I
    .locals 1

    .prologue
    .line 228
    const v0, 0x7f03002f

    return v0
.end method

.method protected getLayoutHost()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 235
    const v0, 0x7f09003a

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public gotoErrorScene(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v1, "SceneLocalError"

    invoke-virtual {v0, p1, v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public isInErrorScene()Z
    .locals 3

    .prologue
    .line 343
    const/4 v0, 0x0

    .line 345
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v2, "SceneLocalError"

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isSceneExist(Ljava/lang/String;)Z

    move-result v0

    .line 347
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 164
    sparse-switch p1, :sswitch_data_0

    .line 219
    invoke-super {p0, p1, p2, p3}, Lcom/htc/opensense2/widget/ActivityMainBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 167
    :sswitch_0
    if-ne p2, v3, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 170
    .local v2, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 172
    .local v0, action:Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 173
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 175
    :cond_1
    const-string v3, "com.htc.album.action.VIEW_PANORAMA_SHOTS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 177
    const-string v3, "com.htc.album.action.VIEW_PANORAMA_SHOTS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    :goto_1
    const-string v3, "goFinish"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 193
    invoke-virtual {p0, v5}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->fullscreenMode(Z)V

    .line 194
    invoke-virtual {p0, v4, v4}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->enableSourceSwitch(ZZ)V

    .line 196
    iget-object v3, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    .line 198
    iget-object v3, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v4, "SceneLocalPhotoFullscreen"

    invoke-virtual {v3, v6, v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_2
    const-string v3, "com.htc.album.action.VIEW_BURST_SHOTS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 181
    const-string v3, "com.htc.album.action.VIEW_BURST_SHOTS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 185
    :cond_3
    const-string v3, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 204
    .end local v0           #action:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :sswitch_1
    if-ne p2, v3, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 206
    .local v1, i:Landroid/content/Intent;
    const-string v3, "com.htc.album.action.VIEW_SNAPBOOTH"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const-string v3, "goFinish"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 209
    invoke-virtual {p0, v5}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->fullscreenMode(Z)V

    .line 210
    invoke-virtual {p0, v4, v4}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->enableSourceSwitch(ZZ)V

    .line 212
    iget-object v3, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    .line 214
    iget-object v3, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v4, "SceneLocalPhotoFullscreen"

    invoke-virtual {v3, v6, v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :sswitch_data_0
    .sparse-switch
        0x1390 -> :sswitch_0
        0x139b -> :sswitch_1
    .end sparse-switch
.end method

.method public onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 98
    const-string v1, "ActivityMainLocal"

    const-string v2, "[HTCAlbum][ActivityMainLocal][onBroadcastMediaConnected]: "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 100
    .local v0, actIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->checkCallerIntent(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->finish()V

    .line 112
    :goto_0
    return v3

    .line 109
    :cond_0
    const-string v1, "media_connected"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 111
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1, p1, p2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 116
    const-string v1, "ActivityMainLocal"

    const-string v2, "[HTCAlbum][ActivityMainLocal][onBroadcastMediaDisconnected]: "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 118
    .local v0, actIntent:Landroid/content/Intent;
    const-string v1, "media_connected"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 120
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1, p1, p2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 121
    const/4 v1, 0x1

    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->mJumpToScene:I

    .line 37
    invoke-super {p0, p1}, Lcom/htc/opensense2/widget/ActivityMainBase;->onCreate(Landroid/os/Bundle;)V

    .line 38
    return-void
.end method

.method public onCreateScene()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 133
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isAllStorageReady()Z

    move-result v0

    .line 135
    .local v0, bIsStorageReady:Z
    const-string v2, "ActivityMainLocal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ActivityMainLocal][onCreateScene]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 137
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "in_pickermode"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 138
    if-nez v0, :cond_0

    .line 140
    iget-object v2, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v3, "SceneLocalError"

    invoke-virtual {v2, v5, v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 158
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 144
    :cond_0
    iget v2, p0, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->mJumpToScene:I

    packed-switch v2, :pswitch_data_0

    .line 154
    iget-object v2, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v3, "SceneLocalFolder"

    invoke-virtual {v2, v5, v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :pswitch_0
    iget-object v2, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v3, "SceneLocalPhotoFullscreen"

    invoke-virtual {v2, v5, v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :pswitch_1
    iget-object v2, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v3, "SceneLocalPhotoThumbnail"

    invoke-virtual {v2, v5, v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateScene(Landroid/content/Intent;)Z
    .locals 1
    .parameter "newIntent"

    .prologue
    .line 125
    if-eqz p1, :cond_0

    .line 126
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->setIntent(Landroid/content/Intent;)V

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->onCreateScene()Z

    move-result v0

    return v0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "message"

    .prologue
    .line 307
    const/4 v0, 0x0

    .line 309
    .local v0, bResult:Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 315
    invoke-super {p0, p1}, Lcom/htc/opensense2/widget/ActivityMainBase;->onMessage(Landroid/os/Message;)Z

    .line 318
    :goto_0
    return v0

    .line 312
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->onHandleSceneErrorReport(Ljava/lang/Object;)V

    goto :goto_0

    .line 309
    :pswitch_data_0
    .packed-switch 0x4ea3
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "newIntent"

    .prologue
    .line 45
    const-string v0, "ActivityMainLocal"

    const-string v1, "[HTCAlbum][ActivityMainLocal][onNewIntent]: Begin"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->checkCallerIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->finish()V

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/opensense2/widget/ActivityMainBase;->onNewIntent(Landroid/content/Intent;)V

    .line 52
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onReportSceneErrorCheck(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "szSceneIdentity"
    .parameter "object"

    .prologue
    .line 324
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 325
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "scene_identifier"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 328
    const-string v1, "scene_error_report"

    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 330
    :cond_0
    const/16 v1, 0x4ea3

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->onPostMessage(ILjava/lang/Object;I)V

    .line 332
    return-void
.end method

.method public sceneFactory(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .locals 4
    .parameter "szSceneIdentity"

    .prologue
    .line 244
    const-string v1, "ActivityMainLocal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ActivityMainLocal][sceneFactory]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    const-string v1, "SceneLocalFolder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-direct {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;-><init>()V

    .line 266
    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :goto_0
    return-object v0

    .line 250
    :cond_0
    const-string v1, "SceneLocalPhotoThumbnail"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;-><init>(Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)V

    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    goto :goto_0

    .line 254
    :cond_1
    const-string v1, "SceneLocalPhotoFullscreen"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 256
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-direct {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;-><init>()V

    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    goto :goto_0

    .line 258
    :cond_2
    const-string v1, "SceneLocalError"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 260
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalError;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-direct {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalError;-><init>()V

    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    goto :goto_0

    .line 264
    :cond_3
    const-string v1, "ActivityMainLocal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ActivityMainLocal][sceneFactory]: Unknown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
