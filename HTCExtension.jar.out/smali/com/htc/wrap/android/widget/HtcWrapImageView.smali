.class public Lcom/htc/wrap/android/widget/HtcWrapImageView;
.super Landroid/widget/ImageView;
.source "HtcWrapImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method

.method public static setImageBitmapWithoutRelayout(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "obj"
    .parameter "bm"

    .prologue
    .line 68
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmapWithoutRelayout(Landroid/graphics/Bitmap;)V

    .line 69
    :cond_0
    return-void
.end method

.method public static setImageDrawableWithoutRelayout(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "obj"
    .parameter "drawable"

    .prologue
    .line 55
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawableWithoutRelayout(Landroid/graphics/drawable/Drawable;)V

    .line 56
    :cond_0
    return-void
.end method

.method public static setImageResourceWithoutRelayout(Landroid/widget/ImageView;I)V
    .locals 0
    .parameter "obj"
    .parameter "resId"

    .prologue
    .line 42
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResourceWithoutRelayout(I)V

    .line 43
    :cond_0
    return-void
.end method
