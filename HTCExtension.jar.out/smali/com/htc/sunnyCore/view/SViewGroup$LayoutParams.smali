.class public Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;
.super Ljava/lang/Object;
.source "SViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/view/SViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final FILL_PARENT:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MATCH_PARENT:I = -0x1

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field public height:I

.field public width:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 518
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 519
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 499
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 500
    iput p1, p0, Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;->width:I

    .line 501
    iput p2, p0, Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;->height:I

    .line 502
    return-void
.end method

.method public constructor <init>(Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 509
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 510
    iget v0, p1, Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;->width:I

    .line 511
    iget v0, p1, Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;->height:I

    iput v0, p0, Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;->height:I

    .line 512
    return-void
.end method

.method protected static sizeToString(I)Ljava/lang/String;
    .locals 1
    .parameter "size"

    .prologue
    .line 556
    const/4 v0, -0x2

    if-ne p0, v0, :cond_0

    .line 557
    const-string v0, "wrap-content"

    .line 562
    :goto_0
    return-object v0

    .line 559
    :cond_0
    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    .line 560
    const-string v0, "match-parent"

    goto :goto_0

    .line 562
    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public debug(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "output"

    .prologue
    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ViewGroup.LayoutParams={ width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;->width:I

    invoke-static {v1}, Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;->height:I

    invoke-static {v1}, Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .locals 1
    .parameter "a"
    .parameter "widthAttr"
    .parameter "heightAttr"

    .prologue
    .line 529
    const-string v0, "layout_width"

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;->width:I

    .line 530
    const-string v0, "layout_height"

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;->height:I

    .line 531
    return-void
.end method
