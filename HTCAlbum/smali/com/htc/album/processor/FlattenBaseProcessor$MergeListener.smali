.class Lcom/htc/album/processor/FlattenBaseProcessor$MergeListener;
.super Ljava/lang/Object;
.source "FlattenBaseProcessor.java"

# interfaces
.implements Lcom/htc/album/PaintManager/Interface/IPaintMergeProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/processor/FlattenBaseProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MergeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/processor/FlattenBaseProcessor;


# direct methods
.method constructor <init>(Lcom/htc/album/processor/FlattenBaseProcessor;)V
    .locals 0
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/htc/album/processor/FlattenBaseProcessor$MergeListener;->this$0:Lcom/htc/album/processor/FlattenBaseProcessor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMergeBegin()V
    .locals 0

    .prologue
    .line 355
    return-void
.end method

.method public onMergeEnd()V
    .locals 2

    .prologue
    .line 364
    iget-object v1, p0, Lcom/htc/album/processor/FlattenBaseProcessor$MergeListener;->this$0:Lcom/htc/album/processor/FlattenBaseProcessor;

    iget-object v0, p0, Lcom/htc/album/processor/FlattenBaseProcessor$MergeListener;->this$0:Lcom/htc/album/processor/FlattenBaseProcessor;

    iget-object v0, v0, Lcom/htc/album/processor/FlattenBaseProcessor;->mPaintMergeTool:Lcom/htc/album/PaintManager/HtcPaintMergeTool;

    invoke-virtual {v0}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, v1, Lcom/htc/album/processor/FlattenBaseProcessor;->mConvertedInkBitmap:Landroid/graphics/Bitmap;

    .line 365
    iget-object v1, p0, Lcom/htc/album/processor/FlattenBaseProcessor$MergeListener;->this$0:Lcom/htc/album/processor/FlattenBaseProcessor;

    monitor-enter v1

    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/htc/album/processor/FlattenBaseProcessor$MergeListener;->this$0:Lcom/htc/album/processor/FlattenBaseProcessor;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 368
    monitor-exit v1

    .line 369
    return-void

    .line 368
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
    .line 360
    return-void
.end method
