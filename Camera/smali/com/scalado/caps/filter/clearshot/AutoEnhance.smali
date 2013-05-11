.class public final Lcom/scalado/caps/filter/clearshot/AutoEnhance;
.super Lcom/scalado/caps/Filter;
.source "AutoEnhance.java"


# instance fields
.field private parameters:Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    invoke-static {}, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->nativeClassInit()V

    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->parameters:Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;

    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->setHasActiveFilter(Z)V

    return-void
.end method

.method private native nativeBegin(Lcom/scalado/caps/Decoder;)V
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeEnd(Lcom/scalado/caps/Decoder;)V
.end method

.method private native nativeGet(Lcom/scalado/caps/Decoder;Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;)V
.end method

.method private native nativeSet(Lcom/scalado/caps/Decoder;Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;)V
.end method


# virtual methods
.method public final get()Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;
    .locals 2

    iget-object v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->parameters:Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;

    if-nez v0, :cond_0

    new-instance v0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;

    invoke-direct {v0}, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->parameters:Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;

    :goto_0
    iget-object v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->parameters:Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;

    invoke-virtual {v0}, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->clone()Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    iget-object v1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->parameters:Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;

    invoke-direct {p0, v0, v1}, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->nativeGet(Lcom/scalado/caps/Decoder;Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;)V

    goto :goto_0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    iget-object v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->parameters:Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->nativeSet(Lcom/scalado/caps/Decoder;Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;)V

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    return-void
.end method

.method protected internalCommit()V
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    return-void
.end method

.method public set(Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;)V
    .locals 2

    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->getSourceWhite()Lcom/scalado/base/Color;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Source white is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->getTargetWhite()Lcom/scalado/base/Color;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Target white is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->nativeSet(Lcom/scalado/caps/Decoder;Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    iput-object p1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->parameters:Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;

    return-void
.end method
