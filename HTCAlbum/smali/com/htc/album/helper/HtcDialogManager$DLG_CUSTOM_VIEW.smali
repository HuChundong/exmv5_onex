.class public Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;
.super Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
.source "HtcDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/HtcDialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DLG_CUSTOM_VIEW"
.end annotation


# static fields
.field private static mFragment:Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;


# instance fields
.field private mCallback:Lcom/htc/album/helper/HtcDialogManager$IDialogListener;

.field private mDlgCustomView:Landroid/view/View;

.field private mDlgTitle:Ljava/lang/String;

.field private mIsShown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 409
    new-instance v0, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;

    invoke-direct {v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;-><init>()V

    sput-object v0, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->mFragment:Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 421
    invoke-direct {p0}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;-><init>()V

    .line 411
    iput-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->mCallback:Lcom/htc/album/helper/HtcDialogManager$IDialogListener;

    .line 412
    iput-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->mDlgTitle:Ljava/lang/String;

    .line 413
    iput-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->mDlgCustomView:Landroid/view/View;

    .line 414
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->mIsShown:Z

    .line 422
    return-void
.end method

.method static synthetic access$400(Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;)Lcom/htc/album/helper/HtcDialogManager$IDialogListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 407
    iget-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->mCallback:Lcom/htc/album/helper/HtcDialogManager$IDialogListener;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 407
    iput-boolean p1, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->mIsShown:Z

    return p1
.end method

.method public static instance()Landroid/app/DialogFragment;
    .locals 1

    .prologue
    .line 417
    sget-object v0, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->mFragment:Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;

    return-object v0
.end method


# virtual methods
.method public isShown()Z
    .locals 1

    .prologue
    .line 425
    iget-boolean v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->mIsShown:Z

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 442
    iget-object v1, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->mDlgTitle:Ljava/lang/String;

    .line 443
    .local v1, szTitle:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->mDlgCustomView:Landroid/view/View;

    .line 445
    .local v0, szCustomView:Landroid/view/View;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->mIsShown:Z

    .line 447
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x2040174

    new-instance v4, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW$1;

    invoke-direct {v4, p0}, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW$1;-><init>(Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public setCallback(Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 429
    iput-object p1, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->mCallback:Lcom/htc/album/helper/HtcDialogManager$IDialogListener;

    .line 430
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 0
    .parameter "szCustomView"

    .prologue
    .line 437
    iput-object p1, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->mDlgCustomView:Landroid/view/View;

    .line 438
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "szTitle"

    .prologue
    .line 433
    iput-object p1, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->mDlgTitle:Ljava/lang/String;

    .line 434
    return-void
.end method
