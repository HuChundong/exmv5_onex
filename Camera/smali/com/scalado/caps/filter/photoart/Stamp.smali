.class public final Lcom/scalado/caps/filter/photoart/Stamp;
.super Lcom/scalado/caps/Filter;
.source "Stamp.java"


# instance fields
.field private smoothness:I

.field private threshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    invoke-static {}, Lcom/scalado/caps/filter/photoart/Stamp;->nativeClassInit()V

    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    iput v0, p0, Lcom/scalado/caps/filter/photoart/Stamp;->smoothness:I

    const/16 v0, 0x80

    iput v0, p0, Lcom/scalado/caps/filter/photoart/Stamp;->threshold:I

    invoke-virtual {p1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Stamp;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/photoart/Stamp;->setHasActiveFilter(Z)V

    return-void
.end method

.method private native nativeBegin(Lcom/scalado/caps/Decoder;)V
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeEnd(Lcom/scalado/caps/Decoder;)V
.end method

.method private native nativeSet(Lcom/scalado/caps/Decoder;II)V
.end method


# virtual methods
.method public getSmoothness()I
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/photoart/Stamp;->smoothness:I

    return v0
.end method

.method public getThreshold()I
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/photoart/Stamp;->threshold:I

    return v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Stamp;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    iget v0, p0, Lcom/scalado/caps/filter/photoart/Stamp;->smoothness:I

    iget v1, p0, Lcom/scalado/caps/filter/photoart/Stamp;->threshold:I

    invoke-direct {p0, p1, v0, v1}, Lcom/scalado/caps/filter/photoart/Stamp;->nativeSet(Lcom/scalado/caps/Decoder;II)V

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Stamp;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    return-void
.end method

.method protected internalCommit()V
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Stamp;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    return-void
.end method

.method public set(II)V
    .locals 2

    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ltz p1, :cond_1

    const/4 v0, 0x6

    if-gt p1, v0, :cond_1

    if-ltz p2, :cond_1

    const/16 v0, 0xff

    if-le p2, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arguments to set out of legal range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/scalado/caps/filter/photoart/Stamp;->nativeSet(Lcom/scalado/caps/Decoder;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    iput p1, p0, Lcom/scalado/caps/filter/photoart/Stamp;->smoothness:I

    iput p2, p0, Lcom/scalado/caps/filter/photoart/Stamp;->threshold:I

    return-void
.end method
