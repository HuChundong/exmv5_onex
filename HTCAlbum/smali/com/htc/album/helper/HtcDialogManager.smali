.class public Lcom/htc/album/helper/HtcDialogManager;
.super Ljava/lang/Object;
.source "HtcDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;,
        Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE;,
        Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;,
        Lcom/htc/album/helper/HtcDialogManager$DLG_NO_AUTHORIZATION;,
        Lcom/htc/album/helper/HtcDialogManager$DLG_SERVER_NO_RESPONSE;,
        Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;,
        Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;,
        Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;,
        Lcom/htc/album/helper/HtcDialogManager$IDialogListener;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "HtcDialogManager"

    iput-object v0, p0, Lcom/htc/album/helper/HtcDialogManager;->LOG_TAG:Ljava/lang/String;

    .line 407
    return-void
.end method
