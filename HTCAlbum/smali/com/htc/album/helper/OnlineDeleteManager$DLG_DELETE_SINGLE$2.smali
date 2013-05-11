.class Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_SINGLE$2;
.super Ljava/lang/Object;
.source "OnlineDeleteManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_SINGLE;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_SINGLE;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_SINGLE;)V
    .locals 0
    .parameter

    .prologue
    .line 501
    iput-object p1, p0, Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_SINGLE$2;->this$1:Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_SINGLE;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v1, 0x1

    .line 504
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 505
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_SINGLE$2;->this$1:Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_SINGLE;

    iget-object v0, v0, Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_SINGLE;->this$0:Lcom/htc/album/helper/OnlineDeleteManager;

    #getter for: Lcom/htc/album/helper/OnlineDeleteManager;->mAdapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;
    invoke-static {v0}, Lcom/htc/album/helper/OnlineDeleteManager;->access$200(Lcom/htc/album/helper/OnlineDeleteManager;)Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_SINGLE$2;->this$1:Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_SINGLE;

    iget-object v0, v0, Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_SINGLE;->this$0:Lcom/htc/album/helper/OnlineDeleteManager;

    #getter for: Lcom/htc/album/helper/OnlineDeleteManager;->mAdapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;
    invoke-static {v0}, Lcom/htc/album/helper/OnlineDeleteManager;->access$200(Lcom/htc/album/helper/OnlineDeleteManager;)Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getCount()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 507
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_SINGLE$2;->this$1:Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_SINGLE;

    iget-object v0, v0, Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_SINGLE;->this$0:Lcom/htc/album/helper/OnlineDeleteManager;

    #setter for: Lcom/htc/album/helper/OnlineDeleteManager;->mIsDeleteAll:Z
    invoke-static {v0, v1}, Lcom/htc/album/helper/OnlineDeleteManager;->access$102(Lcom/htc/album/helper/OnlineDeleteManager;Z)Z

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_SINGLE$2;->this$1:Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_SINGLE;

    iget-object v0, v0, Lcom/htc/album/helper/OnlineDeleteManager$DLG_DELETE_SINGLE;->this$0:Lcom/htc/album/helper/OnlineDeleteManager;

    #calls: Lcom/htc/album/helper/OnlineDeleteManager;->deleteMedias()V
    invoke-static {v0}, Lcom/htc/album/helper/OnlineDeleteManager;->access$300(Lcom/htc/album/helper/OnlineDeleteManager;)V

    .line 510
    return-void
.end method
