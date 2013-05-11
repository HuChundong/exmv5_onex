.class public Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;
.super Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
.source "FileOperationDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/FileOperationDialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DLG_DUPLICATE_FILE_WARNING"
.end annotation


# instance fields
.field private mCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IDuplicateWarningDialogListener;

.field private mFileName:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mFolderName:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/album/helper/FileOperationDialogManager;


# direct methods
.method public constructor <init>(Lcom/htc/album/helper/FileOperationDialogManager;Ljava/lang/String;Lcom/htc/album/helper/FileOperationDialogManager$IDuplicateWarningDialogListener;)V
    .locals 1
    .parameter
    .parameter "filePath"
    .parameter "callBack"

    .prologue
    const/4 v0, 0x0

    .line 409
    iput-object p1, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;->this$0:Lcom/htc/album/helper/FileOperationDialogManager;

    invoke-direct {p0}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;-><init>()V

    .line 403
    iput-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;->mFilePath:Ljava/lang/String;

    .line 404
    iput-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;->mFileName:Ljava/lang/String;

    .line 405
    iput-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;->mFolderName:Ljava/lang/String;

    .line 406
    iput-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;->mCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IDuplicateWarningDialogListener;

    .line 410
    if-eqz p2, :cond_0

    .line 411
    invoke-direct {p0, p2}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;->setParams(Ljava/lang/String;)V

    .line 412
    :cond_0
    iput-object p3, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;->mCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IDuplicateWarningDialogListener;

    .line 413
    return-void
.end method

.method static synthetic access$800(Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;)Lcom/htc/album/helper/FileOperationDialogManager$IDuplicateWarningDialogListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;->mCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IDuplicateWarningDialogListener;

    return-object v0
.end method

.method private setParams(Ljava/lang/String;)V
    .locals 1
    .parameter "filePath"

    .prologue
    .line 422
    iput-object p1, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;->mFilePath:Ljava/lang/String;

    .line 423
    invoke-static {p1}, Lcom/htc/album/helper/FileOperationHelper;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;->mFileName:Ljava/lang/String;

    .line 424
    invoke-static {p1}, Lcom/htc/album/helper/FileOperationHelper;->getFileParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;->mFolderName:Ljava/lang/String;

    .line 425
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;->mFolderName:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/album/helper/FileOperationHelper;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;->mFolderName:Ljava/lang/String;

    .line 426
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 488
    invoke-super {p0, p1}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 489
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;->mCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IDuplicateWarningDialogListener;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;->mCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IDuplicateWarningDialogListener;

    invoke-interface {v0}, Lcom/htc/album/helper/FileOperationDialogManager$IDuplicateWarningDialogListener;->onCancel()V

    .line 491
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 15
    .parameter "savedInstanceState"

    .prologue
    .line 431
    invoke-super/range {p0 .. p1}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 432
    invoke-virtual {p0}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 434
    .local v0, activity:Landroid/app/Activity;
    const-string v10, "layout_inflater"

    invoke-virtual {v0, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 435
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v10, 0x7f03001d

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 436
    .local v9, view:Landroid/view/View;
    new-instance v7, Landroid/widget/ScrollView;

    invoke-direct {v7, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 437
    .local v7, scrollView:Landroid/widget/ScrollView;
    invoke-virtual {v7, v9}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 439
    const v10, 0x7f090044

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 440
    .local v8, textMessage:Landroid/widget/TextView;
    const v10, 0x7f090046

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 442
    .local v6, remind_text:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0a0198

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;->mFolderName:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 443
    .local v5, message:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0a0199

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 444
    .local v1, applyMessage:Ljava/lang/String;
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    new-instance v10, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v10, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;->mFileName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    const v11, 0x2040315

    new-instance v12, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING$3;

    invoke-direct {v12, p0, v9}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING$3;-><init>(Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;Landroid/view/View;)V

    invoke-virtual {v10, v11, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    const v11, 0x2040368

    new-instance v12, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING$2;

    invoke-direct {v12, p0, v9}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING$2;-><init>(Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;Landroid/view/View;)V

    invoke-virtual {v10, v11, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    const v11, 0x2040256

    new-instance v12, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING$1;

    invoke-direct {v12, p0}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING$1;-><init>(Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;)V

    invoke-virtual {v10, v11, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    .line 480
    .local v2, dialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    .line 482
    .local v3, dialogInstance:Lcom/htc/widget/HtcAlertDialog;
    return-object v3
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 496
    invoke-super {p0, p1}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 497
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;->mCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IDuplicateWarningDialogListener;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;->mCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IDuplicateWarningDialogListener;

    invoke-interface {v0}, Lcom/htc/album/helper/FileOperationDialogManager$IDuplicateWarningDialogListener;->onDismiss()V

    .line 499
    :cond_0
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0
    .parameter "filePath"

    .prologue
    .line 417
    invoke-direct {p0, p1}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;->setParams(Ljava/lang/String;)V

    .line 418
    return-void
.end method
