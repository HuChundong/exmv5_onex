.class public Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
.super Landroid/app/DialogFragment;
.source "HtcDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/HtcDialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HtcDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 34
    :try_start_0
    invoke-super {p0}, Landroid/app/DialogFragment;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public dismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 45
    :try_start_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    goto :goto_0
.end method
