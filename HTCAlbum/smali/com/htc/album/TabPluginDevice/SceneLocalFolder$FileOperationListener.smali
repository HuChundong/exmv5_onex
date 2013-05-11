.class Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;
.super Ljava/lang/Object;
.source "SceneLocalFolder.java"

# interfaces
.implements Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileOperationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;Lcom/htc/album/TabPluginDevice/SceneLocalFolder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)V

    return-void
.end method


# virtual methods
.method public onFileOperationBegin()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 233
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->access$100(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v7

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 234
    .local v0, activity:Landroid/app/Activity;
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    iget-object v7, v7, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    invoke-virtual {v7}, Lcom/htc/album/helper/FileOperationManager;->getOperationType()Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    move-result-object v6

    .line 235
    .local v6, type:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;
    const/4 v5, 0x0

    .line 237
    .local v5, message:Ljava/lang/String;
    new-instance v3, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener$1;

    invoke-direct {v3, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener$1;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;)V

    .line 260
    .local v3, dialogListener:Lcom/htc/album/helper/HtcDialogManager$IDialogListener;
    sget-object v7, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$5;->$SwitchMap$com$htc$album$helper$FileOperationManager$PROCESS_TYPE:[I

    invoke-virtual {v6}, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->ordinal()I

    move-result v9

    aget v7, v7, v9

    packed-switch v7, :pswitch_data_0

    .line 283
    :goto_0
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    iget-object v7, v7, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPDialog:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    if-eqz v7, :cond_0

    .line 285
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    iget-object v7, v7, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPDialog:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    const-string v9, "SceneLocalFolder"

    invoke-virtual {v7, v8, v9}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 288
    :cond_0
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->access$200(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 289
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->access$300(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v7

    check-cast v7, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {v7}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->unregisterObserver()V

    .line 290
    :cond_1
    return-void

    .line 263
    :pswitch_0
    const v7, 0x7f0a014e

    invoke-virtual {v0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 264
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    invoke-static {v3, v5}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->instance(Lcom/htc/album/helper/HtcDialogManager$IDialogListener;Ljava/lang/String;)Landroid/app/DialogFragment;

    move-result-object v7

    check-cast v7, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    iput-object v7, v9, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPDialog:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    .line 265
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    iget-object v7, v7, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPDialog:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    invoke-virtual {v7, v8}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->setCancelable(Z)V

    goto :goto_0

    .line 268
    :pswitch_1
    const/4 v4, 0x0

    .line 269
    .local v4, isFavoriteCollection:Z
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    iget-object v7, v7, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    if-eqz v7, :cond_2

    .line 271
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    iget-object v7, v7, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    invoke-virtual {v7}, Lcom/htc/album/helper/FileOperationManager;->getAlbumCollection()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    .line 272
    .local v1, collection:Lcom/htc/album/modules/collection/Collection;
    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, collectionType:Ljava/lang/String;
    if-eqz v2, :cond_3

    const-string v7, "com.htc.HTCAlbum.MY_FAVORITES"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v4, 0x1

    .line 276
    .end local v1           #collection:Lcom/htc/album/modules/collection/Collection;
    .end local v2           #collectionType:Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v4, :cond_4

    .line 277
    const v7, 0x7f0a006d

    invoke-virtual {v0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 280
    :goto_2
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    invoke-static {v3, v5}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->instance(Lcom/htc/album/helper/HtcDialogManager$IDialogListener;Ljava/lang/String;)Landroid/app/DialogFragment;

    move-result-object v7

    check-cast v7, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    iput-object v7, v8, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPDialog:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    goto :goto_0

    .restart local v1       #collection:Lcom/htc/album/modules/collection/Collection;
    .restart local v2       #collectionType:Ljava/lang/String;
    :cond_3
    move v4, v8

    .line 273
    goto :goto_1

    .line 279
    .end local v1           #collection:Lcom/htc/album/modules/collection/Collection;
    .end local v2           #collectionType:Ljava/lang/String;
    :cond_4
    const v7, 0x7f0a006c

    invoke-virtual {v0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 260
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onFileOperationEnd(I)V
    .locals 11
    .parameter "result"

    .prologue
    const/16 v10, 0x138f

    .line 295
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    iget-object v7, v7, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    if-nez v7, :cond_0

    .line 353
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    iget-object v7, v7, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPDialog:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    if-eqz v7, :cond_1

    .line 299
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    iget-object v7, v7, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPDialog:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    invoke-virtual {v7}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->dismiss()V

    .line 300
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPDialog:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    .line 303
    :cond_1
    const/4 v0, 0x0

    .line 304
    .local v0, activity:Landroid/app/Activity;
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->access$400(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 305
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->access$500(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v7

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 306
    :cond_2
    const/4 v2, 0x0

    .line 307
    .local v2, collection:Lcom/htc/album/modules/collection/Collection;
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    iget-object v7, v7, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    invoke-virtual {v7}, Lcom/htc/album/helper/FileOperationManager;->getOperationType()Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    move-result-object v6

    .line 308
    .local v6, type:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;
    packed-switch p1, :pswitch_data_0

    .line 351
    :cond_3
    :goto_1
    :pswitch_0
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    invoke-virtual {v7, v10}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onRemoveMessage(I)V

    .line 352
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    const/16 v8, 0x3e8

    invoke-virtual {v7, v10, v8}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onPostMessage(II)V

    goto :goto_0

    .line 311
    :pswitch_1
    const-string v7, "SceneLocalFolder"

    const-string v8, "[HTCAlbum][SceneLocalFolder][onFileOPEnd] File operation success."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    sget-object v7, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$5;->$SwitchMap$com$htc$album$helper$FileOperationManager$PROCESS_TYPE:[I

    invoke-virtual {v6}, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_1

    goto :goto_1

    .line 323
    :pswitch_2
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    iget-object v7, v7, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    invoke-virtual {v7}, Lcom/htc/album/helper/FileOperationManager;->getTargetFilePath()Ljava/lang/String;

    move-result-object v4

    .line 324
    .local v4, newFolderPath:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, bucketId:Ljava/lang/String;
    const-string v7, "/"

    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 326
    .local v5, slash:I
    const/4 v7, 0x0

    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 327
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 328
    invoke-static {v4}, Lcom/htc/album/helper/FileOperationHelper;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 329
    .local v3, displayName:Ljava/lang/String;
    new-instance v2, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .end local v2           #collection:Lcom/htc/album/modules/collection/Collection;
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->access$900(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v7

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "com.htc.HTCAlbum.LOCAL_FOLDER"

    invoke-direct {v2, v7, v8, v1, v3}, Lcom/htc/album/TabPluginDevice/AlbumCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    .restart local v2       #collection:Lcom/htc/album/modules/collection/Collection;
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->access$1000(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v7

    check-cast v7, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    iget v8, v8, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOperationIndex:I

    invoke-virtual {v7, v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->removeItem(I)V

    .line 334
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->access$1100(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v7

    check-cast v7, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    iget v9, v8, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOperationIndex:I

    move-object v8, v2

    check-cast v8, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    invoke-virtual {v7, v9, v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->addItem(ILcom/htc/album/TabPluginDevice/AlbumCollection;)V

    goto :goto_1

    .line 316
    .end local v1           #bucketId:Ljava/lang/String;
    .end local v3           #displayName:Ljava/lang/String;
    .end local v4           #newFolderPath:Ljava/lang/String;
    .end local v5           #slash:I
    :pswitch_3
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->access$600(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v7

    check-cast v7, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    iget v8, v8, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOperationIndex:I

    invoke-virtual {v7, v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v2

    .end local v2           #collection:Lcom/htc/album/modules/collection/Collection;
    check-cast v2, Lcom/htc/album/modules/collection/Collection;

    .line 317
    .restart local v2       #collection:Lcom/htc/album/modules/collection/Collection;
    if-eqz v2, :cond_4

    const-string v7, "com.htc.HTCAlbum.LOCAL_FOLDER"

    invoke-virtual {v2}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 318
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->access$700(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v7

    check-cast v7, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    iget v8, v8, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOperationIndex:I

    invoke-virtual {v7, v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->removeItem(I)V

    .line 320
    :cond_4
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->access$800(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v7

    check-cast v7, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {v7}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->notifyDataSetChanged()V

    goto/16 :goto_1

    .line 339
    :pswitch_4
    const-string v7, "SceneLocalFolder"

    const-string v8, "[HTCAlbum][SceneLocalFolder][onFileOPEnd] File operation failed."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    sget-object v7, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->TYPE_RENAME_FOLDER:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    if-ne v6, v7, :cond_3

    .line 341
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationManager;->scanExternalStorage(Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 344
    :pswitch_5
    const-string v7, "SceneLocalFolder"

    const-string v8, "[HTCAlbum][SceneLocalFolder][onFileOPEnd] File operation cancelled."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    sget-object v7, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->TYPE_RENAME_FOLDER:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    if-ne v6, v7, :cond_3

    .line 346
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationManager;->scanExternalStorage(Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 308
    :pswitch_data_0
    .packed-switch 0x68560
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 313
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
