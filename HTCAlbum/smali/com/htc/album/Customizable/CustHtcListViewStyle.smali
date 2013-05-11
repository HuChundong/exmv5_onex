.class public Lcom/htc/album/Customizable/CustHtcListViewStyle;
.super Ljava/lang/Object;
.source "CustHtcListViewStyle.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isListItemPhotoFramed()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public static setDividerBackground(ILandroid/view/View;)V
    .locals 0
    .parameter "nIndex"
    .parameter "htcListViewItem"

    .prologue
    .line 47
    if-nez p1, :cond_0

    .line 55
    :cond_0
    return-void
.end method

.method public static setStyle(Landroid/content/Context;Lcom/htc/widget/HtcListView;ZZ)V
    .locals 2
    .parameter "context"
    .parameter "htcListView"
    .parameter "enableListBackground"
    .parameter "enableFastScroller"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, v1}, Lcom/htc/widget/HtcListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 16
    if-eqz p3, :cond_0

    .line 17
    invoke-virtual {p1, v1}, Lcom/htc/widget/HtcListView;->setVerticalScrollBarEnabled(Z)V

    .line 21
    :goto_0
    invoke-virtual {p1, v1}, Lcom/htc/widget/HtcListView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 22
    invoke-virtual {p1, v1}, Lcom/htc/widget/HtcListView;->setHorizontalScrollBarEnabled(Z)V

    .line 24
    if-ne v0, p2, :cond_1

    .line 25
    invoke-static {p0}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_ListViweDefaultBackground(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListView;->setBackgroundResource(I)V

    .line 30
    :goto_1
    invoke-static {p1, v1}, Lcom/htc/wrap/android/view/HtcWrapView;->setRoundedCornerEnabled(Landroid/view/View;Z)V

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_SectionDividerRest(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 33
    return-void

    .line 19
    :cond_0
    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_0

    .line 27
    :cond_1
    invoke-static {p0}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_WindowDefaultBackground(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListView;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public static setStyleNoCacheColorHint(Landroid/content/Context;Lcom/htc/widget/HtcListView;)V
    .locals 2
    .parameter "context"
    .parameter "htcListView"

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 37
    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListView;->setVerticalScrollBarEnabled(Z)V

    .line 39
    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 40
    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListView;->setHorizontalScrollBarEnabled(Z)V

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListView;->setScrollingCacheEnabled(Z)V

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_SectionDividerRest(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 44
    return-void
.end method
