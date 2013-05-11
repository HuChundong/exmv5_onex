.class Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW$1;
.super Ljava/lang/Object;
.source "HtcDialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;)V
    .locals 0
    .parameter

    .prologue
    .line 451
    iput-object p1, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW$1;->this$0:Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 454
    iget-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW$1;->this$0:Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;

    #getter for: Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->mCallback:Lcom/htc/album/helper/HtcDialogManager$IDialogListener;
    invoke-static {v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->access$400(Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;)Lcom/htc/album/helper/HtcDialogManager$IDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW$1;->this$0:Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;

    #getter for: Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->mCallback:Lcom/htc/album/helper/HtcDialogManager$IDialogListener;
    invoke-static {v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->access$400(Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;)Lcom/htc/album/helper/HtcDialogManager$IDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/album/helper/HtcDialogManager$IDialogListener;->onConfirm()V

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW$1;->this$0:Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;

    invoke-virtual {v0, p1}, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->dismiss(Landroid/content/DialogInterface;)V

    .line 458
    iget-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW$1;->this$0:Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;

    const/4 v1, 0x0

    #setter for: Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->mIsShown:Z
    invoke-static {v0, v1}, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->access$502(Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;Z)Z

    .line 459
    return-void
.end method
