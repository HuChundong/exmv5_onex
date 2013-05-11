.class Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$2;
.super Ljava/lang/Object;
.source "ExpandableGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setChildMediaList(Lcom/htc/sunnyCore/IMediaList;Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)V
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
    .line 1984
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$2;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1986
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$2;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mIsAnimationOn:Z
    invoke-static {v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$700(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1987
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$2;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildsCount:I
    invoke-static {v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$800(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1988
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$2;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    const/4 v1, 0x1

    #calls: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->doFakeOnLayout(I)V
    invoke-static {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$600(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;I)V

    .line 1998
    :goto_0
    return-void

    .line 1991
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$2;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #setter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mAnimationRunning:Z
    invoke-static {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$002(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;Z)Z

    .line 1992
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$2;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #calls: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->doFakeOnLayout(I)V
    invoke-static {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$600(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;I)V

    goto :goto_0

    .line 1996
    :cond_1
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$2;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->requestLayout()V

    goto :goto_0
.end method
