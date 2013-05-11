.class public Lcom/scalado/caps/filter/imagefusion/Imagefusion;
.super Lcom/scalado/caps/Filter;
.source "Imagefusion.java"


# instance fields
.field private frame:Lcom/scalado/base/Image;

.field private frameStream:Lcom/scalado/stream/Stream;

.field private invertAlpha:Z

.field private mask:Lcom/scalado/base/Image;

.field private maskStream:Lcom/scalado/stream/Stream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    invoke-static {}, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->nativeClassInit()V

    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    iput-object v0, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->frameStream:Lcom/scalado/stream/Stream;

    iput-object v0, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->maskStream:Lcom/scalado/stream/Stream;

    iput-object v0, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->frame:Lcom/scalado/base/Image;

    iput-object v0, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->mask:Lcom/scalado/base/Image;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->invertAlpha:Z

    invoke-virtual {p0, v1}, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->setHasActiveFilter(Z)V

    return-void
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeInsertFrameMask(Lcom/scalado/caps/Decoder;Lcom/scalado/stream/Stream;Lcom/scalado/stream/Stream;Z)V
.end method

.method private native nativeInsertImageFromRawMask(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Image;Lcom/scalado/base/Image;Z)V
.end method


# virtual methods
.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 3

    iget-object v0, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->frameStream:Lcom/scalado/stream/Stream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->maskStream:Lcom/scalado/stream/Stream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->frameStream:Lcom/scalado/stream/Stream;

    iget-object v1, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->maskStream:Lcom/scalado/stream/Stream;

    iget-boolean v2, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->invertAlpha:Z

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->nativeInsertFrameMask(Lcom/scalado/caps/Decoder;Lcom/scalado/stream/Stream;Lcom/scalado/stream/Stream;Z)V

    :cond_0
    return-void
.end method

.method protected internalCommit()V
    .locals 0

    return-void
.end method

.method public setFrameMask(Lcom/scalado/base/Image;Lcom/scalado/base/Image;Z)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Frame image stream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Mask image stream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->frame:Lcom/scalado/base/Image;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->mask:Lcom/scalado/base/Image;

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->removeLastFilter(Lcom/scalado/caps/Decoder;)V

    iput-object v1, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->frame:Lcom/scalado/base/Image;

    iput-object v1, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->mask:Lcom/scalado/base/Image;

    :cond_4
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->nativeInsertImageFromRawMask(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Image;Lcom/scalado/base/Image;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    iput-object p1, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->frame:Lcom/scalado/base/Image;

    iput-object p2, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->mask:Lcom/scalado/base/Image;

    iput-boolean p3, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->invertAlpha:Z

    return-void
.end method

.method public setFrameMask(Lcom/scalado/stream/Stream;Lcom/scalado/stream/Stream;Z)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Frame image stream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Mask image stream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->frameStream:Lcom/scalado/stream/Stream;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->maskStream:Lcom/scalado/stream/Stream;

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->removeLastFilter(Lcom/scalado/caps/Decoder;)V

    iput-object v1, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->frameStream:Lcom/scalado/stream/Stream;

    iput-object v1, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->maskStream:Lcom/scalado/stream/Stream;

    :cond_4
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->nativeInsertFrameMask(Lcom/scalado/caps/Decoder;Lcom/scalado/stream/Stream;Lcom/scalado/stream/Stream;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    iput-object p1, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->frameStream:Lcom/scalado/stream/Stream;

    iput-object p2, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->maskStream:Lcom/scalado/stream/Stream;

    iput-boolean p3, p0, Lcom/scalado/caps/filter/imagefusion/Imagefusion;->invertAlpha:Z

    return-void
.end method
