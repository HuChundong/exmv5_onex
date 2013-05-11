.class public Lcom/scalado/caps/codec/decoder/JpegDecoder;
.super Lcom/scalado/caps/Decoder;
.source "JpegDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/caps/codec/decoder/JpegDecoder$1;,
        Lcom/scalado/caps/codec/decoder/JpegDecoder$JpegDecoderIterator;,
        Lcom/scalado/caps/codec/decoder/JpegDecoder$DecodeMode;
    }
.end annotation


# instance fields
.field protected stream:Lcom/scalado/stream/Stream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    invoke-static {}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->nativeClassInit()V

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/scalado/caps/Decoder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/scalado/stream/Stream;)V
    .locals 1

    invoke-direct {p0}, Lcom/scalado/caps/Decoder;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-interface {p1}, Lcom/scalado/stream/Stream;->isReadable()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->nativeCreate(Lcom/scalado/stream/Stream;I)V

    iput-object p1, p0, Lcom/scalado/caps/codec/decoder/JpegDecoder;->stream:Lcom/scalado/stream/Stream;

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/stream/Stream;Lcom/scalado/caps/codec/decoder/JpegDecoder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/caps/codec/decoder/JpegDecoder;-><init>(Lcom/scalado/stream/Stream;)V

    return-void
.end method

.method public static create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;
    .locals 1

    new-instance v0, Lcom/scalado/caps/codec/decoder/JpegDecoder$JpegDecoderIterator;

    invoke-direct {v0, p0}, Lcom/scalado/caps/codec/decoder/JpegDecoder$JpegDecoderIterator;-><init>(Lcom/scalado/stream/Stream;)V

    return-object v0
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeSetDecodeMode(I)V
.end method

.method private native nativeSetRajpegCacheSize(I)V
.end method


# virtual methods
.method public final getStream()Lcom/scalado/stream/Stream;
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/codec/decoder/JpegDecoder;->stream:Lcom/scalado/stream/Stream;

    return-object v0
.end method

.method protected native nativeCreate(Lcom/scalado/stream/Stream;I)V
.end method

.method protected native nativeGetLeftImageH()I
.end method

.method protected native nativeGetLeftImageW()I
.end method

.method protected native nativeGetLeftImageX()I
.end method

.method protected native nativeGetLeftImageY()I
.end method

.method protected native nativeGetRightImageH()I
.end method

.method protected native nativeGetRightImageW()I
.end method

.method protected native nativeGetRightImageX()I
.end method

.method protected native nativeGetRightImageY()I
.end method

.method public final setDecodeMode(Lcom/scalado/caps/codec/decoder/JpegDecoder$DecodeMode;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mode must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p1, Lcom/scalado/caps/codec/decoder/JpegDecoder$DecodeMode;->value:I

    invoke-direct {p0, v0}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->nativeSetDecodeMode(I)V

    invoke-virtual {p0}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->markChanged()V

    return-void
.end method

.method public setPrefetchEnabled(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->doSetPrefetchEnabled(Z)V

    return-void
.end method

.method public final setRajpegCacheSize(I)V
    .locals 1

    if-ltz p1, :cond_0

    const v0, 0x3ffffff

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    div-int/lit16 v0, p1, 0x400

    invoke-direct {p0, v0}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->nativeSetRajpegCacheSize(I)V

    invoke-virtual {p0}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->markChanged()V

    return-void
.end method
