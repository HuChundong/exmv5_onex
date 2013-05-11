.class public Lcom/htc/util/mail/mimemessage/MimeUtility;
.super Ljava/lang/Object;
.source "MimeUtility.java"


# static fields
.field private static final PATTERN_CR_OR_LF:Ljava/util/regex/Pattern; = null

.field private static final RFC_2047:Ljava/lang/String; = "=\\?([\\S]*)\\?([qQbB])\\?([^\\?]*)(\\?=)+"

.field protected static mLastContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "\r|\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/mimemessage/MimeUtility;->PATTERN_CR_OR_LF:Ljava/util/regex/Pattern;

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/util/mail/mimemessage/MimeUtility;->mLastContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectParts(Lcom/htc/util/mail/mimemessage/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
    .parameter "part"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/util/mail/mimemessage/Part;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/mail/mimemessage/Part;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/mail/mimemessage/Part;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 426
    .local p1, viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/mimemessage/Part;>;"
    .local p2, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/mimemessage/Part;>;"
    invoke-interface {p0}, Lcom/htc/util/mail/mimemessage/Part;->getDisposition()Ljava/lang/String;

    move-result-object v1

    .line 427
    .local v1, disposition:Ljava/lang/String;
    const/4 v3, 0x0

    .line 428
    .local v3, dispositionType:Ljava/lang/String;
    const/4 v2, 0x0

    .line 429
    .local v2, dispositionFilename:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 430
    const/4 v7, 0x0

    invoke-static {v1, v7}, Lcom/htc/util/mail/mimemessage/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 431
    const-string v7, "filename"

    invoke-static {v1, v7}, Lcom/htc/util/mail/mimemessage/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 437
    :cond_0
    const-string v7, "attachment"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    if-eqz v2, :cond_2

    const-string v7, "inline"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 446
    .local v0, attachment:Z
    :goto_0
    invoke-interface {p0}, Lcom/htc/util/mail/mimemessage/Part;->getBody()Lcom/htc/util/mail/mimemessage/Body;

    move-result-object v7

    instance-of v7, v7, Lcom/htc/util/mail/mimemessage/Multipart;

    if-eqz v7, :cond_3

    .line 447
    invoke-interface {p0}, Lcom/htc/util/mail/mimemessage/Part;->getBody()Lcom/htc/util/mail/mimemessage/Body;

    move-result-object v6

    check-cast v6, Lcom/htc/util/mail/mimemessage/Multipart;

    .line 448
    .local v6, mp:Lcom/htc/util/mail/mimemessage/Multipart;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {v6}, Lcom/htc/util/mail/mimemessage/Multipart;->getCount()I

    move-result v7

    if-ge v4, v7, :cond_4

    .line 449
    invoke-virtual {v6, v4}, Lcom/htc/util/mail/mimemessage/Multipart;->getBodyPart(I)Lcom/htc/util/mail/mimemessage/BodyPart;

    move-result-object v7

    invoke-static {v7, p1, p2}, Lcom/htc/util/mail/mimemessage/MimeUtility;->collectParts(Lcom/htc/util/mail/mimemessage/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 448
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 437
    .end local v0           #attachment:Z
    .end local v4           #i:I
    .end local v6           #mp:Lcom/htc/util/mail/mimemessage/Multipart;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 456
    .restart local v0       #attachment:Z
    :cond_3
    invoke-interface {p0}, Lcom/htc/util/mail/mimemessage/Part;->getBody()Lcom/htc/util/mail/mimemessage/Body;

    move-result-object v7

    instance-of v7, v7, Lcom/htc/util/mail/mimemessage/Message;

    if-eqz v7, :cond_5

    .line 457
    invoke-interface {p0}, Lcom/htc/util/mail/mimemessage/Part;->getBody()Lcom/htc/util/mail/mimemessage/Body;

    move-result-object v5

    check-cast v5, Lcom/htc/util/mail/mimemessage/Message;

    .line 458
    .local v5, message:Lcom/htc/util/mail/mimemessage/Message;
    invoke-static {v5, p1, p2}, Lcom/htc/util/mail/mimemessage/MimeUtility;->collectParts(Lcom/htc/util/mail/mimemessage/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 480
    .end local v5           #message:Lcom/htc/util/mail/mimemessage/Message;
    :cond_4
    :goto_2
    return-void

    .line 464
    :cond_5
    if-nez v0, :cond_6

    invoke-interface {p0}, Lcom/htc/util/mail/mimemessage/Part;->getMimeType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "text/html"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 465
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 471
    :cond_6
    if-nez v0, :cond_7

    invoke-interface {p0}, Lcom/htc/util/mail/mimemessage/Part;->getMimeType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "text/plain"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 472
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 478
    :cond_7
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 72
    if-nez p0, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 75
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static decodeBody(Ljava/io/InputStream;Ljava/lang/String;)Lcom/htc/util/mail/mimemessage/Body;
    .locals 4
    .parameter "in"
    .parameter "contentTransferEncoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 396
    if-eqz p1, :cond_0

    .line 397
    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/htc/util/mail/mimemessage/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 399
    const-string v3, "quoted-printable"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 400
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;

    invoke-direct {v0, p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p0
    .local v0, in:Ljava/io/InputStream;
    move-object p0, v0

    .line 407
    .end local v0           #in:Ljava/io/InputStream;
    .restart local p0
    :cond_0
    :goto_0
    new-instance v2, Lcom/htc/util/mail/mimemessage/BinaryTempFileBody;

    invoke-direct {v2}, Lcom/htc/util/mail/mimemessage/BinaryTempFileBody;-><init>()V

    .line 408
    .local v2, tempBody:Lcom/htc/util/mail/mimemessage/BinaryTempFileBody;
    invoke-virtual {v2}, Lcom/htc/util/mail/mimemessage/BinaryTempFileBody;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 409
    .local v1, out:Ljava/io/OutputStream;
    invoke-static {p0, v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 410
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 411
    return-object v2

    .line 402
    .end local v1           #out:Ljava/io/OutputStream;
    .end local v2           #tempBody:Lcom/htc/util/mail/mimemessage/BinaryTempFileBody;
    :cond_1
    const-string v3, "base64"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 403
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/Base64InputStream;

    invoke-direct {v0, p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    .end local p0
    .restart local v0       #in:Ljava/io/InputStream;
    move-object p0, v0

    .end local v0           #in:Ljava/io/InputStream;
    .restart local p0
    goto :goto_0
.end method

.method public static findFirstPartByMimeType(Lcom/htc/util/mail/mimemessage/Part;Ljava/lang/String;)Lcom/htc/util/mail/mimemessage/Part;
    .locals 6
    .parameter "part"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-interface {p0}, Lcom/htc/util/mail/mimemessage/Part;->getBody()Lcom/htc/util/mail/mimemessage/Body;

    move-result-object v5

    instance-of v5, v5, Lcom/htc/util/mail/mimemessage/Multipart;

    if-eqz v5, :cond_1

    .line 235
    invoke-interface {p0}, Lcom/htc/util/mail/mimemessage/Part;->getBody()Lcom/htc/util/mail/mimemessage/Body;

    move-result-object v3

    check-cast v3, Lcom/htc/util/mail/mimemessage/Multipart;

    .line 236
    .local v3, multipart:Lcom/htc/util/mail/mimemessage/Multipart;
    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {v3}, Lcom/htc/util/mail/mimemessage/Multipart;->getCount()I

    move-result v1

    .local v1, count:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 237
    invoke-virtual {v3, v2}, Lcom/htc/util/mail/mimemessage/Multipart;->getBodyPart(I)Lcom/htc/util/mail/mimemessage/BodyPart;

    move-result-object v0

    .line 238
    .local v0, bodyPart:Lcom/htc/util/mail/mimemessage/BodyPart;
    invoke-static {v0, p1}, Lcom/htc/util/mail/mimemessage/MimeUtility;->findFirstPartByMimeType(Lcom/htc/util/mail/mimemessage/Part;Ljava/lang/String;)Lcom/htc/util/mail/mimemessage/Part;

    move-result-object v4

    .line 239
    .local v4, ret:Lcom/htc/util/mail/mimemessage/Part;
    if-eqz v4, :cond_0

    .line 247
    .end local v0           #bodyPart:Lcom/htc/util/mail/mimemessage/BodyPart;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #multipart:Lcom/htc/util/mail/mimemessage/Multipart;
    .end local v4           #ret:Lcom/htc/util/mail/mimemessage/Part;
    :goto_1
    return-object v4

    .line 236
    .restart local v0       #bodyPart:Lcom/htc/util/mail/mimemessage/BodyPart;
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v3       #multipart:Lcom/htc/util/mail/mimemessage/Multipart;
    .restart local v4       #ret:Lcom/htc/util/mail/mimemessage/Part;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 244
    .end local v0           #bodyPart:Lcom/htc/util/mail/mimemessage/BodyPart;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #multipart:Lcom/htc/util/mail/mimemessage/Multipart;
    .end local v4           #ret:Lcom/htc/util/mail/mimemessage/Part;
    :cond_1
    invoke-interface {p0}, Lcom/htc/util/mail/mimemessage/Part;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v4, p0

    .line 245
    goto :goto_1

    .line 247
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static findPartByContentId(Lcom/htc/util/mail/mimemessage/Part;Ljava/lang/String;)Lcom/htc/util/mail/mimemessage/Part;
    .locals 7
    .parameter "part"
    .parameter "contentId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 255
    invoke-interface {p0}, Lcom/htc/util/mail/mimemessage/Part;->getBody()Lcom/htc/util/mail/mimemessage/Body;

    move-result-object v6

    instance-of v6, v6, Lcom/htc/util/mail/mimemessage/Multipart;

    if-eqz v6, :cond_1

    .line 256
    invoke-interface {p0}, Lcom/htc/util/mail/mimemessage/Part;->getBody()Lcom/htc/util/mail/mimemessage/Body;

    move-result-object v4

    check-cast v4, Lcom/htc/util/mail/mimemessage/Multipart;

    .line 257
    .local v4, multipart:Lcom/htc/util/mail/mimemessage/Multipart;
    const/4 v3, 0x0

    .local v3, i:I
    invoke-virtual {v4}, Lcom/htc/util/mail/mimemessage/Multipart;->getCount()I

    move-result v2

    .local v2, count:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 258
    invoke-virtual {v4, v3}, Lcom/htc/util/mail/mimemessage/Multipart;->getBodyPart(I)Lcom/htc/util/mail/mimemessage/BodyPart;

    move-result-object v0

    .line 259
    .local v0, bodyPart:Lcom/htc/util/mail/mimemessage/BodyPart;
    invoke-static {v0, p1}, Lcom/htc/util/mail/mimemessage/MimeUtility;->findPartByContentId(Lcom/htc/util/mail/mimemessage/Part;Ljava/lang/String;)Lcom/htc/util/mail/mimemessage/Part;

    move-result-object v5

    .line 260
    .local v5, ret:Lcom/htc/util/mail/mimemessage/Part;
    if-eqz v5, :cond_0

    .line 269
    .end local v0           #bodyPart:Lcom/htc/util/mail/mimemessage/BodyPart;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #multipart:Lcom/htc/util/mail/mimemessage/Multipart;
    .end local v5           #ret:Lcom/htc/util/mail/mimemessage/Part;
    :goto_1
    return-object v5

    .line 257
    .restart local v0       #bodyPart:Lcom/htc/util/mail/mimemessage/BodyPart;
    .restart local v2       #count:I
    .restart local v3       #i:I
    .restart local v4       #multipart:Lcom/htc/util/mail/mimemessage/Multipart;
    .restart local v5       #ret:Lcom/htc/util/mail/mimemessage/Part;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 265
    .end local v0           #bodyPart:Lcom/htc/util/mail/mimemessage/BodyPart;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #multipart:Lcom/htc/util/mail/mimemessage/Multipart;
    .end local v5           #ret:Lcom/htc/util/mail/mimemessage/Part;
    :cond_1
    invoke-interface {p0}, Lcom/htc/util/mail/mimemessage/Part;->getContentId()Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, cid:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v5, p0

    .line 267
    goto :goto_1

    .line 269
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static fold(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .parameter "s"
    .parameter "usedCharacters"

    .prologue
    const/16 v8, 0x4c

    const/4 v7, 0x0

    .line 145
    const/16 v2, 0x4c

    .line 147
    .local v2, maxCharacters:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 148
    .local v1, length:I
    add-int v6, p1, v1

    if-gt v6, v8, :cond_0

    .line 158
    .end local p0
    :goto_0
    return-object p0

    .line 151
    .restart local p0
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .local v4, sb:Ljava/lang/StringBuilder;
    neg-int v0, p1

    .line 154
    .local v0, lastLineBreak:I
    invoke-static {p0, v7}, Lcom/htc/util/mail/mimemessage/MimeUtility;->indexOfWsp(Ljava/lang/String;I)I

    move-result v5

    .line 156
    .local v5, wspIdx:I
    :goto_1
    if-ne v5, v1, :cond_1

    .line 157
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 161
    :cond_1
    add-int/lit8 v6, v5, 0x1

    invoke-static {p0, v6}, Lcom/htc/util/mail/mimemessage/MimeUtility;->indexOfWsp(Ljava/lang/String;I)I

    move-result v3

    .line 163
    .local v3, nextWspIdx:I
    sub-int v6, v3, v0

    if-le v6, v8, :cond_2

    .line 164
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const-string v6, "\r\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    move v0, v5

    .line 169
    :cond_2
    move v5, v3

    .line 170
    goto :goto_1
.end method

.method public static foldAndEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "s"

    .prologue
    .line 90
    return-object p0
.end method

.method public static foldAndEncode2(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "s"
    .parameter "usedCharacters"

    .prologue
    .line 115
    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/codec/EncoderUtil$Usage;->TEXT_TOKEN:Lcom/htc/util/mail/lib/org/apache/james/mime4j/codec/EncoderUtil$Usage;

    invoke-static {p0, v1, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/codec/EncoderUtil;->encodeIfNecessary(Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/codec/EncoderUtil$Usage;I)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, encoded:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/util/mail/mimemessage/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "header"
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 206
    if-nez p0, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-object v4

    .line 209
    :cond_1
    invoke-static {p0}, Lcom/htc/util/mail/mimemessage/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 210
    .local v6, parts:[Ljava/lang/String;
    if-nez p1, :cond_2

    .line 211
    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 213
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, lowerCaseName:Ljava/lang/String;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    .line 215
    .local v5, part:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 216
    const-string v7, "="

    const/4 v8, 0x2

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v9

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 217
    .local v4, parameter:Ljava/lang/String;
    const-string v7, "\""

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "\""

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 218
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 214
    .end local v4           #parameter:Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getSubjectCharsetFromPart(Lcom/htc/util/mail/mimemessage/Part;)Ljava/lang/String;
    .locals 4
    .parameter "part"

    .prologue
    .line 562
    :try_start_0
    const-string v3, "=\\?([\\S]*)\\?([qQbB])\\?([^\\?]*)(\\?=)+"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 563
    .local v2, pattern:Ljava/util/regex/Pattern;
    invoke-interface {p0}, Lcom/htc/util/mail/mimemessage/Part;->getRawSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 564
    .local v1, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 565
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 570
    .end local v1           #matcher:Ljava/util/regex/Matcher;
    .end local v2           #pattern:Ljava/util/regex/Pattern;
    :goto_0
    return-object v3

    .line 567
    :catch_0
    move-exception v0

    .line 568
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 570
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getTextFromPart(Lcom/htc/util/mail/mimemessage/Part;)Ljava/lang/String;
    .locals 9
    .parameter "part"

    .prologue
    .line 285
    if-eqz p0, :cond_3

    :try_start_0
    invoke-interface {p0}, Lcom/htc/util/mail/mimemessage/Part;->getBody()Lcom/htc/util/mail/mimemessage/Body;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 286
    invoke-interface {p0}, Lcom/htc/util/mail/mimemessage/Part;->getBody()Lcom/htc/util/mail/mimemessage/Body;

    move-result-object v7

    invoke-interface {v7}, Lcom/htc/util/mail/mimemessage/Body;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 287
    .local v2, in:Ljava/io/InputStream;
    invoke-interface {p0}, Lcom/htc/util/mail/mimemessage/Part;->getMimeType()Ljava/lang/String;

    move-result-object v3

    .line 288
    .local v3, mimeType:Ljava/lang/String;
    if-eqz v3, :cond_3

    const-string v7, "text/*"

    invoke-static {v3, v7}, Lcom/htc/util/mail/mimemessage/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 293
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 294
    .local v5, out:Ljava/io/ByteArrayOutputStream;
    invoke-static {v2, v5}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 295
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 296
    const/4 v2, 0x0

    .line 301
    invoke-interface {p0}, Lcom/htc/util/mail/mimemessage/Part;->getContentType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "charset"

    invoke-static {v7, v8}, Lcom/htc/util/mail/mimemessage/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, charset:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 304
    invoke-static {p0}, Lcom/htc/util/mail/mimemessage/MimeUtility;->getSubjectCharsetFromPart(Lcom/htc/util/mail/mimemessage/Part;)Ljava/lang/String;

    move-result-object v0

    .line 307
    :cond_0
    if-eqz v0, :cond_1

    .line 311
    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil;->toJavaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    :cond_1
    if-nez v0, :cond_2

    .line 317
    const-string v0, "utf-8"

    .line 322
    :cond_2
    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 323
    .local v6, result:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 345
    .end local v0           #charset:Ljava/lang/String;
    .end local v2           #in:Ljava/io/InputStream;
    .end local v3           #mimeType:Ljava/lang/String;
    .end local v5           #out:Ljava/io/ByteArrayOutputStream;
    .end local v6           #result:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 329
    :catch_0
    move-exception v4

    .line 330
    .local v4, oom:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 345
    .end local v4           #oom:Ljava/lang/OutOfMemoryError;
    :cond_3
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 337
    :catch_1
    move-exception v1

    .line 338
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getTextFromPart(Lcom/htc/util/mail/mimemessage/Part;J)Ljava/lang/String;
    .locals 9
    .parameter "part"
    .parameter "size"

    .prologue
    .line 493
    if-eqz p0, :cond_3

    :try_start_0
    invoke-interface {p0}, Lcom/htc/util/mail/mimemessage/Part;->getBody()Lcom/htc/util/mail/mimemessage/Body;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 494
    invoke-interface {p0}, Lcom/htc/util/mail/mimemessage/Part;->getBody()Lcom/htc/util/mail/mimemessage/Body;

    move-result-object v7

    invoke-interface {v7}, Lcom/htc/util/mail/mimemessage/Body;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 495
    .local v2, in:Ljava/io/InputStream;
    invoke-interface {p0}, Lcom/htc/util/mail/mimemessage/Part;->getMimeType()Ljava/lang/String;

    move-result-object v3

    .line 496
    .local v3, mimeType:Ljava/lang/String;
    if-eqz v3, :cond_3

    const-string v7, "text/*"

    invoke-static {v3, v7}, Lcom/htc/util/mail/mimemessage/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 501
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 502
    .local v5, out:Ljava/io/ByteArrayOutputStream;
    invoke-static {v2, v5, p1, p2}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copyWithLimit(Ljava/io/InputStream;Ljava/io/OutputStream;J)J

    .line 503
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 504
    const/4 v2, 0x0

    .line 509
    invoke-interface {p0}, Lcom/htc/util/mail/mimemessage/Part;->getContentType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "charset"

    invoke-static {v7, v8}, Lcom/htc/util/mail/mimemessage/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, charset:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 512
    invoke-static {p0}, Lcom/htc/util/mail/mimemessage/MimeUtility;->getSubjectCharsetFromPart(Lcom/htc/util/mail/mimemessage/Part;)Ljava/lang/String;

    move-result-object v0

    .line 515
    :cond_0
    if-eqz v0, :cond_1

    .line 519
    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/CharsetUtil;->toJavaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 524
    :cond_1
    if-nez v0, :cond_2

    .line 525
    const-string v0, "utf-8"

    .line 530
    :cond_2
    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 531
    .local v6, result:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 551
    .end local v0           #charset:Ljava/lang/String;
    .end local v2           #in:Ljava/io/InputStream;
    .end local v3           #mimeType:Ljava/lang/String;
    .end local v5           #out:Ljava/io/ByteArrayOutputStream;
    .end local v6           #result:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 537
    :catch_0
    move-exception v4

    .line 538
    .local v4, oom:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 551
    .end local v4           #oom:Ljava/lang/OutOfMemoryError;
    :cond_3
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 544
    :catch_1
    move-exception v1

    .line 545
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static indexOfWsp(Ljava/lang/String;I)I
    .locals 4
    .parameter "s"
    .parameter "fromIndex"

    .prologue
    .line 180
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 181
    .local v2, len:I
    move v1, p1

    .local v1, index:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 182
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 183
    .local v0, c:C
    const/16 v3, 0x20

    if-eq v0, v3, :cond_0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_1

    .line 186
    .end local v0           #c:C
    .end local v1           #index:I
    :cond_0
    :goto_1
    return v1

    .line 181
    .restart local v0       #c:C
    .restart local v1       #index:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #c:C
    :cond_2
    move v1, v2

    .line 186
    goto :goto_1
.end method

.method public static mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "mimeType"
    .parameter "matchAgainst"

    .prologue
    .line 361
    const-string v1, "\\*"

    const-string v2, "\\.\\*"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 363
    .local v0, p:Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public static mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .parameter "mimeType"
    .parameter "matchAgainst"

    .prologue
    .line 376
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 377
    .local v3, matchType:Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/htc/util/mail/mimemessage/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 378
    const/4 v4, 0x1

    .line 381
    .end local v3           #matchType:Ljava/lang/String;
    :goto_1
    return v4

    .line 376
    .restart local v3       #matchType:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 381
    .end local v3           #matchType:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static unfold(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 56
    if-nez p0, :cond_1

    .line 57
    const/4 p0, 0x0

    .line 64
    .local v0, patternMatcher:Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    return-object p0

    .line 59
    .end local v0           #patternMatcher:Ljava/util/regex/Matcher;
    :cond_1
    sget-object v1, Lcom/htc/util/mail/mimemessage/MimeUtility;->PATTERN_CR_OR_LF:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 60
    .restart local v0       #patternMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    .line 62
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 79
    invoke-static {p0}, Lcom/htc/util/mail/mimemessage/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/util/mail/mimemessage/MimeUtility;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
