.class public Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;
.super Landroid/app/DialogFragment;
.source "DeleteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/DeleteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DLG_DELETE_ALL"
.end annotation


# instance fields
.field info:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/htc/album/helper/DeleteManager;


# direct methods
.method public constructor <init>(Lcom/htc/album/helper/DeleteManager;)V
    .locals 1
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;->this$0:Lcom/htc/album/helper/DeleteManager;

    .line 251
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;->info:Landroid/os/Bundle;

    .line 252
    return-void
.end method

.method public constructor <init>(Lcom/htc/album/helper/DeleteManager;Landroid/os/Bundle;Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V
    .locals 1
    .parameter
    .parameter "extras"
    .parameter "callback"

    .prologue
    .line 255
    iput-object p1, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;->this$0:Lcom/htc/album/helper/DeleteManager;

    .line 256
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;->info:Landroid/os/Bundle;

    .line 257
    iput-object p2, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;->info:Landroid/os/Bundle;

    .line 258
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;->this$0:Lcom/htc/album/helper/DeleteManager;

    #getter for: Lcom/htc/album/helper/DeleteManager;->mDeleteCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;
    invoke-static {v0}, Lcom/htc/album/helper/DeleteManager;->access$300(Lcom/htc/album/helper/DeleteManager;)Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;->this$0:Lcom/htc/album/helper/DeleteManager;

    #getter for: Lcom/htc/album/helper/DeleteManager;->mDeleteCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;
    invoke-static {v0}, Lcom/htc/album/helper/DeleteManager;->access$300(Lcom/htc/album/helper/DeleteManager;)Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;->onDismissDeleteAll()V

    .line 309
    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 310
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 263
    const/4 v3, 0x0

    .line 264
    .local v3, title:Ljava/lang/String;
    const/4 v1, 0x0

    .line 265
    .local v1, message:Ljava/lang/String;
    const/4 v2, 0x0

    .line 266
    .local v2, positiveButtonName:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;->this$0:Lcom/htc/album/helper/DeleteManager;

    #getter for: Lcom/htc/album/helper/DeleteManager;->mIsFavoriteCollection:Z
    invoke-static {v4}, Lcom/htc/album/helper/DeleteManager;->access$000(Lcom/htc/album/helper/DeleteManager;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a006e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 269
    invoke-virtual {p0}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;->this$0:Lcom/htc/album/helper/DeleteManager;

    #getter for: Lcom/htc/album/helper/DeleteManager;->mCollection:Lcom/htc/album/modules/collection/Collection;
    invoke-static {v6}, Lcom/htc/album/helper/DeleteManager;->access$200(Lcom/htc/album/helper/DeleteManager;)Lcom/htc/album/modules/collection/Collection;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 270
    invoke-virtual {p0}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x2040272

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 279
    :goto_0
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL$2;

    invoke-direct {v5, p0}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL$2;-><init>(Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;)V

    invoke-virtual {v4, v2, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x20401ee

    new-instance v6, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL$1;

    invoke-direct {v6, p0}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL$1;-><init>(Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 298
    .local v0, dialog:Lcom/htc/widget/HtcAlertDialog;
    iget-object v4, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;->this$0:Lcom/htc/album/helper/DeleteManager;

    const v5, 0x120001

    #setter for: Lcom/htc/album/helper/DeleteManager;->mDialogId:I
    invoke-static {v4, v5}, Lcom/htc/album/helper/DeleteManager;->access$102(Lcom/htc/album/helper/DeleteManager;I)I

    .line 299
    return-object v0

    .line 274
    .end local v0           #dialog:Lcom/htc/widget/HtcAlertDialog;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x20401ec

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 275
    invoke-virtual {p0}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;->this$0:Lcom/htc/album/helper/DeleteManager;

    #getter for: Lcom/htc/album/helper/DeleteManager;->mCollection:Lcom/htc/album/modules/collection/Collection;
    invoke-static {v6}, Lcom/htc/album/helper/DeleteManager;->access$200(Lcom/htc/album/helper/DeleteManager;)Lcom/htc/album/modules/collection/Collection;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-virtual {p0}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x2040214

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 322
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 323
    return-void
.end method
