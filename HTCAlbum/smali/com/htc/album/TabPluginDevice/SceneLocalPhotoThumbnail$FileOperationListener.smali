.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener;
.super Ljava/lang/Object;
.source "SceneLocalPhotoThumbnail.java"

# interfaces
.implements Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileOperationListener"
.end annotation


# instance fields
.field mChangedPosition:[I

.field mIsMoveFile:Z

.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)V
    .locals 1
    .parameter

    .prologue
    .line 2917
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2919
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener;->mChangedPosition:[I

    .line 2920
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener;->mIsMoveFile:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2917
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)V

    return-void
.end method


# virtual methods
.method public onFileOperationBegin()V
    .locals 9

    .prologue
    .line 2924
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v8}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$2500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    iget-object v8, v8, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    if-nez v8, :cond_1

    .line 2945
    :cond_0
    return-void

    .line 2927
    :cond_1
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    iget-object v8, v8, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    invoke-virtual {v8}, Lcom/htc/album/helper/FileOperationManager;->getOperationType()Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    move-result-object v6

    .line 2928
    .local v6, type:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;
    sget-object v8, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->TYPE_MOVE:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    if-ne v6, v8, :cond_2

    .line 2929
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener;->mIsMoveFile:Z

    .line 2931
    :cond_2
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    iget-object v8, v8, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    invoke-virtual {v8}, Lcom/htc/album/helper/FileOperationManager;->getSourceUriList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2932
    .local v0, count:I
    new-array v8, v0, [I

    iput-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener;->mChangedPosition:[I

    .line 2933
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    iget-object v8, v8, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    invoke-virtual {v8}, Lcom/htc/album/helper/FileOperationManager;->getSourceUriList()Ljava/util/ArrayList;

    move-result-object v5

    .line 2934
    .local v5, selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v8}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$2600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v8

    check-cast v8, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v0

    .line 2935
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v2, 0x0

    .local v2, index:I
    move v3, v2

    .end local v2           #index:I
    .local v3, index:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2937
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v8}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$2700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v8

    check-cast v8, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v8, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v4

    .line 2938
    .local v4, media:Lcom/htc/sunnyCore/IMediaData;
    if-eqz v4, :cond_0

    .line 2941
    invoke-interface {v4}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageUri()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 2942
    .local v7, uri:Landroid/net/Uri;
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2943
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener;->mChangedPosition:[I

    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    aput v1, v8, v3

    .line 2935
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    goto :goto_0

    :cond_3
    move v2, v3

    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_1
.end method

.method public onFileOperationEnd(I)V
    .locals 7
    .parameter "result"

    .prologue
    .line 2950
    sget-boolean v4, Lcom/htc/album/helper/FileOperationManager;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 2951
    const-string v4, "SceneLocalPhotoThumbnail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][SceneLocalPhotoThumbnail][onFileOPEnd] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2952
    :cond_0
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$2800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$2900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v4

    if-nez v4, :cond_2

    .line 3014
    :cond_1
    :goto_0
    return-void

    .line 2954
    :cond_2
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$3000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2955
    .local v0, activity:Landroid/app/Activity;
    const/4 v2, 0x0

    .line 2956
    .local v2, dialog:Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE;
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$3100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v4

    check-cast v4, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    .line 2957
    .local v1, collection:Lcom/htc/album/modules/collection/Collection;
    new-instance v3, Lcom/htc/album/helper/CollectionRequeryTask;

    const v4, 0x7f0a014e

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener$1;

    invoke-direct {v5, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener$1;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener;)V

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/htc/album/helper/CollectionRequeryTask;-><init>(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;Ljava/lang/String;Lcom/htc/album/helper/CollectionRequeryTask$CollectionRequeryCallBack;)V

    .line 2997
    .local v3, requeryTask:Lcom/htc/album/helper/CollectionRequeryTask;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/htc/album/helper/CollectionRequeryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2998
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 3001
    :pswitch_1
    const-string v4, "SceneLocalPhotoThumbnail"

    const-string v5, "[HTCAlbum][SceneLocalPhotoThumbnail][onFileOPEnd] File operation success."

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3005
    :pswitch_2
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    iget-object v4, v4, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mFileOperationDialogMgr:Lcom/htc/album/helper/FileOperationDialogManager;

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    iget-object v5, v5, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    invoke-virtual {v5}, Lcom/htc/album/helper/FileOperationManager;->getOperationType()Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    move-result-object v5

    invoke-virtual {v4, v0, p1, v5}, Lcom/htc/album/helper/FileOperationDialogManager;->createFileOperationErrorDialog(Landroid/app/Activity;ILcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;)Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE;

    move-result-object v2

    .line 3006
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "SceneLocalPhotoThumbnail"

    invoke-virtual {v2, v4, v5}, Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 3009
    :pswitch_3
    const-string v4, "SceneLocalPhotoThumbnail"

    const-string v5, "[HTCAlbum][SceneLocalPhotoThumbnail][onFileOPEnd] File operation cancelled."

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2998
    nop

    :pswitch_data_0
    .packed-switch 0x68560
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
