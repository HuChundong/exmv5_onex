.class public Lcom/htc/album/modules/ui/widget/IconButton;
.super Lcom/htc/album/modules/ui/widget/ControlButton;
.source "IconButton.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/modules/ui/widget/ControlButton",
        "<",
        "Lcom/htc/widget/HtcIconButton;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/htc/widget/HtcIconButton;III)V
    .locals 0
    .parameter "btn"
    .parameter "groupId"
    .parameter "btnId"
    .parameter "style"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/album/modules/ui/widget/ControlButton;-><init>(Landroid/view/View;III)V

    .line 19
    return-void
.end method


# virtual methods
.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 44
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcIconButton;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 36
    if-gtz p1, :cond_0

    .line 40
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcIconButton;->setIconResource(I)V

    goto :goto_0
.end method

.method public setTextResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 23
    if-gtz p1, :cond_0

    .line 27
    :goto_0
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcIconButton;->setText(I)V

    goto :goto_0
.end method

.method public setTextString(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcIconButton;->setText(Ljava/lang/CharSequence;)V

    .line 32
    return-void
.end method
