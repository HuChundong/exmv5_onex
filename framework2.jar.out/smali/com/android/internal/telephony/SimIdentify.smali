.class public Lcom/android/internal/telephony/SimIdentify;
.super Landroid/os/Handler;
.source "SimIdentify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SimIdentify$SimIdentifyCallback;
    }
.end annotation


# static fields
.field protected static final ALLREAD_MCC_MNC:Ljava/lang/String; = "46099"

.field protected static final APBW_DUAL_GSM_MCC_MNC:Ljava/lang/String; = "45400"

.field protected static final APBW_MCC_MNC:Ljava/lang/String; = "46605"

.field protected static final CDMA_MCC_MNC:Ljava/lang/String; = "46003"

.field protected static final CHINA_MCC:Ljava/lang/String; = "460"

.field public static DBG:Z = false

.field protected static final EVENT_READ_CDMA_IMSI_DONE:I = 0x1

.field protected static final EVENT_READ_GSM_IMSI_DONE:I = 0x2

.field protected static final GSM_MCC_MNC:Ljava/lang/String; = "46001"

.field public static final SIM_TYPE_ALL_READ:I = 0x3

.field public static final SIM_TYPE_APTG_DUALMODE:I = 0x6

.field public static final SIM_TYPE_INVALID:I = -0x1

.field public static final SIM_TYPE_RUIM:I = 0x0

.field public static final SIM_TYPE_SIM:I = 0x1

.field public static final SIM_TYPE_TELECOM_DUALMODE:I = 0x4

.field public static final SIM_TYPE_UNICOM_DUALMODE:I = 0x2

.field public static final SIM_TYPE_UNKNOWN_DUALSIM:I = 0x5

.field private static final TAG:Ljava/lang/String; = "SimIdentify"

.field public static TEST:Z

.field public static sMe:Lcom/android/internal/telephony/SimIdentify;

.field private static testNum:I


# instance fields
.field protected mCIMSIDone:Z

.field protected mCallback:Lcom/android/internal/telephony/SimIdentify$SimIdentifyCallback;

.field protected mCdmaImsi:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mGIMSIDone:Z

.field protected mGsmImsi:Ljava/lang/String;

.field protected mIccFh:Lcom/android/internal/telephony/IccFileHandler;

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field protected mSimType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/SimIdentify;->DBG:Z

    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/SimIdentify;->TEST:Z

    .line 57
    const/4 v0, 0x4

    sput v0, Lcom/android/internal/telephony/SimIdentify;->testNum:I

    .line 93
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/SimIdentify;->sMe:Lcom/android/internal/telephony/SimIdentify;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/SimIdentify;->mSimType:I

    .line 79
    iput-boolean v1, p0, Lcom/android/internal/telephony/SimIdentify;->mCIMSIDone:Z

    .line 80
    iput-boolean v1, p0, Lcom/android/internal/telephony/SimIdentify;->mGIMSIDone:Z

    .line 124
    sput-object p0, Lcom/android/internal/telephony/SimIdentify;->sMe:Lcom/android/internal/telephony/SimIdentify;

    .line 125
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SimIdentify$SimIdentifyCallback;)V
    .locals 3
    .parameter "phone"
    .parameter "callback"

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/SimIdentify;->mSimType:I

    .line 79
    iput-boolean v1, p0, Lcom/android/internal/telephony/SimIdentify;->mCIMSIDone:Z

    .line 80
    iput-boolean v1, p0, Lcom/android/internal/telephony/SimIdentify;->mGIMSIDone:Z

    .line 111
    iput-object p1, p0, Lcom/android/internal/telephony/SimIdentify;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 112
    iput-object p2, p0, Lcom/android/internal/telephony/SimIdentify;->mCallback:Lcom/android/internal/telephony/SimIdentify$SimIdentifyCallback;

    .line 113
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->mIccFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 114
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->mContext:Landroid/content/Context;

    .line 116
    sput-object p0, Lcom/android/internal/telephony/SimIdentify;->sMe:Lcom/android/internal/telephony/SimIdentify;

    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->mIccFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f22

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SimIdentify;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->mIccFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f07

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SimIdentify;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 120
    return-void
.end method

.method private bcdToString([BII)Ljava/lang/String;
    .locals 5
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v4, 0x9

    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, p3, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 479
    .local v1, ret:Ljava/lang/StringBuilder;
    move v0, p2

    .local v0, i:I
    :goto_0
    add-int v3, p2, p3

    if-ge v0, v3, :cond_0

    .line 483
    aget-byte v3, p1, v0

    and-int/lit8 v2, v3, 0xf

    .line 484
    .local v2, v:I
    if-le v2, v4, :cond_1

    .line 492
    .end local v2           #v:I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 485
    .restart local v2       #v:I
    :cond_1
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 487
    aget-byte v3, p1, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v2, v3, 0xf

    .line 488
    if-gt v2, v4, :cond_0

    .line 489
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 479
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private byteArrToHex([B)Ljava/lang/String;
    .locals 4
    .parameter "ba"

    .prologue
    .line 282
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 283
    .local v1, str:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p1, v0

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SimIdentify;->byteToHex(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    :cond_0
    return-object v1
.end method

.method private byteToHex(B)Ljava/lang/String;
    .locals 4
    .parameter "b"

    .prologue
    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .local v1, sb:Ljava/lang/StringBuilder;
    and-int/lit16 v0, p1, 0xff

    .line 276
    .local v0, bi:I
    const-string v2, "0123456789ABCDEF"

    shr-int/lit8 v3, v0, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 277
    const-string v2, "0123456789ABCDEF"

    and-int/lit8 v3, v0, 0xf

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private genCDMAImsi([B)V
    .locals 11
    .parameter "data"

    .prologue
    const/4 v8, 0x2

    const/4 v10, 0x1

    .line 447
    if-eqz p1, :cond_0

    array-length v6, p1

    const/16 v7, 0xa

    if-eq v6, v7, :cond_1

    .line 448
    :cond_0
    const-string v6, "SimIdentify"

    const-string v7, "Invalid CDMA IMSI"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :goto_0
    return-void

    .line 452
    :cond_1
    const-string v6, "SimIdentify"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SimIdentify;->byteArrToHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/4 v6, 0x7

    aget-byte v0, p1, v6

    .line 455
    .local v0, addrNum:B
    and-int/lit16 v6, v0, 0x80

    if-nez v6, :cond_2

    .line 456
    const-string v6, "SimIdentify"

    const-string v7, "CDMA IMSI not programmed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 460
    :cond_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 462
    .local v5, str:Ljava/lang/String;
    aget-byte v6, p1, v8

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    aget-byte v7, p1, v10

    and-int/lit16 v7, v7, 0xff

    or-int v4, v6, v7

    .line 463
    .local v4, s2:I
    const/4 v6, 0x5

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    const/4 v7, 0x4

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    const/4 v7, 0x3

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    or-int v3, v6, v7

    .line 464
    .local v3, s1:I
    const/4 v6, 0x6

    aget-byte v6, p1, v6

    and-int/lit16 v2, v6, 0xff

    .line 465
    .local v2, mnc:I
    const/16 v6, 0x9

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    const/16 v7, 0x8

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    or-int v1, v6, v7

    .line 467
    .local v1, mcc:I
    const-string v6, "%03d%02d"

    new-array v7, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SimIdentify;->genCDMAMcc(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SimIdentify;->genCDMAMnc(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/SimIdentify;->mCdmaImsi:Ljava/lang/String;

    .line 468
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/internal/telephony/SimIdentify;->mCdmaImsi:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/SimIdentify;->genCDMAMinStr(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/SimIdentify;->mCdmaImsi:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private genCDMAMcc(I)I
    .locals 7
    .parameter "mcc"

    .prologue
    .line 290
    const/4 v0, 0x0

    .line 291
    .local v0, d1:I
    const/4 v1, 0x0

    .line 292
    .local v1, d2:I
    const/4 v2, 0x0

    .line 293
    .local v2, d3:I
    const/4 v3, 0x0

    .line 295
    .local v3, t:I
    add-int/lit8 v3, p1, 0x6f

    .line 297
    rem-int/lit8 v2, v3, 0xa

    .line 298
    div-int/lit8 v3, v3, 0xa

    .line 299
    if-nez v2, :cond_0

    .line 300
    add-int/lit8 v3, v3, -0x1

    .line 303
    :cond_0
    rem-int/lit8 v1, v3, 0xa

    .line 304
    div-int/lit8 v3, v3, 0xa

    .line 305
    if-nez v1, :cond_1

    .line 306
    add-int/lit8 v3, v3, -0x1

    .line 309
    :cond_1
    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    .line 310
    const/4 v0, 0x0

    .line 315
    :goto_0
    mul-int/lit8 v4, v0, 0x64

    mul-int/lit8 v5, v1, 0xa

    add-int/2addr v4, v5

    add-int v3, v4, v2

    .line 317
    const-string v4, "SimIdentify"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CDMA MCC: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return v3

    .line 313
    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method private genCDMAMinStr(II)Ljava/lang/String;
    .locals 10
    .parameter "s1"
    .parameter "s2"

    .prologue
    const/16 v7, 0xa

    .line 348
    const/4 v0, 0x0

    .line 349
    .local v0, first_3_digits:I
    const/4 v2, 0x0

    .line 350
    .local v2, second_3_digits:I
    const/4 v5, 0x0

    .line 351
    .local v5, thousands_digit:I
    const/4 v1, 0x0

    .line 353
    .local v1, last_3_digits:I
    const/4 v4, 0x0

    .line 354
    .local v4, temp1:I
    const/4 v3, 0x0

    .line 357
    .local v3, temp:I
    and-int/lit16 v0, p2, 0x3ff

    .line 358
    ushr-int/lit8 v6, p1, 0xe

    and-int/lit16 v2, v6, 0x3ff

    .line 359
    ushr-int/lit8 v6, p1, 0xa

    and-int/lit8 v5, v6, 0xf

    .line 360
    and-int/lit16 v1, p1, 0x3ff

    .line 364
    move v3, v0

    .line 365
    div-int/lit8 v4, v3, 0x64

    .line 366
    add-int/lit8 v4, v4, 0x1

    .line 367
    if-ne v4, v7, :cond_0

    .line 368
    const/4 v4, 0x0

    .line 369
    :cond_0
    rem-int/lit8 v3, v3, 0x64

    .line 370
    mul-int/lit8 v0, v4, 0x64

    .line 372
    div-int/lit8 v4, v3, 0xa

    .line 373
    add-int/lit8 v4, v4, 0x1

    .line 374
    if-ne v4, v7, :cond_1

    .line 375
    const/4 v4, 0x0

    .line 376
    :cond_1
    rem-int/lit8 v3, v3, 0xa

    .line 377
    mul-int/lit8 v6, v4, 0xa

    add-int/2addr v0, v6

    .line 379
    move v4, v3

    .line 380
    add-int/lit8 v4, v4, 0x1

    .line 381
    if-ne v4, v7, :cond_2

    .line 382
    const/4 v4, 0x0

    .line 383
    :cond_2
    add-int/2addr v0, v4

    .line 386
    move v3, v2

    .line 387
    div-int/lit8 v4, v3, 0x64

    .line 388
    add-int/lit8 v4, v4, 0x1

    .line 389
    if-ne v4, v7, :cond_3

    .line 390
    const/4 v4, 0x0

    .line 391
    :cond_3
    rem-int/lit8 v3, v3, 0x64

    .line 392
    mul-int/lit8 v2, v4, 0x64

    .line 394
    div-int/lit8 v4, v3, 0xa

    .line 395
    add-int/lit8 v4, v4, 0x1

    .line 396
    if-ne v4, v7, :cond_4

    .line 397
    const/4 v4, 0x0

    .line 398
    :cond_4
    rem-int/lit8 v3, v3, 0xa

    .line 399
    mul-int/lit8 v6, v4, 0xa

    add-int/2addr v2, v6

    .line 401
    move v4, v3

    .line 402
    add-int/lit8 v4, v4, 0x1

    .line 403
    if-ne v4, v7, :cond_5

    .line 404
    const/4 v4, 0x0

    .line 405
    :cond_5
    add-int/2addr v2, v4

    .line 408
    rem-int/lit8 v5, v5, 0xa

    .line 410
    move v3, v1

    .line 412
    div-int/lit8 v4, v3, 0x64

    .line 413
    add-int/lit8 v4, v4, 0x1

    .line 414
    if-ne v4, v7, :cond_6

    .line 415
    const/4 v4, 0x0

    .line 416
    :cond_6
    rem-int/lit8 v3, v3, 0x64

    .line 417
    mul-int/lit8 v1, v4, 0x64

    .line 419
    div-int/lit8 v4, v3, 0xa

    .line 420
    add-int/lit8 v4, v4, 0x1

    .line 421
    if-ne v4, v7, :cond_7

    .line 422
    const/4 v4, 0x0

    .line 423
    :cond_7
    rem-int/lit8 v3, v3, 0xa

    .line 424
    mul-int/lit8 v6, v4, 0xa

    add-int/2addr v1, v6

    .line 426
    move v4, v3

    .line 427
    add-int/lit8 v4, v4, 0x1

    .line 428
    if-ne v4, v7, :cond_8

    .line 429
    const/4 v4, 0x0

    .line 430
    :cond_8
    add-int/2addr v1, v4

    .line 433
    const-string v6, "%03d%03d%01d%03d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private genCDMAMnc(I)I
    .locals 6
    .parameter "mnc"

    .prologue
    .line 323
    const/4 v0, 0x0

    .line 324
    .local v0, d1:I
    const/4 v1, 0x0

    .line 325
    .local v1, d2:I
    const/4 v2, 0x0

    .line 327
    .local v2, t:I
    add-int/lit8 v2, p1, 0xb

    .line 328
    rem-int/lit8 v1, v2, 0xa

    .line 329
    div-int/lit8 v2, v2, 0xa

    .line 330
    if-nez v1, :cond_0

    .line 331
    add-int/lit8 v2, v2, -0x1

    .line 334
    :cond_0
    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 335
    const/4 v0, 0x0

    .line 341
    :goto_0
    mul-int/lit8 v3, v0, 0xa

    add-int v2, v3, v1

    .line 342
    const-string v3, "SimIdentify"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CDMA MNC: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    return v2

    .line 338
    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private genGSMImsi([B)V
    .locals 5
    .parameter "data"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 498
    if-eqz p1, :cond_0

    aget-byte v0, p1, v4

    if-ne v0, v3, :cond_0

    array-length v0, p1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    .line 499
    :cond_0
    const-string v0, "SimIdentify"

    const-string v1, "Invalid GSM IMSI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :goto_0
    return-void

    .line 503
    :cond_1
    const-string v0, "SimIdentify"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SimIdentify;->byteArrToHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-direct {p0, p1, v2, v3}, Lcom/android/internal/telephony/SimIdentify;->bcdToString([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->mGsmImsi:Ljava/lang/String;

    .line 506
    const-string v0, "SimIdentify"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GSM mcc/mnc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SimIdentify;->mGsmImsi:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/internal/telephony/SimIdentify;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/android/internal/telephony/SimIdentify;->sMe:Lcom/android/internal/telephony/SimIdentify;

    return-object v0
.end method

.method private hexCharToInt(C)I
    .locals 1
    .parameter "c"

    .prologue
    .line 249
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    add-int/lit8 v0, p1, -0x30

    .line 253
    :goto_0
    return v0

    .line 250
    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_1

    const/16 v0, 0x46

    if-gt p1, v0, :cond_1

    add-int/lit8 v0, p1, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 251
    :cond_1
    const/16 v0, 0x61

    if-lt p1, v0, :cond_2

    const/16 v0, 0x66

    if-gt p1, v0, :cond_2

    add-int/lit8 v0, p1, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 253
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hexStringToBytes(Ljava/lang/String;)[B
    .locals 6
    .parameter "s"

    .prologue
    .line 259
    if-nez p1, :cond_1

    const/4 v1, 0x0

    .line 270
    :cond_0
    return-object v1

    .line 261
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 263
    .local v2, sz:I
    div-int/lit8 v3, v2, 0x2

    new-array v1, v3, [B

    .line 265
    .local v1, ret:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 266
    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SimIdentify;->hexCharToInt(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SimIdentify;->hexCharToInt(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 265
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private isAPTGDualmodeCard(Ljava/lang/String;)Z
    .locals 1
    .parameter "MccMnc"

    .prologue
    .line 572
    const-string v0, "45400"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    const/4 v0, 0x1

    .line 574
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyClient()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x5

    const/4 v4, 0x0

    .line 523
    iget-boolean v2, p0, Lcom/android/internal/telephony/SimIdentify;->mCIMSIDone:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/telephony/SimIdentify;->mGIMSIDone:Z

    if-nez v2, :cond_1

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/SimIdentify;->mCdmaImsi:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/SimIdentify;->mGsmImsi:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 527
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/SimIdentify;->mSimType:I

    .line 564
    :goto_1
    const-string v2, "SimIdentify"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSimType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/SimIdentify;->mSimType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v2, p0, Lcom/android/internal/telephony/SimIdentify;->mCallback:Lcom/android/internal/telephony/SimIdentify$SimIdentifyCallback;

    if-eqz v2, :cond_0

    .line 567
    iget-object v2, p0, Lcom/android/internal/telephony/SimIdentify;->mCallback:Lcom/android/internal/telephony/SimIdentify$SimIdentifyCallback;

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/SimIdentify$SimIdentifyCallback;->onIdentifyDone(Lcom/android/internal/telephony/SimIdentify;)V

    goto :goto_0

    .line 529
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/SimIdentify;->mCdmaImsi:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 530
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/SimIdentify;->mSimType:I

    goto :goto_1

    .line 532
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/SimIdentify;->mGsmImsi:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 533
    iput v4, p0, Lcom/android/internal/telephony/SimIdentify;->mSimType:I

    goto :goto_1

    .line 537
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/SimIdentify;->mCdmaImsi:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, cdmaMccMnc:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/SimIdentify;->mGsmImsi:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 541
    .local v1, gsmMccMnc:Ljava/lang/String;
    const-string v2, "46605"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 543
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SimIdentify;->isAPTGDualmodeCard(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 544
    const/4 v2, 0x6

    iput v2, p0, Lcom/android/internal/telephony/SimIdentify;->mSimType:I

    goto :goto_1

    .line 546
    :cond_5
    iput v4, p0, Lcom/android/internal/telephony/SimIdentify;->mSimType:I

    goto :goto_1

    .line 549
    :cond_6
    const-string v2, "46003"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 550
    iput v3, p0, Lcom/android/internal/telephony/SimIdentify;->mSimType:I

    goto :goto_1

    .line 551
    :cond_7
    const-string v2, "46001"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 552
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/internal/telephony/SimIdentify;->mSimType:I

    goto :goto_1

    .line 553
    :cond_8
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "460"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 554
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/internal/telephony/SimIdentify;->mSimType:I

    goto :goto_1

    .line 555
    :cond_9
    const-string v2, "46099"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/internal/telephony/SimIdentify;->mCdmaImsi:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/SimIdentify;->mGsmImsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 558
    :cond_a
    iput v5, p0, Lcom/android/internal/telephony/SimIdentify;->mSimType:I

    goto/16 :goto_1

    .line 560
    :cond_b
    iput v4, p0, Lcom/android/internal/telephony/SimIdentify;->mSimType:I

    goto/16 :goto_1
.end method

.method private queryInITUList(Ljava/lang/String;)Z
    .locals 4
    .parameter "mccmnc"

    .prologue
    .line 511
    sget-boolean v1, Lcom/android/internal/telephony/SimIdentify;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "SimIdentify"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query MCCMNC "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/SimIdentify;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, strName:Ljava/lang/String;
    if-ne v0, p1, :cond_1

    .line 516
    const/4 v1, 0x0

    .line 518
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public CDMAImsi([B)Ljava/lang/String;
    .locals 13
    .parameter "data"

    .prologue
    const/4 v10, 0x2

    const/4 v12, 0x1

    .line 587
    const-string v1, ""

    .line 588
    .local v1, mImsi:Ljava/lang/String;
    if-eqz p1, :cond_0

    array-length v8, p1

    const/16 v9, 0xa

    if-eq v8, v9, :cond_1

    .line 589
    :cond_0
    const-string v8, "SimIdentify"

    const-string v9, "Invalid CDMA IMSI"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 611
    .end local v1           #mImsi:Ljava/lang/String;
    .local v2, mImsi:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 593
    .end local v2           #mImsi:Ljava/lang/String;
    .restart local v1       #mImsi:Ljava/lang/String;
    :cond_1
    const-string v8, "SimIdentify"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SimIdentify;->byteArrToHex([B)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const/4 v8, 0x7

    aget-byte v0, p1, v8

    .line 596
    .local v0, addrNum:B
    and-int/lit16 v8, v0, 0x80

    if-nez v8, :cond_2

    .line 597
    const-string v8, "SimIdentify"

    const-string v9, "CDMA IMSI not programmed"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 598
    .end local v1           #mImsi:Ljava/lang/String;
    .restart local v2       #mImsi:Ljava/lang/String;
    goto :goto_0

    .line 601
    .end local v2           #mImsi:Ljava/lang/String;
    .restart local v1       #mImsi:Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    .line 603
    .local v7, str:Ljava/lang/String;
    aget-byte v8, p1, v10

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    aget-byte v9, p1, v12

    and-int/lit16 v9, v9, 0xff

    or-int v6, v8, v9

    .line 604
    .local v6, s2:I
    const/4 v8, 0x5

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    const/4 v9, 0x4

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    const/4 v9, 0x3

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    or-int v5, v8, v9

    .line 605
    .local v5, s1:I
    const/4 v8, 0x6

    aget-byte v8, p1, v8

    and-int/lit16 v4, v8, 0xff

    .line 606
    .local v4, mnc:I
    const/16 v8, 0x9

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    const/16 v9, 0x8

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    or-int v3, v8, v9

    .line 608
    .local v3, mcc:I
    const-string v8, "%03d%02d"

    new-array v9, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SimIdentify;->genCDMAMcc(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SimIdentify;->genCDMAMnc(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 609
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/SimIdentify;->genCDMAMinStr(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 611
    .end local v1           #mImsi:Ljava/lang/String;
    .restart local v2       #mImsi:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public GSMImsi([B)Ljava/lang/String;
    .locals 7
    .parameter "data"

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 616
    const-string v0, ""

    .line 617
    .local v0, mImsi:Ljava/lang/String;
    if-eqz p1, :cond_0

    aget-byte v2, p1, v5

    if-ne v2, v6, :cond_0

    array-length v2, p1

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1

    .line 618
    :cond_0
    const-string v2, "SimIdentify"

    const-string v3, "Invalid GSM IMSI"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 626
    .end local v0           #mImsi:Ljava/lang/String;
    .local v1, mImsi:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 622
    .end local v1           #mImsi:Ljava/lang/String;
    .restart local v0       #mImsi:Ljava/lang/String;
    :cond_1
    const-string v2, "SimIdentify"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SimIdentify;->byteArrToHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    invoke-direct {p0, p1, v4, v6}, Lcom/android/internal/telephony/SimIdentify;->bcdToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 625
    const-string v2, "SimIdentify"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GSM mcc/mnc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 626
    .end local v0           #mImsi:Ljava/lang/String;
    .restart local v1       #mImsi:Ljava/lang/String;
    goto :goto_0
.end method

.method public getCDMAImsi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->mCdmaImsi:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 149
    const-string v0, ""

    .line 151
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->mCdmaImsi:Ljava/lang/String;

    goto :goto_0
.end method

.method public getGSMImsi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->mGsmImsi:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 164
    const-string v0, ""

    .line 166
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->mGsmImsi:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSimType()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/android/internal/telephony/SimIdentify;->mSimType:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 176
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 243
    :goto_0
    return-void

    .line 178
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 179
    .local v0, ar:Landroid/os/AsyncResult;
    iput-boolean v3, p0, Lcom/android/internal/telephony/SimIdentify;->mCIMSIDone:Z

    .line 182
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 183
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SimIdentify;->genCDMAImsi([B)V

    .line 187
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/SimIdentify;->notifyClient()V

    goto :goto_0

    .line 185
    :cond_0
    const-string v2, "SimIdentify"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_READ_CDMA_IMSI_DONE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 191
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 192
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iput-boolean v3, p0, Lcom/android/internal/telephony/SimIdentify;->mGIMSIDone:Z

    .line 194
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 195
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SimIdentify;->genGSMImsi([B)V

    .line 236
    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/telephony/SimIdentify;->notifyClient()V

    goto :goto_0

    .line 197
    :cond_2
    const-string v2, "SimIdentify"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_READ_GSM_IMSI_DONE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    sget-boolean v2, Lcom/android/internal/telephony/SimIdentify;->TEST:Z

    if-eqz v2, :cond_1

    .line 201
    const-string v2, "SimIdentify"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "testNum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/telephony/SimIdentify;->testNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    sget v2, Lcom/android/internal/telephony/SimIdentify;->testNum:I

    packed-switch v2, :pswitch_data_1

    goto :goto_2

    .line 204
    :pswitch_2
    const-string v2, "084906102143658709"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SimIdentify;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 205
    .local v1, imsi:[B
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SimIdentify;->genGSMImsi([B)V

    .line 206
    const-string v2, "SimIdentify"

    const-string v3, "Expect 2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 209
    .end local v1           #imsi:[B
    :pswitch_3
    const-string v2, "084906992143658709"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SimIdentify;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 210
    .restart local v1       #imsi:[B
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SimIdentify;->genGSMImsi([B)V

    .line 211
    const-string v2, "SimIdentify"

    const-string v3, "Expect 3"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 214
    .end local v1           #imsi:[B
    :pswitch_4
    const-string v2, "084906306614335259"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SimIdentify;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 215
    .restart local v1       #imsi:[B
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SimIdentify;->genGSMImsi([B)V

    .line 216
    const-string v2, "SimIdentify"

    const-string v3, "Expect 3"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 219
    .end local v1           #imsi:[B
    :pswitch_5
    const-string v2, "080000006614335259"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SimIdentify;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 220
    .restart local v1       #imsi:[B
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SimIdentify;->genGSMImsi([B)V

    .line 221
    const-string v2, "SimIdentify"

    const-string v3, "Expect 3"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 224
    .end local v1           #imsi:[B
    :pswitch_6
    const-string v2, "084921102143658709"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SimIdentify;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 225
    .restart local v1       #imsi:[B
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SimIdentify;->genGSMImsi([B)V

    .line 226
    const-string v2, "SimIdentify"

    const-string v3, "Expect 4"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 202
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
