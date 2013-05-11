.class Lcom/htc/album/helper/FileOperationTask$3;
.super Ljava/lang/Object;
.source "FileOperationTask.java"

# interfaces
.implements Lcom/htc/album/helper/FileOperationDialogManager$IDuplicateWarningDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/FileOperationTask;->initDuplicateFileWarningDialog()V
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
    .line 185
    iput-object p1, p0, Lcom/htc/album/helper/FileOperationTask$3;->this$0:Lcom/htc/album/helper/FileOperationTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationTask$3;->this$0:Lcom/htc/album/helper/FileOperationTask;

    #getter for: Lcom/htc/album/helper/FileOperationTask;->mLocker:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationTask;->access$200(Lcom/htc/album/helper/FileOperationTask;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationTask$3;->this$0:Lcom/htc/album/helper/FileOperationTask;

    const/4 v2, 0x0

    #setter for: Lcom/htc/album/helper/FileOperationTask;->mIsConfirm:Z
    invoke-static {v0, v2}, Lcom/htc/album/helper/FileOperationTask;->access$302(Lcom/htc/album/helper/FileOperationTask;Z)Z

    .line 216
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationTask$3;->this$0:Lcom/htc/album/helper/FileOperationTask;

    #getter for: Lcom/htc/album/helper/FileOperationTask;->mLocker:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationTask;->access$200(Lcom/htc/album/helper/FileOperationTask;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 217
    monitor-exit v1

    .line 218
    return-void

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onConfirm(Z)V
    .locals 3
    .parameter "isApplyToAll"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationTask$3;->this$0:Lcom/htc/album/helper/FileOperationTask;

    #getter for: Lcom/htc/album/helper/FileOperationTask;->mLocker:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationTask;->access$200(Lcom/htc/album/helper/FileOperationTask;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationTask$3;->this$0:Lcom/htc/album/helper/FileOperationTask;

    const/4 v2, 0x1

    #setter for: Lcom/htc/album/helper/FileOperationTask;->mIsConfirm:Z
    invoke-static {v0, v2}, Lcom/htc/album/helper/FileOperationTask;->access$302(Lcom/htc/album/helper/FileOperationTask;Z)Z

    .line 193
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationTask$3;->this$0:Lcom/htc/album/helper/FileOperationTask;

    #setter for: Lcom/htc/album/helper/FileOperationTask;->mIsApplyToAll:Z
    invoke-static {v0, p1}, Lcom/htc/album/helper/FileOperationTask;->access$402(Lcom/htc/album/helper/FileOperationTask;Z)Z

    .line 195
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationTask$3;->this$0:Lcom/htc/album/helper/FileOperationTask;

    #getter for: Lcom/htc/album/helper/FileOperationTask;->mLocker:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationTask;->access$200(Lcom/htc/album/helper/FileOperationTask;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 196
    monitor-exit v1

    .line 197
    return-void

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDismiss()V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public onSkip(Z)V
    .locals 3
    .parameter "isApplyToAll"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationTask$3;->this$0:Lcom/htc/album/helper/FileOperationTask;

    #getter for: Lcom/htc/album/helper/FileOperationTask;->mLocker:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationTask;->access$200(Lcom/htc/album/helper/FileOperationTask;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationTask$3;->this$0:Lcom/htc/album/helper/FileOperationTask;

    #setter for: Lcom/htc/album/helper/FileOperationTask;->mIsApplyToAll:Z
    invoke-static {v0, p1}, Lcom/htc/album/helper/FileOperationTask;->access$402(Lcom/htc/album/helper/FileOperationTask;Z)Z

    .line 205
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationTask$3;->this$0:Lcom/htc/album/helper/FileOperationTask;

    const/4 v2, 0x1

    #setter for: Lcom/htc/album/helper/FileOperationTask;->mIsSkip:Z
    invoke-static {v0, v2}, Lcom/htc/album/helper/FileOperationTask;->access$502(Lcom/htc/album/helper/FileOperationTask;Z)Z

    .line 206
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationTask$3;->this$0:Lcom/htc/album/helper/FileOperationTask;

    #getter for: Lcom/htc/album/helper/FileOperationTask;->mLocker:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationTask;->access$200(Lcom/htc/album/helper/FileOperationTask;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 207
    monitor-exit v1

    .line 208
    return-void

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
