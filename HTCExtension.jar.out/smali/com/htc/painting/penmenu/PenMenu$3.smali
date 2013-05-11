.class Lcom/htc/painting/penmenu/PenMenu$3;
.super Ljava/lang/Object;
.source "PenMenu.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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
    .line 448
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenMenu$3;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 451
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 452
    const-string v0, "PenMenu"

    const-string v1, "MoveInAnimListener.onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$3;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    sget-object v1, Lcom/htc/painting/penmenu/PenMenu$State;->SHOW:Lcom/htc/painting/penmenu/PenMenu$State;

    #calls: Lcom/htc/painting/penmenu/PenMenu;->setStateVisible(Lcom/htc/painting/penmenu/PenMenu$State;)V
    invoke-static {v0, v1}, Lcom/htc/painting/penmenu/PenMenu;->access$000(Lcom/htc/painting/penmenu/PenMenu;Lcom/htc/painting/penmenu/PenMenu$State;)V

    .line 456
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$3;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mMenuState:Lcom/htc/painting/penmenu/menu/Menu$State;
    invoke-static {v0}, Lcom/htc/painting/penmenu/PenMenu;->access$300(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/menu/Menu$State;

    move-result-object v0

    sget-object v1, Lcom/htc/painting/penmenu/menu/Menu$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Menu$State;

    if-ne v0, v1, :cond_1

    .line 457
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$3;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;
    invoke-static {v0}, Lcom/htc/painting/penmenu/PenMenu;->access$400(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/history/PenHistory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/history/PenHistory;->show(Z)V

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$3;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    const/4 v1, 0x0

    #setter for: Lcom/htc/painting/penmenu/PenMenu;->mAnimInProgress:Z
    invoke-static {v0, v1}, Lcom/htc/painting/penmenu/PenMenu;->access$102(Lcom/htc/painting/penmenu/PenMenu;Z)Z

    .line 460
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$3;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mStateMonitor:Lcom/htc/painting/penmenu/PenMenu$StateMonitor;
    invoke-static {v0}, Lcom/htc/painting/penmenu/PenMenu;->access$200(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/PenMenu$StateMonitor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 461
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$3;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mStateMonitor:Lcom/htc/painting/penmenu/PenMenu$StateMonitor;
    invoke-static {v0}, Lcom/htc/painting/penmenu/PenMenu;->access$200(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/PenMenu$StateMonitor;

    move-result-object v0

    sget-object v1, Lcom/htc/painting/penmenu/PenMenu$State;->SHOW:Lcom/htc/painting/penmenu/PenMenu$State;

    invoke-interface {v0, v1}, Lcom/htc/painting/penmenu/PenMenu$StateMonitor;->OnChanged(Lcom/htc/painting/penmenu/PenMenu$State;)V

    .line 464
    :cond_2
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$3;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    new-instance v1, Lcom/htc/painting/penmenu/PenMenu$3$1;

    invoke-direct {v1, p0}, Lcom/htc/painting/penmenu/PenMenu$3$1;-><init>(Lcom/htc/painting/penmenu/PenMenu$3;)V

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/PenMenu;->post(Ljava/lang/Runnable;)Z

    .line 484
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 488
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 8
    .parameter "animation"

    .prologue
    const/4 v7, 0x0

    .line 491
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_0

    .line 492
    const-string v4, "PenMenu"

    const-string v5, "MoveInAnimListener.onAnimationStart"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_0
    iget-object v4, p0, Lcom/htc/painting/penmenu/PenMenu$3;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mMenuState:Lcom/htc/painting/penmenu/menu/Menu$State;
    invoke-static {v4}, Lcom/htc/painting/penmenu/PenMenu;->access$300(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/menu/Menu$State;

    move-result-object v4

    sget-object v5, Lcom/htc/painting/penmenu/menu/Menu$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Menu$State;

    if-ne v4, v5, :cond_1

    .line 495
    iget-object v4, p0, Lcom/htc/painting/penmenu/PenMenu$3;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;
    invoke-static {v4}, Lcom/htc/painting/penmenu/PenMenu;->access$500(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/action/ActionPanel;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/painting/penmenu/action/ActionPanel;->setVisibility(I)V

    .line 499
    :cond_1
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 500
    .local v2, canvas:Landroid/graphics/Canvas;
    iget-object v4, p0, Lcom/htc/painting/penmenu/PenMenu$3;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v4}, Lcom/htc/painting/penmenu/PenMenu;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/htc/painting/penmenu/PenMenu$3;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v5}, Lcom/htc/painting/penmenu/PenMenu;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 501
    .local v1, cache:Landroid/graphics/Bitmap;
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 502
    iget-object v4, p0, Lcom/htc/painting/penmenu/PenMenu$3;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v4, v2}, Lcom/htc/painting/penmenu/PenMenu;->draw(Landroid/graphics/Canvas;)V

    .line 504
    iget-object v4, p0, Lcom/htc/painting/penmenu/PenMenu$3;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    sget-object v5, Lcom/htc/painting/penmenu/PenMenu$State;->HIDE:Lcom/htc/painting/penmenu/PenMenu$State;

    #calls: Lcom/htc/painting/penmenu/PenMenu;->setStateVisible(Lcom/htc/painting/penmenu/PenMenu$State;)V
    invoke-static {v4, v5}, Lcom/htc/painting/penmenu/PenMenu;->access$000(Lcom/htc/painting/penmenu/PenMenu;Lcom/htc/painting/penmenu/PenMenu$State;)V

    .line 506
    iget-object v4, p0, Lcom/htc/painting/penmenu/PenMenu$3;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v4}, Lcom/htc/painting/penmenu/PenMenu;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/htc/painting/penmenu/PenMenu$3;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v5}, Lcom/htc/painting/penmenu/PenMenu;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 507
    .local v0, blurredImage:Landroid/graphics/Bitmap;
    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 508
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 509
    .local v3, paint:Landroid/graphics/Paint;
    const/16 v4, 0xc0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 510
    new-instance v4, Landroid/graphics/BlurMaskFilter;

    iget-object v5, p0, Lcom/htc/painting/penmenu/PenMenu$3;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v5}, Lcom/htc/painting/penmenu/PenMenu;->getSize()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sget-object v6, Landroid/graphics/BlurMaskFilter$Blur;->INNER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v4, v5, v6}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 512
    invoke-virtual {v2, v1, v7, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 514
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 515
    const/4 v1, 0x0

    .line 517
    iget-object v4, p0, Lcom/htc/painting/penmenu/PenMenu$3;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu$3;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v6}, Lcom/htc/painting/penmenu/PenMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Lcom/htc/painting/penmenu/PenMenu;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 518
    return-void
.end method
