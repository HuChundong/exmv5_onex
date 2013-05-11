.class Lcom/android/internal/telephony/cat/ReceiveDataResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field private mData:[B

.field private mLength:I


# direct methods
.method public constructor <init>([BI)V
    .locals 1
    .parameter "data"
    .parameter "len"

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 356
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mData:[B

    .line 357
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mLength:I

    .line 361
    iput-object p1, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mData:[B

    .line 362
    iput p2, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mLength:I

    .line 363
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 7
    .parameter "buf"

    .prologue
    .line 367
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_DATA:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 369
    .local v4, tag:I
    iget-object v5, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mData:[B

    if-eqz v5, :cond_1

    .line 370
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 371
    iget-object v5, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mData:[B

    array-length v5, v5

    const/16 v6, 0x7f

    if-le v5, v6, :cond_0

    .line 372
    const/16 v5, 0x81

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 373
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mData:[B

    array-length v5, v5

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 375
    iget-object v0, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mData:[B

    .local v0, arr$:[B
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-byte v1, v0, v2

    .line 376
    .local v1, b:B
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 375
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 380
    .end local v0           #arr$:[B
    .end local v1           #b:B
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_DATA_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 381
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 382
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 383
    iget v5, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mLength:I

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 384
    return-void
.end method
