.class Lcom/android/internal/telephony/cat/ChannelStatusResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field private channelStatus:[I


# direct methods
.method public constructor <init>([I)V
    .locals 0
    .parameter "channelStatus"

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 411
    iput-object p1, p0, Lcom/android/internal/telephony/cat/ChannelStatusResponseData;->channelStatus:[I

    .line 412
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 6
    .parameter "buf"

    .prologue
    .line 416
    iget-object v5, p0, Lcom/android/internal/telephony/cat/ChannelStatusResponseData;->channelStatus:[I

    if-eqz v5, :cond_1

    .line 417
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    .line 418
    .local v4, tag:I
    iget-object v0, p0, Lcom/android/internal/telephony/cat/ChannelStatusResponseData;->channelStatus:[I

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 419
    .local v3, status:I
    if-lez v3, :cond_0

    .line 420
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 421
    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 422
    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 423
    and-int/lit16 v5, v3, 0xff

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 418
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 427
    .end local v0           #arr$:[I
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #status:I
    .end local v4           #tag:I
    :cond_1
    return-void
.end method
