.class Lcom/htc/album/helper/ImageProcessManager$DLG_SD_CARD_FULL_PROGRESS$1;
.super Ljava/lang/Object;
.source "ImageProcessManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/ImageProcessManager$DLG_SD_CARD_FULL_PROGRESS;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/helper/ImageProcessManager$DLG_SD_CARD_FULL_PROGRESS;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/ImageProcessManager$DLG_SD_CARD_FULL_PROGRESS;)V
    .locals 0
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/htc/album/helper/ImageProcessManager$DLG_SD_CARD_FULL_PROGRESS$1;->this$1:Lcom/htc/album/helper/ImageProcessManager$DLG_SD_CARD_FULL_PROGRESS;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 365
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ImageProcessManager][SDCardFullDialog]: press OK, mNeedActivityFinish: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/helper/ImageProcessManager$DLG_SD_CARD_FULL_PROGRESS$1;->this$1:Lcom/htc/album/helper/ImageProcessManager$DLG_SD_CARD_FULL_PROGRESS;

    iget-object v2, v2, Lcom/htc/album/helper/ImageProcessManager$DLG_SD_CARD_FULL_PROGRESS;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mNeedActivityFinish:Z
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$400(Lcom/htc/album/helper/ImageProcessManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$DLG_SD_CARD_FULL_PROGRESS$1;->this$1:Lcom/htc/album/helper/ImageProcessManager$DLG_SD_CARD_FULL_PROGRESS;

    iget-object v0, v0, Lcom/htc/album/helper/ImageProcessManager$DLG_SD_CARD_FULL_PROGRESS;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mNeedActivityFinish:Z
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$400(Lcom/htc/album/helper/ImageProcessManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$DLG_SD_CARD_FULL_PROGRESS$1;->this$1:Lcom/htc/album/helper/ImageProcessManager$DLG_SD_CARD_FULL_PROGRESS;

    invoke-virtual {v0}, Lcom/htc/album/helper/ImageProcessManager$DLG_SD_CARD_FULL_PROGRESS;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 370
    :cond_0
    return-void
.end method
