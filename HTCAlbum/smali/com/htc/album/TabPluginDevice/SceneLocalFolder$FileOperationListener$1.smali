.class Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener$1;
.super Ljava/lang/Object;
.source "SceneLocalFolder.java"

# interfaces
.implements Lcom/htc/album/helper/HtcDialogManager$IDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;->onFileOperationBegin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 246
    return-void
.end method

.method public onConfirm()V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method public onDismiss()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 251
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    if-nez v1, :cond_1

    .line 256
    :cond_0
    :goto_0
    return v2

    .line 253
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    invoke-virtual {v1}, Lcom/htc/album/helper/FileOperationManager;->getOperationType()Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    move-result-object v0

    .line 254
    .local v0, type:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;
    sget-object v1, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->TYPE_DELETE_FOLDER:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    if-ne v0, v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    invoke-virtual {v1}, Lcom/htc/album/helper/FileOperationManager;->cancel()V

    goto :goto_0
.end method
