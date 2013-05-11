.class public abstract Lcom/scalado/caps/Decoder;
.super Lcom/scalado/jni/JniPeer;
.source "Decoder.java"


# instance fields
.field private changed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    invoke-static {}, Lcom/scalado/caps/Decoder;->nativeClassInit()V

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/scalado/jni/JniPeer;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/Decoder;->changed:Z

    return-void
.end method

.method private native nativeBlendBackgroundColor(Z)V
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeGetDimensions(Lcom/scalado/base/Size;)V
.end method

.method private native nativeRemoveAllFilters()V
.end method

.method private native nativeRemoveLastFilter()V
.end method

.method private native nativeSetBackgroundColor(Lcom/scalado/base/Color;)V
.end method

.method private native nativeSetPrefetchEnabled(Z)V
.end method

.method private native nativeSetSamplingMode(I)V
.end method


# virtual methods
.method protected blendBackgroundColor(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/caps/Decoder;->nativeBlendBackgroundColor(Z)V

    return-void
.end method

.method protected final doSetPrefetchEnabled(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/caps/Decoder;->nativeSetPrefetchEnabled(Z)V

    return-void
.end method

.method public final getDimensions()Lcom/scalado/base/Size;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0, v1, v1}, Lcom/scalado/base/Size;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/scalado/caps/Decoder;->nativeGetDimensions(Lcom/scalado/base/Size;)V

    return-object v0
.end method

.method public final hasChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/scalado/caps/Decoder;->changed:Z

    return v0
.end method

.method protected final markChanged()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Decoder;->changed:Z

    return-void
.end method

.method removeAllFilters()V
    .locals 0

    invoke-direct {p0}, Lcom/scalado/caps/Decoder;->nativeRemoveAllFilters()V

    invoke-virtual {p0}, Lcom/scalado/caps/Decoder;->markChanged()V

    return-void
.end method

.method removeLastFilter()V
    .locals 0

    invoke-direct {p0}, Lcom/scalado/caps/Decoder;->nativeRemoveLastFilter()V

    invoke-virtual {p0}, Lcom/scalado/caps/Decoder;->markChanged()V

    return-void
.end method

.method setBackgroundColor(Lcom/scalado/base/Color;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/caps/Decoder;->nativeSetBackgroundColor(Lcom/scalado/base/Color;)V

    invoke-virtual {p0}, Lcom/scalado/caps/Decoder;->markChanged()V

    return-void
.end method

.method setSamplingMode(Lcom/scalado/caps/SamplingMode;)V
    .locals 1

    invoke-virtual {p1}, Lcom/scalado/caps/SamplingMode;->getValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/Decoder;->nativeSetSamplingMode(I)V

    invoke-virtual {p0}, Lcom/scalado/caps/Decoder;->markChanged()V

    return-void
.end method
