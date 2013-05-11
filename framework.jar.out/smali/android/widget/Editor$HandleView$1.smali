.class Landroid/widget/Editor$HandleView$1;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$HandleView;->showActionPopupWindow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$HandleView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/widget/Editor$HandleView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4401
    iput-object p1, p0, Landroid/widget/Editor$HandleView$1;->this$1:Landroid/widget/Editor$HandleView;

    iput-object p2, p0, Landroid/widget/Editor$HandleView$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 4404
    iget-object v0, p0, Landroid/widget/Editor$HandleView$1;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4405
    iget-object v0, p0, Landroid/widget/Editor$HandleView$1;->this$1:Landroid/widget/Editor$HandleView;

    iget-boolean v0, v0, Landroid/widget/Editor$HandleView;->mIsInsertionHandle:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$HandleView$1;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$HandleView$1;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 4406
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView$1;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v0, v0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    iget-object v1, p0, Landroid/widget/Editor$HandleView$1;->val$view:Landroid/view/View;

    iget-object v2, p0, Landroid/widget/Editor$HandleView$1;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v2, v2, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mMenuWrapper:Landroid/widget/Editor$MenuWrapper;
    invoke-static {v2}, Landroid/widget/Editor;->access$2700(Landroid/widget/Editor;)Landroid/widget/Editor$MenuWrapper;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$HandleView$1;->this$1:Landroid/widget/Editor$HandleView;

    #getter for: Landroid/widget/Editor$HandleView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/widget/Editor$HandleView;->access$2800(Landroid/widget/Editor$HandleView;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/Editor$HandleView$1;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v4, v4, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->canPaste()Z

    move-result v4

    iget-object v5, p0, Landroid/widget/Editor$HandleView$1;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v5, v5, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->length()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, p0, Landroid/widget/Editor$HandleView$1;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v5, v5, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mIsLongPressed:Z
    invoke-static {v5}, Landroid/widget/Editor;->access$2900(Landroid/widget/Editor;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_0
    invoke-virtual/range {v0 .. v5}, Lcom/htc/textselection/HtcTextSelectionManager;->prepareHtcPasteWindow(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/content/Context;ZZ)V

    .line 4407
    iget-object v0, p0, Landroid/widget/Editor$HandleView$1;->this$1:Landroid/widget/Editor$HandleView;

    #getter for: Landroid/widget/Editor$HandleView;->mIsDragging:Z
    invoke-static {v0}, Landroid/widget/Editor$HandleView;->access$3000(Landroid/widget/Editor$HandleView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$HandleView$1;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->showQuickAction()V
    invoke-static {v0}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)V

    .line 4411
    :cond_1
    :goto_1
    return-void

    .line 4406
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 4410
    :cond_3
    iget-object v0, p0, Landroid/widget/Editor$HandleView$1;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$ActionPopupWindow;->show()V

    goto :goto_1
.end method
