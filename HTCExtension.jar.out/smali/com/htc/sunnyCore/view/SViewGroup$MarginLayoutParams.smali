.class public Lcom/htc/sunnyCore/view/SViewGroup$MarginLayoutParams;
.super Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;
.source "SViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/view/SViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarginLayoutParams"
.end annotation


# instance fields
.field public bottomMargin:I

.field public leftMargin:I

.field public rightMargin:I

.field public topMargin:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 636
    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;-><init>(II)V

    .line 637
    return-void
.end method

.method public constructor <init>(Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 658
    invoke-direct {p0, p1}, Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;-><init>(Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;)V

    .line 659
    return-void
.end method

.method public constructor <init>(Lcom/htc/sunnyCore/view/SViewGroup$MarginLayoutParams;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 644
    invoke-direct {p0}, Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;-><init>()V

    .line 645
    iget v0, p1, Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;->width:I

    .line 646
    iget v0, p1, Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;->height:I

    iput v0, p0, Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;->height:I

    .line 648
    iget v0, p1, Lcom/htc/sunnyCore/view/SViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Lcom/htc/sunnyCore/view/SViewGroup$MarginLayoutParams;->leftMargin:I

    .line 649
    iget v0, p1, Lcom/htc/sunnyCore/view/SViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Lcom/htc/sunnyCore/view/SViewGroup$MarginLayoutParams;->topMargin:I

    .line 650
    iget v0, p1, Lcom/htc/sunnyCore/view/SViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Lcom/htc/sunnyCore/view/SViewGroup$MarginLayoutParams;->rightMargin:I

    .line 651
    iget v0, p1, Lcom/htc/sunnyCore/view/SViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p0, Lcom/htc/sunnyCore/view/SViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 652
    return-void
.end method


# virtual methods
.method public setMargins(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 675
    iput p1, p0, Lcom/htc/sunnyCore/view/SViewGroup$MarginLayoutParams;->leftMargin:I

    .line 676
    iput p2, p0, Lcom/htc/sunnyCore/view/SViewGroup$MarginLayoutParams;->topMargin:I

    .line 677
    iput p3, p0, Lcom/htc/sunnyCore/view/SViewGroup$MarginLayoutParams;->rightMargin:I

    .line 678
    iput p4, p0, Lcom/htc/sunnyCore/view/SViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 679
    return-void
.end method
