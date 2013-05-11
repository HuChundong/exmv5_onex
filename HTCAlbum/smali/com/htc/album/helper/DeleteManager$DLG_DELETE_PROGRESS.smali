.class public Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;
.super Landroid/app/DialogFragment;
.source "DeleteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/DeleteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DLG_DELETE_PROGRESS"
.end annotation


# instance fields
.field info:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/htc/album/helper/DeleteManager;


# direct methods
.method public constructor <init>(Lcom/htc/album/helper/DeleteManager;)V
    .locals 1
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;->this$0:Lcom/htc/album/helper/DeleteManager;

    .line 202
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;->info:Landroid/os/Bundle;

    .line 203
    return-void
.end method

.method public constructor <init>(Lcom/htc/album/helper/DeleteManager;Landroid/os/Bundle;Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V
    .locals 1
    .parameter
    .parameter "extras"
    .parameter "callback"

    .prologue
    .line 206
    iput-object p1, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;->this$0:Lcom/htc/album/helper/DeleteManager;

    .line 207
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;->info:Landroid/os/Bundle;

    .line 208
    iput-object p2, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;->info:Landroid/os/Bundle;

    .line 209
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;->this$0:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager;->cancelDeleteMedias()V

    .line 229
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 214
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 215
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;->this$0:Lcom/htc/album/helper/DeleteManager;

    #getter for: Lcom/htc/album/helper/DeleteManager;->mIsFavoriteCollection:Z
    invoke-static {v1}, Lcom/htc/album/helper/DeleteManager;->access$000(Lcom/htc/album/helper/DeleteManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a006d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 219
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 220
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 221
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;->this$0:Lcom/htc/album/helper/DeleteManager;

    const/high16 v2, 0x12

    #setter for: Lcom/htc/album/helper/DeleteManager;->mDialogId:I
    invoke-static {v1, v2}, Lcom/htc/album/helper/DeleteManager;->access$102(Lcom/htc/album/helper/DeleteManager;I)I

    .line 222
    return-object v0

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_PROGRESS;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a006c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 241
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 242
    return-void
.end method
