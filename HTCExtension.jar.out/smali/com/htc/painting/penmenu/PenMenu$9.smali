.class Lcom/htc/painting/penmenu/PenMenu$9;
.super Ljava/lang/Object;
.source "PenMenu.java"

# interfaces
.implements Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu/PenMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/painting/penmenu/PenMenu;


# direct methods
.method constructor <init>(Lcom/htc/painting/penmenu/PenMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 2511
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenMenu$9;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStrokeBegin(Lcom/htc/painting/engine/StrokeEventArg$StrokeMoveEventArg;)V
    .locals 6
    .parameter "e"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2523
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$9;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/PenMenu;->dismissPrompt()V

    .line 2525
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$9;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;
    invoke-static {v3}, Lcom/htc/painting/penmenu/PenMenu;->access$1700(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/Pen;

    move-result-object v3

    if-nez v3, :cond_1

    .line 2526
    const-string v3, "PenMenu"

    const-string v4, "OnStrokeListener.onStrokeBegin - Please call restoreSetting first"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2568
    :cond_0
    :goto_0
    return-void

    .line 2530
    :cond_1
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$9;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #calls: Lcom/htc/painting/penmenu/PenMenu;->onPainting()V
    invoke-static {v3}, Lcom/htc/painting/penmenu/PenMenu;->access$1800(Lcom/htc/painting/penmenu/PenMenu;)V

    .line 2532
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$9;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #calls: Lcom/htc/painting/penmenu/PenMenu;->getPaintingViewUndoRedo()V
    invoke-static {v3}, Lcom/htc/painting/penmenu/PenMenu;->access$1000(Lcom/htc/painting/penmenu/PenMenu;)V

    .line 2534
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$9;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v3, v4}, Lcom/htc/painting/penmenu/PenMenu;->setStrokeVisibleState(I)V

    .line 2536
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$9;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mIsEraserMode:Z
    invoke-static {v3}, Lcom/htc/painting/penmenu/PenMenu;->access$1900(Lcom/htc/painting/penmenu/PenMenu;)Z

    move-result v3

    if-ne v3, v4, :cond_2

    .line 2537
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    .line 2538
    const-string v3, "PenMenu"

    const-string v4, "OnStrokeListener.onStrokeBegin - in eraser mode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2543
    :cond_2
    const/4 v0, 0x0

    .line 2544
    .local v0, isEraser:Z
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$9;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;
    invoke-static {v3}, Lcom/htc/painting/penmenu/PenMenu;->access$1700(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/Pen;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/htc/painting/penmenu/Pen;->setUsed(Z)V

    .line 2545
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$9;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/PenMenu;->getCurrentPenType()I

    move-result v1

    .line 2546
    .local v1, penId:I
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$9;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v3, v1}, Lcom/htc/painting/penmenu/PenMenu;->getPenTypeItem(I)Lcom/htc/painting/penmenu/menu/PenTypeItem;

    move-result-object v2

    .line 2547
    .local v2, penTypeItem:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getPenType()Lcom/htc/painting/penmenu/PenType;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2548
    invoke-virtual {v2}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getPenType()Lcom/htc/painting/penmenu/PenType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/PenType;->isEraser()Z

    move-result v0

    .line 2553
    if-eqz v0, :cond_4

    .line 2554
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$9;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mWarningEraserForFirstStroke:Z
    invoke-static {v3}, Lcom/htc/painting/penmenu/PenMenu;->access$2000(Lcom/htc/painting/penmenu/PenMenu;)Z

    move-result v3

    if-ne v3, v4, :cond_3

    .line 2555
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$9;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #setter for: Lcom/htc/painting/penmenu/PenMenu;->mWarningEraserForFirstStroke:Z
    invoke-static {v3, v5}, Lcom/htc/painting/penmenu/PenMenu;->access$2002(Lcom/htc/painting/penmenu/PenMenu;Z)Z

    .line 2556
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$9;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x20403bb

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 2562
    :cond_3
    :goto_1
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    .line 2563
    const-string v3, "PenMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OnStrokeListener.onStrokeBegin - current pen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", color: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/painting/penmenu/PenMenu$9;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v5}, Lcom/htc/painting/penmenu/PenMenu;->getCurrentPenColor()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/painting/penmenu/PenMenu$9;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v5}, Lcom/htc/painting/penmenu/PenMenu;->getCurrentPenSizeId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2559
    :cond_4
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$9;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #setter for: Lcom/htc/painting/penmenu/PenMenu;->mWarningEraserForFirstStroke:Z
    invoke-static {v3, v5}, Lcom/htc/painting/penmenu/PenMenu;->access$2002(Lcom/htc/painting/penmenu/PenMenu;Z)Z

    goto :goto_1
.end method

.method public onStrokeEnd(Lcom/htc/painting/engine/StrokeEventArg$StrokeMoveEventArg;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 2519
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$9;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #calls: Lcom/htc/painting/penmenu/PenMenu;->getPaintingViewUndoRedo()V
    invoke-static {v0}, Lcom/htc/painting/penmenu/PenMenu;->access$1000(Lcom/htc/painting/penmenu/PenMenu;)V

    .line 2520
    return-void
.end method

.method public onStrokeStatusChange(Lcom/htc/painting/engine/StrokeEventArg$StrokeStatusChangeEventArg;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 2515
    return-void
.end method
