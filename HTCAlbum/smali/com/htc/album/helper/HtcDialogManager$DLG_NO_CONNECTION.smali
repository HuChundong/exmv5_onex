.class public Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;
.super Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
.source "HtcDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/HtcDialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DLG_NO_CONNECTION"
.end annotation


# instance fields
.field private mCallback:Lcom/htc/album/helper/HtcDialogManager$IDialogListener;

.field private mErrorMessage:Ljava/lang/String;

.field private mErrorTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V
    .locals 1
    .parameter "callback"

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;->mCallback:Lcom/htc/album/helper/HtcDialogManager$IDialogListener;

    .line 59
    iput-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;->mErrorTitle:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;->mErrorMessage:Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;->mCallback:Lcom/htc/album/helper/HtcDialogManager$IDialogListener;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;)Lcom/htc/album/helper/HtcDialogManager$IDialogListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;->mCallback:Lcom/htc/album/helper/HtcDialogManager$IDialogListener;

    return-object v0
.end method

.method public static instance(Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)Landroid/app/DialogFragment;
    .locals 1
    .parameter "callback"

    .prologue
    .line 64
    new-instance v0, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;

    invoke-direct {v0, p0}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;-><init>(Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V

    .line 65
    .local v0, fragment:Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 83
    iget-object v1, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;->mErrorTitle:Ljava/lang/String;

    .line 84
    .local v1, szTitle:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 85
    const v2, 0x2040177

    invoke-virtual {p0, v2}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;->mErrorMessage:Ljava/lang/String;

    .line 88
    .local v0, szMessage:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 89
    const v2, 0x204016b

    invoke-virtual {p0, v2}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 92
    :cond_1
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x2040218

    new-instance v4, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION$2;

    invoke-direct {v4, p0}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION$2;-><init>(Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x20401ee

    new-instance v4, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION$1;

    invoke-direct {v4, p0}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION$1;-><init>(Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 120
    iget-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;->mCallback:Lcom/htc/album/helper/HtcDialogManager$IDialogListener;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;->mCallback:Lcom/htc/album/helper/HtcDialogManager$IDialogListener;

    invoke-interface {v0}, Lcom/htc/album/helper/HtcDialogManager$IDialogListener;->onDismiss()Z

    .line 122
    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "szText"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;->mErrorMessage:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "szText"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;->mErrorTitle:Ljava/lang/String;

    .line 75
    return-void
.end method
