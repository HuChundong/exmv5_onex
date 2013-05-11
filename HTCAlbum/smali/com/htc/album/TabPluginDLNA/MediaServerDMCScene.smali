.class public Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;
.super Lcom/htc/album/TabPluginDLNA/DMCBaseScene;
.source "MediaServerDMCScene.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/TabPluginDLNA/DMCBaseScene",
        "<",
        "Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "MediaServerDMCScene"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method private loadDirectoryInfo()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 341
    :try_start_0
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 342
    .local v0, activity:Landroid/app/Activity;
    const-string v5, "directory_info"

    invoke-virtual {v0, v5}, Landroid/app/Activity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 343
    .local v3, inStream:Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 344
    .local v4, objInStream:Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 345
    .local v1, alObj:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #alObj:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    .end local v3           #inStream:Ljava/io/FileInputStream;
    .end local v4           #objInStream:Ljava/io/ObjectInputStream;
    :goto_0
    return-object v1

    .line 348
    :catch_0
    move-exception v2

    .line 350
    .local v2, ex:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private saveDirectoryInfo(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 318
    .local p1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 324
    .local v0, activity:Landroid/app/Activity;
    const-string v4, "directory_info"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 327
    .local v3, outStream:Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 328
    .local v2, objOutStream:Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 329
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 331
    .end local v0           #activity:Landroid/app/Activity;
    .end local v2           #objOutStream:Ljava/io/ObjectOutputStream;
    .end local v3           #outStream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 333
    .local v1, ex:Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method public adapterIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "AdapterDlnaFullscreen"

    return-object v0
.end method

.method protected createAdapter(Landroid/os/Bundle;)Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;
    .locals 2
    .parameter "bundle"

    .prologue
    .line 164
    new-instance v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaFullscreen;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaFullscreen;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 165
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setDataBundle(Landroid/os/Bundle;)V

    .line 167
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    return-object v0
.end method

.method protected bridge synthetic createAdapter(Landroid/os/Bundle;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->createAdapter(Landroid/os/Bundle;)Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    move-result-object v0

    return-object v0
.end method

.method protected getBackIntent()Landroid/content/Intent;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 102
    const/4 v3, 0x0

    .line 104
    .local v3, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v5

    if-ne v8, v5, :cond_3

    .line 106
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 107
    .restart local v3       #intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/htc/album/AlbumMain/ActivityMainDropList;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 108
    const-string v5, "tab_default"

    const v6, 0x7f0a00d1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 111
    .local v0, ActivityIntent:Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 113
    const-string v5, "directmode"

    const-string v6, "directmode"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    const-string v5, "browse_mode"

    const-string v6, "browse_mode"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 115
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mSceneBundle:Landroid/os/Bundle;

    if-eqz v5, :cond_1

    .line 117
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 118
    .local v2, bundle:Landroid/os/Bundle;
    const-string v5, "server_id"

    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v7, "server_id"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v5, "server_name"

    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v7, "server_name"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v5, :cond_0

    .line 123
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getServiceDirectory()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    .line 124
    .local v4, serviceDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;
    const-string v5, "directory_info"

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->exportDirectories()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 131
    .end local v4           #serviceDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;
    :goto_0
    const-string v5, "browse_info"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 132
    const-string v5, "com.htc.album.action.DLNA_BROWSE_DMS_RECOVERY"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    .end local v2           #bundle:Landroid/os/Bundle;
    :goto_1
    const/high16 v5, 0x400

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 157
    .end local v0           #ActivityIntent:Landroid/content/Intent;
    :goto_2
    return-object v3

    .line 128
    .restart local v0       #ActivityIntent:Landroid/content/Intent;
    .restart local v2       #bundle:Landroid/os/Bundle;
    :cond_0
    const-string v5, "directory_info"

    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v7, "directory_info"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 135
    .end local v2           #bundle:Landroid/os/Bundle;
    :cond_1
    const-string v5, "MediaServerDMCScene"

    const-string v6, "mSceneBundle is null"

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 138
    :cond_2
    const-string v5, "MediaServerDMCScene"

    const-string v6, "ActivityIntent is null"

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 144
    .end local v0           #ActivityIntent:Landroid/content/Intent;
    :cond_3
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v5, "com.htc.album.action.DLNA_BROWSE_DMS"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 149
    .local v1, browseExtras:Landroid/os/Bundle;
    const-string v5, "server_id"

    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mDMCExtras:Landroid/os/Bundle;

    const-string v7, "server_id"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v5, "server_name"

    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mDMCExtras:Landroid/os/Bundle;

    const-string v7, "server_name"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v5, "directory_info"

    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mDMCExtras:Landroid/os/Bundle;

    const-string v7, "directory_info"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 153
    const-string v5, "browse_info"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 154
    const-string v5, "browse_mode"

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2
.end method

.method protected getFullFilmViewExtras()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 311
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 312
    .local v0, inValue:Landroid/os/Bundle;
    const-string v1, "TEXTURE_MAX_COUNT"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 313
    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 270
    :try_start_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .line 271
    .local v1, info:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    if-nez v1, :cond_0

    .line 272
    const-string v2, ""

    .line 278
    .end local v1           #info:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    :goto_0
    return-object v2

    .line 274
    .restart local v1       #info:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    :cond_0
    iget-object v2, v1, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 276
    .end local v1           #info:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    :catch_0
    move-exception v0

    .line 278
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_0
.end method

.method protected getLaunchAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string v0, "com.htc.album.action.LAUNCH_MEDIASERVER_PHOTO_DMC"

    return-object v0
.end method

.method public onBindAdapter()V
    .locals 3

    .prologue
    const/16 v2, 0x4f4f

    .line 174
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onBindAdapter()V

    .line 176
    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->onRemoveMessage(I)V

    .line 177
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-virtual {p0, v2, v0, v1}, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->onPostMessage(ILjava/lang/Object;I)V

    .line 178
    return-void
.end method

.method protected onLoadData(Landroid/content/Intent;Landroid/content/SharedPreferences;Z)V
    .locals 4
    .parameter "caller"
    .parameter "pref"
    .parameter "fromGallery"

    .prologue
    const/4 v3, 0x0

    .line 287
    if-nez p3, :cond_0

    .line 289
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mDMCExtras:Landroid/os/Bundle;

    const-string v1, "server_id"

    const-string v2, "server_id"

    invoke-interface {p2, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mDMCExtras:Landroid/os/Bundle;

    const-string v1, "server_name"

    const-string v2, "server_name"

    invoke-interface {p2, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mDMCExtras:Landroid/os/Bundle;

    const-string v1, "directory_info"

    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->loadDirectoryInfo()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 293
    :cond_0
    return-void
.end method

.method protected onPlayIndexChanged(J)V
    .locals 4
    .parameter "newIndex"

    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onPlayIndexChanged(J)V

    .line 63
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    const/4 v1, 0x0

    long-to-int v2, p1

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setScrollState(III)V

    .line 65
    :cond_0
    return-void
.end method

.method protected onSaveData(Landroid/content/SharedPreferences$Editor;)V
    .locals 3
    .parameter "editor"

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mFromGallery:Z

    if-eqz v0, :cond_0

    .line 301
    const-string v0, "server_id"

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mDMCExtras:Landroid/os/Bundle;

    const-string v2, "server_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 302
    const-string v0, "server_name"

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mDMCExtras:Landroid/os/Bundle;

    const-string v2, "server_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 303
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mDMCExtras:Landroid/os/Bundle;

    const-string v1, "directory_info"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->saveDirectoryInfo(Ljava/util/ArrayList;)V

    .line 305
    :cond_0
    return-void
.end method

.method protected onScrollStateChanged(I)V
    .locals 3
    .parameter "scrollState"

    .prologue
    .line 254
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onScrollStateChanged(I)V

    .line 256
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-nez v1, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    .line 261
    .local v0, index:I
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v0, v2}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setScrollState(III)V

    goto :goto_0
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->unBindDLNAService()V

    .line 231
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onSendToBackground(Landroid/os/Bundle;)V

    .line 232
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 214
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onSendToForeground(Landroid/os/Bundle;)V

    .line 216
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->bindDLNAService()V

    .line 219
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setSceneQuality(Z)V

    .line 220
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setHandler(Landroid/os/Handler;)V

    .line 221
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    sget v1, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->SCENE_ID:I

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setSceneType(I)V

    .line 223
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->bindDLNAService()V

    .line 239
    :cond_0
    const-string v0, "MediaServerDMCScene"

    const-string v1, "[onStart]..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->unBindDLNAService()V

    .line 247
    :cond_0
    const-string v0, "MediaServerDMCScene"

    const-string v1, "[onStop]..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method protected playItemAt(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 69
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v2, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v2, p1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .line 73
    .local v1, item:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    if-eqz v1, :cond_0

    .line 76
    iget-object v0, v1, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    .line 77
    .local v0, contentID:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v2, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->startPlay(Ljava/lang/String;)V

    .line 79
    const-string v2, "MediaServerDMCScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GalleryDLNA][playItemAt] selectedIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", contentID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected requestLaunchGallery()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "MediaServerDMCScene"

    return-object v0
.end method

.method protected setDataSource(I)V
    .locals 6
    .parameter "startIndex"

    .prologue
    .line 184
    new-instance v2, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;

    invoke-direct {v2}, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;-><init>()V

    .line 188
    .local v2, plinfo:Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;
    :try_start_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 190
    .local v0, callerIntent:Landroid/content/Intent;
    const-string v3, "server_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->serverID:Ljava/lang/String;

    .line 191
    const-string v3, "content_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->contentID:Ljava/lang/String;

    .line 192
    const-string v3, "container"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->containerID:Ljava/lang/String;

    .line 193
    const/4 v3, 0x2

    iput v3, v2, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->filterCapability:I

    .line 194
    const-string v3, "interval"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    iput-wide v3, v2, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->durationMillis:J

    .line 195
    const-string v3, "startIdx"

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->startIndex:J

    .line 196
    const-string v3, "endIdx"

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->endIndex:J

    .line 197
    const-string v3, "direction"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->direction:I

    .line 199
    const-string v3, "MediaServerDMCScene"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[GalleryDLNA][setDataSource]: ContentID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->contentID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v3, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setDataSource(Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;)V

    .line 208
    .end local v0           #callerIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v1

    .line 203
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "MediaServerDMCScene"

    const-string v4, "[GalleryDLNA][setDataSource]: set data NG !"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
