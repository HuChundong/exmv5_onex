.class public Lcom/htc/wrap/android/telephony/HtcWrapSignalStrength;
.super Landroid/telephony/SignalStrength;
.source "HtcWrapSignalStrength.java"


# static fields
.field public static final NUM_SIGNAL_STRENGTH_BINS:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 8
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIZ)V
    .locals 17
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "lteSignalStrength"
    .parameter "lteRsrp"
    .parameter "lteCqi"
    .parameter "gsm"

    .prologue
    .line 16
    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v12, p10

    move/from16 v16, p11

    invoke-direct/range {v0 .. v16}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIIIIZ)V

    .line 22
    return-void
.end method

.method public constructor <init>(IIIIIIIZIIIIIII)V
    .locals 17
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "gsm"
    .parameter "gsmDbm"
    .parameter "gsmEcno"
    .parameter "lteSignalStrength"
    .parameter "lteRsrp"
    .parameter "lteRsrq"
    .parameter "lteRssnr"
    .parameter "lteCqi"

    .prologue
    .line 29
    const/4 v15, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p11

    move/from16 v9, p12

    move/from16 v10, p13

    move/from16 v11, p14

    move/from16 v12, p15

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v16, p8

    invoke-direct/range {v0 .. v16}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIIIIZ)V

    .line 35
    return-void
.end method

.method public static getCdmaDbm(Landroid/telephony/SignalStrength;)I
    .locals 2
    .parameter "signalStrengh"

    .prologue
    .line 120
    if-eqz p0, :cond_0

    .line 121
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    return v0

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "signalStrengh is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCdmaEcio(Landroid/telephony/SignalStrength;)I
    .locals 2
    .parameter "signalStrengh"

    .prologue
    .line 127
    if-eqz p0, :cond_0

    .line 128
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v0

    return v0

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "signalStrengh is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getEvdoDbm(Landroid/telephony/SignalStrength;)I
    .locals 2
    .parameter "signalStrengh"

    .prologue
    .line 134
    if-eqz p0, :cond_0

    .line 135
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    return v0

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "signalStrengh is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getEvdoEcio(Landroid/telephony/SignalStrength;)I
    .locals 2
    .parameter "signalStrengh"

    .prologue
    .line 141
    if-eqz p0, :cond_0

    .line 142
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoEcio()I

    move-result v0

    return v0

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "signalStrengh is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getEvdoSnr(Landroid/telephony/SignalStrength;)I
    .locals 2
    .parameter "signalStrengh"

    .prologue
    .line 148
    if-eqz p0, :cond_0

    .line 149
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v0

    return v0

    .line 150
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "signalStrengh is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getEvdoSignalBar()I
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Landroid/telephony/SignalStrength;->getEvdoSignalBar()I

    move-result v0

    return v0
.end method

.method public getGsmEcno()I
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Landroid/telephony/SignalStrength;->getGsmEcno()I

    move-result v0

    return v0
.end method

.method public getGsmSignalDbm()I
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Landroid/telephony/SignalStrength;->getGsmSignalDbm()I

    move-result v0

    return v0
.end method

.method public getLteCqi()I
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Landroid/telephony/SignalStrength;->getLteCqi()I

    move-result v0

    return v0
.end method

.method public getLteRsrp()I
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Landroid/telephony/SignalStrength;->getLteRsrp()I

    move-result v0

    return v0
.end method

.method public getLteRsrq()I
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Landroid/telephony/SignalStrength;->getLteRsrq()I

    move-result v0

    return v0
.end method

.method public getLteRssnr()I
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Landroid/telephony/SignalStrength;->getLteRssnr()I

    move-result v0

    return v0
.end method

.method public getLteSignalStrength()I
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Landroid/telephony/SignalStrength;->getLteSignalStrength()I

    move-result v0

    return v0
.end method
