.class Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask$1;
.super Landroid/os/Handler;
.source "FileOperationDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;)V
    .locals 0
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask$1;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 539
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 542
    :pswitch_0
    iget-object v1, p0, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask$1;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;

    iget-object v1, v1, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;->this$0:Lcom/htc/album/helper/FileOperationDialogManager;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager;->mDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
    invoke-static {v1}, Lcom/htc/album/helper/FileOperationDialogManager;->access$900(Lcom/htc/album/helper/FileOperationDialogManager;)Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;

    if-eqz v1, :cond_0

    .line 544
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 545
    .local v0, flag:I
    iget-object v1, p0, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask$1;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;

    iget-object v1, v1, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;->this$0:Lcom/htc/album/helper/FileOperationDialogManager;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager;->mDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
    invoke-static {v1}, Lcom/htc/album/helper/FileOperationDialogManager;->access$900(Lcom/htc/album/helper/FileOperationDialogManager;)Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    move-result-object v1

    check-cast v1, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;

    invoke-virtual {v1, v0}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->setIllegalContentFlag(I)V

    goto :goto_0

    .line 539
    :pswitch_data_0
    .packed-switch 0x44230
        :pswitch_0
    .end packed-switch
.end method
