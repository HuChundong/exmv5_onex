.class Lcom/htc/album/helper/ImageProcessManager$ProcessThread$MergeListener;
.super Ljava/lang/Object;
.source "ImageProcessManager.java"

# interfaces
.implements Lcom/htc/album/PaintManager/Interface/IPaintMergeProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/ImageProcessManager$ProcessThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MergeListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/helper/ImageProcessManager$ProcessThread;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/ImageProcessManager$ProcessThread;)V
    .locals 0
    .parameter

    .prologue
    .line 1029
    iput-object p1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$MergeListener;->this$1:Lcom/htc/album/helper/ImageProcessManager$ProcessThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMergeBegin()V
    .locals 0

    .prologue
    .line 1034
    return-void
.end method

.method public onMergeEnd()V
    .locals 3

    .prologue
    .line 1043
    iget-object v1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$MergeListener;->this$1:Lcom/htc/album/helper/ImageProcessManager$ProcessThread;

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$MergeListener;->this$1:Lcom/htc/album/helper/ImageProcessManager$ProcessThread;

    iget-object v0, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mPaintMergeTool:Lcom/htc/album/PaintManager/HtcPaintMergeTool;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$700(Lcom/htc/album/helper/ImageProcessManager;)Lcom/htc/album/PaintManager/HtcPaintMergeTool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    #setter for: Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;
    invoke-static {v1, v0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->access$602(Lcom/htc/album/helper/ImageProcessManager$ProcessThread;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1044
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ImageProcessManager][MergeListener][onMergeEnd]currentProcessedBMP = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$MergeListener;->this$1:Lcom/htc/album/helper/ImageProcessManager$ProcessThread;

    #getter for: Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->access$600(Lcom/htc/album/helper/ImageProcessManager$ProcessThread;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    :cond_0
    iget-object v1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$MergeListener;->this$1:Lcom/htc/album/helper/ImageProcessManager$ProcessThread;

    monitor-enter v1

    .line 1047
    :try_start_0
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$MergeListener;->this$1:Lcom/htc/album/helper/ImageProcessManager$ProcessThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1048
    monitor-exit v1

    .line 1049
    return-void

    .line 1048
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onMerged(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 1039
    return-void
.end method
