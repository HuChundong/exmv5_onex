.class public Lcom/htc/album/helper/ImageProcessManager$DLG_SD_CARD_FULL_PROGRESS;
.super Landroid/app/DialogFragment;
.source "ImageProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/ImageProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DLG_SD_CARD_FULL_PROGRESS"
.end annotation


# instance fields
.field info:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/htc/album/helper/ImageProcessManager;


# direct methods
.method public constructor <init>(Lcom/htc/album/helper/ImageProcessManager;)V
    .locals 1
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/htc/album/helper/ImageProcessManager$DLG_SD_CARD_FULL_PROGRESS;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    .line 346
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$DLG_SD_CARD_FULL_PROGRESS;->info:Landroid/os/Bundle;

    .line 347
    return-void
.end method

.method public constructor <init>(Lcom/htc/album/helper/ImageProcessManager;Landroid/os/Bundle;Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V
    .locals 1
    .parameter
    .parameter "extras"
    .parameter "callback"

    .prologue
    .line 350
    iput-object p1, p0, Lcom/htc/album/helper/ImageProcessManager$DLG_SD_CARD_FULL_PROGRESS;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    .line 351
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$DLG_SD_CARD_FULL_PROGRESS;->info:Landroid/os/Bundle;

    .line 352
    iput-object p2, p0, Lcom/htc/album/helper/ImageProcessManager$DLG_SD_CARD_FULL_PROGRESS;->info:Landroid/os/Bundle;

    .line 353
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 379
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ImageProcessManager][SDCardFullDialog]: onCancel, mNeedActivityFinish: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/helper/ImageProcessManager$DLG_SD_CARD_FULL_PROGRESS;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mNeedActivityFinish:Z
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$400(Lcom/htc/album/helper/ImageProcessManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$DLG_SD_CARD_FULL_PROGRESS;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mNeedActivityFinish:Z
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$400(Lcom/htc/album/helper/ImageProcessManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/htc/album/helper/ImageProcessManager$DLG_SD_CARD_FULL_PROGRESS;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 384
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "extras"

    .prologue
    .line 358
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/htc/album/helper/ImageProcessManager$DLG_SD_CARD_FULL_PROGRESS;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0046

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0047

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x2040174

    new-instance v3, Lcom/htc/album/helper/ImageProcessManager$DLG_SD_CARD_FULL_PROGRESS$1;

    invoke-direct {v3, p0}, Lcom/htc/album/helper/ImageProcessManager$DLG_SD_CARD_FULL_PROGRESS$1;-><init>(Lcom/htc/album/helper/ImageProcessManager$DLG_SD_CARD_FULL_PROGRESS;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 373
    .local v0, errorDlg:Lcom/htc/widget/HtcAlertDialog;
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 396
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 397
    return-void
.end method
