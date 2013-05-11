.class Lcom/htc/album/TabPluginDevice/SceneLocalFolder$2;
.super Ljava/lang/Object;
.source "SceneLocalFolder.java"

# interfaces
.implements Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->showFileOperationDialog(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)V
    .locals 0
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$2;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 377
    return-void
.end method

.method public onConfirm(Lcom/htc/album/modules/collection/Collection;Ljava/lang/String;Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;)V
    .locals 1
    .parameter "sourceAlbum"
    .parameter "newPath"
    .parameter "type"

    .prologue
    .line 371
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$2;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->doFileOperations(Lcom/htc/album/modules/collection/Collection;Ljava/lang/String;Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;)V
    invoke-static {v0, p1, p2, p3}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->access$1200(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;Lcom/htc/album/modules/collection/Collection;Ljava/lang/String;Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;)V

    .line 372
    return-void
.end method

.method public onDismiss()V
    .locals 0

    .prologue
    .line 382
    return-void
.end method
