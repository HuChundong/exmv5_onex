.class public Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;
.super Landroid/app/DialogFragment;
.source "DeleteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/DeleteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DLG_DELETE_SINGLE"
.end annotation


# instance fields
.field info:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/htc/album/helper/DeleteManager;


# direct methods
.method public constructor <init>(Lcom/htc/album/helper/DeleteManager;)V
    .locals 1
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;->this$0:Lcom/htc/album/helper/DeleteManager;

    .line 331
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;->info:Landroid/os/Bundle;

    .line 332
    return-void
.end method

.method public constructor <init>(Lcom/htc/album/helper/DeleteManager;Landroid/os/Bundle;Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V
    .locals 1
    .parameter
    .parameter "extras"
    .parameter "callback"

    .prologue
    .line 335
    iput-object p1, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;->this$0:Lcom/htc/album/helper/DeleteManager;

    .line 336
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;->info:Landroid/os/Bundle;

    .line 337
    iput-object p2, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;->info:Landroid/os/Bundle;

    .line 338
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 407
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;->this$0:Lcom/htc/album/helper/DeleteManager;

    #getter for: Lcom/htc/album/helper/DeleteManager;->mDeleteCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;
    invoke-static {v0}, Lcom/htc/album/helper/DeleteManager;->access$300(Lcom/htc/album/helper/DeleteManager;)Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;->this$0:Lcom/htc/album/helper/DeleteManager;

    #getter for: Lcom/htc/album/helper/DeleteManager;->mDeleteCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;
    invoke-static {v0}, Lcom/htc/album/helper/DeleteManager;->access$300(Lcom/htc/album/helper/DeleteManager;)Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;->onDeleteCancel()V

    .line 410
    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 411
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "extras"

    .prologue
    const/4 v5, 0x0

    .line 343
    invoke-virtual {p0}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 344
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-ne v3, v4, :cond_1

    .line 345
    :cond_0
    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$400()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[DeleteManager][onCreateDialog] activity is null or finishing"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0, v5}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;->setShowsDialog(Z)V

    .line 353
    const/4 v1, 0x0

    .line 390
    :goto_0
    return-object v1

    .line 356
    :cond_1
    const/4 v2, 0x0

    .line 357
    .local v2, title:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;->this$0:Lcom/htc/album/helper/DeleteManager;

    #getter for: Lcom/htc/album/helper/DeleteManager;->mIsFavoriteCollection:Z
    invoke-static {v3}, Lcom/htc/album/helper/DeleteManager;->access$000(Lcom/htc/album/helper/DeleteManager;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 359
    invoke-virtual {p0}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2040272

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 366
    :goto_1
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;->info:Landroid/os/Bundle;

    const-string v5, "key_message"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x2040174

    new-instance v5, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE$2;

    invoke-direct {v5, p0}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE$2;-><init>(Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x20401ee

    new-instance v5, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE$1;

    invoke-direct {v5, p0}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE$1;-><init>(Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 389
    .local v1, dialog:Lcom/htc/widget/HtcAlertDialog;
    iget-object v3, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;->this$0:Lcom/htc/album/helper/DeleteManager;

    const v4, 0x120003

    #setter for: Lcom/htc/album/helper/DeleteManager;->mDialogId:I
    invoke-static {v3, v4}, Lcom/htc/album/helper/DeleteManager;->access$102(Lcom/htc/album/helper/DeleteManager;I)I

    goto :goto_0

    .line 363
    .end local v1           #dialog:Lcom/htc/widget/HtcAlertDialog;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2040214

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public onDeleteCancel()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;->this$0:Lcom/htc/album/helper/DeleteManager;

    #getter for: Lcom/htc/album/helper/DeleteManager;->mDeleteCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;
    invoke-static {v0}, Lcom/htc/album/helper/DeleteManager;->access$300(Lcom/htc/album/helper/DeleteManager;)Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_SINGLE;->this$0:Lcom/htc/album/helper/DeleteManager;

    #getter for: Lcom/htc/album/helper/DeleteManager;->mDeleteCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;
    invoke-static {v0}, Lcom/htc/album/helper/DeleteManager;->access$300(Lcom/htc/album/helper/DeleteManager;)Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;->onDeleteCancel()V

    .line 417
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 403
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 404
    return-void
.end method
