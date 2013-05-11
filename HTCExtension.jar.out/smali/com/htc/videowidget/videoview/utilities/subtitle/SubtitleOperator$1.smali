.class Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$1;
.super Ljava/lang/Object;
.source "SubtitleOperator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)V
    .locals 0
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 274
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #calls: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->binarySearchSubtitle()I
    invoke-static {v1}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$100(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)I

    move-result v1

    #setter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mCurrentIndex:I
    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$002(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;I)I

    .line 275
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$200(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$200(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$200(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->access$200(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 282
    :cond_1
    return-void
.end method
