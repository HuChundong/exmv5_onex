.class Lcom/htc/album/helper/FileOperationDialogManager$EditTextWatcher;
.super Ljava/lang/Object;
.source "FileOperationDialogManager.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/FileOperationDialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditTextWatcher"
.end annotation


# instance fields
.field mButton:Landroid/widget/Button;

.field mDialog:Lcom/htc/widget/HtcAlertDialog;

.field mView:Landroid/view/View;

.field final synthetic this$0:Lcom/htc/album/helper/FileOperationDialogManager;


# direct methods
.method public constructor <init>(Lcom/htc/album/helper/FileOperationDialogManager;Landroid/view/View;Lcom/htc/widget/HtcAlertDialog;)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "dialog"

    .prologue
    const/4 v0, 0x0

    .line 628
    iput-object p1, p0, Lcom/htc/album/helper/FileOperationDialogManager$EditTextWatcher;->this$0:Lcom/htc/album/helper/FileOperationDialogManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 623
    iput-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$EditTextWatcher;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 624
    iput-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$EditTextWatcher;->mButton:Landroid/widget/Button;

    .line 625
    iput-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$EditTextWatcher;->mView:Landroid/view/View;

    .line 629
    iput-object p3, p0, Lcom/htc/album/helper/FileOperationDialogManager$EditTextWatcher;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 630
    iput-object p2, p0, Lcom/htc/album/helper/FileOperationDialogManager$EditTextWatcher;->mView:Landroid/view/View;

    .line 631
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "s"

    .prologue
    .line 642
    iget-object v2, p0, Lcom/htc/album/helper/FileOperationDialogManager$EditTextWatcher;->mView:Landroid/view/View;

    const v3, 0x7f090039

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcAutoCompleteTextView;

    .line 644
    .local v0, text:Lcom/htc/widget/HtcAutoCompleteTextView;
    iget-object v2, p0, Lcom/htc/album/helper/FileOperationDialogManager$EditTextWatcher;->mButton:Landroid/widget/Button;

    if-nez v2, :cond_0

    .line 645
    iget-object v2, p0, Lcom/htc/album/helper/FileOperationDialogManager$EditTextWatcher;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/helper/FileOperationDialogManager$EditTextWatcher;->mButton:Landroid/widget/Button;

    .line 647
    :cond_0
    iget-object v2, p0, Lcom/htc/album/helper/FileOperationDialogManager$EditTextWatcher;->this$0:Lcom/htc/album/helper/FileOperationDialogManager;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager;->mFindExistedFolderTask:Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;
    invoke-static {v2}, Lcom/htc/album/helper/FileOperationDialogManager;->access$500(Lcom/htc/album/helper/FileOperationDialogManager;)Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 649
    invoke-virtual {v0}, Lcom/htc/widget/HtcAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 650
    .local v1, textString:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/album/helper/FileOperationDialogManager;->isStringAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 652
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/album/helper/FileOperationDialogManager$EditTextWatcher;->setPositiveButtonEnable(Z)V

    .line 653
    iget-object v2, p0, Lcom/htc/album/helper/FileOperationDialogManager$EditTextWatcher;->this$0:Lcom/htc/album/helper/FileOperationDialogManager;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager;->mFindExistedFolderTask:Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;
    invoke-static {v2}, Lcom/htc/album/helper/FileOperationDialogManager;->access$500(Lcom/htc/album/helper/FileOperationDialogManager;)Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/widget/HtcAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;->setText(Ljava/lang/String;)V

    .line 660
    .end local v1           #textString:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 657
    .restart local v1       #textString:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/album/helper/FileOperationDialogManager$EditTextWatcher;->setPositiveButtonEnable(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 663
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 667
    return-void
.end method

.method public setPositiveButtonEnable(Z)V
    .locals 1
    .parameter "bEnable"

    .prologue
    .line 635
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$EditTextWatcher;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$EditTextWatcher;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 637
    :cond_0
    return-void
.end method
