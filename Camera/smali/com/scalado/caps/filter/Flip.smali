.class public final Lcom/scalado/caps/filter/Flip;
.super Lcom/scalado/caps/Filter;
.source "Flip.java"


# static fields
.field private static final HORIZONTAL:I = 0x2

.field private static final VERTICAL:I = 0x1


# instance fields
.field private horizontal:Z

.field private vertical:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    invoke-static {}, Lcom/scalado/caps/filter/Flip;->nativeClassInit()V

    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    invoke-virtual {p1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/Flip;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/Flip;->setHasActiveFilter(Z)V

    return-void
.end method

.method private native nativeBegin(Lcom/scalado/caps/Decoder;)V
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeEnd(Lcom/scalado/caps/Decoder;)V
.end method

.method private native nativeSet(Lcom/scalado/caps/Decoder;I)V
.end method

.method private translateFlipToInt(ZZ)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    if-eqz p2, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/Flip;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    iget-boolean v0, p0, Lcom/scalado/caps/filter/Flip;->horizontal:Z

    iget-boolean v1, p0, Lcom/scalado/caps/filter/Flip;->vertical:Z

    invoke-direct {p0, v0, v1}, Lcom/scalado/caps/filter/Flip;->translateFlipToInt(ZZ)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/filter/Flip;->nativeSet(Lcom/scalado/caps/Decoder;I)V

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/Flip;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    return-void
.end method

.method protected internalCommit()V
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/Flip;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    return-void
.end method

.method public set(ZZ)V
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

    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/filter/Flip;->translateFlipToInt(ZZ)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/scalado/caps/filter/Flip;->nativeSet(Lcom/scalado/caps/Decoder;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    iput-boolean p2, p0, Lcom/scalado/caps/filter/Flip;->vertical:Z

    iput-boolean p1, p0, Lcom/scalado/caps/filter/Flip;->horizontal:Z

    return-void
.end method
