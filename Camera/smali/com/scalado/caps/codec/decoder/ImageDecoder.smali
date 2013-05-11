.class public Lcom/scalado/caps/codec/decoder/ImageDecoder;
.super Lcom/scalado/caps/Decoder;
.source "ImageDecoder.java"


# instance fields
.field private mImage:Lcom/scalado/base/Image;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    invoke-static {}, Lcom/scalado/caps/codec/decoder/ImageDecoder;->nativeClassInit()V

    return-void
.end method

.method public constructor <init>(Lcom/scalado/base/Image;)V
    .locals 2

    invoke-direct {p0}, Lcom/scalado/caps/Decoder;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/caps/codec/decoder/ImageDecoder;->mImage:Lcom/scalado/base/Image;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Image is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/caps/codec/decoder/ImageDecoder;->nativeCreate(Lcom/scalado/base/Image;)V

    iput-object p1, p0, Lcom/scalado/caps/codec/decoder/ImageDecoder;->mImage:Lcom/scalado/base/Image;

    return-void
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeCreate(Lcom/scalado/base/Image;)V
.end method


# virtual methods
.method public getImage()Lcom/scalado/base/Image;
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/codec/decoder/ImageDecoder;->mImage:Lcom/scalado/base/Image;

    return-object v0
.end method
