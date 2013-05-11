.class Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$2;
.super Ljava/lang/Object;
.source "PickerFolderCreateHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;

.field final synthetic val$folderNameText:Lcom/htc/widget/HtcAutoCompleteTextView;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;Lcom/htc/widget/HtcAutoCompleteTextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 380
    iput-object p1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$2;->this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;

    iput-object p2, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$2;->val$folderNameText:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 384
    iget-object v6, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$2;->this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;

    iget-object v6, v6, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    #getter for: Lcom/htc/album/helper/PickerFolderCreateHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/htc/album/helper/PickerFolderCreateHelper;->access$000(Lcom/htc/album/helper/PickerFolderCreateHelper;)Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 386
    iget-object v6, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$2;->this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;

    iget-object v6, v6, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    #getter for: Lcom/htc/album/helper/PickerFolderCreateHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/htc/album/helper/PickerFolderCreateHelper;->access$000(Lcom/htc/album/helper/PickerFolderCreateHelper;)Landroid/app/Activity;

    move-result-object v6

    const-string v7, "input_method"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    .line 387
    .local v4, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v4, :cond_0

    .line 388
    iget-object v6, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$2;->val$folderNameText:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v6}, Lcom/htc/widget/HtcAutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 397
    .end local v4           #imm:Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    iget-object v6, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$2;->val$folderNameText:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v6}, Lcom/htc/widget/HtcAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 399
    .local v3, folderDisplayName:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/album/helper/FileOperationDialogManager;->hasIllegalChars(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 401
    iget-object v6, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$2;->this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;

    iget-object v6, v6, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    #getter for: Lcom/htc/album/helper/PickerFolderCreateHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/htc/album/helper/PickerFolderCreateHelper;->access$000(Lcom/htc/album/helper/PickerFolderCreateHelper;)Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0a019a

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 402
    .local v1, errorTitle:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$2;->this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;

    iget-object v6, v6, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    #getter for: Lcom/htc/album/helper/PickerFolderCreateHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/htc/album/helper/PickerFolderCreateHelper;->access$000(Lcom/htc/album/helper/PickerFolderCreateHelper;)Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0a019c

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, errorContent:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$2;->this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;

    iget-object v7, v6, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    invoke-static {v1, v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE;->instance(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DialogFragment;

    move-result-object v6

    check-cast v6, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    #setter for: Lcom/htc/album/helper/PickerFolderCreateHelper;->mErrorAlertDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
    invoke-static {v7, v6}, Lcom/htc/album/helper/PickerFolderCreateHelper;->access$402(Lcom/htc/album/helper/PickerFolderCreateHelper;Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;)Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    .line 404
    iget-object v6, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$2;->this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;

    iget-object v6, v6, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    #getter for: Lcom/htc/album/helper/PickerFolderCreateHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/htc/album/helper/PickerFolderCreateHelper;->access$000(Lcom/htc/album/helper/PickerFolderCreateHelper;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 405
    .local v2, fm:Landroid/app/FragmentManager;
    if-eqz v2, :cond_2

    .line 406
    iget-object v6, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$2;->this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;

    iget-object v6, v6, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    #getter for: Lcom/htc/album/helper/PickerFolderCreateHelper;->mErrorAlertDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
    invoke-static {v6}, Lcom/htc/album/helper/PickerFolderCreateHelper;->access$400(Lcom/htc/album/helper/PickerFolderCreateHelper;)Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    move-result-object v6

    const-string v7, "ErrorAlertDialog"

    invoke-virtual {v6, v2, v7}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 417
    .end local v0           #errorContent:Ljava/lang/String;
    .end local v1           #errorTitle:Ljava/lang/String;
    .end local v2           #fm:Landroid/app/FragmentManager;
    :goto_1
    return-void

    .line 390
    .end local v3           #folderDisplayName:Ljava/lang/String;
    .restart local v4       #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    const-string v6, "PickerFolderCreateHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "imm = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 393
    .end local v4           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    const-string v6, "PickerFolderCreateHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mActivity = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$2;->this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;

    iget-object v8, v8, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    #getter for: Lcom/htc/album/helper/PickerFolderCreateHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v8}, Lcom/htc/album/helper/PickerFolderCreateHelper;->access$000(Lcom/htc/album/helper/PickerFolderCreateHelper;)Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 408
    .restart local v0       #errorContent:Ljava/lang/String;
    .restart local v1       #errorTitle:Ljava/lang/String;
    .restart local v2       #fm:Landroid/app/FragmentManager;
    .restart local v3       #folderDisplayName:Ljava/lang/String;
    :cond_2
    const-string v6, "PickerFolderCreateHelper"

    const-string v7, "fm null!"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 413
    .end local v0           #errorContent:Ljava/lang/String;
    .end local v1           #errorTitle:Ljava/lang/String;
    .end local v2           #fm:Landroid/app/FragmentManager;
    :cond_3
    iget-object v6, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$2;->this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;

    iget-object v6, v6, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mSelectedStorage:Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;

    invoke-virtual {v6}, Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;->getPath()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/htc/album/helper/PickerFolderCreateHelper;->getFolderPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6, v3}, Lcom/htc/album/helper/PickerFolderCreateHelper;->access$500(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 414
    .local v5, targetFolderLocation:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$2;->this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;

    iget-object v6, v6, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    invoke-virtual {v6, v5, v3}, Lcom/htc/album/helper/PickerFolderCreateHelper;->checkFolderExist(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
