.class public final Lcom/scalado/caps/filter/photoart/MonoColor;
.super Lcom/scalado/caps/Filter;
.source "MonoColor.java"


# instance fields
.field private colorDistance:I

.field private preserveColor:Lcom/scalado/base/Color;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    invoke-static {}, Lcom/scalado/caps/filter/photoart/MonoColor;->nativeClassInit()V

    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/Session;Lcom/scalado/base/Color;I)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/scalado/caps/filter/photoart/MonoColor;->nativeBegin(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Color;I)V

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    iput-object p2, p0, Lcom/scalado/caps/filter/photoart/MonoColor;->preserveColor:Lcom/scalado/base/Color;

    iput p3, p0, Lcom/scalado/caps/filter/photoart/MonoColor;->colorDistance:I

    invoke-virtual {p0, v1}, Lcom/scalado/caps/filter/photoart/MonoColor;->setHasActiveFilter(Z)V

    return-void
.end method

.method private native nativeBegin(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Color;I)V
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeEnd(Lcom/scalado/caps/Decoder;)V
.end method

.method private native nativeSet(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Color;I)V
.end method


# virtual methods
.method public getColor()Lcom/scalado/base/Color;
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/MonoColor;->preserveColor:Lcom/scalado/base/Color;

    invoke-virtual {v0}, Lcom/scalado/base/Color;->clone()Lcom/scalado/base/Color;

    move-result-object v0

    return-object v0
.end method

.method public getTolerance()I
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/photoart/MonoColor;->colorDistance:I

    return v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 2

    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/MonoColor;->preserveColor:Lcom/scalado/base/Color;

    iget v1, p0, Lcom/scalado/caps/filter/photoart/MonoColor;->colorDistance:I

    invoke-direct {p0, p1, v0, v1}, Lcom/scalado/caps/filter/photoart/MonoColor;->nativeBegin(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Color;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/MonoColor;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    return-void
.end method

.method protected internalCommit()V
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/MonoColor;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    return-void
.end method

.method public set(Lcom/scalado/base/Color;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/scalado/caps/filter/photoart/MonoColor;->nativeSet(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Color;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    iput-object p1, p0, Lcom/scalado/caps/filter/photoart/MonoColor;->preserveColor:Lcom/scalado/base/Color;

    iput p2, p0, Lcom/scalado/caps/filter/photoart/MonoColor;->colorDistance:I

    return-void
.end method
