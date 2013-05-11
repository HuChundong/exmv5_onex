.class public Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE;
.super Landroid/app/DialogFragment;
.source "OnlineDeleteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/OnlineDeleteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DLG_DELETE_MULTIPLE"
.end annotation


# instance fields
.field private mCallback:Lcom/htc/album/helper/HtcDialogManager$IDialogListener;

.field private mMessage:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/album/helper/OnlineDeleteManager;


# direct methods
.method public constructor <init>(Lcom/htc/album/helper/OnlineDeleteManager;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 423
    iput-object p1, p0, Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE;->this$0:Lcom/htc/album/helper/OnlineDeleteManager;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 425
    iput-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE;->mCallback:Lcom/htc/album/helper/HtcDialogManager$IDialogListener;

    .line 426
    iput-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE;->mMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public instance()Landroid/app/DialogFragment;
    .locals 2

    .prologue
    .line 430
    new-instance v0, Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE;

    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE;->this$0:Lcom/htc/album/helper/OnlineDeleteManager;

    invoke-direct {v0, v1}, Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE;-><init>(Lcom/htc/album/helper/OnlineDeleteManager;)V

    .line 431
    .local v0, fragment:Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE;
    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 440
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE;->this$0:Lcom/htc/album/helper/OnlineDeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/OnlineDeleteManager;->cancelDeleteMedias()V

    .line 441
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 445
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x2040365

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x2040259

    new-instance v2, Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE$2;

    invoke-direct {v2, p0}, Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE$2;-><init>(Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x2040256

    new-instance v2, Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE$1;

    invoke-direct {v2, p0}, Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE$1;-><init>(Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 435
    iput-object p1, p0, Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE;->mMessage:Ljava/lang/String;

    .line 436
    return-void
.end method
