.class public Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;
.super Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
.source "SmartLocationCollection.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;",
            ">;"
        }
    .end annotation
.end field

.field public static final E6:D = 1000000.0

.field public static final FACTOR_LATITUDE:D = 0.09

.field public static final FACTOR_LONGITUDE:D = 0.09

.field public static final FACTOR_TIME:J = 0x36ee80L

.field public static final FACTOR_TIME_2_HOURS:J = 0x6ddd00L

.field public static final FACTOR_TIME_8_HOURS:J = 0x1b77400L

.field public static final FACTOR_TIME_HALF:J = 0x1b7740L

.field public static final KEY_MAX_LATITUDE:Ljava/lang/String; = "location_max_latitude"

.field public static final KEY_MAX_LONGITUDE:Ljava/lang/String; = "location_max_longitude"

.field public static final KEY_MIN_LATITUDE:Ljava/lang/String; = "location_min_latitude"

.field public static final KEY_MIN_LONGITUDE:Ljava/lang/String; = "location_min_location"

.field private static final LOG_TAG:Ljava/lang/String; = "SmartLocationCollection"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mEventCount:I

.field private mLatitudeMax:D

.field private mLatitudeMin:D

.field private mLongitudeMax:D

.field private mLongitudeMin:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 430
    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection$1;

    invoke-direct {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection$1;-><init>()V

    sput-object v0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide v2, 0x406fe00000000000L

    const-wide v0, -0x3f90200000000000L

    .line 69
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;-><init>()V

    .line 59
    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMax:D

    .line 60
    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMax:D

    .line 61
    iput-wide v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMin:D

    .line 62
    iput-wide v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMin:D

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mEventCount:I

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 74
    const-string v0, "com.htc.HTCAlbum.SMART_TIME_LOCATION"

    const-string v1, "com.htc.HTCAlbum.SMART_TIME_LOCATION"

    const-string v2, "com.htc.HTCAlbum.SMART_TIME_LOCATION"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "folderType"
    .parameter "bucketId"
    .parameter "displayName"

    .prologue
    const-wide v2, 0x406fe00000000000L

    const-wide v0, -0x3f90200000000000L

    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMax:D

    .line 60
    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMax:D

    .line 61
    iput-wide v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMin:D

    .line 62
    iput-wide v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMin:D

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mEventCount:I

    .line 80
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    const-wide v2, 0x406fe00000000000L

    const-wide v0, -0x3f90200000000000L

    .line 445
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;-><init>()V

    .line 59
    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMax:D

    .line 60
    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMax:D

    .line 61
    iput-wide v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMin:D

    .line 62
    iput-wide v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMin:D

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mEventCount:I

    .line 446
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->readFromParcel(Landroid/os/Parcel;)V

    .line 447
    return-void
.end method


# virtual methods
.method protected adjustRange(JDD)V
    .locals 4
    .parameter "time"
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mStartTime:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mStartTime:J

    .line 119
    iget-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mStartTime:J

    const-wide/32 v2, 0x6ddd00

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTimeMin:J

    .line 121
    invoke-static {p3, p4, p5, p6}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->isValidateLatLng(DD)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLatitude:D

    iget-wide v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLongitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->isValidateLatLng(DD)Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    iput-wide p3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLatitude:D

    .line 129
    iput-wide p5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLongitude:D

    .line 139
    :cond_1
    iget-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMax:D

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMax:D

    .line 140
    iget-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMax:D

    invoke-static {v0, v1, p5, p6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMax:D

    .line 142
    iget-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMin:D

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMin:D

    .line 143
    iget-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMin:D

    invoke-static {v0, v1, p5, p6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMin:D

    goto :goto_0
.end method

.method public clone(Lcom/htc/album/modules/collection/Collection;)V
    .locals 3
    .parameter "collection"

    .prologue
    .line 393
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->clone(Lcom/htc/album/modules/collection/Collection;)V

    .line 395
    instance-of v1, p1, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 397
    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;

    .line 398
    .local v0, locationC:Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;
    iget-wide v1, v0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMax:D

    iput-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMax:D

    .line 399
    iget-wide v1, v0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMax:D

    iput-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMax:D

    .line 400
    iget-wide v1, v0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMin:D

    iput-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMin:D

    .line 401
    iget-wide v1, v0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMin:D

    iput-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMin:D

    .line 403
    .end local v0           #locationC:Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;
    :cond_0
    return-void
.end method

.method public deserializeEventParams(Ljava/lang/String;)Z
    .locals 29
    .parameter "params"

    .prologue
    .line 303
    const/16 v24, 0x0

    .line 304
    .local v24, result:Z
    new-instance v26, Ljava/util/StringTokenizer;

    const-string v5, ";"

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .local v26, tokenizer:Ljava/util/StringTokenizer;
    invoke-virtual/range {v26 .. v26}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v25

    .line 307
    .local v25, tokenCount:I
    const/16 v5, 0x8

    move/from16 v0, v25

    if-lt v0, v5, :cond_1

    .line 312
    :try_start_0
    invoke-virtual/range {v26 .. v26}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 313
    .local v6, timeStart:J
    invoke-virtual/range {v26 .. v26}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 314
    .local v8, timeEnd:J
    invoke-virtual/range {v26 .. v26}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    .line 315
    .local v11, latitude:D
    invoke-virtual/range {v26 .. v26}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    .line 316
    .local v13, longitude:D
    invoke-virtual/range {v26 .. v26}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    .line 317
    .local v16, latitudeMax:D
    invoke-virtual/range {v26 .. v26}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    .line 318
    .local v20, longitudeMax:D
    invoke-virtual/range {v26 .. v26}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v18

    .line 319
    .local v18, latitudeMin:D
    invoke-virtual/range {v26 .. v26}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v22

    .line 321
    .local v22, longitudeMin:D
    const/4 v10, 0x0

    .line 322
    .local v10, eventId:Ljava/lang/String;
    const/16 v5, 0x9

    move/from16 v0, v25

    if-ne v0, v5, :cond_0

    .line 324
    invoke-virtual/range {v26 .. v26}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    :cond_0
    move-object/from16 v5, p0

    .line 327
    invoke-virtual/range {v5 .. v14}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->setRange(JJLjava/lang/String;DD)V

    .line 328
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move-wide/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->setMaxLocation(DD)V

    .line 329
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->setMinLocation(DD)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    const/16 v24, 0x1

    .line 341
    .end local v6           #timeStart:J
    .end local v8           #timeEnd:J
    .end local v10           #eventId:Ljava/lang/String;
    .end local v11           #latitude:D
    .end local v13           #longitude:D
    .end local v16           #latitudeMax:D
    .end local v18           #latitudeMin:D
    .end local v20           #longitudeMax:D
    .end local v22           #longitudeMin:D
    :goto_0
    return v24

    .line 332
    :catch_0
    move-exception v15

    .line 334
    .local v15, e:Ljava/lang/Exception;
    const-string v5, "SmartLocationCollection"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Exception bucketId = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v5, v0}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 339
    .end local v15           #e:Ljava/lang/Exception;
    :cond_1
    const-string v5, "SmartLocationCollection"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "bucketId missing. bucketId = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v5, v0}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getBucketId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->serializeEventParams()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDateName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLocation:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLocation:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 94
    :cond_0
    const/4 v0, 0x0

    .line 96
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mDateDisplayName:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getDefaultWhere()Ljava/lang/String;
    .locals 5

    .prologue
    const-wide/16 v3, 0x3e8

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ( ( datetaken > 0 AND datetaken <= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mEndTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND datetaken >= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ) OR ( ( datetaken is null OR datetaken <= 0 ) AND date_modified  <= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mEndTime:J

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND date_modified >= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mStartTime:J

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ) ) AND ( ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is null OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "longitude"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ) OR ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = 0 AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "longitude"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ) OR (("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMax:D

    invoke-static {v1, v2}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->getMaxLatitude(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " >= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMin:D

    invoke-static {v1, v2}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->getMinLatitude(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ) AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "longitude"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMax:D

    iget-wide v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMax:D

    invoke-static {v1, v2, v3, v4}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->getMaxLongitude(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "longitude"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " >= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMin:D

    iget-wide v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMin:D

    invoke-static {v1, v2, v3, v4}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->getMinLongitude(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ))) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayImageIdentifier()Ljava/lang/String;
    .locals 2

    .prologue
    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->getIdentifier()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLocation:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLocation:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mDateDisplayName:Ljava/lang/String;

    .line 106
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLocation:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getFolderRecoveryParam()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 274
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 275
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->getFolderType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->serializeEventParams()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 278
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryParams()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->getEventId()Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, eventId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->getCoverImage()Lcom/htc/album/modules/collection/SimpleImage;

    move-result-object v0

    .line 263
    .local v0, coverImage:Lcom/htc/album/modules/collection/SimpleImage;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 264
    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/htc/album/modules/collection/SimpleImage;->updateEventId(Landroid/content/Context;Ljava/lang/String;)Z

    .line 268
    :goto_0
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getQueryParams()Landroid/content/Intent;

    move-result-object v2

    return-object v2

    .line 266
    :cond_0
    const-string v2, "SmartLocationCollection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "coverImage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", eventId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mContext = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getQueryWhere(IZ)Ljava/lang/String;
    .locals 6
    .parameter "mediaType"
    .parameter "appendDefault"

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->getDefaultWhere()Ljava/lang/String;

    move-result-object v3

    .line 360
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->getEventId()Ljava/lang/String;

    move-result-object v1

    .line 362
    .local v1, eventId:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 364
    const-string v2, "v_folder"

    .line 365
    .local v2, vFolder:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " (( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\') OR ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IS NULL ))) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 369
    .end local v2           #vFolder:Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SQL_CAMERA_DEFAULT_WHERE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 371
    if-eqz p2, :cond_1

    .line 373
    iget-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->getSupportedMediaFormatWhereClause(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, defaultWhere:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 376
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 385
    .end local v0           #defaultWhere:Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method public inRange(JLjava/lang/String;DD)Z
    .locals 8
    .parameter "time"
    .parameter "eventId"
    .parameter "lat"
    .parameter "lng"

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 179
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mEventId:Ljava/lang/String;

    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    .line 181
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mEventId:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    iget v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mEventCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mEventCount:I

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p4

    move-wide v5, p6

    .line 184
    invoke-virtual/range {v0 .. v6}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->adjustRange(JDD)V

    .line 225
    :cond_0
    :goto_0
    return v7

    :cond_1
    move v7, v0

    .line 189
    goto :goto_0

    .line 193
    :cond_2
    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTimeMin:J

    cmp-long v1, v1, p1

    if-gtz v1, :cond_3

    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTimeMax:J

    cmp-long v1, p1, v1

    if-gtz v1, :cond_3

    .line 195
    .local v7, hit:Z
    :goto_1
    if-nez v7, :cond_4

    move v7, v0

    .line 197
    goto :goto_0

    .end local v7           #hit:Z
    :cond_3
    move v7, v0

    .line 193
    goto :goto_1

    .line 200
    .restart local v7       #hit:Z
    :cond_4
    invoke-static {p4, p5, p6, p7}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->isValidateLatLng(DD)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLatitude:D

    iget-wide v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLongitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->isValidateLatLng(DD)Z

    move-result v0

    if-nez v0, :cond_7

    .line 214
    :cond_5
    :goto_2
    if-eqz v7, :cond_0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p4

    move-wide v5, p6

    .line 216
    invoke-virtual/range {v0 .. v6}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->adjustRange(JDD)V

    .line 217
    if-eqz p3, :cond_0

    .line 219
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mEventId:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 220
    iput-object p3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mEventId:Ljava/lang/String;

    .line 221
    :cond_6
    iget v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mEventCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mEventCount:I

    goto :goto_0

    .line 204
    :cond_7
    iget-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMax:D

    invoke-static {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->getMaxLatitude(D)D

    move-result-wide v0

    cmpl-double v0, v0, p4

    if-lez v0, :cond_8

    iget-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMin:D

    invoke-static {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->getMinLatitude(D)D

    move-result-wide v0

    cmpl-double v0, p4, v0

    if-ltz v0, :cond_8

    iget-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMax:D

    iget-wide v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMax:D

    invoke-static {v0, v1, v2, v3}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->getMaxLongitude(DD)D

    move-result-wide v0

    cmpl-double v0, v0, p6

    if-lez v0, :cond_8

    iget-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMin:D

    iget-wide v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMin:D

    invoke-static {v0, v1, v2, v3}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->getMinLongitude(DD)D

    move-result-wide v0

    cmpl-double v0, p6, v0

    if-gez v0, :cond_5

    .line 211
    :cond_8
    const/4 v7, 0x0

    goto :goto_2
.end method

.method protected makeList(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 15
    .parameter "context"
    .parameter "extras"

    .prologue
    .line 232
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    iget v4, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    iget v5, p0, Lcom/htc/album/modules/collection/Collection;->mSortOrder:I

    const/4 v6, 0x1

    iget v7, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->getQueryWhere(IZ)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    move-object/from16 v9, p2

    invoke-virtual/range {v0 .. v9}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IIZLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v11

    .line 240
    .local v11, imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mExtendTimeRange:Z

    if-eqz v0, :cond_0

    if-eqz v11, :cond_0

    .line 242
    invoke-interface {v11}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v10

    .line 243
    .local v10, count:I
    if-lez v10, :cond_0

    .line 245
    add-int/lit8 v0, v10, -0x1

    invoke-interface {v11, v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v12

    .line 246
    .local v12, lastImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v12, :cond_0

    .line 248
    invoke-interface {v12}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSortBase()J

    move-result-wide v0

    const-wide/32 v2, 0x6ddd00

    add-long v13, v0, v2

    .line 250
    .local v13, newTime:J
    iput-wide v13, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mEndTime:J

    .line 255
    .end local v10           #count:I
    .end local v12           #lastImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v13           #newTime:J
    :cond_0
    return-object v11
.end method

.method protected onLoadFromPreference(Landroid/content/SharedPreferences;)V
    .locals 3
    .parameter "pref"

    .prologue
    const/high16 v2, 0x437f

    .line 421
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->onLoadFromPreference(Landroid/content/SharedPreferences;)V

    .line 423
    const-string v0, "location_max_latitude"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMax:D

    .line 424
    const-string v0, "location_max_longitude"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMax:D

    .line 425
    const-string v0, "location_min_latitude"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMin:D

    .line 426
    const-string v0, "location_min_location"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMin:D

    .line 427
    return-void
.end method

.method protected onSaveToPerference(Landroid/content/SharedPreferences$Editor;)V
    .locals 3
    .parameter "editor"

    .prologue
    .line 409
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->onSaveToPerference(Landroid/content/SharedPreferences$Editor;)V

    .line 411
    const-string v0, "location_max_latitude"

    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMax:D

    double-to-float v1, v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 412
    const-string v0, "location_max_longitude"

    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMax:D

    double-to-float v1, v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 413
    const-string v0, "location_min_latitude"

    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMin:D

    double-to-float v1, v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 414
    const-string v0, "location_min_location"

    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMin:D

    double-to-float v1, v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 415
    return-void
.end method

.method public readFrom(ZIILjava/lang/String;)V
    .locals 5
    .parameter "isVersionChange"
    .parameter "newVer"
    .parameter "oldVer"
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 492
    const/4 v1, 0x0

    .line 493
    .local v1, i:I
    invoke-virtual {p0, p4}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->removeAllHeader(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 494
    .local v0, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 496
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-super {p0, p1, p2, p3, v3}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->readFrom(ZIILjava/lang/String;)V

    .line 497
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMax:D

    .line 498
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMax:D

    .line 499
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMin:D

    .line 500
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMin:D

    move v1, v2

    .line 502
    .end local v2           #i:I
    .restart local v1       #i:I
    :cond_0
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 453
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->readFromParcel(Landroid/os/Parcel;)V

    .line 455
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMax:D

    .line 456
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMax:D

    .line 457
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMin:D

    .line 458
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMin:D

    .line 459
    return-void
.end method

.method public serializeEventParams()Ljava/lang/StringBuffer;
    .locals 5

    .prologue
    const/16 v4, 0x3b

    .line 284
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 285
    .local v0, buffer:Ljava/lang/StringBuffer;
    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mEndTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLatitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLongitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMax:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMax:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMin:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMin:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 294
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mEventId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 295
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mEventId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 298
    :cond_0
    return-object v0
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLocation:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setMaxLocation(DD)V
    .locals 0
    .parameter "maxLatitude"
    .parameter "maxLongitude"

    .prologue
    .line 155
    iput-wide p1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMax:D

    .line 156
    iput-wide p3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMax:D

    .line 157
    return-void
.end method

.method public setMinLocation(DD)V
    .locals 0
    .parameter "minLatitude"
    .parameter "minLongitude"

    .prologue
    .line 161
    iput-wide p1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMin:D

    .line 162
    iput-wide p3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMin:D

    .line 163
    return-void
.end method

.method public setRange(JJLjava/lang/String;DD)V
    .locals 7
    .parameter "timeStart"
    .parameter "timeEnd"
    .parameter "eventId"
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 169
    invoke-super/range {p0 .. p9}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->setRange(JJLjava/lang/String;DD)V

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p6

    move-wide v5, p8

    .line 170
    invoke-virtual/range {v0 .. v6}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->adjustRange(JDD)V

    .line 171
    if-eqz p5, :cond_0

    .line 172
    iget v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mEventCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mEventCount:I

    .line 173
    :cond_0
    return-void
.end method

.method public toFormatedString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 477
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 478
    .local v0, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->toFormatedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMax:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMax:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMin:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMin:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->capAllHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateEventIds()I
    .locals 18

    .prologue
    .line 512
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 513
    .local v8, start:J
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mEventCount:I

    if-lez v14, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mEventCount:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    if-ne v14, v15, :cond_0

    .line 515
    const-string v14, "SmartLocationCollection"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[updateEventIds] Event id = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mEventId:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " no need to update, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mEventCount:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const/4 v1, 0x0

    .line 548
    :goto_0
    return v1

    .line 519
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->getEventId()Ljava/lang/String;

    move-result-object v5

    .line 520
    .local v5, eventId:Ljava/lang/String;
    if-nez v5, :cond_1

    .line 521
    const/4 v1, 0x0

    goto :goto_0

    .line 523
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->getDefaultWhere()Ljava/lang/String;

    move-result-object v13

    .line 524
    .local v13, where:Ljava/lang/String;
    const/4 v14, 0x0

    invoke-static {v14}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->getImageWhere(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 525
    .local v6, imageWhere:Ljava/lang/String;
    const/4 v14, 0x0

    invoke-static {v14}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->getVideoWhere(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 527
    .local v12, videoWhere:Ljava/lang/String;
    const-string v11, "v_folder"

    .line 528
    .local v11, vFolder:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " IS NULL AND "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SQL_CAMERA_DEFAULT_WHERE:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " AND "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " AND ( "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " OR "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ) "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 531
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/modules/collection/Collection;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 532
    .local v7, resolver:Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 533
    .local v2, cv:Landroid/content/ContentValues;
    invoke-virtual {v2, v11, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const-string v14, "external"

    invoke-static {v14}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 536
    .local v10, uri:Landroid/net/Uri;
    const/4 v14, 0x0

    invoke-virtual {v7, v10, v2, v13, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 538
    .local v1, count:I
    if-lez v1, :cond_2

    .line 540
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 541
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalVideosUri()Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 544
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 546
    .local v3, end:J
    const-string v14, "SmartLocationCollection"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[updateEventIds] Event id = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mEventId:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", update time = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v3, v8

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", update count = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 465
    invoke-super {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->writeToParcel(Landroid/os/Parcel;I)V

    .line 467
    iget-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMax:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 468
    iget-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMax:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 469
    iget-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLatitudeMin:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 470
    iget-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->mLongitudeMin:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 471
    return-void
.end method
