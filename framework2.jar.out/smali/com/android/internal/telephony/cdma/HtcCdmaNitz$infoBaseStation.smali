.class public Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;
.super Ljava/lang/Object;
.source "HtcCdmaNitz.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/HtcCdmaNitz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "infoBaseStation"
.end annotation


# instance fields
.field baseStationId:I

.field baseStationLatitude:I

.field baseStationLongitude:I

.field infoReceivedDate:Ljava/util/Date;

.field infoReceivedTime:J

.field networkId:I

.field serviceState:I

.field systemId:I

.field updateFrom:I


# direct methods
.method public constructor <init>(JLjava/util/Date;IIIII)V
    .locals 10
    .parameter "infoReceivedTime"
    .parameter "infoReceivedDate"
    .parameter "baseStationId"
    .parameter "baseStationLatitude"
    .parameter "baseStationLongitude"
    .parameter "systemId"
    .parameter "networkId"

    .prologue
    .line 112
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v4, -0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->infoBaseStationSetup(JLjava/util/Date;IIIIII)V

    .line 116
    return-void
.end method

.method public constructor <init>(JLjava/util/Date;IIIIII)V
    .locals 0
    .parameter "infoReceivedTime"
    .parameter "infoReceivedDate"
    .parameter "serviceState"
    .parameter "baseStationId"
    .parameter "baseStationLatitude"
    .parameter "baseStationLongitude"
    .parameter "systemId"
    .parameter "networkId"

    .prologue
    .line 121
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 122
    invoke-direct/range {p0 .. p9}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->infoBaseStationSetup(JLjava/util/Date;IIIIII)V

    .line 125
    return-void
.end method

.method private infoBaseStationSetup(JLjava/util/Date;IIIIII)V
    .locals 0
    .parameter "infoReceivedTime"
    .parameter "infoReceivedDate"
    .parameter "serviceState"
    .parameter "baseStationId"
    .parameter "baseStationLatitude"
    .parameter "baseStationLongitude"
    .parameter "systemId"
    .parameter "networkId"

    .prologue
    .line 131
    iput-wide p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->infoReceivedTime:J

    .line 132
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->infoReceivedDate:Ljava/util/Date;

    .line 133
    iput p4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->serviceState:I

    .line 134
    iput p5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->baseStationId:I

    .line 135
    iput p6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->baseStationLatitude:I

    .line 136
    iput p7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->baseStationLongitude:I

    .line 137
    iput p8, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->systemId:I

    .line 138
    iput p9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->networkId:I

    .line 139
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    const v8, 0x7fffffff

    const/16 v7, 0x2d

    const/4 v6, 0x0

    .line 148
    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->infoReceivedTime:J

    const-wide/32 v4, 0xffff

    and-long/2addr v2, v4

    long-to-int v0, v2

    .line 149
    .local v0, antiSpoofing:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .local v1, strBuf:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->access$000()[C

    move-result-object v2

    aget-char v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->infoReceivedDate:Ljava/util/Date;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->logShortDate(Ljava/util/Date;)Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->access$100(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-static {}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->access$200()[C

    move-result-object v2

    aget-char v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->infoReceivedTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-static {}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->access$000()[C

    move-result-object v2

    const/4 v3, 0x1

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->updateFrom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->serviceState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    invoke-static {}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->access$200()[C

    move-result-object v2

    aget-char v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->baseStationId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    invoke-static {}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->access$200()[C

    move-result-object v2

    aget-char v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->systemId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    invoke-static {}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->access$200()[C

    move-result-object v2

    aget-char v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->networkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    invoke-static {}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->access$200()[C

    move-result-object v2

    aget-char v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->baseStationLatitude:I

    if-ne v2, v8, :cond_0

    .line 171
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->access$200()[C

    move-result-object v2

    aget-char v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->baseStationLongitude:I

    if-ne v2, v8, :cond_1

    .line 182
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 174
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->baseStationLatitude:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 185
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->baseStationLongitude:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
