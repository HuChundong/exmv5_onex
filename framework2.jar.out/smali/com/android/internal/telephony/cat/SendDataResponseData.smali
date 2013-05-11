.class Lcom/android/internal/telephony/cat/SendDataResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field private mLength:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "len"

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 389
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/SendDataResponseData;->mLength:I

    .line 393
    iput p1, p0, Lcom/android/internal/telephony/cat/SendDataResponseData;->mLength:I

    .line 394
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 2
    .parameter "buf"

    .prologue
    .line 398
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_DATA_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0

    .line 399
    .local v0, tag:I
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 400
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 401
    iget v1, p0, Lcom/android/internal/telephony/cat/SendDataResponseData;->mLength:I

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 402
    return-void
.end method
