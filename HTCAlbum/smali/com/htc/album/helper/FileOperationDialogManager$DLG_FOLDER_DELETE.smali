.class Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;
.super Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
.source "FileOperationDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/FileOperationDialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DLG_FOLDER_DELETE"
.end annotation


# instance fields
.field private mAlbumCollection:Lcom/htc/album/modules/collection/Collection;

.field private mCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;

.field private mContext:Landroid/content/Context;

.field private mFolderPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/album/helper/FileOperationDialogManager;


# direct methods
.method public constructor <init>(Lcom/htc/album/helper/FileOperationDialogManager;Landroid/content/Context;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "albumCollection"
    .parameter "callBack"

    .prologue
    const/4 v0, 0x0

    .line 319
    iput-object p1, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->this$0:Lcom/htc/album/helper/FileOperationDialogManager;

    invoke-direct {p0}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;-><init>()V

    .line 311
    iput-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;

    .line 312
    iput-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mFolderPath:Ljava/lang/String;

    .line 313
    iput-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mAlbumCollection:Lcom/htc/album/modules/collection/Collection;

    .line 314
    iput-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mContext:Landroid/content/Context;

    .line 320
    iput-object p2, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mContext:Landroid/content/Context;

    .line 321
    iput-object p3, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mAlbumCollection:Lcom/htc/album/modules/collection/Collection;

    .line 322
    invoke-virtual {p3}, Lcom/htc/album/modules/collection/Collection;->getCoverImage()Lcom/htc/album/modules/collection/SimpleImage;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/album/helper/FileOperationHelper;->getFileParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mFolderPath:Ljava/lang/String;

    .line 323
    iput-object p4, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;

    .line 324
    return-void
.end method

.method static synthetic access$600(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;)Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;)Lcom/htc/album/modules/collection/Collection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mAlbumCollection:Lcom/htc/album/modules/collection/Collection;

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 387
    invoke-super {p0, p1}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 388
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;

    invoke-interface {v0}, Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;->onCancel()V

    .line 390
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    .line 329
    invoke-super {p0, p1}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 330
    iget-object v8, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mAlbumCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v8}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v4

    .line 331
    .local v4, folderType:Ljava/lang/String;
    const/4 v3, 0x0

    .line 333
    .local v3, folderName:Ljava/lang/String;
    const-string v8, "com.htc.HTCAlbum.LOCAL_FOLDER"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 334
    iget-object v8, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mAlbumCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v8}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 338
    :goto_0
    const/4 v7, 0x0

    .line 339
    .local v7, title:Ljava/lang/String;
    const/4 v6, 0x0

    .line 341
    .local v6, message:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mAlbumCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v8}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, collectionType:Ljava/lang/String;
    const-string v8, "com.htc.HTCAlbum.MY_FAVORITES"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 344
    .local v5, isFavoriteCollection:Z
    if-eqz v5, :cond_1

    .line 346
    iget-object v8, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mContext:Landroid/content/Context;

    const v9, 0x2040272

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 347
    iget-object v8, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mContext:Landroid/content/Context;

    const v9, 0x7f0a0197

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 355
    :goto_1
    new-instance v8, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const v9, 0x2040258

    new-instance v10, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE$2;

    invoke-direct {v10, p0}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE$2;-><init>(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;)V

    invoke-virtual {v8, v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const v9, 0x2040256

    new-instance v10, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE$1;

    invoke-direct {v10, p0}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE$1;-><init>(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;)V

    invoke-virtual {v8, v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    .line 379
    .local v1, dialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 381
    .local v2, dialogInstance:Lcom/htc/widget/HtcAlertDialog;
    return-object v2

    .line 336
    .end local v0           #collectionType:Ljava/lang/String;
    .end local v1           #dialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v2           #dialogInstance:Lcom/htc/widget/HtcAlertDialog;
    .end local v5           #isFavoriteCollection:Z
    .end local v6           #message:Ljava/lang/String;
    .end local v7           #title:Ljava/lang/String;
    :cond_0
    iget-object v8, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mFolderPath:Ljava/lang/String;

    invoke-static {v8}, Lcom/htc/album/helper/FileOperationHelper;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 351
    .restart local v0       #collectionType:Ljava/lang/String;
    .restart local v5       #isFavoriteCollection:Z
    .restart local v6       #message:Ljava/lang/String;
    .restart local v7       #title:Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mContext:Landroid/content/Context;

    const v9, 0x2040259

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 352
    iget-object v8, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mContext:Landroid/content/Context;

    const v9, 0x7f0a0196

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 395
    invoke-super {p0, p1}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 396
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;

    invoke-interface {v0}, Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;->onDismiss()V

    .line 398
    :cond_0
    return-void
.end method
