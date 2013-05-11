.class Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;
.super Landroid/os/AsyncTask;
.source "FileOperationDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/FileOperationDialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FindExistedFolderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final MSG_TASK_RESULT:I

.field private mComplete:Z

.field private mHandler:Landroid/os/Handler;

.field private mLocker:Ljava/lang/Object;

.field private mStoragePath:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/album/helper/FileOperationDialogManager;


# direct methods
.method public constructor <init>(Lcom/htc/album/helper/FileOperationDialogManager;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "path"

    .prologue
    const/4 v1, 0x0

    .line 553
    iput-object p1, p0, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;->this$0:Lcom/htc/album/helper/FileOperationDialogManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 530
    const v0, 0x44230

    iput v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;->MSG_TASK_RESULT:I

    .line 531
    iput-object v1, p0, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;->mText:Ljava/lang/String;

    .line 532
    iput-object v1, p0, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;->mStoragePath:Ljava/lang/String;

    .line 533
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;->mComplete:Z

    .line 534
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;->mLocker:Ljava/lang/Object;

    .line 535
    new-instance v0, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask$1;

    invoke-direct {v0, p0}, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask$1;-><init>(Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;)V

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;->mHandler:Landroid/os/Handler;

    .line 554
    invoke-static {p2}, Lcom/htc/album/helper/FileOperationHelper;->getFileParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;->mStoragePath:Ljava/lang/String;

    .line 555
    invoke-static {p2}, Lcom/htc/album/helper/FileOperationHelper;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;->mText:Ljava/lang/String;

    .line 556
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 8
    .parameter "arg0"

    .prologue
    const/4 v7, 0x0

    .line 581
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;->mComplete:Z

    if-nez v2, :cond_0

    .line 583
    iget-object v3, p0, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;->mLocker:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 586
    .local v1, filePath:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;->mStoragePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;->mText:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 588
    .local v0, file:Ljava/io/File;
    iget-object v2, p0, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;->mText:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/album/helper/FileOperationDialogManager;->hasIllegalChars(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 589
    iget-object v2, p0, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;->mHandler:Landroid/os/Handler;

    const v5, 0x44230

    const v6, 0x24511

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 594
    :goto_1
    iget-object v2, p0, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;->mLocker:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 595
    monitor-exit v3

    goto :goto_0

    .end local v0           #file:Ljava/io/File;
    .end local v1           #filePath:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 598
    :catch_0
    move-exception v2

    .line 602
    :cond_0
    iput-boolean v7, p0, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;->mComplete:Z

    .line 603
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 590
    .restart local v0       #file:Ljava/io/File;
    .restart local v1       #filePath:Ljava/lang/StringBuilder;
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 591
    iget-object v2, p0, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;->mHandler:Landroid/os/Handler;

    const v5, 0x44230

    const v6, 0x24512

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 593
    :cond_2
    iget-object v2, p0, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;->mHandler:Landroid/os/Handler;

    const v5, 0x44230

    const v6, 0x24510

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 528
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public notifyComplete()V
    .locals 2

    .prologue
    .line 569
    iget-object v1, p0, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 571
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;->mComplete:Z

    .line 572
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;->mLocker:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 573
    monitor-exit v1

    .line 574
    return-void

    .line 573
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 617
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 618
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 609
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 610
    const-string v0, "FileOperationDialogManager"

    const-string v1, "[HTCAlbum][SceneLocalFolder][FindExistedFolderTask][onPostExecute]"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;->mLocker:Ljava/lang/Object;

    .line 612
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 528
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 560
    iput-object p1, p0, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;->mText:Ljava/lang/String;

    .line 561
    iget-object v1, p0, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 563
    :try_start_0
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;->mLocker:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 564
    monitor-exit v1

    .line 565
    return-void

    .line 564
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
