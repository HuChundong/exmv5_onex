.class public Lcom/htc/album/modules/ui/widget/BurstShotButton;
.super Lcom/htc/album/modules/ui/widget/ControlBase;
.source "BurstShotButton.java"


# instance fields
.field private mParams:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const v0, 0x7f030017

    const/4 v1, -0x2

    .line 19
    invoke-direct {p0, v0, p1, v0}, Lcom/htc/album/modules/ui/widget/ControlBase;-><init>(ILandroid/content/Context;I)V

    .line 15
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/BurstShotButton;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 21
    return-void
.end method


# virtual methods
.method public attach(Landroid/view/ViewGroup;I)V
    .locals 2
    .parameter "root"
    .parameter "anchor"

    .prologue
    .line 25
    if-nez p1, :cond_0

    .line 31
    :goto_0
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBase;->mRoot:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BurstShotButton;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 30
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBase;->mRoot:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BurstShotButton;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public detach()V
    .locals 2

    .prologue
    .line 35
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlBase;->mRoot:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 36
    .local v0, root:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 37
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlBase;->mRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 38
    :cond_0
    return-void
.end method

.method public getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BurstShotButton;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method

.method public setBackgroundResId(I)V
    .locals 1
    .parameter "iBgResId"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBase;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBase;->mRoot:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 53
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBase;->mRoot:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    return-void
.end method
