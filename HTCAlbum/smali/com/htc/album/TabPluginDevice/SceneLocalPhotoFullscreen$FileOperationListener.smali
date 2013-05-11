.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FileOperationListener;
.super Ljava/lang/Object;
.source "SceneLocalPhotoFullscreen.java"

# interfaces
.implements Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileOperationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1922
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1922
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FileOperationListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    return-void
.end method


# virtual methods
.method public onFileOperationBegin()V
    .locals 0

    .prologue
    .line 1928
    return-void
.end method

.method public onFileOperationEnd(I)V
    .locals 7
    .parameter "result"

    .prologue
    .line 1933
    sget-boolean v4, Lcom/htc/album/helper/FileOperationManager;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1934
    const-string v4, "SceneLocalPhotoFullscreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][SceneLocalPhotoFullScreen][onFileOPEnd] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1935
    :cond_0
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$3000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1973
    :goto_0
    return-void

    .line 1937
    :cond_1
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$3100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1939
    .local v0, activity:Landroid/app/Activity;
    const/4 v2, 0x0

    .line 1940
    .local v2, dialog:Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE;
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1943
    :pswitch_1
    const-string v4, "SceneLocalPhotoFullscreen"

    const-string v5, "[HTCAlbum][SceneLocalPhotoFullscreen][onFileOPEnd] File operation success."

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1944
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$3200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v4

    check-cast v4, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    .line 1945
    .local v1, collection:Lcom/htc/album/modules/collection/Collection;
    new-instance v3, Lcom/htc/album/helper/CollectionRequeryTask;

    const v4, 0x7f0a014e

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FileOperationListener$1;

    invoke-direct {v5, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FileOperationListener$1;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FileOperationListener;)V

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/htc/album/helper/CollectionRequeryTask;-><init>(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;Ljava/lang/String;Lcom/htc/album/helper/CollectionRequeryTask$CollectionRequeryCallBack;)V

    .line 1960
    .local v3, requeryTask:Lcom/htc/album/helper/CollectionRequeryTask;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/htc/album/helper/CollectionRequeryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1964
    .end local v1           #collection:Lcom/htc/album/modules/collection/Collection;
    .end local v3           #requeryTask:Lcom/htc/album/helper/CollectionRequeryTask;
    :pswitch_2
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    iget-object v4, v4, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFileOperationDialogMgr:Lcom/htc/album/helper/FileOperationDialogManager;

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    iget-object v5, v5, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    invoke-virtual {v5}, Lcom/htc/album/helper/FileOperationManager;->getOperationType()Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    move-result-object v5

    invoke-virtual {v4, v0, p1, v5}, Lcom/htc/album/helper/FileOperationDialogManager;->createFileOperationErrorDialog(Landroid/app/Activity;ILcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;)Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE;

    move-result-object v2

    .line 1965
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "SceneLocalPhotoFullscreen"

    invoke-virtual {v2, v4, v5}, Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 1968
    :pswitch_3
    const-string v4, "SceneLocalPhotoFullscreen"

    const-string v5, "[HTCAlbum][SceneLocalPhotoFullscreen][onFileOPEnd] File operation cancelled."

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1940
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
