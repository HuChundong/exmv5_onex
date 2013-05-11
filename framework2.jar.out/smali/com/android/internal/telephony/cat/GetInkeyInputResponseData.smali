.class Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# static fields
.field protected static final GET_INKEY_NO:B = 0x0t

.field protected static final GET_INKEY_YES:B = 0x1t


# instance fields
.field public mInData:Ljava/lang/String;

.field private mIsPacked:Z

.field private mIsUcs2:Z

.field private mIsYesNo:Z

.field private mYesNoResponse:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1
    .parameter "inData"
    .parameter "ucs2"
    .parameter "packed"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 85
    iput-boolean p2, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    .line 86
    iput-boolean p3, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    .line 87
    iput-object p1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsYesNo:Z

    .line 89
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "yesNoResponse"

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 93
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    .line 94
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsYesNo:Z

    .line 97
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mYesNoResponse:Z

    .line 98
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 14
    .parameter "buf"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 102
    if-nez p1, :cond_1

    .line 172
    :cond_0
    return-void

    .line 107
    :cond_1
    sget-object v12, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v12}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v12

    or-int/lit16 v8, v12, 0x80

    .line 108
    .local v8, tag:I
    invoke-virtual {p1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 112
    iget-boolean v12, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsYesNo:Z

    if-eqz v12, :cond_4

    .line 113
    new-array v3, v10, [B

    .line 114
    .local v3, data:[B
    iget-boolean v12, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mYesNoResponse:Z

    if-eqz v12, :cond_3

    :goto_0
    aput-byte v10, v3, v11

    .line 152
    :goto_1
    array-length v10, v3

    add-int/lit8 v10, v10, 0x1

    const/16 v12, 0x7f

    if-le v10, v12, :cond_2

    .line 153
    const/16 v10, 0x81

    invoke-virtual {p1, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 158
    :cond_2
    array-length v10, v3

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {p1, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 161
    iget-boolean v10, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    if-eqz v10, :cond_8

    .line 162
    const/16 v10, 0x8

    invoke-virtual {p1, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 169
    :goto_2
    move-object v0, v3

    .local v0, arr$:[B
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_3
    if-ge v5, v6, :cond_0

    aget-byte v1, v0, v5

    .line 170
    .local v1, b:B
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 169
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .end local v0           #arr$:[B
    .end local v1           #b:B
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_3
    move v10, v11

    .line 114
    goto :goto_0

    .line 115
    .end local v3           #data:[B
    :cond_4
    iget-object v10, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_7

    .line 117
    :try_start_0
    iget-boolean v10, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    if-eqz v10, :cond_5

    .line 120
    iget-object v10, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    const-string v12, "UTF-16BE"

    invoke-virtual {v10, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .restart local v3       #data:[B
    goto :goto_1

    .line 122
    .end local v3           #data:[B
    :cond_5
    iget-boolean v10, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    if-eqz v10, :cond_6

    .line 123
    iget-object v10, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v7

    .line 125
    .local v7, size:I
    iget-object v10, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v10, v12, v13}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;II)[B

    move-result-object v9

    .line 129
    .local v9, tempData:[B
    array-length v10, v9

    add-int/lit8 v2, v10, -0x1

    .line 130
    .local v2, copySize:I
    new-array v3, v2, [B

    .line 136
    .restart local v3       #data:[B
    const/4 v10, 0x1

    const/4 v12, 0x0

    invoke-static {v9, v10, v3, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 141
    .end local v2           #copySize:I
    .end local v3           #data:[B
    .end local v7           #size:I
    .end local v9           #tempData:[B
    :catch_0
    move-exception v4

    .line 142
    .local v4, e:Ljava/io/UnsupportedEncodingException;
    new-array v3, v11, [B

    .line 145
    .restart local v3       #data:[B
    goto :goto_1

    .line 139
    .end local v3           #data:[B
    .end local v4           #e:Ljava/io/UnsupportedEncodingException;
    :cond_6
    :try_start_1
    iget-object v10, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .restart local v3       #data:[B
    goto :goto_1

    .line 143
    .end local v3           #data:[B
    :catch_1
    move-exception v4

    .line 144
    .local v4, e:Lcom/android/internal/telephony/EncodeException;
    new-array v3, v11, [B

    .line 145
    .restart local v3       #data:[B
    goto :goto_1

    .line 147
    .end local v3           #data:[B
    .end local v4           #e:Lcom/android/internal/telephony/EncodeException;
    :cond_7
    new-array v3, v11, [B

    .restart local v3       #data:[B
    goto :goto_1

    .line 163
    :cond_8
    iget-boolean v10, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    if-eqz v10, :cond_9

    .line 164
    invoke-virtual {p1, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 166
    :cond_9
    const/4 v10, 0x4

    invoke-virtual {p1, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2
.end method
