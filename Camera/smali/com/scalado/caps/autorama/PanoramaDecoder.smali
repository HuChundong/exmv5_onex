.class public Lcom/scalado/caps/autorama/PanoramaDecoder;
.super Lcom/scalado/caps/Decoder;
.source "PanoramaDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/caps/autorama/PanoramaDecoder$1;,
        Lcom/scalado/caps/autorama/PanoramaDecoder$PanoramaDecoderIterator;
    }
.end annotation


# instance fields
.field private stitcher:Lcom/scalado/caps/autorama/Stitcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    invoke-static {}, Lcom/scalado/caps/autorama/PanoramaDecoder;->nativeClassInit()V

    return-void
.end method

.method private constructor <init>(Lcom/scalado/caps/autorama/PanoramaDecoder$PanoramaDecoderIterator;)V
    .locals 1

    invoke-direct {p0}, Lcom/scalado/caps/Decoder;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/caps/autorama/PanoramaDecoder;->stitcher:Lcom/scalado/caps/autorama/Stitcher;

    invoke-direct {p0, p1}, Lcom/scalado/caps/autorama/PanoramaDecoder;->nativeCreate(Lcom/scalado/caps/autorama/PanoramaDecoder$PanoramaDecoderIterator;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/caps/autorama/PanoramaDecoder$PanoramaDecoderIterator;Lcom/scalado/caps/autorama/PanoramaDecoder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/caps/autorama/PanoramaDecoder;-><init>(Lcom/scalado/caps/autorama/PanoramaDecoder$PanoramaDecoderIterator;)V

    return-void
.end method

.method static synthetic access$102(Lcom/scalado/caps/autorama/PanoramaDecoder;Lcom/scalado/caps/autorama/Stitcher;)Lcom/scalado/caps/autorama/Stitcher;
    .locals 0

    iput-object p1, p0, Lcom/scalado/caps/autorama/PanoramaDecoder;->stitcher:Lcom/scalado/caps/autorama/Stitcher;

    return-object p1
.end method

.method public static create(Lcom/scalado/caps/autorama/Stitcher;)Lcom/scalado/base/Iterator;
    .locals 1

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Lcom/scalado/caps/autorama/PanoramaDecoder$PanoramaDecoderIterator;

    invoke-direct {v0, p0}, Lcom/scalado/caps/autorama/PanoramaDecoder$PanoramaDecoderIterator;-><init>(Lcom/scalado/caps/autorama/Stitcher;)V

    return-object v0
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeCreate(Lcom/scalado/caps/autorama/PanoramaDecoder$PanoramaDecoderIterator;)V
.end method
