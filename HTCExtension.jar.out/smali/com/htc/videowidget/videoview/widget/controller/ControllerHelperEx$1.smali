.class Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$1;
.super Ljava/lang/Object;
.source "ControllerHelperEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->getView(Landroid/content/Context;Landroid/view/View;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

.field final synthetic val$rootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$1;->this$0:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    iput-object p2, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$1;->val$rootView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 96
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$1;->val$rootView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 98
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$1;->val$rootView:Landroid/view/View;

    const v3, 0x60b0015

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 99
    .local v0, vgFull:Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$1;->this$0:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    new-instance v3, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;

    iget-object v4, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$1;->this$0:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    #getter for: Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->access$100(Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$1;->this$0:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    #getter for: Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mIsNavigationBar:Z
    invoke-static {v5}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->access$200(Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;)Z

    move-result v5

    invoke-direct {v3, v4, v0, v5}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Z)V

    #setter for: Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mFull:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;
    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->access$002(Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;)Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    .line 101
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$1;->val$rootView:Landroid/view/View;

    const v3, 0x60b0014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 102
    .local v1, vgMini:Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 103
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$1;->this$0:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    #getter for: Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->access$100(Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "section_b_divider_top"

    const v4, 0x208011e

    invoke-static {v2, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 104
    :cond_0
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$1;->this$0:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    new-instance v3, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;

    iget-object v4, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$1;->this$0:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    #getter for: Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->access$100(Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerMini;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    #setter for: Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mMini:Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;
    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->access$302(Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;)Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;

    .line 105
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$1;->this$0:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    const/4 v3, 0x1

    #setter for: Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->mIsPrepared:Z
    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->access$402(Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;Z)Z

    .line 107
    .end local v0           #vgFull:Landroid/view/ViewGroup;
    .end local v1           #vgMini:Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method
