.class public Lcom/htc/album/addons/carmode/PickerGeoFolderMfFragment;
.super Lcom/htc/album/picker/PickerFolderMfFragment;
.source "PickerGeoFolderMfFragment.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "PickerGeoFolderMfFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/htc/album/picker/PickerFolderMfFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkCallerIntent(Landroid/content/Intent;)Z
    .locals 2
    .parameter "caller"

    .prologue
    .line 21
    const-string v0, "com.htc.album.ACTION_PICK_GEO_PHOTO"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onCreateScene()Z
    .locals 3

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoFolderMfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 39
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "MimeTypeFilter"

    const-string v2, "media/geo_only"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    invoke-super {p0}, Lcom/htc/album/picker/PickerFolderMfFragment;->onCreateScene()Z

    move-result v1

    return v1
.end method

.method protected onHandleSceneErrorReport(Ljava/lang/Object;)V
    .locals 8
    .parameter "object"

    .prologue
    .line 90
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v2

    .line 91
    .local v2, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-nez v2, :cond_1

    .line 93
    const-string v4, "PickerGeoFolderMfFragment"

    const-string v5, "[HTCAlbum][PickerGeoPhotoFragment][onHandleSceneErrorReport]: exit 1"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 96
    check-cast v0, Landroid/os/Bundle;

    .line 98
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "scene_identifier"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, szSceneIdentity:Ljava/lang/String;
    const-string v4, "scene_error_report"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 101
    .local v1, nCount:I
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 103
    :cond_2
    const-string v4, "PickerGeoFolderMfFragment"

    const-string v5, "[HTCAlbum][PickerGeoPhotoFragment][onHandleSceneErrorReport]: exit 2"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_3
    const-string v4, "PickerGeoFolderScene"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "PickerGeoPhotoScene"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "PickerGeoEventScene"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 112
    :cond_4
    const-string v4, "PickerGeoFolderMfFragment"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "[onHandleSceneErrorReport] szSceneIdentity = "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    const/4 v6, 0x2

    const-string v7, ", nCount = "

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    if-nez v1, :cond_0

    .line 115
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    .line 116
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const/4 v5, 0x0

    const-string v6, "SceneLocalError"

    invoke-virtual {v4, v5, v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sceneFactory(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .locals 2
    .parameter "szSceneIdentity"

    .prologue
    .line 65
    const-string v0, "SceneLocalError"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Lcom/htc/album/addons/carmode/PickerGeoFolderErrorScene;

    invoke-direct {v0}, Lcom/htc/album/addons/carmode/PickerGeoFolderErrorScene;-><init>()V

    .line 80
    :goto_0
    return-object v0

    .line 69
    :cond_0
    const-string v0, "PickerGeoFolderScene"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    new-instance v0, Lcom/htc/album/addons/carmode/PickerGeoFolderScene;

    invoke-direct {v0}, Lcom/htc/album/addons/carmode/PickerGeoFolderScene;-><init>()V

    goto :goto_0

    .line 73
    :cond_1
    const-string v0, "PickerGeoEventScene"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    new-instance v0, Lcom/htc/album/addons/carmode/PickerGeoEventScene;

    invoke-direct {v0}, Lcom/htc/album/addons/carmode/PickerGeoEventScene;-><init>()V

    goto :goto_0

    .line 79
    :cond_2
    const-string v0, "PickerGeoFolderMfFragment"

    const-string v1, "[sceneFactory] scene identiy not found. use PickerGeoFolderScene"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v0, Lcom/htc/album/addons/carmode/PickerGeoFolderScene;

    invoke-direct {v0}, Lcom/htc/album/addons/carmode/PickerGeoFolderScene;-><init>()V

    goto :goto_0
.end method

.method protected startOpeningScene(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 50
    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoFolderMfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/Customizable/CustAlbumCollection;->getCarModeAlbumCollection(Landroid/content/Context;)Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    move-result-object v0

    .line 51
    .local v0, collection:Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;
    sget-object v1, Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;->FOLDERS:Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    if-ne v1, v0, :cond_0

    .line 52
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "PickerGeoFolderScene"

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 57
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "PickerGeoEventScene"

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto :goto_0
.end method
