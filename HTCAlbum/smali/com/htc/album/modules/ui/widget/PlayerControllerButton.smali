.class public Lcom/htc/album/modules/ui/widget/PlayerControllerButton;
.super Lcom/htc/album/modules/ui/widget/ControlButton;
.source "PlayerControllerButton.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/modules/ui/widget/ControlButton",
        "<",
        "Lcom/htc/widget/HtcRimButton;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/htc/widget/HtcRimButton;III)V
    .locals 0
    .parameter "btn"
    .parameter "groupId"
    .parameter "btnId"
    .parameter "style"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/album/modules/ui/widget/ControlButton;-><init>(Landroid/view/View;III)V

    .line 15
    return-void
.end method


# virtual methods
.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 43
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 50
    return-void
.end method

.method public setImageResource(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 36
    return-void
.end method

.method public setTextResource(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 22
    return-void
.end method

.method public setTextString(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 29
    return-void
.end method
