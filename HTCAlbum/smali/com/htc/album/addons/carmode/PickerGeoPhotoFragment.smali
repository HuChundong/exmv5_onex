.class public Lcom/htc/album/addons/carmode/PickerGeoPhotoFragment;
.super Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;
.source "PickerGeoPhotoFragment.java"


# static fields
.field static final CLS_NAME_GEO_ERROR:Ljava/lang/String; = "PickerGeoErrorScene"

.field static final CLS_NAME_GEO_PICKER:Ljava/lang/String; = "PickerGeoPhotoScene"

.field public static final LOG_TAG:Ljava/lang/String; = "PickerGeoPhotoFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkCallerIntent(Landroid/content/Intent;)Z
    .locals 2
    .parameter "caller"

    .prologue
    .line 26
    const-string v0, "com.htc.album.ACTION_PICK_NF_GEO_PHOTO"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onCreateScene()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 33
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isAllStorageReady()Z

    move-result v0

    .line 35
    .local v0, bIsStorageReady:Z
    if-nez v0, :cond_0

    .line 37
    iget-object v3, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const/4 v4, 0x0

    const-string v5, "PickerGeoErrorScene"

    invoke-virtual {v3, v4, v5}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 52
    :goto_0
    return v6

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoPhotoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 41
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "external_picker"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 44
    const-string v3, "MimeTypeFilter"

    const-string v4, "media/geo_only"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    const-string v3, "mediaType"

    const-string v4, "image/*"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoPhotoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/album/picker/PickerConstants;->getPickerMode(Landroid/app/Activity;)I

    move-result v2

    .line 47
    .local v2, pickerMode:I
    const-string v3, "picker_mode"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 51
    iget-object v3, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "PickerGeoPhotoScene"

    invoke-virtual {v3, v4, v5}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onHandleSceneErrorReport(Ljava/lang/Object;)V
    .locals 7
    .parameter "object"

    .prologue
    .line 73
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v2

    .line 74
    .local v2, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-nez v2, :cond_1

    .line 76
    const-string v4, "PickerGeoPhotoFragment"

    const-string v5, "[HTCAlbum][PickerGeoPhotoFragment][onHandleSceneErrorReport]: exit 1"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 79
    check-cast v0, Landroid/os/Bundle;

    .line 81
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "scene_identifier"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, szSceneIdentity:Ljava/lang/String;
    const-string v4, "scene_error_report"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 84
    .local v1, nCount:I
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 86
    :cond_2
    const-string v4, "PickerGeoPhotoFragment"

    const-string v5, "[HTCAlbum][PickerGeoPhotoFragment][onHandleSceneErrorReport]: exit 2"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_3
    const-string v4, "PickerGeoPhotoScene"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 93
    if-nez v1, :cond_0

    .line 95
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    .line 96
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const/4 v5, 0x0

    const-string v6, "PickerGeoErrorScene"

    invoke-virtual {v4, v5, v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sceneFactory(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .locals 1
    .parameter "szSceneIdentity"

    .prologue
    .line 59
    const-string v0, "PickerGeoErrorScene"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Lcom/htc/album/addons/carmode/PickerGeoErrorScene;

    invoke-direct {v0}, Lcom/htc/album/addons/carmode/PickerGeoErrorScene;-><init>()V

    .line 65
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/htc/album/addons/carmode/PickerGeoPhotoScene;

    invoke-direct {v0}, Lcom/htc/album/addons/carmode/PickerGeoPhotoScene;-><init>()V

    goto :goto_0
.end method
