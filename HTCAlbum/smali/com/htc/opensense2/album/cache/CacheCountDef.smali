.class public Lcom/htc/opensense2/album/cache/CacheCountDef;
.super Ljava/lang/Object;
.source "CacheCountDef.java"


# static fields
.field public static final ARR_DMCFOLDER:[Ljava/lang/String; = null

.field public static final ARR_SUBFOLDER:[Ljava/lang/String; = null

.field public static final All_THUMBNAUILS_FOLDER:[Ljava/lang/String; = null

.field public static final EVENT_ACTION_DELETE_THUMBS:Ljava/lang/String; = "com.htc.MediaCacheService.ACTION_DELETE_EVENTTHUMBS"

.field public static final EVENT_ARR_FOLDER:[Ljava/lang/String; = null

.field public static final EVENT_LOG_TAG:Ljava/lang/String; = "CacheInfoEventView"

.field public static final EVENT_MAX_THUMB_COUNT:I = 0x12c

#the value of this static final field might be set in the static constructor
.field public static final EVENT_MAX_VIEWFOLDER:I = 0x0

.field public static final EVENT_PREFIX:Ljava/lang/String; = "13-"

.field public static final FILMSTRIP_PREFIX:Ljava/lang/String; = "11-"

.field public static final FOLDER_THUMBNAIL:Ljava/lang/String; = "/Android/data/com.htc.album/.thumbnails/"

.field public static final FullSCREEN_PREFIX:Ljava/lang/String; = "12-"

.field public static final GRID_PREFIX:Ljava/lang/String; = "XX-"

#the value of this static final field might be set in the static constructor
.field public static final IDX_FILMSTRIP:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final IDX_FULLSCREEN:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final MAX_DMCFOLDER_COUNT:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final MAX_GRIDTHUMB_FOLDER:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final MAX_THUMB_FOLDER_COUNT:I = 0x0

.field public static final THUMBNAIL_VERSION:I = 0x64


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "00"

    aput-object v1, v0, v3

    const-string v1, "01"

    aput-object v1, v0, v4

    const-string v1, "02"

    aput-object v1, v0, v5

    const-string v1, "03"

    aput-object v1, v0, v6

    const-string v1, "04"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "05"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "06"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "07"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "08"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "09"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "11"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "12"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountDef;->ARR_SUBFOLDER:[Ljava/lang/String;

    .line 7
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "00"

    aput-object v1, v0, v3

    const-string v1, "01"

    aput-object v1, v0, v4

    const-string v1, "02"

    aput-object v1, v0, v5

    const-string v1, "03"

    aput-object v1, v0, v6

    const-string v1, "04"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "05"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "06"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "07"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "08"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "09"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "11"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "12"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "12_720"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "13"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountDef;->All_THUMBNAUILS_FOLDER:[Ljava/lang/String;

    .line 8
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountDef;->ARR_SUBFOLDER:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Lcom/htc/opensense2/album/cache/CacheCountDef;->MAX_THUMB_FOLDER_COUNT:I

    .line 9
    sget v0, Lcom/htc/opensense2/album/cache/CacheCountDef;->MAX_THUMB_FOLDER_COUNT:I

    add-int/lit8 v0, v0, -0x2

    sput v0, Lcom/htc/opensense2/album/cache/CacheCountDef;->MAX_GRIDTHUMB_FOLDER:I

    .line 10
    sget v0, Lcom/htc/opensense2/album/cache/CacheCountDef;->MAX_THUMB_FOLDER_COUNT:I

    add-int/lit8 v0, v0, -0x2

    sput v0, Lcom/htc/opensense2/album/cache/CacheCountDef;->IDX_FILMSTRIP:I

    .line 11
    sget v0, Lcom/htc/opensense2/album/cache/CacheCountDef;->MAX_THUMB_FOLDER_COUNT:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/htc/opensense2/album/cache/CacheCountDef;->IDX_FULLSCREEN:I

    .line 19
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "12_720"

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountDef;->ARR_DMCFOLDER:[Ljava/lang/String;

    .line 20
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountDef;->ARR_DMCFOLDER:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Lcom/htc/opensense2/album/cache/CacheCountDef;->MAX_DMCFOLDER_COUNT:I

    .line 25
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "13"

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountDef;->EVENT_ARR_FOLDER:[Ljava/lang/String;

    .line 26
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountDef;->EVENT_ARR_FOLDER:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Lcom/htc/opensense2/album/cache/CacheCountDef;->EVENT_MAX_VIEWFOLDER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
