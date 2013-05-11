.class Landroid/webkit/WebViewClassic$SelectionHandler;
.super Landroid/os/Handler;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionHandler"
.end annotation


# static fields
.field public static final SHOW_LR_HANDLE:I = 0x54e

.field public static final SHOW_LR_HANDLE_OUTTER:I = 0x54f

.field public static final SHOW_QUICKACTION:I = 0x54d

.field public static final SHOW_QUICKACTION_AFTER_HITTEST:I = 0x550

.field public static final SHOW_SINGLE_TAP_QUICKACTION:I = 0x551


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method private constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter

    .prologue
    .line 11526
    iput-object p1, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewClassic$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11526
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic$SelectionHandler;-><init>(Landroid/webkit/WebViewClassic;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v8, 0x4

    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 11535
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v9, 0x551

    if-ne v6, v9, :cond_2

    .line 11536
    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectingText:Z
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$500(Landroid/webkit/WebViewClassic;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 11537
    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->syncSelectionCursors()V

    .line 11538
    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->resetCaretTimer()V
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$8200(Landroid/webkit/WebViewClassic;)V

    .line 11541
    :cond_0
    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$8000(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuickActionsHelper;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$8000(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuickActionsHelper;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/QuickActionsHelper;->isShowing()Z

    move-result v6

    if-nez v6, :cond_1

    .line 11542
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 11543
    .local v2, rect:Landroid/graphics/Rect;
    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6, v2}, Landroid/webkit/WebViewClassic;->getRectForQuickAction(Landroid/graphics/Rect;)V

    .line 11544
    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$8000(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuickActionsHelper;

    move-result-object v6

    iget-object v7, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$100(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Landroid/webkit/QuickActionsHelper;->showQuickAction(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 11595
    .end local v2           #rect:Landroid/graphics/Rect;
    :cond_1
    :goto_0
    return-void

    .line 11548
    :cond_2
    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectingText:Z
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$500(Landroid/webkit/WebViewClassic;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 11550
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 11552
    :pswitch_0
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eq v6, v10, :cond_3

    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$8000(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuickActionsHelper;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$8000(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuickActionsHelper;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/QuickActionsHelper;->isShowing()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_3
    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v6, v6, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v6, :cond_1

    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectionStarted:Z
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$10200(Landroid/webkit/WebViewClassic;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 11554
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 11555
    .restart local v2       #rect:Landroid/graphics/Rect;
    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6, v2}, Landroid/webkit/WebViewClassic;->getRectForQuickAction(Landroid/graphics/Rect;)V

    .line 11556
    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$8000(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuickActionsHelper;

    move-result-object v6

    iget-object v7, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$100(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Landroid/webkit/QuickActionsHelper;->showQuickAction(Landroid/graphics/Rect;Landroid/view/View;)V

    goto :goto_0

    .line 11562
    .end local v2           #rect:Landroid/graphics/Rect;
    :pswitch_1
    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->showSelectionPopupAnchors()V

    goto :goto_0

    .line 11566
    :pswitch_2
    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v6, v6, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v6, :cond_1

    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectionStarted:Z
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$10200(Landroid/webkit/WebViewClassic;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 11567
    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v9, v6, Landroid/webkit/WebViewClassic;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mCanShowPrior:Z
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$10300(Landroid/webkit/WebViewClassic;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Lcom/htc/textselection/SelectionAnchor;->setVisibility(I)V

    .line 11568
    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v6, v6, Landroid/webkit/WebViewClassic;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    iget-object v9, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mCanShowPost:Z
    invoke-static {v9}, Landroid/webkit/WebViewClassic;->access$10400(Landroid/webkit/WebViewClassic;)Z

    move-result v9

    if-eqz v9, :cond_5

    :goto_2
    invoke-virtual {v6, v7}, Lcom/htc/textselection/SelectionAnchor;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    move v6, v8

    .line 11567
    goto :goto_1

    :cond_5
    move v7, v8

    .line 11568
    goto :goto_2

    .line 11573
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 11574
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v6, "url"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 11575
    .local v5, url:Ljava/lang/String;
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_6

    .line 11577
    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    new-instance v7, Landroid/webkit/WebView$HitTestResult;

    invoke-direct {v7}, Landroid/webkit/WebView$HitTestResult;-><init>()V

    #setter for: Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;
    invoke-static {v6, v7}, Landroid/webkit/WebViewClassic;->access$10502(Landroid/webkit/WebViewClassic;Landroid/webkit/WebView$HitTestResult;)Landroid/webkit/WebView$HitTestResult;

    .line 11578
    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->setHitTestTypeFromUrl(Ljava/lang/String;)V
    invoke-static {v6, v5}, Landroid/webkit/WebViewClassic;->access$10600(Landroid/webkit/WebViewClassic;Ljava/lang/String;)V

    .line 11587
    :goto_3
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 11588
    .local v3, starttime:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    long-to-int v6, v6

    rsub-int/lit8 v1, v6, 0x64

    .line 11589
    .local v1, delay:I
    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6, v1, v10}, Landroid/webkit/WebViewClassic;->showSingleTapAction(IZ)Z

    goto/16 :goto_0

    .line 11584
    .end local v1           #delay:I
    .end local v3           #starttime:J
    :cond_6
    iget-object v6, p0, Landroid/webkit/WebViewClassic$SelectionHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v7, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;
    invoke-static {v6, v7}, Landroid/webkit/WebViewClassic;->access$10502(Landroid/webkit/WebViewClassic;Landroid/webkit/WebView$HitTestResult;)Landroid/webkit/WebView$HitTestResult;

    goto :goto_3

    .line 11550
    :pswitch_data_0
    .packed-switch 0x54d
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
