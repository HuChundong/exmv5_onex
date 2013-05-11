.class public Lcom/htc/album/helper/HtcDialogManager$DLG_SERVER_NO_RESPONSE;
.super Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
.source "HtcDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/HtcDialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DLG_SERVER_NO_RESPONSE"
.end annotation


# instance fields
.field private mCallback:Lcom/htc/album/helper/HtcDialogManager$IDialogListener;


# direct methods
.method public constructor <init>(Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;-><init>()V

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_SERVER_NO_RESPONSE;->mCallback:Lcom/htc/album/helper/HtcDialogManager$IDialogListener;

    .line 184
    iput-object p1, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_SERVER_NO_RESPONSE;->mCallback:Lcom/htc/album/helper/HtcDialogManager$IDialogListener;

    .line 185
    return-void
.end method

.method static synthetic access$100(Lcom/htc/album/helper/HtcDialogManager$DLG_SERVER_NO_RESPONSE;)Lcom/htc/album/helper/HtcDialogManager$IDialogListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_SERVER_NO_RESPONSE;->mCallback:Lcom/htc/album/helper/HtcDialogManager$IDialogListener;

    return-object v0
.end method

.method public static instance(Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)Landroid/app/DialogFragment;
    .locals 1
    .parameter "callback"

    .prologue
    .line 178
    new-instance v0, Lcom/htc/album/helper/HtcDialogManager$DLG_SERVER_NO_RESPONSE;

    invoke-direct {v0, p0}, Lcom/htc/album/helper/HtcDialogManager$DLG_SERVER_NO_RESPONSE;-><init>(Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V

    .line 179
    .local v0, fragment:Lcom/htc/album/helper/HtcDialogManager$DLG_SERVER_NO_RESPONSE;
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 189
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/htc/album/helper/HtcDialogManager$DLG_SERVER_NO_RESPONSE;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a014f

    invoke-virtual {p0, v1}, Lcom/htc/album/helper/HtcDialogManager$DLG_SERVER_NO_RESPONSE;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0150

    invoke-virtual {p0, v1}, Lcom/htc/album/helper/HtcDialogManager$DLG_SERVER_NO_RESPONSE;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x20401ee

    new-instance v2, Lcom/htc/album/helper/HtcDialogManager$DLG_SERVER_NO_RESPONSE$1;

    invoke-direct {v2, p0}, Lcom/htc/album/helper/HtcDialogManager$DLG_SERVER_NO_RESPONSE$1;-><init>(Lcom/htc/album/helper/HtcDialogManager$DLG_SERVER_NO_RESPONSE;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    return-object v0
.end method
