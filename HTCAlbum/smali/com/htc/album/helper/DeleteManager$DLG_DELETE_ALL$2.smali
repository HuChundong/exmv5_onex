.class Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL$2;
.super Ljava/lang/Object;
.source "DeleteManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;)V
    .locals 0
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL$2;->this$1:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL$2;->this$1:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;->this$0:Lcom/htc/album/helper/DeleteManager;

    const v1, 0x120001

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/DeleteManager;->doDelete(ILandroid/os/Bundle;)V

    .line 288
    return-void
.end method
