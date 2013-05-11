.class Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE$2;
.super Ljava/lang/Object;
.source "OnlineDeleteManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE;)V
    .locals 0
    .parameter

    .prologue
    .line 450
    iput-object p1, p0, Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE$2;->this$1:Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 453
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE$2;->this$1:Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE;

    iget-object v0, v0, Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE;->this$0:Lcom/htc/album/helper/OnlineDeleteManager;

    const/4 v1, 0x1

    #setter for: Lcom/htc/album/helper/OnlineDeleteManager;->mIsDeleteAll:Z
    invoke-static {v0, v1}, Lcom/htc/album/helper/OnlineDeleteManager;->access$102(Lcom/htc/album/helper/OnlineDeleteManager;Z)Z

    .line 454
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 455
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE$2;->this$1:Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE;

    iget-object v0, v0, Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE;->this$0:Lcom/htc/album/helper/OnlineDeleteManager;

    #getter for: Lcom/htc/album/helper/OnlineDeleteManager;->mFragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/htc/album/helper/OnlineDeleteManager;->access$000(Lcom/htc/album/helper/OnlineDeleteManager;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE$2;->this$1:Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE;

    iget-object v0, v0, Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE;->this$0:Lcom/htc/album/helper/OnlineDeleteManager;

    #getter for: Lcom/htc/album/helper/OnlineDeleteManager;->mFragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/htc/album/helper/OnlineDeleteManager;->access$000(Lcom/htc/album/helper/OnlineDeleteManager;)Landroid/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE$2;->this$1:Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE;

    iget-object v0, v0, Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_MULTIPLE;->this$0:Lcom/htc/album/helper/OnlineDeleteManager;

    #getter for: Lcom/htc/album/helper/OnlineDeleteManager;->mFragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/htc/album/helper/OnlineDeleteManager;->access$000(Lcom/htc/album/helper/OnlineDeleteManager;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    const/high16 v1, 0x12

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->showFragmentDialog(ILandroid/os/Bundle;)Z

    .line 459
    :cond_0
    return-void
.end method
