.class public Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;
.super Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
.source "FileOperationDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/FileOperationDialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DLG_FOLDER_RENAME"
.end annotation


# static fields
.field public static final FLAG_ERROR_EXISTED_FOLDER:I = 0x24512

.field public static final FLAG_ERROR_ILLEGAL_SYMBOLS:I = 0x24511

.field public static final FLAG_NORMAL:I = 0x24510


# instance fields
.field private TEXTVIEW_MAX_INPUT_WORDS:I

.field private mCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;

.field private mCollection:Lcom/htc/album/modules/collection/Collection;

.field private mContext:Landroid/content/Context;

.field private mFolderPath:Ljava/lang/String;

.field private mIllegalFlag:I

.field final synthetic this$0:Lcom/htc/album/helper/FileOperationDialogManager;


# direct methods
.method public constructor <init>(Lcom/htc/album/helper/FileOperationDialogManager;Landroid/content/Context;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "collection"
    .parameter "callBack"

    .prologue
    const/4 v0, 0x0

    .line 178
    iput-object p1, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->this$0:Lcom/htc/album/helper/FileOperationDialogManager;

    invoke-direct {p0}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;-><init>()V

    .line 170
    iput-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->mContext:Landroid/content/Context;

    .line 171
    iput-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->mCollection:Lcom/htc/album/modules/collection/Collection;

    .line 172
    iput-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->mCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;

    .line 173
    iput-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->mFolderPath:Ljava/lang/String;

    .line 174
    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->TEXTVIEW_MAX_INPUT_WORDS:I

    .line 175
    const v0, 0x24510

    iput v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->mIllegalFlag:I

    .line 179
    iput-object p2, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->mContext:Landroid/content/Context;

    .line 180
    iput-object p3, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->mCollection:Lcom/htc/album/modules/collection/Collection;

    .line 181
    invoke-virtual {p3}, Lcom/htc/album/modules/collection/Collection;->getCoverImage()Lcom/htc/album/modules/collection/SimpleImage;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/album/helper/FileOperationHelper;->getFileParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->mFolderPath:Ljava/lang/String;

    .line 182
    iput-object p4, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->mCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;

    .line 183
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->mFolderPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->mIllegalFlag:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;)Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->mCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;)Lcom/htc/album/modules/collection/Collection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->mCollection:Lcom/htc/album/modules/collection/Collection;

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 280
    invoke-super {p0, p1}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 281
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->this$0:Lcom/htc/album/helper/FileOperationDialogManager;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager;->mFindExistedFolderTask:Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationDialogManager;->access$500(Lcom/htc/album/helper/FileOperationDialogManager;)Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->this$0:Lcom/htc/album/helper/FileOperationDialogManager;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager;->mFindExistedFolderTask:Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationDialogManager;->access$500(Lcom/htc/album/helper/FileOperationDialogManager;)Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;->notifyComplete()V

    .line 284
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->this$0:Lcom/htc/album/helper/FileOperationDialogManager;

    const/4 v1, 0x0

    #setter for: Lcom/htc/album/helper/FileOperationDialogManager;->mFindExistedFolderTask:Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;
    invoke-static {v0, v1}, Lcom/htc/album/helper/FileOperationDialogManager;->access$502(Lcom/htc/album/helper/FileOperationDialogManager;Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;)Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->mCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->mCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;

    invoke-interface {v0}, Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;->onCancel()V

    .line 288
    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 188
    invoke-super {p0, p1}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 189
    invoke-virtual {p0}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 190
    .local v0, Inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f030015

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 192
    .local v3, dialogView:Landroid/widget/LinearLayout;
    iget-object v7, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->mFolderPath:Ljava/lang/String;

    invoke-static {v7}, Lcom/htc/album/helper/FileOperationHelper;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 193
    .local v4, folderName:Ljava/lang/String;
    const v7, 0x7f090039

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcAutoCompleteTextView;

    .line 194
    .local v5, folderNameText:Lcom/htc/widget/HtcAutoCompleteTextView;
    if-eqz v4, :cond_0

    .line 195
    invoke-virtual {v5, v4}, Lcom/htc/widget/HtcAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :cond_0
    invoke-virtual {v5, v12}, Lcom/htc/widget/HtcAutoCompleteTextView;->setSelectAllOnFocus(Z)V

    .line 197
    new-array v7, v12, [Landroid/text/InputFilter;

    new-instance v8, Landroid/text/InputFilter$LengthFilter;

    iget v9, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->TEXTVIEW_MAX_INPUT_WORDS:I

    invoke-direct {v8, v9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v8, v7, v11

    invoke-virtual {v5, v7}, Lcom/htc/widget/HtcAutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 199
    new-instance v7, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0a0189

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitleDividerVisible(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const v8, 0x20401ee

    new-instance v9, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$2;

    invoke-direct {v9, p0}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$2;-><init>(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;)V

    invoke-virtual {v7, v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const v8, 0x2040258

    new-instance v9, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$1;

    invoke-direct {v9, p0, v5}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$1;-><init>(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;Lcom/htc/widget/HtcAutoCompleteTextView;)V

    invoke-virtual {v7, v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    .line 264
    .local v1, dialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 266
    .local v2, dialogInstance:Lcom/htc/widget/HtcAlertDialog;
    iget-object v7, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->this$0:Lcom/htc/album/helper/FileOperationDialogManager;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager;->mFindExistedFolderTask:Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;
    invoke-static {v7}, Lcom/htc/album/helper/FileOperationDialogManager;->access$500(Lcom/htc/album/helper/FileOperationDialogManager;)Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;

    move-result-object v7

    if-nez v7, :cond_1

    .line 268
    iget-object v7, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->this$0:Lcom/htc/album/helper/FileOperationDialogManager;

    new-instance v8, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;

    iget-object v9, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->this$0:Lcom/htc/album/helper/FileOperationDialogManager;

    iget-object v10, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->mFolderPath:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;-><init>(Lcom/htc/album/helper/FileOperationDialogManager;Ljava/lang/String;)V

    #setter for: Lcom/htc/album/helper/FileOperationDialogManager;->mFindExistedFolderTask:Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;
    invoke-static {v7, v8}, Lcom/htc/album/helper/FileOperationDialogManager;->access$502(Lcom/htc/album/helper/FileOperationDialogManager;Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;)Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;

    .line 269
    iget-object v7, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->this$0:Lcom/htc/album/helper/FileOperationDialogManager;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager;->mFindExistedFolderTask:Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;
    invoke-static {v7}, Lcom/htc/album/helper/FileOperationDialogManager;->access$500(Lcom/htc/album/helper/FileOperationDialogManager;)Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    const/4 v9, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 272
    :cond_1
    new-instance v6, Lcom/htc/album/helper/FileOperationDialogManager$EditTextWatcher;

    iget-object v7, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->this$0:Lcom/htc/album/helper/FileOperationDialogManager;

    invoke-direct {v6, v7, v3, v2}, Lcom/htc/album/helper/FileOperationDialogManager$EditTextWatcher;-><init>(Lcom/htc/album/helper/FileOperationDialogManager;Landroid/view/View;Lcom/htc/widget/HtcAlertDialog;)V

    .line 273
    .local v6, textwatcher:Lcom/htc/album/helper/FileOperationDialogManager$EditTextWatcher;
    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 274
    return-object v2
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 293
    invoke-super {p0, p1}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 294
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->this$0:Lcom/htc/album/helper/FileOperationDialogManager;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager;->mFindExistedFolderTask:Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationDialogManager;->access$500(Lcom/htc/album/helper/FileOperationDialogManager;)Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->this$0:Lcom/htc/album/helper/FileOperationDialogManager;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager;->mFindExistedFolderTask:Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationDialogManager;->access$500(Lcom/htc/album/helper/FileOperationDialogManager;)Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;->notifyComplete()V

    .line 297
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->this$0:Lcom/htc/album/helper/FileOperationDialogManager;

    const/4 v1, 0x0

    #setter for: Lcom/htc/album/helper/FileOperationDialogManager;->mFindExistedFolderTask:Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;
    invoke-static {v0, v1}, Lcom/htc/album/helper/FileOperationDialogManager;->access$502(Lcom/htc/album/helper/FileOperationDialogManager;Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;)Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->mCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->mCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;

    invoke-interface {v0}, Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;->onDismiss()V

    .line 301
    :cond_1
    return-void
.end method

.method public setIllegalContentFlag(I)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 305
    iput p1, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->mIllegalFlag:I

    .line 306
    return-void
.end method
