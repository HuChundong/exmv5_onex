.class Lcom/htc/album/helper/FileOperationTask$1;
.super Landroid/os/Handler;
.source "FileOperationTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/FileOperationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/helper/FileOperationTask;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/FileOperationTask;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/htc/album/helper/FileOperationTask$1;->this$0:Lcom/htc/album/helper/FileOperationTask;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 88
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 98
    :goto_0
    return-void

    .line 91
    :pswitch_0
    const/4 v0, 0x0

    .line 92
    .local v0, path:Ljava/lang/String;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 93
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #path:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 94
    .restart local v0       #path:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/htc/album/helper/FileOperationTask$1;->this$0:Lcom/htc/album/helper/FileOperationTask;

    #getter for: Lcom/htc/album/helper/FileOperationTask;->mDuplicateFileWarningDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
    invoke-static {v1}, Lcom/htc/album/helper/FileOperationTask;->access$000(Lcom/htc/album/helper/FileOperationTask;)Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    move-result-object v1

    check-cast v1, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;

    invoke-virtual {v1, v0}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;->setFilePath(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/htc/album/helper/FileOperationTask$1;->this$0:Lcom/htc/album/helper/FileOperationTask;

    #getter for: Lcom/htc/album/helper/FileOperationTask;->mDuplicateFileWarningDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
    invoke-static {v1}, Lcom/htc/album/helper/FileOperationTask;->access$000(Lcom/htc/album/helper/FileOperationTask;)Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/helper/FileOperationTask$1;->this$0:Lcom/htc/album/helper/FileOperationTask;

    #getter for: Lcom/htc/album/helper/FileOperationTask;->mFragment:Landroid/app/Fragment;
    invoke-static {v2}, Lcom/htc/album/helper/FileOperationTask;->access$100(Lcom/htc/album/helper/FileOperationTask;)Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "FileOperationTask"

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x22120
        :pswitch_0
    .end packed-switch
.end method
