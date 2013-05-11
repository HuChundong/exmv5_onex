.class public Landroid/telephony/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/telephony/HtcIfSignalStrength;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field public static final INVALID_SNR:I = 0x7fffffff

.field private static final LOG_TAG:Ljava/lang/String; = "SignalStrength"

.field public static final NUM_SIGNAL_STRENGTH_BINS:I = 0x5

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String; = null

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1


# instance fields
.field private isGsm:Z

.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSignalBar:I

.field private mEvdoSnr:I

.field private mGsmBitErrorRate:I

.field private mGsmEcno:I

.field private mGsmSignalDbm:I

.field private mGsmSignalStrength:I

.field private mHtcLteRsrp:I

.field private mHtcLteRsrq:I

.field private mLteCqi:I

.field private mLteRsrp:I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "none"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "poor"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "moderate"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "good"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "great"

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    .line 345
    new-instance v0, Landroid/telephony/SignalStrength$1;

    invoke-direct {v0}, Landroid/telephony/SignalStrength$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 103
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/16 v0, 0x63

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 105
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 106
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 107
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 108
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 109
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 110
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 111
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 112
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 113
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 114
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 115
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 118
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    .line 119
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    .line 122
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    .line 125
    iput v1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    .line 126
    iput v1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    .line 128
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIIIIIZ)V
    .locals 1
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "lteSignalStrength"
    .parameter "lteRsrp"
    .parameter "lteRsrq"
    .parameter "lteRssnr"
    .parameter "lteCqi"
    .parameter "gsmSignalDbm"
    .parameter "gsmEcno"
    .parameter "evdoSignalBar"
    .parameter "htcLteRsrp"
    .parameter "htcLteRsrq"
    .parameter "gsm"

    .prologue
    .line 218
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 220
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 221
    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 222
    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 223
    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 224
    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 225
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 226
    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 227
    iput p9, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 228
    iput p10, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 229
    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 230
    iput p12, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 231
    move/from16 v0, p16

    iput v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    .line 232
    move/from16 v0, p17

    iput v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    .line 233
    move/from16 v0, p18

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 234
    move/from16 v0, p15

    invoke-direct {p0, p13, p14, v0}, Landroid/telephony/SignalStrength;->initHtcAddFields(III)V

    .line 236
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIIIZ)V
    .locals 1
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "lteSignalStrength"
    .parameter "lteRsrp"
    .parameter "lteRsrq"
    .parameter "lteRssnr"
    .parameter "lteCqi"
    .parameter "gsmSignalDbm"
    .parameter "gsmEcno"
    .parameter "evdoSignalBar"
    .parameter "gsm"

    .prologue
    .line 193
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 195
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 196
    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 197
    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 198
    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 199
    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 200
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 201
    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 202
    iput p9, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 203
    iput p10, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 204
    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 205
    iput p12, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 206
    move/from16 v0, p16

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 207
    move/from16 v0, p15

    invoke-direct {p0, p13, p14, v0}, Landroid/telephony/SignalStrength;->initHtcAddFields(III)V

    .line 208
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZ)V
    .locals 0
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "lteSignalStrength"
    .parameter "lteRsrp"
    .parameter "lteRsrq"
    .parameter "lteRssnr"
    .parameter "lteCqi"
    .parameter "gsm"

    .prologue
    .line 165
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 167
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 168
    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 169
    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 170
    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 171
    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 172
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 173
    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 174
    iput p9, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 175
    iput p10, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 176
    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 177
    iput p12, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 178
    iput-boolean p13, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 179
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIZ)V
    .locals 10
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
    .line 133
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 134
    move/from16 v0, p8

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 135
    move/from16 v0, p9

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 136
    move/from16 v0, p10

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p11

    .line 137
    invoke-direct/range {v1 .. v9}, Landroid/telephony/SignalStrength;->internal_SignalStrength(IIIIIIIZ)V

    .line 139
    iput p2, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    .line 140
    return-void
.end method

.method public constructor <init>(IIIIIIIZ)V
    .locals 17
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "gsm"

    .prologue
    .line 248
    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    const v14, 0x7fffffff

    const/4 v15, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v16, p8

    invoke-direct/range {v0 .. v16}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIIIIZ)V

    .line 255
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 294
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 309
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->readHtcAddedFieldsFrom(Landroid/os/Parcel;)V

    .line 310
    return-void

    .line 307
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/telephony/SignalStrength;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 264
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 265
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    .line 266
    return-void
.end method

.method private calculateHtcAddedFieldsHashCode()I
    .locals 2

    .prologue
    .line 1045
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    add-int/2addr v0, v1

    return v0
.end method

.method private copyHtcAddedFieldsFrom(Landroid/telephony/SignalStrength;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 971
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    .line 972
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmEcno:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    .line 973
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    .line 975
    iget v0, p1, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    .line 976
    iget v0, p1, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    .line 978
    return-void
.end method

.method private equalsHtcAddedFields(Landroid/telephony/SignalStrength;)Z
    .locals 2
    .parameter "s"

    .prologue
    .line 1034
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    iget v1, p1, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    iget v1, p1, Landroid/telephony/SignalStrength;->mGsmEcno:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    iget v1, p1, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    iget v1, p1, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    iget v1, p1, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fillHtcAddedFieldsInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 1010
    const-string v0, "GsmSignalDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1011
    const-string v0, "GsmEcno"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1012
    const-string v0, "EvdoSignalBar"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1014
    const-string v0, "HtcLteRsrp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1015
    const-string v0, "HtcLteRsrq"

    iget v1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1017
    return-void
.end method

.method private getHtcAddedFieldsString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1055
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initHtcAddFields(III)V
    .locals 0
    .parameter "gsmSignalDbm"
    .parameter "gsmEcno"
    .parameter "evdoSingalBar"

    .prologue
    .line 962
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    .line 963
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    .line 964
    iput p3, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    .line 965
    return-void
.end method

.method private internal_SignalStrength(IIIIIIIZ)V
    .locals 0
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "gsm"

    .prologue
    .line 146
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 147
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 148
    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 149
    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 150
    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 151
    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 152
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 153
    iput-boolean p8, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 154
    return-void
.end method

.method private isInvalidLteSignalStrength()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const v3, -0x7fffffff

    const/4 v2, -0x1

    .line 466
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-eq v1, v2, :cond_1

    :cond_0
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-nez v1, :cond_3

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-nez v1, :cond_3

    :cond_1
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v1, v2, :cond_3

    .line 477
    :cond_2
    :goto_0
    return v0

    .line 471
    :cond_3
    const/16 v1, 0x63

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v1, v2, :cond_4

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v3, v1, :cond_4

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v3, v1, :cond_4

    const v1, 0x7fffffff

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-eq v1, v2, :cond_2

    .line 477
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 905
    const-string v0, "SignalStrength"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    return-void
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    .locals 1
    .parameter "m"

    .prologue
    .line 93
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 94
    .local v0, ret:Landroid/telephony/SignalStrength;
    invoke-direct {v0, p0}, Landroid/telephony/SignalStrength;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 95
    return-object v0
.end method

.method private readHtcAddedFieldsFrom(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 984
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    .line 985
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    .line 986
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    .line 988
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    .line 989
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    .line 991
    return-void
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 860
    const-string v0, "GsmSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 861
    const-string v0, "GsmBitErrorRate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 862
    const-string v0, "CdmaDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 863
    const-string v0, "CdmaEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 864
    const-string v0, "EvdoDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 865
    const-string v0, "EvdoEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 866
    const-string v0, "EvdoSnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 867
    const-string v0, "LteSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 868
    const-string v0, "LteRsrp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 869
    const-string v0, "LteRsrq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 870
    const-string v0, "LteRssnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 871
    const-string v0, "LteCqi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 872
    const-string v0, "isGsm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 874
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->setHtcAddedFieldsFromNotifierBundle(Landroid/os/Bundle;)V

    .line 875
    return-void
.end method

.method private setHtcAddedFieldsFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 1022
    const-string v0, "GsmSignalDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    .line 1023
    const-string v0, "GsmEcno"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    .line 1024
    const-string v0, "EvdoSignalBar"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    .line 1026
    const-string v0, "HtcLteRsrp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    .line 1027
    const-string v0, "HtcLteRsrq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    .line 1029
    return-void
.end method

.method private writeHtcAddedFieldsInto(Landroid/os/Parcel;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 997
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 998
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 999
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1001
    iget v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1002
    iget v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1004
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/SignalStrength;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 272
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 273
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 274
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 275
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 276
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 277
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 278
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 279
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 280
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 281
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 282
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 283
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteCqi:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 284
    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->isGsm:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 286
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->copyHtcAddedFieldsFrom(Landroid/telephony/SignalStrength;)V

    .line 287
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "o"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 800
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/SignalStrength;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    .local v3, s:Landroid/telephony/SignalStrength;
    if-nez p1, :cond_0

    .line 825
    .end local v3           #s:Landroid/telephony/SignalStrength;
    :goto_0
    return v5

    .line 801
    :catch_0
    move-exception v2

    .line 802
    .local v2, ex:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 809
    .end local v2           #ex:Ljava/lang/ClassCastException;
    .restart local v3       #s:Landroid/telephony/SignalStrength;
    :cond_0
    iget v6, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v6, v7, :cond_1

    iget-boolean v6, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    iget-boolean v7, v3, Landroid/telephony/SignalStrength;->isGsm:Z

    if-ne v6, v7, :cond_1

    move v1, v4

    .line 825
    .local v1, equal:Z
    :goto_1
    if-eqz v1, :cond_2

    invoke-direct {p0, v3}, Landroid/telephony/SignalStrength;->equalsHtcAddedFields(Landroid/telephony/SignalStrength;)Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_2
    move v5, v4

    goto :goto_0

    .end local v1           #equal:Z
    :cond_1
    move v1, v5

    .line 809
    goto :goto_1

    .restart local v1       #equal:Z
    :cond_2
    move v4, v5

    .line 825
    goto :goto_2
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 884
    const-string v0, "GsmSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 885
    const-string v0, "GsmBitErrorRate"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 886
    const-string v0, "CdmaDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 887
    const-string v0, "CdmaEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 888
    const-string v0, "EvdoDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 889
    const-string v0, "EvdoEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 890
    const-string v0, "EvdoSnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 891
    const-string v0, "LteSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 892
    const-string v0, "LteRsrp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 893
    const-string v0, "LteRsrq"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 894
    const-string v0, "LteRssnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 895
    const-string v0, "LteCqi"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 896
    const-string v0, "isGsm"

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 898
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->fillHtcAddedFieldsInNotifierBundle(Landroid/os/Bundle;)V

    .line 899
    return-void
.end method

.method public getAsuLevel()I
    .locals 4

    .prologue
    .line 488
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_1

    .line 489
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->isInvalidLteSignalStrength()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 490
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v0

    .line 509
    .local v0, asuLevel:I
    :goto_0
    return v0

    .line 492
    .end local v0           #asuLevel:I
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v0

    .restart local v0       #asuLevel:I
    goto :goto_0

    .line 495
    .end local v0           #asuLevel:I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v1

    .line 496
    .local v1, cdmaAsuLevel:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    move-result v2

    .line 497
    .local v2, evdoAsuLevel:I
    if-nez v2, :cond_2

    .line 499
    move v0, v1

    .restart local v0       #asuLevel:I
    goto :goto_0

    .line 500
    .end local v0           #asuLevel:I
    :cond_2
    if-nez v1, :cond_3

    .line 502
    move v0, v2

    .restart local v0       #asuLevel:I
    goto :goto_0

    .line 505
    .end local v0           #asuLevel:I
    :cond_3
    if-ge v1, v2, :cond_4

    move v0, v1

    .restart local v0       #asuLevel:I
    :goto_1
    goto :goto_0

    .end local v0           #asuLevel:I
    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public getCdmaAsuLevel()I
    .locals 8

    .prologue
    const/16 v7, -0x5a

    const/16 v6, -0x64

    .line 624
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    .line 625
    .local v1, cdmaDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v2

    .line 629
    .local v2, cdmaEcio:I
    const/16 v5, -0x4b

    if-lt v1, v5, :cond_0

    const/16 v0, 0x10

    .line 637
    .local v0, cdmaAsuLevel:I
    :goto_0
    if-lt v2, v7, :cond_5

    const/16 v3, 0x10

    .line 644
    .local v3, ecioAsuLevel:I
    :goto_1
    if-ge v0, v3, :cond_a

    move v4, v0

    .line 646
    .local v4, level:I
    :goto_2
    return v4

    .line 630
    .end local v0           #cdmaAsuLevel:I
    .end local v3           #ecioAsuLevel:I
    .end local v4           #level:I
    :cond_0
    const/16 v5, -0x52

    if-lt v1, v5, :cond_1

    const/16 v0, 0x8

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_0

    .line 631
    .end local v0           #cdmaAsuLevel:I
    :cond_1
    if-lt v1, v7, :cond_2

    const/4 v0, 0x4

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_0

    .line 632
    .end local v0           #cdmaAsuLevel:I
    :cond_2
    const/16 v5, -0x5f

    if-lt v1, v5, :cond_3

    const/4 v0, 0x2

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_0

    .line 633
    .end local v0           #cdmaAsuLevel:I
    :cond_3
    if-lt v1, v6, :cond_4

    const/4 v0, 0x1

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_0

    .line 634
    .end local v0           #cdmaAsuLevel:I
    :cond_4
    const/16 v0, 0x63

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_0

    .line 638
    :cond_5
    if-lt v2, v6, :cond_6

    const/16 v3, 0x8

    .restart local v3       #ecioAsuLevel:I
    goto :goto_1

    .line 639
    .end local v3           #ecioAsuLevel:I
    :cond_6
    const/16 v5, -0x73

    if-lt v2, v5, :cond_7

    const/4 v3, 0x4

    .restart local v3       #ecioAsuLevel:I
    goto :goto_1

    .line 640
    .end local v3           #ecioAsuLevel:I
    :cond_7
    const/16 v5, -0x82

    if-lt v2, v5, :cond_8

    const/4 v3, 0x2

    .restart local v3       #ecioAsuLevel:I
    goto :goto_1

    .line 641
    .end local v3           #ecioAsuLevel:I
    :cond_8
    const/16 v5, -0x96

    if-lt v2, v5, :cond_9

    const/4 v3, 0x1

    .restart local v3       #ecioAsuLevel:I
    goto :goto_1

    .line 642
    .end local v3           #ecioAsuLevel:I
    :cond_9
    const/16 v3, 0x63

    .restart local v3       #ecioAsuLevel:I
    goto :goto_1

    :cond_a
    move v4, v3

    .line 644
    goto :goto_2
.end method

.method public getCdmaDbm()I
    .locals 1

    .prologue
    .line 397
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    .prologue
    .line 404
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .locals 6

    .prologue
    .line 595
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 596
    .local v0, cdmaDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 600
    .local v1, cdmaEcio:I
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_0

    const/4 v3, 0x4

    .line 607
    .local v3, levelDbm:I
    :goto_0
    const/16 v5, -0x5a

    if-lt v1, v5, :cond_4

    const/4 v4, 0x4

    .line 613
    .local v4, levelEcio:I
    :goto_1
    if-ge v3, v4, :cond_8

    move v2, v3

    .line 615
    .local v2, level:I
    :goto_2
    return v2

    .line 601
    .end local v2           #level:I
    .end local v3           #levelDbm:I
    .end local v4           #levelEcio:I
    :cond_0
    const/16 v5, -0x55

    if-lt v0, v5, :cond_1

    const/4 v3, 0x3

    .restart local v3       #levelDbm:I
    goto :goto_0

    .line 602
    .end local v3           #levelDbm:I
    :cond_1
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_2

    const/4 v3, 0x2

    .restart local v3       #levelDbm:I
    goto :goto_0

    .line 603
    .end local v3           #levelDbm:I
    :cond_2
    const/16 v5, -0x64

    if-lt v0, v5, :cond_3

    const/4 v3, 0x1

    .restart local v3       #levelDbm:I
    goto :goto_0

    .line 604
    .end local v3           #levelDbm:I
    :cond_3
    const/4 v3, 0x0

    .restart local v3       #levelDbm:I
    goto :goto_0

    .line 608
    :cond_4
    const/16 v5, -0x6e

    if-lt v1, v5, :cond_5

    const/4 v4, 0x3

    .restart local v4       #levelEcio:I
    goto :goto_1

    .line 609
    .end local v4           #levelEcio:I
    :cond_5
    const/16 v5, -0x82

    if-lt v1, v5, :cond_6

    const/4 v4, 0x2

    .restart local v4       #levelEcio:I
    goto :goto_1

    .line 610
    .end local v4           #levelEcio:I
    :cond_6
    const/16 v5, -0x96

    if-lt v1, v5, :cond_7

    const/4 v4, 0x1

    .restart local v4       #levelEcio:I
    goto :goto_1

    .line 611
    .end local v4           #levelEcio:I
    :cond_7
    const/4 v4, 0x0

    .restart local v4       #levelEcio:I
    goto :goto_1

    :cond_8
    move v2, v4

    .line 613
    goto :goto_2
.end method

.method public getDbm()I
    .locals 2

    .prologue
    .line 520
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 521
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->isInvalidLteSignalStrength()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 522
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v0

    .line 530
    .local v0, dBm:I
    :goto_0
    return v0

    .line 524
    .end local v0           #dBm:I
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v0

    .restart local v0       #dBm:I
    goto :goto_0

    .line 527
    .end local v0           #dBm:I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .restart local v0       #dBm:I
    goto :goto_0
.end method

.method public getEvdoAsuLevel()I
    .locals 6

    .prologue
    .line 683
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 684
    .local v0, evdoDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 688
    .local v1, evdoSnr:I
    const/16 v5, -0x41

    if-lt v0, v5, :cond_0

    const/16 v3, 0x10

    .line 695
    .local v3, levelEvdoDbm:I
    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_5

    const/16 v4, 0x10

    .line 702
    .local v4, levelEvdoSnr:I
    :goto_1
    if-ge v3, v4, :cond_a

    move v2, v3

    .line 704
    .local v2, level:I
    :goto_2
    return v2

    .line 689
    .end local v2           #level:I
    .end local v3           #levelEvdoDbm:I
    .end local v4           #levelEvdoSnr:I
    :cond_0
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1

    const/16 v3, 0x8

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 690
    .end local v3           #levelEvdoDbm:I
    :cond_1
    const/16 v5, -0x55

    if-lt v0, v5, :cond_2

    const/4 v3, 0x4

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 691
    .end local v3           #levelEvdoDbm:I
    :cond_2
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_3

    const/4 v3, 0x2

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 692
    .end local v3           #levelEvdoDbm:I
    :cond_3
    const/16 v5, -0x69

    if-lt v0, v5, :cond_4

    const/4 v3, 0x1

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 693
    .end local v3           #levelEvdoDbm:I
    :cond_4
    const/16 v3, 0x63

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 696
    :cond_5
    const/4 v5, 0x6

    if-lt v1, v5, :cond_6

    const/16 v4, 0x8

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 697
    .end local v4           #levelEvdoSnr:I
    :cond_6
    const/4 v5, 0x5

    if-lt v1, v5, :cond_7

    const/4 v4, 0x4

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 698
    .end local v4           #levelEvdoSnr:I
    :cond_7
    const/4 v5, 0x3

    if-lt v1, v5, :cond_8

    const/4 v4, 0x2

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 699
    .end local v4           #levelEvdoSnr:I
    :cond_8
    const/4 v5, 0x1

    if-lt v1, v5, :cond_9

    const/4 v4, 0x1

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 700
    .end local v4           #levelEvdoSnr:I
    :cond_9
    const/16 v4, 0x63

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    :cond_a
    move v2, v4

    .line 702
    goto :goto_2
.end method

.method public getEvdoDbm()I
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    .prologue
    .line 418
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .locals 6

    .prologue
    .line 655
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 656
    .local v0, evdoDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 660
    .local v1, evdoSnr:I
    const/16 v5, -0x41

    if-lt v0, v5, :cond_0

    const/4 v3, 0x4

    .line 666
    .local v3, levelEvdoDbm:I
    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_4

    const/4 v4, 0x4

    .line 672
    .local v4, levelEvdoSnr:I
    :goto_1
    if-ge v3, v4, :cond_8

    move v2, v3

    .line 674
    .local v2, level:I
    :goto_2
    return v2

    .line 661
    .end local v2           #level:I
    .end local v3           #levelEvdoDbm:I
    .end local v4           #levelEvdoSnr:I
    :cond_0
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1

    const/4 v3, 0x3

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 662
    .end local v3           #levelEvdoDbm:I
    :cond_1
    const/16 v5, -0x5a

    if-lt v0, v5, :cond_2

    const/4 v3, 0x2

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 663
    .end local v3           #levelEvdoDbm:I
    :cond_2
    const/16 v5, -0x69

    if-lt v0, v5, :cond_3

    const/4 v3, 0x1

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 664
    .end local v3           #levelEvdoDbm:I
    :cond_3
    const/4 v3, 0x0

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 667
    :cond_4
    const/4 v5, 0x5

    if-lt v1, v5, :cond_5

    const/4 v4, 0x3

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 668
    .end local v4           #levelEvdoSnr:I
    :cond_5
    const/4 v5, 0x3

    if-lt v1, v5, :cond_6

    const/4 v4, 0x2

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 669
    .end local v4           #levelEvdoSnr:I
    :cond_6
    const/4 v5, 0x1

    if-lt v1, v5, :cond_7

    const/4 v4, 0x1

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 670
    .end local v4           #levelEvdoSnr:I
    :cond_7
    const/4 v4, 0x0

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    :cond_8
    move v2, v4

    .line 672
    goto :goto_2
.end method

.method public getEvdoSignalBar()I
    .locals 1

    .prologue
    .line 912
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    return v0
.end method

.method public getEvdoSnr()I
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    return v0
.end method

.method public getGsmAsuLevel()I
    .locals 1

    .prologue
    .line 584
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 586
    .local v0, level:I
    return v0
.end method

.method public getGsmBitErrorRate()I
    .locals 1

    .prologue
    .line 390
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    return v0
.end method

.method public getGsmDbm()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 541
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 542
    .local v2, gsmSignalStrength:I
    const/16 v4, 0x63

    if-ne v2, v4, :cond_0

    move v0, v3

    .line 543
    .local v0, asu:I
    :goto_0
    if-eq v0, v3, :cond_1

    .line 544
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v1, v3, -0x71

    .line 549
    .local v1, dBm:I
    :goto_1
    return v1

    .end local v0           #asu:I
    .end local v1           #dBm:I
    :cond_0
    move v0, v2

    .line 542
    goto :goto_0

    .line 546
    .restart local v0       #asu:I
    :cond_1
    const/4 v1, -0x1

    .restart local v1       #dBm:I
    goto :goto_1
.end method

.method public getGsmEcno()I
    .locals 1

    .prologue
    .line 953
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    return v0
.end method

.method public getGsmLevel()I
    .locals 3

    .prologue
    .line 564
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 565
    .local v0, asu:I
    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    const/16 v2, 0x63

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 571
    .local v1, level:I
    :goto_0
    return v1

    .line 566
    .end local v1           #level:I
    :cond_1
    const/16 v2, 0xc

    if-lt v0, v2, :cond_2

    const/4 v1, 0x4

    .restart local v1       #level:I
    goto :goto_0

    .line 567
    .end local v1           #level:I
    :cond_2
    const/16 v2, 0x8

    if-lt v0, v2, :cond_3

    const/4 v1, 0x3

    .restart local v1       #level:I
    goto :goto_0

    .line 568
    .end local v1           #level:I
    :cond_3
    const/4 v2, 0x5

    if-lt v0, v2, :cond_4

    const/4 v1, 0x2

    .restart local v1       #level:I
    goto :goto_0

    .line 569
    .end local v1           #level:I
    :cond_4
    const/4 v1, 0x1

    .restart local v1       #level:I
    goto :goto_0
.end method

.method public getGsmSignalDbm()I
    .locals 1

    .prologue
    .line 949
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    return v0
.end method

.method public getGsmSignalStrength()I
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    return v0
.end method

.method public getHtcLteRsrp()I
    .locals 1

    .prologue
    .line 1084
    iget v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    return v0
.end method

.method public getHtcLteRsrq()I
    .locals 1

    .prologue
    .line 1088
    iget v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    return v0
.end method

.method public getLevel()I
    .locals 4

    .prologue
    .line 436
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_1

    .line 439
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->isInvalidLteSignalStrength()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 440
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v2

    .line 459
    .local v2, level:I
    :goto_0
    return v2

    .line 442
    .end local v2           #level:I
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v2

    .restart local v2       #level:I
    goto :goto_0

    .line 445
    .end local v2           #level:I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 446
    .local v0, cdmaLevel:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v1

    .line 447
    .local v1, evdoLevel:I
    if-nez v1, :cond_2

    .line 449
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v2

    .restart local v2       #level:I
    goto :goto_0

    .line 450
    .end local v2           #level:I
    :cond_2
    if-nez v0, :cond_3

    .line 452
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v2

    .restart local v2       #level:I
    goto :goto_0

    .line 455
    .end local v2           #level:I
    :cond_3
    if-ge v0, v1, :cond_4

    move v2, v0

    .restart local v2       #level:I
    :goto_1
    goto :goto_0

    .end local v2           #level:I
    :cond_4
    move v2, v1

    goto :goto_1
.end method

.method public getLteAsuLevel()I
    .locals 3

    .prologue
    .line 757
    const/16 v0, 0x63

    .line 758
    .local v0, lteAsuLevel:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 759
    .local v1, lteDbm:I
    const/16 v2, -0x8c

    if-gt v1, v2, :cond_0

    const/4 v0, 0x0

    .line 763
    :goto_0
    return v0

    .line 760
    :cond_0
    const/16 v2, -0x2b

    if-lt v1, v2, :cond_1

    const/16 v0, 0x61

    goto :goto_0

    .line 761
    :cond_1
    add-int/lit16 v0, v1, 0x8c

    goto :goto_0
.end method

.method public getLteCqi()I
    .locals 1

    .prologue
    .line 935
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    return v0
.end method

.method public getLteDbm()I
    .locals 1

    .prologue
    .line 713
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteLevel()I
    .locals 7

    .prologue
    const v6, 0x7fffffff

    const/4 v5, -0x1

    .line 722
    const/4 v1, 0x0

    .line 723
    .local v1, levelLteRsrp:I
    const/4 v2, 0x0

    .line 725
    .local v2, levelLteRssnr:I
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v3, v5, :cond_0

    const/4 v1, 0x0

    .line 731
    :goto_0
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v3, v6, :cond_4

    const/4 v2, 0x0

    .line 738
    :goto_1
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v3, v5, :cond_8

    .line 739
    move v0, v2

    .line 747
    .local v0, level:I
    :goto_2
    return v0

    .line 726
    .end local v0           #level:I
    :cond_0
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x5f

    if-lt v3, v4, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    .line 727
    :cond_1
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x69

    if-lt v3, v4, :cond_2

    const/4 v1, 0x3

    goto :goto_0

    .line 728
    :cond_2
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x73

    if-lt v3, v4, :cond_3

    const/4 v1, 0x2

    goto :goto_0

    .line 729
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 732
    :cond_4
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x2d

    if-lt v3, v4, :cond_5

    const/4 v2, 0x4

    goto :goto_1

    .line 733
    :cond_5
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0xa

    if-lt v3, v4, :cond_6

    const/4 v2, 0x3

    goto :goto_1

    .line 734
    :cond_6
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, -0x1e

    if-lt v3, v4, :cond_7

    const/4 v2, 0x2

    goto :goto_1

    .line 735
    :cond_7
    const/4 v2, 0x1

    goto :goto_1

    .line 740
    :cond_8
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v3, v6, :cond_9

    .line 741
    move v0, v1

    .restart local v0       #level:I
    goto :goto_2

    .line 743
    .end local v0           #level:I
    :cond_9
    if-ge v2, v1, :cond_a

    move v0, v2

    .restart local v0       #level:I
    :goto_3
    goto :goto_2

    .end local v0           #level:I
    :cond_a
    move v0, v1

    goto :goto_3
.end method

.method public getLteRsrp()I
    .locals 1

    .prologue
    .line 928
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteRsrq()I
    .locals 1

    .prologue
    .line 941
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    return v0
.end method

.method public getLteRssnr()I
    .locals 1

    .prologue
    .line 945
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    return v0
.end method

.method public getLteSignalStrength()I
    .locals 1

    .prologue
    .line 921
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 778
    const/16 v0, 0x1f

    .line 779
    .local v0, primeNum:I
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int/2addr v1, v2

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->calculateHtcAddedFieldsHashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isGsm()Z
    .locals 1

    .prologue
    .line 770
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return v0
.end method

.method protected setDefaultValues(IIIIIIIIIIIIIIIZ)V
    .locals 1
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "lteSignalStrength"
    .parameter "lteRsrp"
    .parameter "lteRsrq"
    .parameter "lteRssnr"
    .parameter "lteCqi"
    .parameter "gsmSignalDbm"
    .parameter "gsmEcno"
    .parameter "evdoSignalBar"
    .parameter "gsm"

    .prologue
    .line 362
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 363
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 364
    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 365
    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 366
    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 367
    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 368
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 369
    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 370
    iput p9, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 371
    iput p10, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 372
    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 373
    iput p12, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 374
    move/from16 v0, p16

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 375
    move/from16 v0, p15

    invoke-direct {p0, p13, p14, v0}, Landroid/telephony/SignalStrength;->initHtcAddFields(III)V

    .line 376
    return-void
.end method

.method public setHtcLteRsrp(I)V
    .locals 0
    .parameter "val"

    .prologue
    .line 1076
    iput p1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    .line 1077
    return-void
.end method

.method public setHtcLteRsrq(I)V
    .locals 0
    .parameter "val"

    .prologue
    .line 1080
    iput p1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    .line 1081
    return-void
.end method

.method public setLteRsrq(I)V
    .locals 0
    .parameter "val"

    .prologue
    .line 1066
    iput p1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 1067
    return-void
.end method

.method public setLteRssnr(I)V
    .locals 0
    .parameter "val"

    .prologue
    .line 1070
    iput p1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 1071
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const-string v0, "gsm|lte"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cdma"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getHtcAddedFieldsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 316
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->writeHtcAddedFieldsInto(Landroid/os/Parcel;)V

    .line 331
    return-void

    .line 328
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
