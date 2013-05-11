.class public Lcom/htc/album/picker/PickerFolderCreateAdapter;
.super Lcom/htc/album/TabPluginDevice/AdapterLocalFolderPlus;
.source "PickerFolderCreateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/picker/PickerFolderCreateAdapter$FolderCreateManager;,
        Lcom/htc/album/picker/PickerFolderCreateAdapter$FolderCreateCollection;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "PickerFolderCreateAdapter"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;ILandroid/os/Bundle;)V
    .locals 3
    .parameter "activity"
    .parameter "handler"
    .parameter "mediaTypes"
    .parameter "extras"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolderPlus;-><init>(Landroid/app/Activity;Landroid/os/Handler;ILandroid/os/Bundle;)V

    .line 30
    const-string v1, "filter_folder_bucketid"

    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, filterBucketId:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 32
    const-string v1, "PickerFolderCreateAdapter"

    const-string v2, "KEY_PICKER_FILTER_FOLDER null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_0
    new-instance v1, Lcom/htc/album/picker/PickerFolderCreateAdapter$FolderCreateManager;

    invoke-direct {v1, p0, p1, v0}, Lcom/htc/album/picker/PickerFolderCreateAdapter$FolderCreateManager;-><init>(Lcom/htc/album/picker/PickerFolderCreateAdapter;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mCollectionMgr:Lcom/htc/album/helper/FolderManager;

    .line 35
    return-void
.end method


# virtual methods
.method public isCacheExist()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method protected onLoadDataEnd(Ljava/lang/Integer;)V
    .locals 5
    .parameter "result"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolderPlus;->onLoadDataEnd(Ljava/lang/Integer;)V

    .line 50
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mLoadState:I

    if-ne v4, v0, :cond_0

    .line 52
    const/16 v0, 0x13a2

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/htc/album/picker/PickerFolderCreateAdapter;->onPostMessage(ILjava/lang/Object;I)V

    .line 53
    const-string v0, "PickerFolderCreateAdapter"

    const-string v1, "mList = 0, pop up folder dialog."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :goto_0
    return-void

    .line 56
    :cond_0
    const-string v1, "PickerFolderCreateAdapter"

    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/Object;

    const-string v0, "mList = "

    aput-object v0, v2, v3

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mList:Ljava/util/ArrayList;

    aput-object v0, v2, v4

    const/4 v0, 0x2

    const-string v3, ", mLoadState = "

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget v3, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mLoadState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, ", mList.size = "

    aput-object v3, v2, v0

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mList:Ljava/util/ArrayList;

    goto :goto_1
.end method
