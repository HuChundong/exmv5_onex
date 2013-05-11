.class public Lcom/htc/sunny2/fullfilmview/TileDecodeItem;
.super Ljava/lang/Object;
.source "TileDecodeItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/sunny2/fullfilmview/TileDecodeItem;",
        ">;"
    }
.end annotation


# static fields
.field static final seq:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public bottom:I

.field public bottomBorder:I

.field public index:I

.field public isBitmapReused:Z

.field public left:I

.field public leftBorder:I

.field public level:I

.field public priority:I

.field public right:I

.field public rightBorder:I

.field public seqNum:J

.field public texture:Lcom/htc/sunnyCore/Texture;

.field public top:I

.field public topBorder:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->seq:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->isBitmapReused:Z

    .line 26
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->priority:I

    .line 33
    sget-object v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->seq:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->seqNum:J

    .line 34
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0
    .parameter "index"
    .parameter "level"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;-><init>()V

    .line 39
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->index:I

    .line 40
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->level:I

    .line 41
    iput p3, p0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->left:I

    .line 42
    iput p4, p0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->top:I

    .line 43
    iput p5, p0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->right:I

    .line 44
    iput p6, p0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->bottom:I

    .line 45
    return-void
.end method

.method public constructor <init>(IIIIIIIIII)V
    .locals 0
    .parameter "index"
    .parameter "level"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "leftBorder"
    .parameter "topBorder"
    .parameter "rightBorder"
    .parameter "bottomBorder"

    .prologue
    .line 49
    invoke-direct/range {p0 .. p6}, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;-><init>(IIIIII)V

    .line 50
    iput p7, p0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->leftBorder:I

    .line 51
    iput p8, p0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->topBorder:I

    .line 52
    iput p9, p0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->rightBorder:I

    .line 53
    iput p10, p0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->bottomBorder:I

    .line 54
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/htc/sunny2/fullfilmview/TileDecodeItem;
    .locals 3
    .parameter "from"

    .prologue
    .line 64
    new-instance v1, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;

    invoke-direct {v1}, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;-><init>()V

    .line 65
    .local v1, ret:Lcom/htc/sunny2/fullfilmview/TileDecodeItem;
    const-string v2, "_"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, parts:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->index:I

    .line 67
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->level:I

    .line 68
    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->left:I

    .line 69
    const/4 v2, 0x3

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->top:I

    .line 70
    const/4 v2, 0x4

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->right:I

    .line 71
    const/4 v2, 0x5

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->bottom:I

    .line 72
    return-object v1
.end method


# virtual methods
.method public compareTo(Lcom/htc/sunny2/fullfilmview/TileDecodeItem;)I
    .locals 6
    .parameter "arg0"

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 78
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->priority:I

    iget v3, p1, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->priority:I

    if-le v2, v3, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->priority:I

    iget v3, p1, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->priority:I

    if-ne v2, v3, :cond_3

    .line 84
    iget-wide v2, p0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->seqNum:J

    iget-wide v4, p1, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->seqNum:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 88
    iget-wide v2, p0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->seqNum:J

    iget-wide v4, p1, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->seqNum:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 90
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 94
    goto :goto_0

    :cond_3
    move v0, v1

    .line 99
    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    check-cast p1, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->compareTo(Lcom/htc/sunny2/fullfilmview/TileDecodeItem;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 59
    const-string v0, "%1$s_%2$s_%3$s_%4$s_%5$s_%6$s"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->level:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->left:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->top:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->right:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->bottom:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
