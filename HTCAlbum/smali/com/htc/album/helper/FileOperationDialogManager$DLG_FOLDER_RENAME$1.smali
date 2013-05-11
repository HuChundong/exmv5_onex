.class Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$1;
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

.field final synthetic val$folderNameText:Lcom/htc/widget/HtcAutoCompleteTextView;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;Lcom/htc/widget/HtcAutoCompleteTextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$1;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;

    iput-object p2, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$1;->val$folderNameText:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v11, 0x0

    .line 221
    iget-object v8, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$1;->val$folderNameText:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 222
    .local v3, newFolderName:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$1;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->mFolderPath:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->access$000(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/album/helper/FileOperationHelper;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 224
    .local v5, oldFolderName:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$1;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->access$100(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "input_method"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 226
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v8, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$1;->val$folderNameText:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v1, v8, v11}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 228
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 230
    iget-object v8, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$1;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->mFolderPath:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->access$000(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/album/helper/FileOperationHelper;->getFileParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, folderParent:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 232
    .local v4, newFolerPath:Ljava/lang/String;
    const/4 v7, 0x0

    .line 233
    .local v7, warningDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
    const/4 v6, 0x0

    .line 234
    .local v6, title:Ljava/lang/String;
    const/4 v2, 0x0

    .line 235
    .local v2, message:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$1;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->mIllegalFlag:I
    invoke-static {v8}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->access$200(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 252
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 253
    iget-object v8, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$1;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;

    invoke-virtual {v8}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    const-string v9, "FileOperationDialogManager"

    invoke-virtual {v7, v8, v9}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 255
    .end local v0           #folderParent:Ljava/lang/String;
    .end local v2           #message:Ljava/lang/String;
    .end local v4           #newFolerPath:Ljava/lang/String;
    .end local v6           #title:Ljava/lang/String;
    .end local v7           #warningDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
    :cond_1
    iget-object v8, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$1;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;

    iget-object v8, v8, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->this$0:Lcom/htc/album/helper/FileOperationDialogManager;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager;->mFindExistedFolderTask:Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;
    invoke-static {v8}, Lcom/htc/album/helper/FileOperationDialogManager;->access$500(Lcom/htc/album/helper/FileOperationDialogManager;)Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 257
    iget-object v8, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$1;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;

    iget-object v8, v8, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->this$0:Lcom/htc/album/helper/FileOperationDialogManager;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager;->mFindExistedFolderTask:Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;
    invoke-static {v8}, Lcom/htc/album/helper/FileOperationDialogManager;->access$500(Lcom/htc/album/helper/FileOperationDialogManager;)Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;->notifyComplete()V

    .line 258
    iget-object v8, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$1;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;

    iget-object v8, v8, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->this$0:Lcom/htc/album/helper/FileOperationDialogManager;

    const/4 v9, 0x0

    #setter for: Lcom/htc/album/helper/FileOperationDialogManager;->mFindExistedFolderTask:Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;
    invoke-static {v8, v9}, Lcom/htc/album/helper/FileOperationDialogManager;->access$502(Lcom/htc/album/helper/FileOperationDialogManager;Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;)Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;

    .line 260
    :cond_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 261
    return-void

    .line 238
    .restart local v0       #folderParent:Ljava/lang/String;
    .restart local v2       #message:Ljava/lang/String;
    .restart local v4       #newFolerPath:Ljava/lang/String;
    .restart local v6       #title:Ljava/lang/String;
    .restart local v7       #warningDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
    :pswitch_0
    iget-object v8, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$1;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->mCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;
    invoke-static {v8}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->access$300(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;)Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 239
    iget-object v8, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$1;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->mCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;
    invoke-static {v8}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->access$300(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;)Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$1;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->mCollection:Lcom/htc/album/modules/collection/Collection;
    invoke-static {v9}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->access$400(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;)Lcom/htc/album/modules/collection/Collection;

    move-result-object v9

    sget-object v10, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->TYPE_RENAME_FOLDER:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    invoke-interface {v8, v9, v4, v10}, Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;->onConfirm(Lcom/htc/album/modules/collection/Collection;Ljava/lang/String;Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;)V

    goto :goto_0

    .line 242
    :pswitch_1
    iget-object v8, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$1;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->access$100(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0a019a

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 243
    iget-object v8, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$1;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->access$100(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0a019c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-static {v6, v2}, Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE;->instance(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DialogFragment;

    move-result-object v7

    .end local v7           #warningDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
    check-cast v7, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    .line 245
    .restart local v7       #warningDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
    goto :goto_0

    .line 247
    :pswitch_2
    iget-object v8, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$1;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->access$100(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0a018a

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 248
    iget-object v8, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$1;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->access$100(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0a019b

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v0, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 249
    invoke-static {v6, v2}, Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE;->instance(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DialogFragment;

    move-result-object v7

    .end local v7           #warningDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
    check-cast v7, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    .restart local v7       #warningDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
    goto/16 :goto_0

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x24510
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
