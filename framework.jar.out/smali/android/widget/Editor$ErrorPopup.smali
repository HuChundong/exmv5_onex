.class Landroid/widget/Editor$ErrorPopup;
.super Landroid/widget/PopupWindow;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ErrorPopup"
.end annotation


# instance fields
.field private mAbove:Z

.field private mPopupInlineErrorAboveBackgroundId:I

.field private mPopupInlineErrorBackgroundId:I

.field private final mView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;II)V
    .locals 2
    .parameter "v"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v0, 0x0

    .line 5908
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 5902
    iput-boolean v0, p0, Landroid/widget/Editor$ErrorPopup;->mAbove:Z

    .line 5904
    iput v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    .line 5905
    iput v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorAboveBackgroundId:I

    .line 5909
    iput-object p1, p0, Landroid/widget/Editor$ErrorPopup;->mView:Landroid/widget/TextView;

    .line 5913
    iget v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    const/16 v1, 0xda

    invoke-direct {p0, v0, v1}, Landroid/widget/Editor$ErrorPopup;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    .line 5915
    iget-object v0, p0, Landroid/widget/Editor$ErrorPopup;->mView:Landroid/widget/TextView;

    iget v1, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 5916
    return-void
.end method

.method private getResourceId(II)I
    .locals 3
    .parameter "currentId"
    .parameter "index"

    .prologue
    .line 5935
    if-nez p1, :cond_0

    .line 5936
    iget-object v1, p0, Landroid/widget/Editor$ErrorPopup;->mView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/R$styleable;->Theme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 5938
    .local v0, styledAttributes:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 5939
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 5941
    .end local v0           #styledAttributes:Landroid/content/res/TypedArray;
    :cond_0
    return p1
.end method


# virtual methods
.method fixDirection(Z)V
    .locals 2
    .parameter "above"

    .prologue
    .line 5919
    iput-boolean p1, p0, Landroid/widget/Editor$ErrorPopup;->mAbove:Z

    .line 5921
    if-eqz p1, :cond_0

    .line 5922
    iget v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorAboveBackgroundId:I

    const/16 v1, 0xdb

    invoke-direct {p0, v0, v1}, Landroid/widget/Editor$ErrorPopup;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorAboveBackgroundId:I

    .line 5930
    :goto_0
    iget-object v1, p0, Landroid/widget/Editor$ErrorPopup;->mView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorAboveBackgroundId:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 5932
    return-void

    .line 5926
    :cond_0
    iget v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    const/16 v1, 0xda

    invoke-direct {p0, v0, v1}, Landroid/widget/Editor$ErrorPopup;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    goto :goto_0

    .line 5930
    :cond_1
    iget v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    goto :goto_1
.end method

.method public update(IIIIZ)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"
    .parameter "force"

    .prologue
    .line 5946
    invoke-super/range {p0 .. p5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 5948
    invoke-virtual {p0}, Landroid/widget/Editor$ErrorPopup;->isAboveAnchor()Z

    move-result v0

    .line 5949
    .local v0, above:Z
    iget-boolean v1, p0, Landroid/widget/Editor$ErrorPopup;->mAbove:Z

    if-eq v0, v1, :cond_0

    .line 5950
    invoke-virtual {p0, v0}, Landroid/widget/Editor$ErrorPopup;->fixDirection(Z)V

    .line 5952
    :cond_0
    return-void
.end method
