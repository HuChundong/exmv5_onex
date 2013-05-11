.class public final Lcom/scalado/caps/filter/Rotate;
.super Lcom/scalado/caps/Filter;
.source "Rotate.java"


# instance fields
.field private rotation:Lcom/scalado/caps/Rotation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    invoke-static {}, Lcom/scalado/caps/filter/Rotate;->nativeClassInit()V

    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    sget-object v0, Lcom/scalado/caps/Rotation;->TO_0:Lcom/scalado/caps/Rotation;

    iput-object v0, p0, Lcom/scalado/caps/filter/Rotate;->rotation:Lcom/scalado/caps/Rotation;

    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/Rotate;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/Rotate;->setHasActiveFilter(Z)V

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


# virtual methods
.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/Rotate;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    iget-object v0, p0, Lcom/scalado/caps/filter/Rotate;->rotation:Lcom/scalado/caps/Rotation;

    invoke-virtual {v0}, Lcom/scalado/caps/Rotation;->getValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/filter/Rotate;->nativeSet(Lcom/scalado/caps/Decoder;I)V

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/Rotate;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    return-void
.end method

.method protected internalCommit()V
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/Rotate;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    return-void
.end method

.method public set(Lcom/scalado/caps/Rotation;)V
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

    invoke-virtual {p1}, Lcom/scalado/caps/Rotation;->getValue()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/scalado/caps/filter/Rotate;->nativeSet(Lcom/scalado/caps/Decoder;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    iput-object p1, p0, Lcom/scalado/caps/filter/Rotate;->rotation:Lcom/scalado/caps/Rotation;

    return-void
.end method
