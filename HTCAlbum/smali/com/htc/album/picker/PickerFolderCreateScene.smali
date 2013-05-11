.class public Lcom/htc/album/picker/PickerFolderCreateScene;
.super Lcom/htc/album/picker/PickerFolderScene;
.source "PickerFolderCreateScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/picker/PickerFolderCreateScene$FolderCreateCallback;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "PickerFolderCreateScene"


# instance fields
.field private mFileOperationType:I

.field mHelper:Lcom/htc/album/helper/PickerFolderCreateHelper;

.field private mSelectedFiles:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Lcom/htc/album/picker/PickerFolderScene;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/picker/PickerFolderCreateScene;->mFileOperationType:I

    .line 27
    iput-object v1, p0, Lcom/htc/album/picker/PickerFolderCreateScene;->mSelectedFiles:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/htc/album/picker/PickerFolderCreateScene;->mHelper:Lcom/htc/album/helper/PickerFolderCreateHelper;

    .line 187
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/picker/PickerFolderCreateScene;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/picker/PickerFolderCreateScene;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/picker/PickerFolderCreateScene;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/picker/PickerFolderCreateScene;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/album/picker/PickerFolderCreateScene;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/album/picker/PickerFolderCreateScene;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/album/picker/PickerFolderCreateScene;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method


# virtual methods
.method protected doCreateAdapter(Landroid/app/Activity;)Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;
    .locals 4
    .parameter "activity"

    .prologue
    .line 59
    new-instance v0, Lcom/htc/album/picker/PickerFolderCreateAdapter;

    invoke-virtual {p0}, Lcom/htc/album/picker/PickerFolderCreateScene;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/album/picker/PickerFolderCreateScene;->getAdapterMediaType()I

    move-result v2

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/htc/album/picker/PickerFolderCreateAdapter;-><init>(Landroid/app/Activity;Landroid/os/Handler;ILandroid/os/Bundle;)V

    return-object v0
.end method

.method public dump(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    .line 228
    sget-boolean v6, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 230
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 233
    .local v0, bundle:Landroid/os/Bundle;
    const-string v6, "filter_folder_bucketid"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, filterFolder:Ljava/lang/String;
    const-string v6, "fileop_type"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 235
    .local v1, fileOperationType:I
    const-string v6, "fileop_selected_file_name"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 238
    .local v4, selectedFile:Ljava/lang/String;
    const-string v6, "file_operation_target_folder_location"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 240
    .local v5, targetFolderLocation:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .local v3, sb:Ljava/lang/StringBuilder;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[dump] filterFolder = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", fileOperationType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", selectedFile = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", targetFolderLocation = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    const-string v6, "PickerFolderCreateScene"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #fileOperationType:I
    .end local v2           #filterFolder:Ljava/lang/String;
    .end local v3           #sb:Ljava/lang/StringBuilder;
    .end local v4           #selectedFile:Ljava/lang/String;
    .end local v5           #targetFolderLocation:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public enableDropList()V
    .locals 0

    .prologue
    .line 281
    return-void
.end method

.method public onActionBarBackPressed()V
    .locals 0

    .prologue
    .line 275
    return-void
.end method

.method public onEnableActionBarAppButton()Z
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerFolderScene;->onEnterScene(Landroid/os/Bundle;)V

    .line 51
    const-string v0, "fileop_type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/album/picker/PickerFolderCreateScene;->mFileOperationType:I

    .line 52
    const-string v0, "fileop_selected_file_name"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/picker/PickerFolderCreateScene;->mSelectedFiles:Ljava/lang/String;

    .line 53
    new-instance v0, Lcom/htc/album/helper/PickerFolderCreateHelper;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/htc/album/picker/PickerFolderCreateScene$FolderCreateCallback;

    invoke-direct {v2, p0}, Lcom/htc/album/picker/PickerFolderCreateScene$FolderCreateCallback;-><init>(Lcom/htc/album/picker/PickerFolderCreateScene;)V

    invoke-direct {v0, v1, v2}, Lcom/htc/album/helper/PickerFolderCreateHelper;-><init>(Landroid/app/Activity;Lcom/htc/album/helper/PickerFolderCreateHelper$IPickerFolderCreateResultCallback;)V

    iput-object v0, p0, Lcom/htc/album/picker/PickerFolderCreateScene;->mHelper:Lcom/htc/album/helper/PickerFolderCreateHelper;

    .line 54
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/album/picker/PickerFolderCreateScene;->dump(Landroid/content/Intent;)V

    .line 55
    return-void
.end method

.method public onItemSelected(I)V
    .locals 6
    .parameter "index"

    .prologue
    .line 106
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {v2, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 107
    .local v0, collection:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    if-nez v0, :cond_0

    .line 109
    const-string v2, "PickerFolderCreateScene"

    const-string v3, "[onItemSelected]collection null"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getFolderType()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, type:Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v2, "com.htc.HTCAlbum.DUMMY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    :cond_1
    const-string v2, "PickerFolderCreateScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onItemSelected] FolderType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", collection.getDisplayName() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_2
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getCoverImage()Lcom/htc/album/modules/collection/SimpleImage;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 124
    iget-object v2, p0, Lcom/htc/album/picker/PickerFolderCreateScene;->mHelper:Lcom/htc/album/helper/PickerFolderCreateHelper;

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getCoverImage()Lcom/htc/album/modules/collection/SimpleImage;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/htc/album/helper/PickerFolderCreateHelper;->getFolderPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/helper/PickerFolderCreateHelper;->sendBackResult(ILjava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_3
    const-string v2, "PickerFolderCreateScene"

    const-string v3, "[onItemSelected] collection.getCoverImage() is null."

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLeaveScene()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/htc/album/picker/PickerFolderCreateScene;->mHelper:Lcom/htc/album/helper/PickerFolderCreateHelper;

    invoke-virtual {v0}, Lcom/htc/album/helper/PickerFolderCreateHelper;->clear()V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/picker/PickerFolderCreateScene;->mHelper:Lcom/htc/album/helper/PickerFolderCreateHelper;

    .line 175
    invoke-super {p0}, Lcom/htc/album/picker/PickerFolderScene;->onLeaveScene()V

    .line 177
    return-void
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "message"

    .prologue
    const/4 v3, 0x0

    .line 138
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v2, :cond_0

    .line 140
    const-string v2, "PickerFolderCreateScene"

    const-string v4, "[onMessage]mSceneControl null"

    invoke-static {v2, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :goto_0
    return v3

    .line 144
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 145
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 147
    :cond_1
    const-string v4, "PickerFolderCreateScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onMessage]activity = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v0, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    .line 151
    :cond_3
    const/4 v1, 0x1

    .line 152
    .local v1, retval:Z
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 161
    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerFolderScene;->onMessage(Landroid/os/Message;)Z

    move-result v1

    .line 162
    const-string v2, "PickerFolderCreateScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onMessage]message.what = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move v3, v1

    .line 166
    goto :goto_0

    .line 156
    :pswitch_0
    iget-object v2, p0, Lcom/htc/album/picker/PickerFolderCreateScene;->mHelper:Lcom/htc/album/helper/PickerFolderCreateHelper;

    iget v3, p0, Lcom/htc/album/picker/PickerFolderCreateScene;->mFileOperationType:I

    iget-object v4, p0, Lcom/htc/album/picker/PickerFolderCreateScene;->mSelectedFiles:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/helper/PickerFolderCreateHelper;->showCreateFolderDialog(ILjava/lang/String;)V

    goto :goto_2

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x13a2
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 83
    :cond_0
    const-string v0, "PickerFolderCreateScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onOptionsItemSelected] mSceneControl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x0

    .line 99
    :goto_0
    return v0

    .line 86
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 95
    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerFolderScene;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 99
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 90
    :pswitch_0
    iget-object v0, p0, Lcom/htc/album/picker/PickerFolderCreateScene;->mHelper:Lcom/htc/album/helper/PickerFolderCreateHelper;

    iget v1, p0, Lcom/htc/album/picker/PickerFolderCreateScene;->mFileOperationType:I

    iget-object v2, p0, Lcom/htc/album/picker/PickerFolderCreateScene;->mSelectedFiles:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/PickerFolderCreateHelper;->showCreateFolderDialog(ILjava/lang/String;)V

    goto :goto_1

    .line 86
    :pswitch_data_0
    .packed-switch 0x40
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/htc/album/picker/PickerFolderCreateScene;->mHelper:Lcom/htc/album/helper/PickerFolderCreateHelper;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/htc/album/picker/PickerFolderCreateScene;->mHelper:Lcom/htc/album/helper/PickerFolderCreateHelper;

    invoke-virtual {v0}, Lcom/htc/album/helper/PickerFolderCreateHelper;->onPause()V

    .line 185
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 69
    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerFolderScene;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 70
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, menuItem:Landroid/view/MenuItem;
    const/16 v1, 0x40

    const v2, 0x2040290

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Btn_Add_Dark_Rest(Landroid/content/Context;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 74
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 75
    const/4 v1, 0x1

    return v1
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerFolderCreateScene;->getHeaderSubtitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerFolderCreateScene;->getHeaderTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected prepareDropList()V
    .locals 0

    .prologue
    .line 284
    return-void
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "PickerFolderCreateScene"

    return-object v0
.end method
