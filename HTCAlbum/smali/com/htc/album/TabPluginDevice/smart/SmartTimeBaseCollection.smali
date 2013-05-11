.class public Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
.super Lcom/htc/album/TabPluginDevice/AlbumCollection;
.source "SmartTimeBaseCollection.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototypeLayout;


# static fields
.field public static final DAYS_A_WEEK:I = 0x7

.field public static final FILE_CACHE_VERSION:I = 0x1

.field public static final HOURS_A_DAY:I = 0x18

.field public static final KEY_DATE_DISPLAY_NAME:Ljava/lang/String; = "date_display_name"

.field public static final KEY_END_TIME:Ljava/lang/String; = "smart_end_time"

.field public static final KEY_LATITUDE:Ljava/lang/String; = "location_latitude"

.field public static final KEY_LOCATION_NAME:Ljava/lang/String; = "location_name"

.field public static final KEY_LONGITUDE:Ljava/lang/String; = "location_longitude"

.field public static final KEY_MAX_TIME:Ljava/lang/String; = "smart_max_time"

.field public static final KEY_MIN_TIME:Ljava/lang/String; = "smart_min_time"

.field public static final KEY_START_TIME:Ljava/lang/String; = "smart_start_time"

.field public static final KEY_TIME:Ljava/lang/String; = "smart_time"

.field public static final KEY_TYPE:Ljava/lang/String; = "smart_type"

.field public static final LOG_TAG:Ljava/lang/String; = "SmartTimeBaseCollection"

.field public static final MONTH_DAYS:[I = null

.field public static final MS_PER_DAY:J = 0x5265c00L

.field public static final SC_DRM_IMAGES_PROJECTION:[Ljava/lang/String; = null

.field public static final SC_IMAGES_PROJECTION:[Ljava/lang/String; = null

.field public static final SC_VIDEOS_PROJECTION:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected mDateDisplayName:Ljava/lang/String;

.field protected mDayOfYear:I

.field protected mEndTime:J

.field protected mEventId:Ljava/lang/String;

.field protected mExtendTimeRange:Z

.field private mIndex:I

.field private mIsSeparable:Z

.field protected mLanguage:Ljava/lang/String;

.field protected mLatitude:D

.field protected mLocation:Ljava/lang/String;

.field protected mLongitude:D

.field protected mMonth:I

.field private mPrototypeId:I

.field private mRowFirstItemIndexLand:I

.field private mRowFirstItemIndexPort:I

.field protected mStartTime:J

.field protected mTime:J

.field protected mTimeMax:J

.field protected mTimeMin:J

.field protected mWeekOfYear:I

.field protected mYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "date_modified"

    aput-object v1, v0, v4

    const-string v1, "date_added"

    aput-object v1, v0, v5

    const-string v1, "mime_type"

    aput-object v1, v0, v6

    const-string v1, "_size"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "bucket_display_name"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "orientation"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "media_type"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "v_folder"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->SC_IMAGES_PROJECTION:[Ljava/lang/String;

    .line 65
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "date_modified"

    aput-object v1, v0, v4

    const-string v1, "date_added"

    aput-object v1, v0, v5

    const-string v1, "mime_type"

    aput-object v1, v0, v6

    const-string v1, "_size"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "bucket_display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->SC_VIDEOS_PROJECTION:[Ljava/lang/String;

    .line 77
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "date_modified"

    aput-object v1, v0, v4

    const-string v1, "date_added"

    aput-object v1, v0, v5

    const-string v1, "mime_type"

    aput-object v1, v0, v6

    const-string v1, "_size"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "bucket_display_name"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->SC_DRM_IMAGES_PROJECTION:[Ljava/lang/String;

    .line 105
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->MONTH_DAYS:[I

    return-void

    :array_0
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const-wide v5, 0x406fe00000000000L

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-wide/16 v1, -0x1

    const/4 v0, -0x1

    .line 132
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;-><init>()V

    .line 110
    iput-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTime:J

    .line 111
    iput-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTimeMin:J

    .line 112
    iput-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTimeMax:J

    .line 113
    iput-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mStartTime:J

    .line 114
    iput-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mEndTime:J

    .line 115
    iput v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mYear:I

    .line 116
    iput v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mMonth:I

    .line 117
    iput v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mWeekOfYear:I

    .line 118
    iput v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mDayOfYear:I

    .line 120
    iput-wide v5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLatitude:D

    .line 121
    iput-wide v5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLongitude:D

    .line 123
    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mDateDisplayName:Ljava/lang/String;

    .line 124
    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLocation:Ljava/lang/String;

    .line 125
    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLanguage:Ljava/lang/String;

    .line 127
    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mEventId:Ljava/lang/String;

    .line 129
    iput-boolean v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mExtendTimeRange:Z

    .line 438
    iput v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mIndex:I

    .line 439
    iput v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mPrototypeId:I

    .line 440
    iput v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mRowFirstItemIndexPort:I

    .line 441
    iput v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mRowFirstItemIndexLand:I

    .line 442
    iput-boolean v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mIsSeparable:Z

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "folderType"

    .prologue
    .line 138
    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "folderType"
    .parameter "bucketId"
    .parameter "displayName"

    .prologue
    const-wide v5, 0x406fe00000000000L

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-wide/16 v1, -0x1

    const/4 v0, -0x1

    .line 143
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/album/TabPluginDevice/AlbumCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iput-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTime:J

    .line 111
    iput-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTimeMin:J

    .line 112
    iput-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTimeMax:J

    .line 113
    iput-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mStartTime:J

    .line 114
    iput-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mEndTime:J

    .line 115
    iput v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mYear:I

    .line 116
    iput v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mMonth:I

    .line 117
    iput v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mWeekOfYear:I

    .line 118
    iput v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mDayOfYear:I

    .line 120
    iput-wide v5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLatitude:D

    .line 121
    iput-wide v5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLongitude:D

    .line 123
    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mDateDisplayName:Ljava/lang/String;

    .line 124
    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLocation:Ljava/lang/String;

    .line 125
    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLanguage:Ljava/lang/String;

    .line 127
    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mEventId:Ljava/lang/String;

    .line 129
    iput-boolean v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mExtendTimeRange:Z

    .line 438
    iput v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mIndex:I

    .line 439
    iput v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mPrototypeId:I

    .line 440
    iput v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mRowFirstItemIndexPort:I

    .line 441
    iput v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mRowFirstItemIndexLand:I

    .line 442
    iput-boolean v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mIsSeparable:Z

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    .line 145
    return-void
.end method


# virtual methods
.method public clone(Lcom/htc/album/modules/collection/Collection;)V
    .locals 3
    .parameter "collection"

    .prologue
    .line 339
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->clone(Lcom/htc/album/modules/collection/Collection;)V

    .line 341
    instance-of v1, p1, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 343
    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    .line 344
    .local v0, smartC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    iget-wide v1, v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTime:J

    iput-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTime:J

    .line 345
    iget-wide v1, v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mStartTime:J

    iput-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mStartTime:J

    .line 346
    iget-wide v1, v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mEndTime:J

    iput-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mEndTime:J

    .line 347
    iget-wide v1, v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTimeMin:J

    iput-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTimeMin:J

    .line 348
    iget-wide v1, v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTimeMax:J

    iput-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTimeMax:J

    .line 349
    iget-wide v1, v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLatitude:D

    iput-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLatitude:D

    .line 350
    iget-wide v1, v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLongitude:D

    iput-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLongitude:D

    .line 351
    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mDateDisplayName:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mDateDisplayName:Ljava/lang/String;

    .line 352
    iget v1, v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mYear:I

    iput v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mYear:I

    .line 353
    iget v1, v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mMonth:I

    iput v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mMonth:I

    .line 354
    iget v1, v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mWeekOfYear:I

    iput v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mWeekOfYear:I

    .line 355
    iget v1, v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mDayOfYear:I

    iput v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mDayOfYear:I

    .line 356
    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLocation:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLocation:Ljava/lang/String;

    .line 357
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLanguage:Ljava/lang/String;

    .line 358
    iget-boolean v1, v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mExtendTimeRange:Z

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mExtendTimeRange:Z

    .line 360
    .end local v0           #smartC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    :cond_0
    return-void
.end method

.method public compareTo(Lcom/htc/album/modules/collection/Collection;)I
    .locals 5
    .parameter "collection"

    .prologue
    .line 316
    instance-of v1, p1, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 318
    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    .line 320
    .local v0, smartC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTime:J

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 322
    const/4 v1, 0x1

    .line 332
    .end local v0           #smartC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    :goto_0
    return v1

    .line 324
    .restart local v0       #smartC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    :cond_0
    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTime:J

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 326
    const/4 v1, -0x1

    goto :goto_0

    .line 329
    :cond_1
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getFolderType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 332
    .end local v0           #smartC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    :cond_2
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->compareTo(Lcom/htc/album/modules/collection/Collection;)I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    check-cast p1, Lcom/htc/album/modules/collection/Collection;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->compareTo(Lcom/htc/album/modules/collection/Collection;)I

    move-result v0

    return v0
.end method

.method public getDateName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mDateDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDayOfYear()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mDayOfYear:I

    return v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 198
    iget-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mEndTime:J

    return-wide v0
.end method

.method public getEventId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mEventId:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mPrototypeId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIdentifier()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getIdentifier()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 446
    iget v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mIndex:I

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 228
    iget-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLatitude:D

    return-wide v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 233
    iget-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLongitude:D

    return-wide v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mMonth:I

    return v0
.end method

.method public getOrientation()I
    .locals 3

    .prologue
    .line 181
    const/4 v0, 0x0

    .line 183
    .local v0, nOrientation:I
    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    if-nez v2, :cond_0

    move v1, v0

    .line 188
    .end local v0           #nOrientation:I
    .local v1, nOrientation:I
    :goto_0
    return v1

    .line 186
    .end local v1           #nOrientation:I
    .restart local v0       #nOrientation:I
    :cond_0
    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget v0, v2, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    move v1, v0

    .line 188
    .end local v0           #nOrientation:I
    .restart local v1       #nOrientation:I
    goto :goto_0
.end method

.method public getRowFirstItemIndex(I)I
    .locals 1
    .parameter "nOrientation"

    .prologue
    .line 458
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 459
    iget v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mRowFirstItemIndexPort:I

    .line 461
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mRowFirstItemIndexLand:I

    goto :goto_0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 193
    iget-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mStartTime:J

    return-wide v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 203
    iget-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTime:J

    return-wide v0
.end method

.method public getWeekOfYear()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mWeekOfYear:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mYear:I

    return v0
.end method

.method public inRange(JLjava/lang/String;DD)Z
    .locals 3
    .parameter "time"
    .parameter "eventId"
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 278
    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTimeMin:J

    cmp-long v1, v1, p1

    if-gtz v1, :cond_0

    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTimeMax:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mEventId:Ljava/lang/String;

    if-eqz v1, :cond_3

    if-eqz p3, :cond_3

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mEventId:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 281
    .local v0, hit:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 283
    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mStartTime:J

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mStartTime:J

    .line 284
    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mEndTime:J

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mEndTime:J

    .line 286
    :cond_2
    return v0

    .line 278
    .end local v0           #hit:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isManageable()Z
    .locals 1

    .prologue
    .line 550
    const/4 v0, 0x0

    return v0
.end method

.method public isSeparable()Z
    .locals 1

    .prologue
    .line 466
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mIsSeparable:Z

    return v0
.end method

.method protected makeList(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 14
    .parameter "context"
    .parameter "extras"

    .prologue
    .line 293
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 295
    .local v9, partialLoad:Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getEnablePartialLoadImageList()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 297
    const-string v0, "key_count_image"

    iget v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageCnt:I

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 298
    const-string v0, "key_count_video"

    iget v1, p0, Lcom/htc/album/modules/collection/Collection;->mVideoCnt:I

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 301
    :cond_0
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

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SQL_CAMERA_DEFAULT_WHERE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND ( ( datetaken > 0 AND datetaken <= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v10, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mEndTime:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND datetaken >= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v10, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mStartTime:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ) OR ( datetaken <= 0 AND date_modified  <= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v10, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mEndTime:J

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND date_modified >= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v10, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mStartTime:J

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ) )"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    invoke-virtual/range {v0 .. v9}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IIZLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method

.method protected onLoadFromPreference(Landroid/content/SharedPreferences;)V
    .locals 5
    .parameter "pref"

    .prologue
    const/high16 v4, 0x437f

    const-wide/16 v2, -0x1

    .line 383
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->onLoadFromPreference(Landroid/content/SharedPreferences;)V

    .line 385
    const-string v0, "smart_time"

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTime:J

    .line 386
    const-string v0, "smart_start_time"

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mStartTime:J

    .line 387
    const-string v0, "smart_end_time"

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mEndTime:J

    .line 388
    const-string v0, "smart_min_time"

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTimeMin:J

    .line 389
    const-string v0, "smart_max_time"

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTimeMax:J

    .line 390
    const-string v0, "location_latitude"

    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLatitude:D

    .line 391
    const-string v0, "location_longitude"

    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLongitude:D

    .line 392
    const-string v0, "date_display_name"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mDateDisplayName:Ljava/lang/String;

    .line 393
    const-string v0, "location_name"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLocation:Ljava/lang/String;

    .line 394
    return-void
.end method

.method protected onSaveToPerference(Landroid/content/SharedPreferences$Editor;)V
    .locals 3
    .parameter "editor"

    .prologue
    .line 366
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->onSaveToPerference(Landroid/content/SharedPreferences$Editor;)V

    .line 368
    const-string v0, "smart_time"

    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTime:J

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 369
    const-string v0, "smart_start_time"

    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mStartTime:J

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 370
    const-string v0, "smart_end_time"

    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mEndTime:J

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 371
    const-string v0, "smart_min_time"

    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTimeMin:J

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 372
    const-string v0, "smart_max_time"

    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTimeMax:J

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 373
    const-string v0, "location_latitude"

    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLatitude:D

    double-to-float v1, v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 374
    const-string v0, "location_longitude"

    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLongitude:D

    double-to-float v1, v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 375
    const-string v0, "date_display_name"

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mDateDisplayName:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 376
    const-string v0, "location_name"

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLocation:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 377
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
    .line 525
    const/4 v1, 0x0

    .line 526
    .local v1, i:I
    invoke-virtual {p0, p4}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->removeAllHeader(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 527
    .local v0, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 529
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-super {p0, p1, p2, p3, v3}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->readFrom(ZIILjava/lang/String;)V

    .line 530
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTime:J

    .line 531
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mStartTime:J

    .line 532
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mEndTime:J

    .line 533
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTimeMin:J

    .line 534
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTimeMax:J

    .line 535
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLatitude:D

    .line 536
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLongitude:D

    .line 537
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mDateDisplayName:Ljava/lang/String;

    .line 538
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mYear:I

    .line 539
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mMonth:I

    .line 540
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mWeekOfYear:I

    .line 541
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mDayOfYear:I

    .line 542
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLocation:Ljava/lang/String;

    .line 543
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLanguage:Ljava/lang/String;

    move v1, v2

    .line 545
    .end local v2           #i:I
    .restart local v1       #i:I
    :cond_0
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    const/4 v3, 0x1

    .line 400
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->readFromParcel(Landroid/os/Parcel;)V

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTime:J

    .line 403
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mStartTime:J

    .line 404
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mEndTime:J

    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTimeMin:J

    .line 406
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTimeMax:J

    .line 407
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLatitude:D

    .line 408
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLongitude:D

    .line 409
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mDateDisplayName:Ljava/lang/String;

    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLocation:Ljava/lang/String;

    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 412
    .local v0, expand:I
    if-ne v0, v3, :cond_0

    .line 414
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mExtendTimeRange:Z

    .line 416
    :cond_0
    return-void
.end method

.method public setEventId(Ljava/lang/String;)V
    .locals 1
    .parameter "eventId"

    .prologue
    .line 250
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mEventId:Ljava/lang/String;

    goto :goto_0
.end method

.method public setIndex(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 470
    iput p1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mIndex:I

    .line 471
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .parameter "language"

    .prologue
    .line 273
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLanguage:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 494
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLocation:Ljava/lang/String;

    .line 495
    return-void
.end method

.method public setPrototypeIdentifier(I)V
    .locals 0
    .parameter "nId"

    .prologue
    .line 475
    iput p1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mPrototypeId:I

    .line 476
    return-void
.end method

.method public setRange(JJLjava/lang/String;DD)V
    .locals 4
    .parameter "timeStart"
    .parameter "timeEnd"
    .parameter "eventId"
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 149
    iput-wide p3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTime:J

    .line 151
    iput-wide p1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mStartTime:J

    .line 152
    iput-wide p3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mEndTime:J

    .line 154
    iput-wide p1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTimeMin:J

    .line 155
    iput-wide p3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTimeMax:J

    .line 157
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 158
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 160
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mYear:I

    .line 161
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mMonth:I

    .line 162
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mWeekOfYear:I

    .line 163
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mDayOfYear:I

    .line 165
    iput-wide p6, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLatitude:D

    .line 166
    iput-wide p8, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLongitude:D

    .line 168
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTime:J

    invoke-static {v1, v2, v3}, Lcom/htc/opensense2/album/util/DateTimeManager;->getEventDateString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mDateDisplayName:Ljava/lang/String;

    .line 169
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLanguage:Ljava/lang/String;

    .line 171
    iput-object p5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mEventId:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setRowFirstItemIndex4Land(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 485
    iput p1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mRowFirstItemIndexLand:I

    .line 486
    return-void
.end method

.method public setRowFirstItemIndex4Port(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 480
    iput p1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mRowFirstItemIndexPort:I

    .line 481
    return-void
.end method

.method public setSeparable(Z)V
    .locals 0
    .parameter "bSeparable"

    .prologue
    .line 490
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mIsSeparable:Z

    .line 491
    return-void
.end method

.method public setTimeRangeExtended(Z)V
    .locals 0
    .parameter "extend"

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mExtendTimeRange:Z

    .line 177
    return-void
.end method

.method public toFormatedString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 503
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 504
    .local v0, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->toFormatedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTime:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mStartTime:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mEndTime:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTimeMin:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTimeMax:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLatitude:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    iget-wide v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLongitude:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mDateDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    iget v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mYear:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    iget v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mMonth:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    iget v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mWeekOfYear:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    iget v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mDayOfYear:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->capAllHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateEventIds()I
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 422
    invoke-super {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->writeToParcel(Landroid/os/Parcel;I)V

    .line 424
    iget-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 425
    iget-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 426
    iget-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mEndTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 427
    iget-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTimeMin:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 428
    iget-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mTimeMax:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 429
    iget-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 430
    iget-wide v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 431
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mDateDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 433
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mExtendTimeRange:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    return-void

    .line 433
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
