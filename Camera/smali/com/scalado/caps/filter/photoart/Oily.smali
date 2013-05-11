.class public final Lcom/scalado/caps/filter/photoart/Oily;
.super Lcom/scalado/caps/Filter;
.source "Oily.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    invoke-static {}, Lcom/scalado/caps/filter/photoart/Oily;->nativeClassInit()V

    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Oily;->nativeApplyOily(Lcom/scalado/caps/Decoder;)V

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    invoke-virtual {p0, v1}, Lcom/scalado/caps/filter/photoart/Oily;->setHasActiveFilter(Z)V

    return-void
.end method

.method private native nativeApplyOily(Lcom/scalado/caps/Decoder;)V
.end method

.method private static native nativeClassInit()V
.end method


# virtual methods
.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Oily;->nativeApplyOily(Lcom/scalado/caps/Decoder;)V

    return-void
.end method

.method protected internalCommit()V
    .locals 0

    return-void
.end method
