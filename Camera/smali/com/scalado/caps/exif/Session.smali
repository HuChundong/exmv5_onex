.class public Lcom/scalado/caps/exif/Session;
.super Lcom/scalado/jni/JniPeer;
.source "Session.java"


# instance fields
.field private exifBuffer:Ljava/nio/ByteBuffer;

.field public rawInfo:Lcom/scalado/base/RawThumbnailInfo;

.field private thumbnailBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    invoke-static {}, Lcom/scalado/caps/exif/Session;->nativeClassInit()V

    return-void
.end method

.method public constructor <init>(Lcom/scalado/stream/Stream;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/scalado/jni/JniPeer;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/exif/Session;->thumbnailBuffer:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/scalado/caps/exif/Session;->exifBuffer:Ljava/nio/ByteBuffer;

    new-instance v0, Lcom/scalado/base/RawThumbnailInfo;

    invoke-direct {v0}, Lcom/scalado/base/RawThumbnailInfo;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/exif/Session;->rawInfo:Lcom/scalado/base/RawThumbnailInfo;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    instance-of v0, p1, Lcom/scalado/stream/BufferStream;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/scalado/stream/BufferStream;

    invoke-virtual {p1}, Lcom/scalado/stream/BufferStream;->getBuffer()Lcom/scalado/base/Buffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/exif/Session;->nativeCreateFromBuffer(Lcom/scalado/base/Buffer;)V

    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/scalado/stream/FileStream;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/scalado/stream/FileStream;

    invoke-virtual {p1}, Lcom/scalado/stream/FileStream;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/exif/Session;->nativeCreateFromFile(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input not a bufferstream or filestream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native nativeBuffer()[B
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeCreateFromBuffer(Lcom/scalado/base/Buffer;)V
.end method

.method private native nativeCreateFromFile(Ljava/lang/String;)V
.end method

.method private native nativeGetGPSCoordinates(Lcom/scalado/caps/exif/GPSCoordinates;)V
.end method

.method private native nativeGetImageSize(Lcom/scalado/base/Size;)V
.end method

.method private native nativeGetThumbnail(Lcom/scalado/base/RawThumbnailInfo;)[B
.end method

.method private native nativeSetExifToSession(Lcom/scalado/caps/Session;)V
.end method

.method private native nativeSetGPSCoordinates(Lcom/scalado/caps/exif/GPSCoordinates;)V
.end method

.method private native nativeSetImageSize(Lcom/scalado/base/Size;)V
.end method

.method private native nativeSetThumbnail([B)V
.end method


# virtual methods
.method public getGPSCoordinates()Lcom/scalado/caps/exif/GPSCoordinates;
    .locals 1

    new-instance v0, Lcom/scalado/caps/exif/GPSCoordinates;

    invoke-direct {v0}, Lcom/scalado/caps/exif/GPSCoordinates;-><init>()V

    invoke-direct {p0, v0}, Lcom/scalado/caps/exif/Session;->nativeGetGPSCoordinates(Lcom/scalado/caps/exif/GPSCoordinates;)V

    return-object v0
.end method

.method public getImageSize()Lcom/scalado/base/Size;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0, v1, v1}, Lcom/scalado/base/Size;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/scalado/caps/exif/Session;->nativeGetImageSize(Lcom/scalado/base/Size;)V

    return-object v0
.end method

.method public getThumbnail()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/exif/Session;->thumbnailBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/scalado/caps/exif/Session;->rawInfo:Lcom/scalado/base/RawThumbnailInfo;

    invoke-direct {p0, v0}, Lcom/scalado/caps/exif/Session;->nativeGetThumbnail(Lcom/scalado/base/RawThumbnailInfo;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/caps/exif/Session;->thumbnailBuffer:Ljava/nio/ByteBuffer;

    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/exif/Session;->thumbnailBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public setExifToSession(Lcom/scalado/caps/Session;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/scalado/caps/exif/Session;->nativeSetExifToSession(Lcom/scalado/caps/Session;)V

    :cond_0
    return-void
.end method

.method public setGPSCoordinates(Lcom/scalado/caps/exif/GPSCoordinates;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "coord should not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/caps/exif/Session;->nativeSetGPSCoordinates(Lcom/scalado/caps/exif/GPSCoordinates;)V

    return-void
.end method

.method public setImageSize(Lcom/scalado/base/Size;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "imageSize should not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/caps/exif/Session;->nativeSetImageSize(Lcom/scalado/base/Size;)V

    return-void
.end method

.method public setThumbnail([B)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/caps/exif/Session;->thumbnailBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, p1}, Lcom/scalado/caps/exif/Session;->nativeSetThumbnail([B)V

    return-void
.end method

.method public toBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/exif/Session;->exifBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/scalado/caps/exif/Session;->nativeBuffer()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/caps/exif/Session;->exifBuffer:Ljava/nio/ByteBuffer;

    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/exif/Session;->exifBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method
