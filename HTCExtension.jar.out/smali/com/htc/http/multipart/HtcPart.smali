.class public abstract Lcom/htc/http/multipart/HtcPart;
.super Ljava/lang/Object;
.source "HtcPart.java"


# static fields
.field protected static final CHARSET:Ljava/lang/String; = "; charset="

.field protected static final CHARSET_BYTES:[B = null

.field protected static final CONTENT_DISPOSITION:Ljava/lang/String; = "Content-Disposition: form-data; name="

.field protected static final CONTENT_DISPOSITION_BYTES:[B = null

.field protected static final CONTENT_TRANSFER_ENCODING:Ljava/lang/String; = "Content-Transfer-Encoding: "

.field protected static final CONTENT_TRANSFER_ENCODING_BYTES:[B = null

.field protected static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type: "

.field protected static final CONTENT_TYPE_BYTES:[B = null

.field protected static final CRLF:Ljava/lang/String; = "\r\n"

.field protected static final CRLF_BYTES:[B = null

.field private static final DEFAULT_BOUNDARY_BYTES:[B = null

.field protected static final EXTRA:Ljava/lang/String; = "--"

.field protected static final EXTRA_BYTES:[B = null

.field private static final LOG:Lorg/apache/commons/logging/Log; = null

.field protected static final QUOTE:Ljava/lang/String; = "\""

.field protected static final QUOTE_BYTES:[B


# instance fields
.field private boundaryBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/htc/http/multipart/HtcPart;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/htc/http/multipart/HtcPart;->LOG:Lorg/apache/commons/logging/Log;

    .line 23
    const-string v0, "----------------314159265358979323846"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/htc/http/multipart/HtcPart;->DEFAULT_BOUNDARY_BYTES:[B

    .line 33
    const-string v0, "\r\n"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/htc/http/multipart/HtcPart;->CRLF_BYTES:[B

    .line 43
    const-string v0, "\""

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/htc/http/multipart/HtcPart;->QUOTE_BYTES:[B

    .line 58
    const-string v0, "--"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/htc/http/multipart/HtcPart;->EXTRA_BYTES:[B

    .line 73
    const-string v0, "Content-Disposition: form-data; name="

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/htc/http/multipart/HtcPart;->CONTENT_DISPOSITION_BYTES:[B

    .line 84
    const-string v0, "Content-Type: "

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/htc/http/multipart/HtcPart;->CONTENT_TYPE_BYTES:[B

    .line 99
    const-string v0, "; charset="

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/htc/http/multipart/HtcPart;->CHARSET_BYTES:[B

    .line 114
    const-string v0, "Content-Transfer-Encoding: "

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/htc/http/multipart/HtcPart;->CONTENT_TRANSFER_ENCODING_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLengthOfParts([Lcom/htc/http/multipart/HtcPart;)J
    .locals 2
    .parameter "parts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 419
    sget-object v0, Lcom/htc/http/multipart/HtcPart;->DEFAULT_BOUNDARY_BYTES:[B

    invoke-static {p0, v0}, Lcom/htc/http/multipart/HtcPart;->getLengthOfParts([Lcom/htc/http/multipart/HtcPart;[B)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLengthOfParts([Lcom/htc/http/multipart/HtcPart;[B)J
    .locals 7
    .parameter "parts"
    .parameter "partBoundary"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 436
    sget-object v5, Lcom/htc/http/multipart/HtcPart;->LOG:Lorg/apache/commons/logging/Log;

    const-string v6, "getLengthOfParts(Parts[])"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 437
    if-nez p0, :cond_0

    .line 438
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Parts may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 440
    :cond_0
    const-wide/16 v3, 0x0

    .line 441
    .local v3, total:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_2

    .line 443
    aget-object v5, p0, v0

    invoke-virtual {v5, p1}, Lcom/htc/http/multipart/HtcPart;->setPartBoundary([B)V

    .line 444
    aget-object v5, p0, v0

    invoke-virtual {v5}, Lcom/htc/http/multipart/HtcPart;->length()J

    move-result-wide v1

    .line 445
    .local v1, l:J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-gez v5, :cond_1

    .line 446
    const-wide/16 v5, -0x1

    .line 454
    .end local v1           #l:J
    :goto_1
    return-wide v5

    .line 448
    .restart local v1       #l:J
    :cond_1
    add-long/2addr v3, v1

    .line 441
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 450
    .end local v1           #l:J
    :cond_2
    sget-object v5, Lcom/htc/http/multipart/HtcPart;->EXTRA_BYTES:[B

    array-length v5, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 451
    array-length v5, p1

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 452
    sget-object v5, Lcom/htc/http/multipart/HtcPart;->EXTRA_BYTES:[B

    array-length v5, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 453
    sget-object v5, Lcom/htc/http/multipart/HtcPart;->CRLF_BYTES:[B

    array-length v5, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    move-wide v5, v3

    .line 454
    goto :goto_1
.end method

.method public static sendParts(Ljava/io/OutputStream;[Lcom/htc/http/multipart/HtcPart;)V
    .locals 1
    .parameter "out"
    .parameter "parts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 371
    sget-object v0, Lcom/htc/http/multipart/HtcPart;->DEFAULT_BOUNDARY_BYTES:[B

    invoke-static {p0, p1, v0}, Lcom/htc/http/multipart/HtcPart;->sendParts(Ljava/io/OutputStream;[Lcom/htc/http/multipart/HtcPart;[B)V

    .line 372
    return-void
.end method

.method public static sendParts(Ljava/io/OutputStream;[Lcom/htc/http/multipart/HtcPart;[B)V
    .locals 3
    .parameter "out"
    .parameter "parts"
    .parameter "partBoundary"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 390
    if-nez p1, :cond_0

    .line 391
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parts may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 393
    :cond_0
    if-eqz p2, :cond_1

    array-length v1, p2

    if-nez v1, :cond_2

    .line 394
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "partBoundary may not be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 396
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 398
    aget-object v1, p1, v0

    invoke-virtual {v1, p2}, Lcom/htc/http/multipart/HtcPart;->setPartBoundary([B)V

    .line 399
    aget-object v1, p1, v0

    invoke-virtual {v1, p0}, Lcom/htc/http/multipart/HtcPart;->send(Ljava/io/OutputStream;)V

    .line 396
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 401
    :cond_3
    sget-object v1, Lcom/htc/http/multipart/HtcPart;->EXTRA_BYTES:[B

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 402
    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 403
    sget-object v1, Lcom/htc/http/multipart/HtcPart;->EXTRA_BYTES:[B

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 404
    sget-object v1, Lcom/htc/http/multipart/HtcPart;->CRLF_BYTES:[B

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 405
    return-void
.end method


# virtual methods
.method public abstract getCharSet()Ljava/lang/String;
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method protected getPartBoundary()[B
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/htc/http/multipart/HtcPart;->boundaryBytes:[B

    if-nez v0, :cond_0

    .line 166
    sget-object v0, Lcom/htc/http/multipart/HtcPart;->DEFAULT_BOUNDARY_BYTES:[B

    .line 168
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/http/multipart/HtcPart;->boundaryBytes:[B

    goto :goto_0
.end method

.method public abstract getTransferEncoding()Ljava/lang/String;
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public length()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 333
    sget-object v1, Lcom/htc/http/multipart/HtcPart;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "enter length()"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 334
    invoke-virtual {p0}, Lcom/htc/http/multipart/HtcPart;->lengthOfData()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 335
    const-wide/16 v1, -0x1

    .line 344
    :goto_0
    return-wide v1

    .line 337
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 338
    .local v0, overhead:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v0}, Lcom/htc/http/multipart/HtcPart;->sendStart(Ljava/io/OutputStream;)V

    .line 339
    invoke-virtual {p0, v0}, Lcom/htc/http/multipart/HtcPart;->sendDispositionHeader(Ljava/io/OutputStream;)V

    .line 340
    invoke-virtual {p0, v0}, Lcom/htc/http/multipart/HtcPart;->sendContentTypeHeader(Ljava/io/OutputStream;)V

    .line 341
    invoke-virtual {p0, v0}, Lcom/htc/http/multipart/HtcPart;->sendTransferEncodingHeader(Ljava/io/OutputStream;)V

    .line 342
    invoke-virtual {p0, v0}, Lcom/htc/http/multipart/HtcPart;->sendEndOfHeader(Ljava/io/OutputStream;)V

    .line 343
    invoke-virtual {p0, v0}, Lcom/htc/http/multipart/HtcPart;->sendEnd(Ljava/io/OutputStream;)V

    .line 344
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0}, Lcom/htc/http/multipart/HtcPart;->lengthOfData()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0
.end method

.method protected abstract lengthOfData()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public send(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    sget-object v0, Lcom/htc/http/multipart/HtcPart;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter send(OutputStream out)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 312
    invoke-virtual {p0, p1}, Lcom/htc/http/multipart/HtcPart;->sendStart(Ljava/io/OutputStream;)V

    .line 313
    invoke-virtual {p0, p1}, Lcom/htc/http/multipart/HtcPart;->sendDispositionHeader(Ljava/io/OutputStream;)V

    .line 314
    invoke-virtual {p0, p1}, Lcom/htc/http/multipart/HtcPart;->sendContentTypeHeader(Ljava/io/OutputStream;)V

    .line 315
    invoke-virtual {p0, p1}, Lcom/htc/http/multipart/HtcPart;->sendTransferEncodingHeader(Ljava/io/OutputStream;)V

    .line 316
    invoke-virtual {p0, p1}, Lcom/htc/http/multipart/HtcPart;->sendEndOfHeader(Ljava/io/OutputStream;)V

    .line 317
    invoke-virtual {p0, p1}, Lcom/htc/http/multipart/HtcPart;->sendData(Ljava/io/OutputStream;)V

    .line 318
    invoke-virtual {p0, p1}, Lcom/htc/http/multipart/HtcPart;->sendEnd(Ljava/io/OutputStream;)V

    .line 319
    return-void
.end method

.method protected sendContentTypeHeader(Ljava/io/OutputStream;)V
    .locals 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    sget-object v2, Lcom/htc/http/multipart/HtcPart;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "enter sendContentTypeHeader(OutputStream out)"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 230
    invoke-virtual {p0}, Lcom/htc/http/multipart/HtcPart;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, contentType:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 232
    sget-object v2, Lcom/htc/http/multipart/HtcPart;->CRLF_BYTES:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 233
    sget-object v2, Lcom/htc/http/multipart/HtcPart;->CONTENT_TYPE_BYTES:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 234
    invoke-static {v1}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 235
    invoke-virtual {p0}, Lcom/htc/http/multipart/HtcPart;->getCharSet()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, charSet:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 237
    sget-object v2, Lcom/htc/http/multipart/HtcPart;->CHARSET_BYTES:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 238
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 241
    .end local v0           #charSet:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected abstract sendData(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected sendDispositionHeader(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    sget-object v0, Lcom/htc/http/multipart/HtcPart;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter sendDispositionHeader(OutputStream out)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 217
    sget-object v0, Lcom/htc/http/multipart/HtcPart;->CONTENT_DISPOSITION_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 218
    sget-object v0, Lcom/htc/http/multipart/HtcPart;->QUOTE_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 219
    invoke-virtual {p0}, Lcom/htc/http/multipart/HtcPart;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 220
    sget-object v0, Lcom/htc/http/multipart/HtcPart;->QUOTE_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 221
    return-void
.end method

.method protected sendEnd(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    sget-object v0, Lcom/htc/http/multipart/HtcPart;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter sendEnd(OutputStream out)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 297
    sget-object v0, Lcom/htc/http/multipart/HtcPart;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 298
    return-void
.end method

.method protected sendEndOfHeader(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    sget-object v0, Lcom/htc/http/multipart/HtcPart;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter sendEndOfHeader(OutputStream out)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 269
    sget-object v0, Lcom/htc/http/multipart/HtcPart;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 270
    sget-object v0, Lcom/htc/http/multipart/HtcPart;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 271
    return-void
.end method

.method protected sendStart(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    sget-object v0, Lcom/htc/http/multipart/HtcPart;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter sendStart(OutputStream out)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 204
    sget-object v0, Lcom/htc/http/multipart/HtcPart;->EXTRA_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 205
    invoke-virtual {p0}, Lcom/htc/http/multipart/HtcPart;->getPartBoundary()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 206
    sget-object v0, Lcom/htc/http/multipart/HtcPart;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 207
    return-void
.end method

.method protected sendTransferEncodingHeader(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    sget-object v1, Lcom/htc/http/multipart/HtcPart;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "enter sendTransferEncodingHeader(OutputStream out)"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 252
    invoke-virtual {p0}, Lcom/htc/http/multipart/HtcPart;->getTransferEncoding()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, transferEncoding:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 254
    sget-object v1, Lcom/htc/http/multipart/HtcPart;->CRLF_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 255
    sget-object v1, Lcom/htc/http/multipart/HtcPart;->CONTENT_TRANSFER_ENCODING_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 256
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 258
    :cond_0
    return-void
.end method

.method setPartBoundary([B)V
    .locals 0
    .parameter "boundaryBytes"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/htc/http/multipart/HtcPart;->boundaryBytes:[B

    .line 181
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/htc/http/multipart/HtcPart;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
