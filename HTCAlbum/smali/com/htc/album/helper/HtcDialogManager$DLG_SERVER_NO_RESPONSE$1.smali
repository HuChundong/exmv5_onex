.class Lcom/htc/album/helper/HtcDialogManager$DLG_SERVER_NO_RESPONSE$1;
.super Ljava/lang/Object;
.source "HtcDialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/HtcDialogManager$DLG_SERVER_NO_RESPONSE;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/helper/HtcDialogManager$DLG_SERVER_NO_RESPONSE;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/HtcDialogManager$DLG_SERVER_NO_RESPONSE;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_SERVER_NO_RESPONSE$1;->this$0:Lcom/htc/album/helper/HtcDialogManager$DLG_SERVER_NO_RESPONSE;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_SERVER_NO_RESPONSE$1;->this$0:Lcom/htc/album/helper/HtcDialogManager$DLG_SERVER_NO_RESPONSE;

    #getter for: Lcom/htc/album/helper/HtcDialogManager$DLG_SERVER_NO_RESPONSE;->mCallback:Lcom/htc/album/helper/HtcDialogManager$IDialogListener;
    invoke-static {v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_SERVER_NO_RESPONSE;->access$100(Lcom/htc/album/helper/HtcDialogManager$DLG_SERVER_NO_RESPONSE;)Lcom/htc/album/helper/HtcDialogManager$IDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_SERVER_NO_RESPONSE$1;->this$0:Lcom/htc/album/helper/HtcDialogManager$DLG_SERVER_NO_RESPONSE;

    #getter for: Lcom/htc/album/helper/HtcDialogManager$DLG_SERVER_NO_RESPONSE;->mCallback:Lcom/htc/album/helper/HtcDialogManager$IDialogListener;
    invoke-static {v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_SERVER_NO_RESPONSE;->access$100(Lcom/htc/album/helper/HtcDialogManager$DLG_SERVER_NO_RESPONSE;)Lcom/htc/album/helper/HtcDialogManager$IDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/album/helper/HtcDialogManager$IDialogListener;->onConfirm()V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_SERVER_NO_RESPONSE$1;->this$0:Lcom/htc/album/helper/HtcDialogManager$DLG_SERVER_NO_RESPONSE;

    invoke-virtual {v0, p1}, Lcom/htc/album/helper/HtcDialogManager$DLG_SERVER_NO_RESPONSE;->dismiss(Landroid/content/DialogInterface;)V

    .line 200
    return-void
.end method
