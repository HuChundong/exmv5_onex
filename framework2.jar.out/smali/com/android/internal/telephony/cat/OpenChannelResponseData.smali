.class Lcom/android/internal/telephony/cat/OpenChannelResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field private bearer:Lcom/android/internal/telephony/cat/BearerDescription;

.field private bufSize:I

.field private channelStatus:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(ILjava/lang/Integer;Lcom/android/internal/telephony/cat/BearerDescription;)V
    .locals 0
    .parameter "bufSize"
    .parameter "channelStatus"
    .parameter "bearer"

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 313
    iput p1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bufSize:I

    .line 314
    iput-object p2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->channelStatus:Ljava/lang/Integer;

    .line 315
    iput-object p3, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bearer:Lcom/android/internal/telephony/cat/BearerDescription;

    .line 316
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 6
    .parameter "buf"

    .prologue
    const/4 v5, 0x2

    .line 322
    iget-object v2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->channelStatus:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 323
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    .line 324
    .local v1, tag:I
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 325
    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 326
    iget-object v2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->channelStatus:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 327
    iget-object v2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->channelStatus:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 330
    .end local v1           #tag:I
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bearer:Lcom/android/internal/telephony/cat/BearerDescription;

    if-eqz v2, :cond_1

    .line 331
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BEARER_DESC:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    .line 332
    .restart local v1       #tag:I
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 333
    const/4 v0, 0x1

    .line 334
    .local v0, len:I
    iget-object v2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bearer:Lcom/android/internal/telephony/cat/BearerDescription;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BearerDescription;->parameters:[B

    if-eqz v2, :cond_2

    .line 335
    iget-object v2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bearer:Lcom/android/internal/telephony/cat/BearerDescription;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BearerDescription;->parameters:[B

    array-length v2, v2

    add-int/2addr v0, v2

    .line 336
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 337
    iget-object v2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bearer:Lcom/android/internal/telephony/cat/BearerDescription;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BearerDescription;->type:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->value()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 338
    iget-object v2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bearer:Lcom/android/internal/telephony/cat/BearerDescription;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BearerDescription;->parameters:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bearer:Lcom/android/internal/telephony/cat/BearerDescription;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/BearerDescription;->parameters:[B

    array-length v4, v4

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 346
    .end local v0           #len:I
    .end local v1           #tag:I
    :cond_1
    :goto_0
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BUFFER_SIZE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    .line 347
    .restart local v1       #tag:I
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 348
    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 349
    iget v2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bufSize:I

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 350
    iget v2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bufSize:I

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 351
    return-void

    .line 341
    .restart local v0       #len:I
    :cond_2
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 342
    iget-object v2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bearer:Lcom/android/internal/telephony/cat/BearerDescription;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BearerDescription;->type:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->value()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method
