.class Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$2;
.super Ljava/lang/Object;
.source "FileOperationDialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$2;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$2;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;

    iget-object v0, v0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->this$0:Lcom/htc/album/helper/FileOperationDialogManager;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager;->mFindExistedFolderTask:Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationDialogManager;->access$500(Lcom/htc/album/helper/FileOperationDialogManager;)Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$2;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;

    iget-object v0, v0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->this$0:Lcom/htc/album/helper/FileOperationDialogManager;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager;->mFindExistedFolderTask:Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationDialogManager;->access$500(Lcom/htc/album/helper/FileOperationDialogManager;)Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;->notifyComplete()V

    .line 210
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$2;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;

    iget-object v0, v0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->this$0:Lcom/htc/album/helper/FileOperationDialogManager;

    const/4 v1, 0x0

    #setter for: Lcom/htc/album/helper/FileOperationDialogManager;->mFindExistedFolderTask:Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;
    invoke-static {v0, v1}, Lcom/htc/album/helper/FileOperationDialogManager;->access$502(Lcom/htc/album/helper/FileOperationDialogManager;Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;)Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;

    .line 212
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 213
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$2;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->mCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->access$300(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;)Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$2;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->mCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->access$300(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;)Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;->onCancel()V

    .line 215
    :cond_1
    return-void
.end method
