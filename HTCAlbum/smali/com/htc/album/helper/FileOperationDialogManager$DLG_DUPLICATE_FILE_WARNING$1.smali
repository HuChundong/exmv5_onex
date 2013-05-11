.class Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING$1;
.super Ljava/lang/Object;
.source "FileOperationDialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;)V
    .locals 0
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING$1;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 475
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING$1;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;->mCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IDuplicateWarningDialogListener;
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;->access$800(Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;)Lcom/htc/album/helper/FileOperationDialogManager$IDuplicateWarningDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING$1;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;->mCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IDuplicateWarningDialogListener;
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;->access$800(Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;)Lcom/htc/album/helper/FileOperationDialogManager$IDuplicateWarningDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/album/helper/FileOperationDialogManager$IDuplicateWarningDialogListener;->onCancel()V

    .line 477
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 478
    return-void
.end method
