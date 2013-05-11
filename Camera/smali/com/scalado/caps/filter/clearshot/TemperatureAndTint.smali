.class public final Lcom/scalado/caps/filter/clearshot/TemperatureAndTint;
.super Lcom/scalado/caps/Filter;
.source "TemperatureAndTint.java"


# instance fields
.field private temperatureIndex:I

.field private tintIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    invoke-static {}, Lcom/scalado/caps/filter/clearshot/TemperatureAndTint;->nativeClassInit()V

    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    iput v0, p0, Lcom/scalado/caps/filter/clearshot/TemperatureAndTint;->temperatureIndex:I

    iput v0, p0, Lcom/scalado/caps/filter/clearshot/TemperatureAndTint;->tintIndex:I

    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/clearshot/TemperatureAndTint;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/clearshot/TemperatureAndTint;->setHasActiveFilter(Z)V

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
.method public getTemperatureIndex()I
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/clearshot/TemperatureAndTint;->temperatureIndex:I

    return v0
.end method

.method public getTintIndex()I
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/clearshot/TemperatureAndTint;->tintIndex:I

    return v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/clearshot/TemperatureAndTint;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    iget v0, p0, Lcom/scalado/caps/filter/clearshot/TemperatureAndTint;->temperatureIndex:I

    iget v1, p0, Lcom/scalado/caps/filter/clearshot/TemperatureAndTint;->tintIndex:I

    invoke-direct {p0, p1, v0, v1}, Lcom/scalado/caps/filter/clearshot/TemperatureAndTint;->nativeSet(Lcom/scalado/caps/Decoder;II)V

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/clearshot/TemperatureAndTint;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    return-void
.end method

.method protected internalCommit()V
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/clearshot/TemperatureAndTint;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    return-void
.end method

.method public set(II)V
    .locals 3

    const/16 v2, 0x64

    const/16 v1, -0x64

    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-lt p1, v1, :cond_1

    if-le p1, v2, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal temperatureIndex value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-lt p2, v1, :cond_3

    if-le p2, v2, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal tintIndex value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/scalado/caps/filter/clearshot/TemperatureAndTint;->nativeSet(Lcom/scalado/caps/Decoder;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    iput p1, p0, Lcom/scalado/caps/filter/clearshot/TemperatureAndTint;->temperatureIndex:I

    iput p2, p0, Lcom/scalado/caps/filter/clearshot/TemperatureAndTint;->tintIndex:I

    return-void
.end method
