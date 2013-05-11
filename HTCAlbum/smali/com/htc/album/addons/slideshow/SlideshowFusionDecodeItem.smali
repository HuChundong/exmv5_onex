.class public Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;
.super Ljava/lang/Object;
.source "SlideshowFusionDecodeItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;",
        ">;"
    }
.end annotation


# static fields
.field static final seq:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public bmp:Landroid/graphics/Bitmap;

.field public decodeType:I

.field public displayHeight:I

.field public displayOrientation:I

.field public displayWidth:I

.field public fitMethod:I

.field public index:I

.field public isLastItemInQueue:Z

.field public isMoveNext:Z

.field public isPortrait:Z

.field public priority:I

.field public seqNum:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->seq:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->isPortrait:Z

    .line 19
    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->isLastItemInQueue:Z

    .line 26
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->seq:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->seqNum:J

    .line 27
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;)I
    .locals 6
    .parameter "arg0"

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 32
    iget v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->priority:I

    iget v3, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->priority:I

    if-le v2, v3, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v0

    .line 36
    :cond_1
    iget v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->priority:I

    iget v3, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->priority:I

    if-ne v2, v3, :cond_3

    .line 38
    iget-wide v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->seqNum:J

    iget-wide v4, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->seqNum:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 42
    iget-wide v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->seqNum:J

    iget-wide v4, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->seqNum:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 44
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 48
    goto :goto_0

    :cond_3
    move v0, v1

    .line 53
    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 7
    check-cast p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->compareTo(Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DecodeItem: index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", decodeType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", priority = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", seqNum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->seqNum:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
