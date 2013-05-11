.class Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$9;
.super Ljava/lang/Object;
.source "ExpandableGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->collapseChildView(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;Z)V
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
    .line 3715
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$9;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 3717
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$9;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildsCount:I
    invoke-static {v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$800(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I

    move-result v0

    if-lez v0, :cond_3

    .line 3718
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$9;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getChildFirstVisiblePosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 3719
    invoke-static {}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "collapseChildView, Child view not visible."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3720
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$9;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mOnCollapseChildViewListener:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;
    invoke-static {v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$2500(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3721
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$9;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mOnCollapseChildViewListener:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;
    invoke-static {v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$2500(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;->onCollapseChildViewEndIRT()V

    .line 3736
    :cond_1
    :goto_0
    return-void

    .line 3725
    :cond_2
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$9;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    const/4 v1, 0x1

    #setter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mAnimationRunning:Z
    invoke-static {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$002(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;Z)Z

    .line 3726
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$9;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #setter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mCollapseChildType:I
    invoke-static {v0, v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1402(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;I)I

    .line 3727
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$9;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #calls: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->doFakeOnLayout(I)V
    invoke-static {v0, v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$600(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;I)V

    goto :goto_0

    .line 3731
    :cond_3
    invoke-static {}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "collapseChildView, No child view currently."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3732
    :cond_4
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$9;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mOnCollapseChildViewListener:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;
    invoke-static {v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$2500(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3733
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$9;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mOnCollapseChildViewListener:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;
    invoke-static {v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$2500(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;->onCollapseChildViewEndIRT()V

    goto :goto_0
.end method
