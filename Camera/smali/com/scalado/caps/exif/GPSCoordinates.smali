.class public Lcom/scalado/caps/exif/GPSCoordinates;
.super Ljava/lang/Object;
.source "GPSCoordinates.java"


# instance fields
.field private gpsVersionByte0:B

.field private gpsVersionByte1:B

.field private gpsVersionByte2:B

.field private gpsVersionByte3:B

.field private gpsVersionNbBytes:I

.field private latDegDen:I

.field private latDegNum:I

.field private latMinDen:I

.field private latMinNum:I

.field private latRef:B

.field private latSecDen:I

.field private latSecNum:I

.field private longDegDen:I

.field private longDegNum:I

.field private longMinDen:I

.field private longMinNum:I

.field private longRef:B

.field private longSecDen:I

.field private longSecNum:I

.field private mapDatum:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latDegDen:I

    iput v1, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latDegNum:I

    iput v1, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latMinDen:I

    iput v1, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latMinNum:I

    iput v1, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latSecDen:I

    iput v1, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latSecNum:I

    const/16 v0, 0x4e

    iput-byte v0, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latRef:B

    iput v1, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longDegDen:I

    iput v1, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longDegNum:I

    iput v1, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longMinDen:I

    iput v1, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longMinNum:I

    iput v1, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longSecDen:I

    iput v1, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longSecNum:I

    const/16 v0, 0x45

    iput-byte v0, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longRef:B

    const/4 v0, 0x4

    iput v0, p0, Lcom/scalado/caps/exif/GPSCoordinates;->gpsVersionNbBytes:I

    iput-byte v2, p0, Lcom/scalado/caps/exif/GPSCoordinates;->gpsVersionByte0:B

    iput-byte v2, p0, Lcom/scalado/caps/exif/GPSCoordinates;->gpsVersionByte1:B

    iput-byte v1, p0, Lcom/scalado/caps/exif/GPSCoordinates;->gpsVersionByte2:B

    iput-byte v1, p0, Lcom/scalado/caps/exif/GPSCoordinates;->gpsVersionByte3:B

    const-string v0, "WGS-84"

    iput-object v0, p0, Lcom/scalado/caps/exif/GPSCoordinates;->mapDatum:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIIIIICIIIIIIC)V
    .locals 5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latDegDen:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latDegNum:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latMinDen:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latMinNum:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latSecDen:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latSecNum:I

    const/16 v1, 0x4e

    iput-byte v1, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latRef:B

    const/4 v1, 0x0

    iput v1, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longDegDen:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longDegNum:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longMinDen:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longMinNum:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longSecDen:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longSecNum:I

    const/16 v1, 0x45

    iput-byte v1, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longRef:B

    const/4 v1, 0x4

    iput v1, p0, Lcom/scalado/caps/exif/GPSCoordinates;->gpsVersionNbBytes:I

    const/4 v1, 0x2

    iput-byte v1, p0, Lcom/scalado/caps/exif/GPSCoordinates;->gpsVersionByte0:B

    const/4 v1, 0x2

    iput-byte v1, p0, Lcom/scalado/caps/exif/GPSCoordinates;->gpsVersionByte1:B

    const/4 v1, 0x0

    iput-byte v1, p0, Lcom/scalado/caps/exif/GPSCoordinates;->gpsVersionByte2:B

    const/4 v1, 0x0

    iput-byte v1, p0, Lcom/scalado/caps/exif/GPSCoordinates;->gpsVersionByte3:B

    const-string v1, "WGS-84"

    iput-object v1, p0, Lcom/scalado/caps/exif/GPSCoordinates;->mapDatum:Ljava/lang/String;

    iput p1, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latDegNum:I

    iput p2, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latDegDen:I

    iput p3, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latMinNum:I

    iput p4, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latMinDen:I

    iput p5, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latSecNum:I

    iput p6, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latSecDen:I

    int-to-byte v1, p7

    iput-byte v1, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latRef:B

    iput p8, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longDegNum:I

    iput p9, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longDegDen:I

    iput p10, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longMinNum:I

    move/from16 v0, p11

    iput v0, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longMinDen:I

    move/from16 v0, p12

    iput v0, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longSecNum:I

    move/from16 v0, p13

    iput v0, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longSecDen:I

    move/from16 v0, p14

    int-to-byte v1, v0

    iput-byte v1, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longRef:B

    const/16 v1, 0x4e

    if-eq p7, v1, :cond_0

    const/16 v1, 0x53

    if-ne p7, v1, :cond_2

    :cond_0
    const/16 v1, 0x57

    move/from16 v0, p14

    if-eq v0, v1, :cond_1

    const/16 v1, 0x45

    move/from16 v0, p14

    if-ne v0, v1, :cond_2

    :cond_1
    if-ltz p1, :cond_2

    if-lez p2, :cond_2

    if-ltz p3, :cond_2

    if-lez p4, :cond_2

    if-ltz p5, :cond_2

    if-lez p6, :cond_2

    if-ltz p8, :cond_2

    if-lez p9, :cond_2

    if-ltz p10, :cond_2

    if-lez p11, :cond_2

    if-ltz p12, :cond_2

    if-gtz p13, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Value out of range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    div-int v1, p1, p2

    const/16 v2, 0x5a

    if-gt v1, v2, :cond_4

    div-int v1, p3, p4

    const/16 v2, 0x3c

    if-ge v1, v2, :cond_4

    div-int v1, p5, p6

    const/16 v2, 0x3c

    if-ge v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/scalado/caps/exif/GPSCoordinates;->getLatitude()D

    move-result-wide v1

    const-wide v3, 0x4056800000000000L

    cmpl-double v1, v1, v3

    if-gtz v1, :cond_4

    invoke-virtual {p0}, Lcom/scalado/caps/exif/GPSCoordinates;->getLatitude()D

    move-result-wide v1

    const-wide v3, -0x3fa9800000000000L

    cmpg-double v1, v1, v3

    if-gez v1, :cond_5

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Value out of range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    div-int v1, p8, p2

    const/16 v2, 0xb4

    if-gt v1, v2, :cond_6

    div-int v1, p10, p4

    const/16 v2, 0x3c

    if-ge v1, v2, :cond_6

    div-int v1, p12, p6

    const/16 v2, 0x3c

    if-ge v1, v2, :cond_6

    invoke-virtual {p0}, Lcom/scalado/caps/exif/GPSCoordinates;->getLongitude()D

    move-result-wide v1

    const-wide v3, 0x4066800000000000L

    cmpl-double v1, v1, v3

    if-gtz v1, :cond_6

    invoke-virtual {p0}, Lcom/scalado/caps/exif/GPSCoordinates;->getLongitude()D

    move-result-wide v1

    const-wide v3, -0x3f99800000000000L

    cmpg-double v1, v1, v3

    if-gez v1, :cond_7

    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Value out of range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    return-void
.end method


# virtual methods
.method public clone()Lcom/scalado/caps/exif/GPSCoordinates;
    .locals 15

    new-instance v0, Lcom/scalado/caps/exif/GPSCoordinates;

    iget v1, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latDegNum:I

    iget v2, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latDegDen:I

    iget v3, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latMinNum:I

    iget v4, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latMinDen:I

    iget v5, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latSecNum:I

    iget v6, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latSecDen:I

    iget-byte v7, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latRef:B

    int-to-char v7, v7

    iget v8, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longDegNum:I

    iget v9, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longDegDen:I

    iget v10, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longMinNum:I

    iget v11, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longMinDen:I

    iget v12, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longSecNum:I

    iget v13, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longSecDen:I

    iget-byte v14, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longRef:B

    int-to-char v14, v14

    invoke-direct/range {v0 .. v14}, Lcom/scalado/caps/exif/GPSCoordinates;-><init>(IIIIIICIIIIIIC)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/scalado/caps/exif/GPSCoordinates;->clone()Lcom/scalado/caps/exif/GPSCoordinates;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Lcom/scalado/caps/exif/GPSCoordinates;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/scalado/caps/exif/GPSCoordinates;

    iget-byte v3, v0, Lcom/scalado/caps/exif/GPSCoordinates;->latRef:B

    iget-byte v4, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latRef:B

    if-ne v3, v4, :cond_3

    iget-byte v3, v0, Lcom/scalado/caps/exif/GPSCoordinates;->longRef:B

    iget-byte v4, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longRef:B

    if-ne v3, v4, :cond_3

    iget v3, v0, Lcom/scalado/caps/exif/GPSCoordinates;->latDegNum:I

    iget v4, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latDegNum:I

    if-ne v3, v4, :cond_3

    iget v3, v0, Lcom/scalado/caps/exif/GPSCoordinates;->latDegDen:I

    iget v4, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latDegDen:I

    if-ne v3, v4, :cond_3

    iget v3, v0, Lcom/scalado/caps/exif/GPSCoordinates;->latMinNum:I

    iget v4, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latMinNum:I

    if-ne v3, v4, :cond_3

    iget v3, v0, Lcom/scalado/caps/exif/GPSCoordinates;->latMinDen:I

    iget v4, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latMinDen:I

    if-ne v3, v4, :cond_3

    iget v3, v0, Lcom/scalado/caps/exif/GPSCoordinates;->latSecNum:I

    iget v4, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latSecNum:I

    if-ne v3, v4, :cond_3

    iget v3, v0, Lcom/scalado/caps/exif/GPSCoordinates;->latSecDen:I

    iget v4, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latSecDen:I

    if-ne v3, v4, :cond_3

    iget v3, v0, Lcom/scalado/caps/exif/GPSCoordinates;->longDegNum:I

    iget v4, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longDegNum:I

    if-ne v3, v4, :cond_3

    iget v3, v0, Lcom/scalado/caps/exif/GPSCoordinates;->longDegDen:I

    iget v4, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longDegDen:I

    if-ne v3, v4, :cond_3

    iget v3, v0, Lcom/scalado/caps/exif/GPSCoordinates;->longMinNum:I

    iget v4, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longMinNum:I

    if-ne v3, v4, :cond_3

    iget v3, v0, Lcom/scalado/caps/exif/GPSCoordinates;->longMinDen:I

    iget v4, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longMinDen:I

    if-ne v3, v4, :cond_3

    iget v3, v0, Lcom/scalado/caps/exif/GPSCoordinates;->longSecNum:I

    iget v4, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longSecNum:I

    if-ne v3, v4, :cond_3

    iget v3, v0, Lcom/scalado/caps/exif/GPSCoordinates;->longSecDen:I

    iget v4, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longSecDen:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getLatitude()D
    .locals 8

    iget v2, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latDegNum:I

    int-to-double v2, v2

    iget v4, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latDegDen:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    iget v4, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latMinNum:I

    int-to-double v4, v4

    iget v6, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latMinDen:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x404e

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    iget v4, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latSecNum:I

    int-to-double v4, v4

    iget v6, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latSecDen:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    const-wide v6, 0x40ac200000000000L

    div-double/2addr v4, v6

    add-double v0, v2, v4

    iget-byte v2, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latRef:B

    const/16 v3, 0x53

    if-ne v2, v3, :cond_0

    neg-double v0, v0

    :cond_0
    return-wide v0
.end method

.method public getLongitude()D
    .locals 8

    iget v2, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longDegNum:I

    int-to-double v2, v2

    iget v4, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longDegDen:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    iget v4, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longMinNum:I

    int-to-double v4, v4

    iget v6, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longMinDen:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x404e

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    iget v4, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longSecNum:I

    int-to-double v4, v4

    iget v6, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latSecDen:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    const-wide v6, 0x40ac200000000000L

    div-double/2addr v4, v6

    add-double v0, v2, v4

    iget-byte v2, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longRef:B

    const/16 v3, 0x57

    if-ne v2, v3, :cond_0

    neg-double v0, v0

    :cond_0
    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longSecNum:I

    iget v1, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longMinNum:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latMinNum:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latSecNum:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latDegNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latRef:B

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latDegDen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latMinNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latMinDen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latSecNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/scalado/caps/exif/GPSCoordinates;->latSecDen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longDegNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longRef:B

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longDegDen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longMinNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longMinDen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longSecNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/scalado/caps/exif/GPSCoordinates;->longSecDen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
