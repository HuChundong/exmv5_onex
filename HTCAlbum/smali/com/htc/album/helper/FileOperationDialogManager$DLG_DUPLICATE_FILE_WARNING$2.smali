.class Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING$2;
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

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 460
    iput-object p1, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING$2;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;

    iput-object p2, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING$2;->val$view:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 464
    iget-object v2, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING$2;->val$view:Landroid/view/View;

    const v3, 0x7f090045

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcCheckBox;

    .line 465
    .local v0, checkbox:Lcom/htc/widget/HtcCheckBox;
    invoke-virtual {v0}, Lcom/htc/widget/HtcCheckBox;->isChecked()Z

    move-result v1

    .line 466
    .local v1, isApplyToAll:Z
    iget-object v2, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING$2;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;->mCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IDuplicateWarningDialogListener;
    invoke-static {v2}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;->access$800(Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;)Lcom/htc/album/helper/FileOperationDialogManager$IDuplicateWarningDialogListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 467
    iget-object v2, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING$2;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;->mCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IDuplicateWarningDialogListener;
    invoke-static {v2}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;->access$800(Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;)Lcom/htc/album/helper/FileOperationDialogManager$IDuplicateWarningDialogListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/htc/album/helper/FileOperationDialogManager$IDuplicateWarningDialogListener;->onSkip(Z)V

    .line 468
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 469
    return-void
.end method
