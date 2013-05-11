.class public Lcom/htc/album/picker/PickerFolderHelper;
.super Ljava/lang/Object;
.source "PickerFolderHelper.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "PickerFolderHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCacheUID(I)Ljava/lang/String;
    .locals 5
    .parameter "mediaTypes"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 149
    and-int/lit8 v4, p0, 0x1

    if-eqz v4, :cond_0

    move v0, v1

    .line 150
    .local v0, showImages:Z
    :goto_0
    and-int/lit8 v4, p0, 0x10

    if-eqz v4, :cond_1

    .line 152
    .local v1, showVideos:Z
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 154
    const-string v2, "mixed"

    .line 165
    .local v2, uid:Ljava/lang/String;
    :goto_2
    return-object v2

    .end local v0           #showImages:Z
    .end local v1           #showVideos:Z
    .end local v2           #uid:Ljava/lang/String;
    :cond_0
    move v0, v3

    .line 149
    goto :goto_0

    .restart local v0       #showImages:Z
    :cond_1
    move v1, v3

    .line 150
    goto :goto_1

    .line 156
    .restart local v1       #showVideos:Z
    :cond_2
    if-eqz v1, :cond_3

    .line 158
    const-string v2, "videos"

    .restart local v2       #uid:Ljava/lang/String;
    goto :goto_2

    .line 162
    .end local v2           #uid:Ljava/lang/String;
    :cond_3
    const-string v2, "images"

    .restart local v2       #uid:Ljava/lang/String;
    goto :goto_2
.end method

.method public static onActivityResult(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;IILandroid/content/Intent;)V
    .locals 5
    .parameter "sceneControl"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, -0x1

    .line 116
    const-string v1, "PickerFolderHelper"

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

    .line 118
    if-eq v4, p2, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    const/high16 v1, 0x30

    if-ne p1, v1, :cond_0

    .line 123
    invoke-interface {p0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 124
    .local v0, activity:Landroid/app/Activity;
    if-eqz p3, :cond_2

    .line 126
    const-string v1, "com.htc.HTCAlbum.action.ITEM_PICKER_FROM_COLLECTIONS"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    invoke-virtual {v0, v4, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 133
    :goto_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 131
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    goto :goto_1
.end method

.method public static onItemSelected(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;I)V
    .locals 16
    .parameter "sceneControl"
    .parameter "adapter"
    .parameter "index"

    .prologue
    .line 24
    invoke-virtual/range {p1 .. p2}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v3

    check-cast v3, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 25
    .local v3, collection:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    if-nez v3, :cond_0

    .line 27
    const-string v13, "PickerFolderHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "collection = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :goto_0
    return-void

    .line 31
    :cond_0
    instance-of v13, v3, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    if-eqz v13, :cond_1

    move-object v13, v3

    .line 33
    check-cast v13, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    invoke-virtual {v13}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->isSeparable()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 35
    const-string v13, "PickerFolderHelper"

    const-string v14, "collection = isSeparable()"

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getBucketId()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_2

    const-string v13, "com.htc.HTCAlbum.DUMMY"

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 42
    :cond_2
    const-string v13, "PickerFolderHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getBucketId = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getBucketId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", getDisplayName = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_3
    invoke-interface/range {p0 .. p0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    .line 47
    .local v2, activity:Landroid/app/Activity;
    invoke-interface/range {p0 .. p0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v7

    .line 49
    .local v7, fragment:Lcom/htc/app/mf/MfFragment;
    if-eqz v2, :cond_4

    if-nez v7, :cond_5

    .line 51
    :cond_4
    const-string v13, "PickerFolderHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "activity = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", fragment = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 55
    :cond_5
    check-cast v7, Lcom/htc/album/picker/PickerFolderMfFragment;

    .end local v7           #fragment:Lcom/htc/app/mf/MfFragment;
    invoke-virtual {v7}, Lcom/htc/album/picker/PickerFolderMfFragment;->getPickerMode()I

    move-result v9

    .line 57
    .local v9, mode:I
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 60
    .local v10, request:Landroid/content/Intent;
    const-string v13, "mediaType"

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getSupportedMediaTypes()I

    move-result v14

    invoke-virtual {v10, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 61
    .local v8, mediaType:I
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v14, "MimeTypeFilter"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 63
    .local v5, filter:Ljava/lang/String;
    invoke-virtual {v3, v8}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->setSupportedMediaTypes(I)V

    .line 64
    invoke-virtual {v3, v5}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->setFilter(Ljava/lang/String;)V

    .line 66
    invoke-static {v9}, Lcom/htc/album/picker/PickerConstants;->isFolderPicker(I)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 68
    const-string v13, "PickerFolderHelper"

    const-string v14, "[onListItemClick] Folder Picker..."

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;

    if-eqz v13, :cond_6

    move-object/from16 v12, p1

    .line 72
    check-cast v12, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;

    .line 73
    .local v12, smartAdapter:Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;
    move/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->genEventId(I)Ljava/lang/String;

    .line 75
    .end local v12           #smartAdapter:Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;
    :cond_6
    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getQueryParams()Landroid/content/Intent;

    move-result-object v11

    .line 77
    .local v11, result:Landroid/content/Intent;
    const/4 v13, -0x1

    invoke-virtual {v2, v13, v11}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 78
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 82
    .end local v11           #result:Landroid/content/Intent;
    :cond_7
    const-string v13, "PickerFolderHelper"

    const-string v14, "[onListItemClick] item picker..."

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, action:Ljava/lang/String;
    const-string v13, "com.htc.HTCAlbum.action.ITEM_PICKER_FROM_COLLECTIONS"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 87
    const-string v1, "android.intent.action.GET_CONTENT"

    .line 90
    :cond_8
    invoke-virtual {v10, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 92
    .local v4, extras:Landroid/os/Bundle;
    const-string v13, "collection_info"

    invoke-virtual {v4, v13, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 93
    invoke-virtual {v10, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 94
    const-string v13, "picker_mode"

    invoke-virtual {v10, v13, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    const-string v13, "3d_image_index_list"

    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->show3DVirtualFolder()Z

    move-result v14

    invoke-virtual {v10, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 96
    const-string v13, "external_picker"

    const/4 v14, 0x1

    invoke-virtual {v10, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 97
    const-class v13, Lcom/htc/album/picker/PickerItemActivity;

    invoke-virtual {v10, v2, v13}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 98
    invoke-virtual {v10}, Landroid/content/Intent;->getFlags()I

    move-result v6

    .line 99
    .local v6, flags:I
    const-string v13, "PickerFolderHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[onItemSelected] Caller with flags, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const/high16 v13, 0x200

    and-int/2addr v13, v6

    if-eqz v13, :cond_9

    .line 103
    const-string v13, "PickerFolderHelper"

    const-string v14, "[onItemSelected] Folder finished by Intent.FLAG_ACTIVITY_FORWARD_RESULT"

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v2, v10}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 105
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 109
    :cond_9
    const/high16 v13, 0x30

    invoke-virtual {v2, v10, v13}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method public static shouldUseGalleryCache(I)Z
    .locals 5
    .parameter "mediaTypes"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 139
    and-int/lit8 v4, p0, 0x1

    if-eqz v4, :cond_0

    move v0, v2

    .line 140
    .local v0, showImages:Z
    :goto_0
    and-int/lit8 v4, p0, 0x10

    if-eqz v4, :cond_1

    move v1, v2

    .line 142
    .local v1, showVideos:Z
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    :goto_2
    return v2

    .end local v0           #showImages:Z
    .end local v1           #showVideos:Z
    :cond_0
    move v0, v3

    .line 139
    goto :goto_0

    .restart local v0       #showImages:Z
    :cond_1
    move v1, v3

    .line 140
    goto :goto_1

    .restart local v1       #showVideos:Z
    :cond_2
    move v2, v3

    .line 142
    goto :goto_2
.end method
