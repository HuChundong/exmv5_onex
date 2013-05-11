.class Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE$2;
.super Ljava/lang/Object;
.source "FileOperationDialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;)V
    .locals 0
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE$2;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE$2;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->access$600(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;)Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE$2;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->access$600(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;)Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE$2;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mAlbumCollection:Lcom/htc/album/modules/collection/Collection;
    invoke-static {v1}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->access$700(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;)Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->TYPE_DELETE_FOLDER:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;->onConfirm(Lcom/htc/album/modules/collection/Collection;Ljava/lang/String;Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;)V

    .line 365
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 366
    return-void
.end method
