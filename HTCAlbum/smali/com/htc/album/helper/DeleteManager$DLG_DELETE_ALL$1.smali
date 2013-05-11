.class Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL$1;
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
    .line 291
    iput-object p1, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL$1;->this$1:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL$1;->this$1:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;->this$0:Lcom/htc/album/helper/DeleteManager;

    #getter for: Lcom/htc/album/helper/DeleteManager;->mDeleteCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;
    invoke-static {v0}, Lcom/htc/album/helper/DeleteManager;->access$300(Lcom/htc/album/helper/DeleteManager;)Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL$1;->this$1:Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DLG_DELETE_ALL;->this$0:Lcom/htc/album/helper/DeleteManager;

    #getter for: Lcom/htc/album/helper/DeleteManager;->mDeleteCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;
    invoke-static {v0}, Lcom/htc/album/helper/DeleteManager;->access$300(Lcom/htc/album/helper/DeleteManager;)Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;->onDismissDeleteAll()V

    .line 295
    :cond_0
    return-void
.end method
