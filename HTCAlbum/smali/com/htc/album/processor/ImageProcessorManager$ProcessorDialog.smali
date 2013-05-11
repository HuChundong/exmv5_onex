.class Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog;
.super Landroid/app/DialogFragment;
.source "ImageProcessorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/processor/ImageProcessorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessorDialog"
.end annotation


# instance fields
.field mListener:Lcom/htc/album/processor/ImageProcessorManager$ProcessDialogListener;

.field mStringIds:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 342
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 337
    iput-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog;->mStringIds:[I

    .line 338
    iput-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog;->mListener:Lcom/htc/album/processor/ImageProcessorManager$ProcessDialogListener;

    .line 343
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V
    .locals 1
    .parameter "extras"
    .parameter "callback"

    .prologue
    const/4 v0, 0x0

    .line 347
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 337
    iput-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog;->mStringIds:[I

    .line 338
    iput-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog;->mListener:Lcom/htc/album/processor/ImageProcessorManager$ProcessDialogListener;

    .line 348
    const-string v0, "IDS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog;->mStringIds:[I

    .line 349
    check-cast p2, Lcom/htc/album/processor/ImageProcessorManager$ProcessDialogListener;

    .end local p2
    iput-object p2, p0, Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog;->mListener:Lcom/htc/album/processor/ImageProcessorManager$ProcessDialogListener;

    .line 350
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog;->mListener:Lcom/htc/album/processor/ImageProcessorManager$ProcessDialogListener;

    invoke-interface {v0}, Lcom/htc/album/processor/ImageProcessorManager$ProcessDialogListener;->onCancel()V

    .line 390
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 391
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 355
    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog;->mStringIds:[I

    .line 356
    .local v1, ids:[I
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    aget v3, v1, v4

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, v1, v3

    new-instance v4, Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog$2;

    invoke-direct {v4, p0}, Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog$2;-><init>(Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x3

    aget v3, v1, v3

    new-instance v4, Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog$1;

    invoke-direct {v4, p0}, Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog$1;-><init>(Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 383
    .local v0, dialog:Lcom/htc/widget/HtcAlertDialog;
    return-object v0
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
