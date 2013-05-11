.class Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$7;
.super Ljava/lang/Object;
.source "ExpandableGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->prepareDeleteAllChildView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;


# direct methods
.method constructor <init>(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)V
    .locals 0
    .parameter

    .prologue
    .line 3315
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$7;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3317
    invoke-static {}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doFakeOnLayout, prepareDeleteAllChildView, mChildsCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$7;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildsCount:I
    invoke-static {v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$800(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3318
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$7;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildsCount:I
    invoke-static {v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$800(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I

    move-result v0

    if-lez v0, :cond_1

    .line 3319
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$7;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    const/4 v1, 0x1

    #setter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mAnimationRunning:Z
    invoke-static {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$002(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;Z)Z

    .line 3320
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$7;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    const/4 v1, 0x2

    #calls: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->doFakeOnLayout(I)V
    invoke-static {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$600(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;I)V

    .line 3327
    :cond_0
    :goto_0
    return-void

    .line 3323
    :cond_1
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$7;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mOnPrepareListener:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;
    invoke-static {v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$2000(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3324
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$7;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mOnPrepareListener:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;
    invoke-static {v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$2000(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$7;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mOriginalDeleteAllParentIdx:I
    invoke-static {v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$2100(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$7;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mAdjustedDeleteAllParentIdx:I
    invoke-static {v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$2200(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;->onDeleteAllChildsReadyIRT(II)V

    goto :goto_0
.end method
