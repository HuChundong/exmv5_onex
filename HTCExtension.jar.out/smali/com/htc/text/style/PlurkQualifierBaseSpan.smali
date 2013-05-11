.class public abstract Lcom/htc/text/style/PlurkQualifierBaseSpan;
.super Landroid/text/style/DynamicDrawableSpan;
.source "PlurkQualifierBaseSpan.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/text/style/DynamicDrawableSpan;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "verticalAlignment"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    .line 36
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 2
    .parameter "canvas"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "paint"

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 46
    move v0, p7

    .line 47
    .local v0, transY:I
    int-to-float v1, v0

    invoke-virtual {p1, p5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 48
    invoke-virtual {p0}, Lcom/htc/text/style/PlurkQualifierBaseSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 49
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 50
    return-void
.end method
