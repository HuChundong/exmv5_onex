.class public final Lcom/scalado/caps/filter/photoart/Moonlight;
.super Lcom/scalado/caps/Filter;
.source "Moonlight.java"


# instance fields
.field private hourOfDay:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    invoke-static {}, Lcom/scalado/caps/filter/photoart/Moonlight;->nativeClassInit()V

    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/caps/filter/photoart/Moonlight;->hourOfDay:I

    invoke-virtual {p0, v1}, Lcom/scalado/caps/filter/photoart/Moonlight;->setHasActiveFilter(Z)V

    return-void
.end method

.method private native nativeApplyMoonlight(Lcom/scalado/caps/Decoder;I)V
.end method

.method private static native nativeClassInit()V
.end method


# virtual methods
.method public get()I
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/photoart/Moonlight;->hourOfDay:I

    return v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/photoart/Moonlight;->hourOfDay:I

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/filter/photoart/Moonlight;->nativeApplyMoonlight(Lcom/scalado/caps/Decoder;I)V

    return-void
.end method

.method protected internalCommit()V
    .locals 0

    return-void
.end method

.method public set(I)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-lt p1, v1, :cond_1

    const/16 v0, 0x18

    if-le p1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument to set is out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/photoart/Moonlight;->removeLastFilter(Lcom/scalado/caps/Decoder;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    :cond_3
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/scalado/caps/filter/photoart/Moonlight;->nativeApplyMoonlight(Lcom/scalado/caps/Decoder;I)V

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    iput p1, p0, Lcom/scalado/caps/filter/photoart/Moonlight;->hourOfDay:I

    return-void
.end method
