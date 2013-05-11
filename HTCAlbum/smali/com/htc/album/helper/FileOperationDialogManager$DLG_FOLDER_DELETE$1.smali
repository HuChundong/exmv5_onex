.class Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE$1;
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
    .line 368
    iput-object p1, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE$1;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 373
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE$1;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->access$600(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;)Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE$1;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->access$600(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;)Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;->onCancel()V

    .line 375
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 376
    return-void
.end method
