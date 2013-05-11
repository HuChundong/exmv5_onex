.class public Landroid/mtp/MtpDatabase;
.super Ljava/lang/Object;
.source "MtpDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpDatabase$MtpPropertyCache;
    }
.end annotation


# static fields
.field static final ALL_PROPERTIES:[I = null

.field static final AUDIO_PROPERTIES:[I = null

.field private static final DEVICE_PROPERTIES_DATABASE_VERSION:I = 0x1

.field static final FILE_PROPERTIES:[I = null

.field private static final FILE_SIZE_CHECK_CRITERIA:J = 0x6400000L

.field private static final FORMAT_PARENT_WHERE:Ljava/lang/String; = "format=? AND parent=?"

.field private static final FORMAT_WHERE:Ljava/lang/String; = "format=?"

.field private static final ID_PROJECTION:[Ljava/lang/String; = null

.field private static final ID_WHERE:Ljava/lang/String; = "_id=?"

.field static final IMAGE_PROPERTIES:[I = null

.field private static final MTP_PERF_CPU_ATTR:Ljava/lang/String; = "/sys/class/android_usb/android0/f_mtp/qos"

.field private static final OBJECT_INFO_PROJECTION:[Ljava/lang/String; = null

.field private static final PARENT_WHERE:Ljava/lang/String; = "parent=?"

.field private static final PATH_PROJECTION:[Ljava/lang/String; = null

.field private static final PATH_SIZE_FORMAT_PROJECTION:[Ljava/lang/String; = null

.field private static final PATH_WHERE:Ljava/lang/String; = "_data=?"

.field private static final STORAGE_FORMAT_PARENT_WHERE:Ljava/lang/String; = "storage_id=? AND format=? AND parent=?"

.field private static final STORAGE_FORMAT_WHERE:Ljava/lang/String; = "storage_id=? AND format=?"

.field private static final STORAGE_PARENT_WHERE:Ljava/lang/String; = "storage_id=? AND parent=?"

.field private static final STORAGE_WHERE:Ljava/lang/String; = "storage_id=?"

.field private static final TAG:Ljava/lang/String; = "MtpDatabase"

.field static final VIDEO_PROPERTIES:[I = null

.field private static bCheckStorageId:Z = false

.field private static bPEF_KERNEL_SUPPORT:Z = false

.field private static final cCACHE_CRITERIA:I = 0x20

.field private static iStorageID1:I = 0x0

.field private static iStorageID2:I = 0x0

.field private static maVolumes:[Landroid/os/storage/StorageVolume; = null

.field private static final szPhoneStorage:Ljava/lang/String; = "Phone"

.field private static final szSDCard:Ljava/lang/String; = "Card"

.field private static szStoragePath2:Ljava/lang/String;


# instance fields
.field public amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

.field public amMtpPropertyCacheHandle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final bEnableScan:Z

.field private final bNewScan:Z

.field private final mContext:Landroid/content/Context;

.field private mDatabaseModified:Z

.field private mDeviceProperties:Landroid/content/SharedPreferences;

.field private final mMediaProvider:Landroid/content/IContentProvider;

.field private final mMediaScanner:Landroid/media/MediaScanner;

.field private final mMediaStoragePath:Ljava/lang/String;

.field private mNativeContext:I

.field private mObjectFileSize:J

.field private final mObjectsUri:Landroid/net/Uri;

.field private final mPropertyGroupsByFormat:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mPropertyGroupsByProperty:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mScanDirectory:Ljava/lang/String;

.field private mSessionActive:Z

.field private final mStorageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/mtp/MtpStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubDirectories:[Ljava/lang/String;

.field private mSubDirectoriesWhere:Ljava/lang/String;

.field private mSubDirectoriesWhereArgs:[Ljava/lang/String;

.field private final mVolumeName:Ljava/lang/String;

.field private final mszNotifyPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, -0x1

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 100
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    .line 103
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    sput-object v0, Landroid/mtp/MtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    .line 107
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "_size"

    aput-object v1, v0, v2

    const-string v1, "format"

    aput-object v1, v0, v6

    sput-object v0, Landroid/mtp/MtpDatabase;->PATH_SIZE_FORMAT_PROJECTION:[Ljava/lang/String;

    .line 113
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "storage_id"

    aput-object v1, v0, v4

    const-string v1, "format"

    aput-object v1, v0, v2

    const-string/jumbo v1, "parent"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "album_artist"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "composer"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "description"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "year"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "track"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    sput-object v0, Landroid/mtp/MtpDatabase;->OBJECT_INFO_PROJECTION:[Ljava/lang/String;

    .line 149
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 379
    sput v5, Landroid/mtp/MtpDatabase;->iStorageID1:I

    sput v5, Landroid/mtp/MtpDatabase;->iStorageID2:I

    .line 380
    const-string v0, ""

    sput-object v0, Landroid/mtp/MtpDatabase;->szStoragePath2:Ljava/lang/String;

    .line 381
    const/4 v0, 0x0

    sput-object v0, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    .line 382
    sput-boolean v3, Landroid/mtp/MtpDatabase;->bCheckStorageId:Z

    .line 860
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    .line 875
    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    .line 907
    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    .line 945
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    .line 963
    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Landroid/mtp/MtpDatabase;->ALL_PROPERTIES:[I

    .line 1473
    sput-boolean v4, Landroid/mtp/MtpDatabase;->bPEF_KERNEL_SUPPORT:Z

    return-void

    .line 860
    :array_0
    .array-data 0x4
        0x1t 0xdct 0x0t 0x0t
        0x2t 0xdct 0x0t 0x0t
        0x3t 0xdct 0x0t 0x0t
        0x4t 0xdct 0x0t 0x0t
        0x7t 0xdct 0x0t 0x0t
        0x9t 0xdct 0x0t 0x0t
        0xbt 0xdct 0x0t 0x0t
        0x41t 0xdct 0x0t 0x0t
        0x44t 0xdct 0x0t 0x0t
        0x4et 0xdct 0x0t 0x0t
    .end array-data

    .line 875
    :array_1
    .array-data 0x4
        0x1t 0xdct 0x0t 0x0t
        0x2t 0xdct 0x0t 0x0t
        0x3t 0xdct 0x0t 0x0t
        0x4t 0xdct 0x0t 0x0t
        0x7t 0xdct 0x0t 0x0t
        0x9t 0xdct 0x0t 0x0t
        0xbt 0xdct 0x0t 0x0t
        0x41t 0xdct 0x0t 0x0t
        0x44t 0xdct 0x0t 0x0t
        0xe0t 0xdct 0x0t 0x0t
        0x4et 0xdct 0x0t 0x0t
        0x46t 0xdct 0x0t 0x0t
        0x9at 0xdct 0x0t 0x0t
        0x9bt 0xdct 0x0t 0x0t
        0x8bt 0xdct 0x0t 0x0t
        0x99t 0xdct 0x0t 0x0t
        0x89t 0xdct 0x0t 0x0t
        0x8ct 0xdct 0x0t 0x0t
        0x96t 0xdct 0x0t 0x0t
        0x93t 0xdet 0x0t 0x0t
        0x94t 0xdet 0x0t 0x0t
        0x99t 0xdet 0x0t 0x0t
        0x9at 0xdet 0x0t 0x0t
    .end array-data

    .line 907
    :array_2
    .array-data 0x4
        0x1t 0xdct 0x0t 0x0t
        0x2t 0xdct 0x0t 0x0t
        0x3t 0xdct 0x0t 0x0t
        0x4t 0xdct 0x0t 0x0t
        0x7t 0xdct 0x0t 0x0t
        0x9t 0xdct 0x0t 0x0t
        0xbt 0xdct 0x0t 0x0t
        0x41t 0xdct 0x0t 0x0t
        0x44t 0xdct 0x0t 0x0t
        0xe0t 0xdct 0x0t 0x0t
        0x4et 0xdct 0x0t 0x0t
        0x46t 0xdct 0x0t 0x0t
        0x9at 0xdct 0x0t 0x0t
        0x89t 0xdct 0x0t 0x0t
        0x48t 0xdct 0x0t 0x0t
        0x93t 0xdet 0x0t 0x0t
        0x94t 0xdet 0x0t 0x0t
        0x99t 0xdet 0x0t 0x0t
        0x9at 0xdet 0x0t 0x0t
        0x8bt 0xdct 0x0t 0x0t
        0x99t 0xdct 0x0t 0x0t
        0x8ct 0xdct 0x0t 0x0t
        0x87t 0xdct 0x0t 0x0t
        0x88t 0xdct 0x0t 0x0t
        0x9bt 0xdet 0x0t 0x0t
        0x9ct 0xdet 0x0t 0x0t
        0x9dt 0xdet 0x0t 0x0t
    .end array-data

    .line 945
    :array_3
    .array-data 0x4
        0x1t 0xdct 0x0t 0x0t
        0x2t 0xdct 0x0t 0x0t
        0x3t 0xdct 0x0t 0x0t
        0x4t 0xdct 0x0t 0x0t
        0x7t 0xdct 0x0t 0x0t
        0x9t 0xdct 0x0t 0x0t
        0xbt 0xdct 0x0t 0x0t
        0x41t 0xdct 0x0t 0x0t
        0x44t 0xdct 0x0t 0x0t
        0xe0t 0xdct 0x0t 0x0t
        0x4et 0xdct 0x0t 0x0t
        0x48t 0xdct 0x0t 0x0t
    .end array-data

    .line 963
    :array_4
    .array-data 0x4
        0x1t 0xdct 0x0t 0x0t
        0x2t 0xdct 0x0t 0x0t
        0x3t 0xdct 0x0t 0x0t
        0x4t 0xdct 0x0t 0x0t
        0x7t 0xdct 0x0t 0x0t
        0x9t 0xdct 0x0t 0x0t
        0xbt 0xdct 0x0t 0x0t
        0x41t 0xdct 0x0t 0x0t
        0x44t 0xdct 0x0t 0x0t
        0xe0t 0xdct 0x0t 0x0t
        0x4et 0xdct 0x0t 0x0t
        0x48t 0xdct 0x0t 0x0t
        0x46t 0xdct 0x0t 0x0t
        0x9at 0xdct 0x0t 0x0t
        0x9bt 0xdct 0x0t 0x0t
        0x8bt 0xdct 0x0t 0x0t
        0x99t 0xdct 0x0t 0x0t
        0x89t 0xdct 0x0t 0x0t
        0x8ct 0xdct 0x0t 0x0t
        0x96t 0xdct 0x0t 0x0t
        0x48t 0xdct 0x0t 0x0t
        0x93t 0xdet 0x0t 0x0t
        0x94t 0xdet 0x0t 0x0t
        0x99t 0xdet 0x0t 0x0t
        0x9at 0xdet 0x0t 0x0t
        0x87t 0xdct 0x0t 0x0t
        0x88t 0xdct 0x0t 0x0t
        0x9bt 0xdet 0x0t 0x0t
        0x9ct 0xdet 0x0t 0x0t
        0x9dt 0xdet 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 13
    .parameter "context"
    .parameter "volumeName"
    .parameter "storagePath"
    .parameter "subDirectories"

    .prologue
    .line 153
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    .line 77
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    .line 81
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    .line 86
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/mtp/MtpDatabase;->mSessionActive:Z

    .line 88
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mScanDirectory:Ljava/lang/String;

    .line 89
    const-string v10, "Notify:"

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mszNotifyPrefix:Ljava/lang/String;

    .line 91
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCacheHandle:Ljava/util/ArrayList;

    .line 92
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    .line 480
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/mtp/MtpDatabase;->bEnableScan:Z

    .line 481
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/mtp/MtpDatabase;->bNewScan:Z

    .line 154
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_setup()V

    .line 156
    iput-object p1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "media"

    invoke-virtual {v10, v11}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    .line 158
    iput-object p2, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    .line 159
    move-object/from16 v0, p3

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    .line 160
    invoke-static {p2}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    .line 161
    new-instance v10, Landroid/media/MediaScanner;

    invoke-direct {v10, p1}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    .line 163
    move-object/from16 v0, p4

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    .line 164
    if-eqz p4, :cond_2

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .local v1, builder:Ljava/lang/StringBuilder;
    const-string v10, "("

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    move-object/from16 v0, p4

    array-length v2, v0

    .line 169
    .local v2, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 170
    const-string v10, "_data=? OR _data LIKE ?"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    add-int/lit8 v10, v2, -0x1

    if-eq v4, v10, :cond_0

    .line 173
    const-string v10, " OR "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 176
    :cond_1
    const-string v10, ")"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    .line 180
    mul-int/lit8 v10, v2, 0x2

    new-array v10, v10, [Ljava/lang/String;

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    .line 181
    const/4 v4, 0x0

    const/4 v5, 0x0

    .local v5, j:I
    move v6, v5

    .end local v5           #j:I
    .local v6, j:I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 182
    aget-object v9, p4, v4

    .line 183
    .local v9, path:Ljava/lang/String;
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    add-int/lit8 v5, v6, 0x1

    .end local v6           #j:I
    .restart local v5       #j:I
    aput-object v9, v10, v6

    .line 184
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    add-int/lit8 v6, v5, 0x1

    .end local v5           #j:I
    .restart local v6       #j:I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/%"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    .line 181
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 189
    .end local v1           #builder:Ljava/lang/StringBuilder;
    .end local v2           #count:I
    .end local v4           #i:I
    .end local v6           #j:I
    .end local v9           #path:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v8, v10, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 190
    .local v8, locale:Ljava/util/Locale;
    if-eqz v8, :cond_3

    .line 191
    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 192
    .local v7, language:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, country:Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 194
    if-eqz v3, :cond_4

    .line 195
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    .line 201
    .end local v3           #country:Ljava/lang/String;
    .end local v7           #language:Ljava/lang/String;
    :cond_3
    :goto_2
    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->initDeviceProperties(Landroid/content/Context;)V

    .line 202
    return-void

    .line 197
    .restart local v3       #country:Ljava/lang/String;
    .restart local v7       #language:Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    invoke-virtual {v10, v7}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private CheckStorage(II)I
    .locals 10
    .parameter "iStorageID"
    .parameter "iParent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v9, -0x1

    .line 405
    sget-boolean v6, Landroid/mtp/MtpDatabase;->bCheckStorageId:Z

    if-nez v6, :cond_8

    .line 407
    const-string v6, "EXTERNAL_STORAGE"

    invoke-static {v6}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 409
    .local v3, szStoragePath1:Ljava/lang/String;
    sget-object v6, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    if-nez v6, :cond_0

    .line 411
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "storage"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 413
    .local v1, mStorageManager:Landroid/os/storage/StorageManager;
    if-eqz v1, :cond_0

    .line 414
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v6

    sput-object v6, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    .line 416
    .end local v1           #mStorageManager:Landroid/os/storage/StorageManager;
    :cond_0
    sget-object v6, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    if-nez v6, :cond_2

    .line 453
    .end local v3           #szStoragePath1:Ljava/lang/String;
    :cond_1
    :goto_0
    return v4

    .line 418
    .restart local v3       #szStoragePath1:Ljava/lang/String;
    :cond_2
    if-nez v3, :cond_3

    .line 419
    const-string v3, "/mnt/sdcard"

    .line 420
    :cond_3
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 422
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Landroid/mtp/MtpDatabase;->szStoragePath2:Ljava/lang/String;

    .line 424
    :cond_4
    const/4 v0, 0x0

    .local v0, ii:I
    :goto_1
    sget-object v6, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    array-length v6, v6

    if-ge v0, v6, :cond_7

    .line 425
    sget-object v6, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 427
    .local v2, szPath:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 429
    sget-object v6, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getStorageId()I

    move-result v6

    sput v6, Landroid/mtp/MtpDatabase;->iStorageID1:I

    .line 424
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 432
    :cond_6
    sget-object v6, Landroid/mtp/MtpDatabase;->szStoragePath2:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 434
    sget-object v6, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getStorageId()I

    move-result v6

    sput v6, Landroid/mtp/MtpDatabase;->iStorageID2:I

    .line 438
    .end local v2           #szPath:Ljava/lang/String;
    :cond_7
    sput-boolean v5, Landroid/mtp/MtpDatabase;->bCheckStorageId:Z

    .line 441
    .end local v0           #ii:I
    .end local v3           #szStoragePath1:Ljava/lang/String;
    :cond_8
    const-string v6, "MtpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "StorageID1="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Landroid/mtp/MtpDatabase;->iStorageID1:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",StorageID2="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Landroid/mtp/MtpDatabase;->iStorageID2:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    if-nez p2, :cond_1

    .line 443
    sget v6, Landroid/mtp/MtpDatabase;->iStorageID1:I

    if-eq v6, v9, :cond_1

    sget v6, Landroid/mtp/MtpDatabase;->iStorageID2:I

    if-eq v6, v9, :cond_1

    .line 445
    sget v6, Landroid/mtp/MtpDatabase;->iStorageID1:I

    if-ne p1, v6, :cond_9

    move v4, v5

    .line 446
    goto/16 :goto_0

    .line 447
    :cond_9
    sget v5, Landroid/mtp/MtpDatabase;->iStorageID2:I

    if-ne p1, v5, :cond_a

    .line 448
    const/4 v4, 0x2

    goto/16 :goto_0

    .line 450
    :cond_a
    const-string v5, "MtpDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unhandled StorageID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private GetStorageBase(I)Ljava/lang/String;
    .locals 4
    .parameter "iStorageID"

    .prologue
    .line 386
    sget-object v2, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    if-nez v2, :cond_0

    .line 388
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "storage"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 390
    .local v1, mStorageManager:Landroid/os/storage/StorageManager;
    if-eqz v1, :cond_0

    .line 391
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    sput-object v2, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    .line 393
    .end local v1           #mStorageManager:Landroid/os/storage/StorageManager;
    :cond_0
    sget-object v2, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    if-eqz v2, :cond_2

    .line 395
    const/4 v0, 0x0

    .local v0, ii:I
    :goto_0
    sget-object v2, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 396
    sget-object v2, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getStorageId()I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 397
    sget-object v2, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 400
    .end local v0           #ii:I
    :goto_1
    return-object v2

    .line 395
    .restart local v0       #ii:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 400
    .end local v0           #ii:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static SetMtpCpuPerf(I)V
    .locals 0
    .parameter "iEnable"

    .prologue
    .line 1496
    return-void
.end method

.method private beginSendObject(Ljava/lang/String;IIIJJ)I
    .locals 13
    .parameter "path"
    .parameter "format"
    .parameter "parent"
    .parameter "storageId"
    .parameter "size"
    .parameter "modified"

    .prologue
    .line 291
    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->inStorageSubDirectory(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, -0x1

    .line 332
    :cond_0
    :goto_0
    return v2

    .line 294
    :cond_1
    if-eqz p1, :cond_2

    .line 295
    const/4 v9, 0x0

    .line 297
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v4, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const-string v5, "_data=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    .line 299
    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 300
    const-string v2, "MtpDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file already exists in beginSendObject: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    const/4 v2, -0x1

    .line 306
    if-eqz v9, :cond_0

    .line 307
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 303
    :catch_0
    move-exception v10

    .line 304
    .local v10, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "MtpDatabase"

    const-string v3, "RemoteException in beginSendObject"

    invoke-static {v2, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    if-eqz v9, :cond_2

    .line 307
    .end local v10           #e:Landroid/os/RemoteException;
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 312
    .end local v9           #c:Landroid/database/Cursor;
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 313
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 314
    .local v12, values:Landroid/content/ContentValues;
    const-string v2, "_data"

    invoke-virtual {v12, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v2, "format"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 316
    const-string/jumbo v2, "parent"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 317
    const-string/jumbo v2, "storage_id"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 318
    const-string v2, "_size"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 319
    const-string v2, "date_modified"

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 320
    move-wide/from16 v0, p5

    iput-wide v0, p0, Landroid/mtp/MtpDatabase;->mObjectFileSize:J

    .line 323
    :try_start_2
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    invoke-interface {v2, v3, v12}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 324
    .local v11, uri:Landroid/net/Uri;
    if-eqz v11, :cond_4

    .line 325
    invoke-virtual {v11}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    goto/16 :goto_0

    .line 306
    .end local v11           #uri:Landroid/net/Uri;
    .end local v12           #values:Landroid/content/ContentValues;
    .restart local v9       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_3

    .line 307
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 306
    :cond_3
    throw v2

    .line 327
    .end local v9           #c:Landroid/database/Cursor;
    .restart local v11       #uri:Landroid/net/Uri;
    .restart local v12       #values:Landroid/content/ContentValues;
    :cond_4
    :try_start_3
    const-string v2, "MtpDatabase"

    const-string v3, "[USBF] beginSendObject: MediaProvider.insert fail"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 328
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 330
    .end local v11           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v10

    .line 331
    .restart local v10       #e:Landroid/os/RemoteException;
    const-string v2, "MtpDatabase"

    const-string v3, "RemoteException in beginSendObject"

    invoke-static {v2, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 332
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 306
    .end local v10           #e:Landroid/os/RemoteException;
    .end local v12           #values:Landroid/content/ContentValues;
    .restart local v9       #c:Landroid/database/Cursor;
    :cond_5
    if-eqz v9, :cond_2

    goto :goto_1
.end method

.method private createObjectQuery(III)Landroid/database/Cursor;
    .locals 14
    .parameter "storageID"
    .parameter "format"
    .parameter "parent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 593
    const/4 v1, -0x1

    if-ne p1, v1, :cond_7

    .line 595
    if-nez p2, :cond_4

    .line 597
    if-nez p3, :cond_2

    .line 599
    const/4 v4, 0x0

    .line 600
    .local v4, where:Ljava/lang/String;
    const/4 v5, 0x0

    .line 686
    .local v5, whereArgs:[Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 687
    if-nez v4, :cond_10

    .line 688
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    .line 689
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    .line 708
    :cond_1
    :goto_1
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v3, Landroid/mtp/MtpDatabase;->OBJECT_INFO_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .line 602
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #whereArgs:[Ljava/lang/String;
    :cond_2
    const/4 v1, -0x1

    move/from16 v0, p3

    if-ne v0, v1, :cond_3

    .line 604
    const/16 p3, 0x0

    .line 606
    :cond_3
    const-string/jumbo v4, "parent=?"

    .line 607
    .restart local v4       #where:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .restart local v5       #whereArgs:[Ljava/lang/String;
    goto :goto_0

    .line 611
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #whereArgs:[Ljava/lang/String;
    :cond_4
    if-nez p3, :cond_5

    .line 613
    const-string v4, "format=?"

    .line 614
    .restart local v4       #where:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .restart local v5       #whereArgs:[Ljava/lang/String;
    goto :goto_0

    .line 616
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #whereArgs:[Ljava/lang/String;
    :cond_5
    const/4 v1, -0x1

    move/from16 v0, p3

    if-ne v0, v1, :cond_6

    .line 618
    const/16 p3, 0x0

    .line 620
    :cond_6
    const-string v4, "format=? AND parent=?"

    .line 621
    .restart local v4       #where:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .restart local v5       #whereArgs:[Ljava/lang/String;
    goto :goto_0

    .line 627
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #whereArgs:[Ljava/lang/String;
    :cond_7
    if-nez p2, :cond_d

    .line 629
    if-nez p3, :cond_8

    .line 631
    const-string/jumbo v4, "storage_id=?"

    .line 632
    .restart local v4       #where:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .restart local v5       #whereArgs:[Ljava/lang/String;
    goto :goto_0

    .line 634
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #whereArgs:[Ljava/lang/String;
    :cond_8
    const/4 v9, 0x0

    .line 636
    .local v9, iStorageID:I
    const/4 v1, -0x1

    move/from16 v0, p3

    if-ne v0, v1, :cond_9

    .line 638
    const/16 p3, 0x0

    .line 639
    move/from16 v0, p3

    invoke-direct {p0, p1, v0}, Landroid/mtp/MtpDatabase;->CheckStorage(II)I

    move-result v9

    .line 641
    :cond_9
    const-string/jumbo v4, "storage_id=? AND parent=?"

    .line 642
    .restart local v4       #where:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 644
    .restart local v5       #whereArgs:[Ljava/lang/String;
    const/4 v1, 0x1

    if-eq v9, v1, :cond_a

    const/4 v1, 0x2

    if-ne v9, v1, :cond_0

    .line 646
    :cond_a
    const-string/jumbo v4, "parent=?"

    .line 647
    const/4 v1, 0x2

    new-array v13, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v1

    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v13, v1

    .line 649
    .local v13, newWhereArgs:[Ljava/lang/String;
    array-length v1, v13

    add-int/lit8 v10, v1, -0x1

    .line 651
    .local v10, ii:I
    const/4 v1, 0x1

    if-ne v9, v1, :cond_c

    .line 653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NOT LIKE ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 654
    add-int/lit8 v11, v10, 0x1

    .end local v10           #ii:I
    .local v11, ii:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/mtp/MtpDatabase;->szStoragePath2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v13, v10

    move v10, v11

    .line 661
    .end local v11           #ii:I
    .restart local v10       #ii:I
    :cond_b
    :goto_2
    move-object v5, v13

    goto/16 :goto_0

    .line 656
    :cond_c
    const/4 v1, 0x2

    if-ne v9, v1, :cond_b

    .line 658
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LIKE ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 659
    add-int/lit8 v11, v10, 0x1

    .end local v10           #ii:I
    .restart local v11       #ii:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/mtp/MtpDatabase;->szStoragePath2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v13, v10

    move v10, v11

    .end local v11           #ii:I
    .restart local v10       #ii:I
    goto :goto_2

    .line 666
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #whereArgs:[Ljava/lang/String;
    .end local v9           #iStorageID:I
    .end local v10           #ii:I
    .end local v13           #newWhereArgs:[Ljava/lang/String;
    :cond_d
    if-nez p3, :cond_e

    .line 668
    const-string/jumbo v4, "storage_id=? AND format=?"

    .line 669
    .restart local v4       #where:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .restart local v5       #whereArgs:[Ljava/lang/String;
    goto/16 :goto_0

    .line 672
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #whereArgs:[Ljava/lang/String;
    :cond_e
    const/4 v1, -0x1

    move/from16 v0, p3

    if-ne v0, v1, :cond_f

    .line 674
    const/16 p3, 0x0

    .line 676
    :cond_f
    const-string/jumbo v4, "storage_id=? AND format=? AND parent=?"

    .line 677
    .restart local v4       #where:Ljava/lang/String;
    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .restart local v5       #whereArgs:[Ljava/lang/String;
    goto/16 :goto_0

    .line 691
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 694
    array-length v1, v5

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    array-length v2, v2

    add-int/2addr v1, v2

    new-array v13, v1, [Ljava/lang/String;

    .line 697
    .restart local v13       #newWhereArgs:[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3
    array-length v1, v5

    if-ge v8, v1, :cond_11

    .line 698
    aget-object v1, v5, v8

    aput-object v1, v13, v8

    .line 697
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 700
    :cond_11
    const/4 v12, 0x0

    .local v12, j:I
    :goto_4
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    array-length v1, v1

    if-ge v12, v1, :cond_12

    .line 701
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    aget-object v1, v1, v12

    aput-object v1, v13, v8

    .line 700
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 703
    :cond_12
    move-object v5, v13

    goto/16 :goto_1
.end method

.method private deleteFile(I)I
    .locals 16
    .parameter "handle"

    .prologue
    .line 1357
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 1358
    const/4 v14, 0x0

    .line 1359
    .local v14, path:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1362
    .local v10, format:I
    const/4 v8, 0x0

    .line 1364
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v3, Landroid/mtp/MtpDatabase;->PATH_SIZE_FORMAT_PROJECTION:[Ljava/lang/String;

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 1366
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1369
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1370
    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1371
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v11

    .line 1376
    .local v11, iFileSize:J
    if-eqz v14, :cond_0

    if-nez v10, :cond_3

    .line 1377
    :cond_0
    const/16 v1, 0x2002

    .line 1419
    if-eqz v8, :cond_1

    .line 1420
    .end local v11           #iFileSize:J
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1417
    :cond_1
    return v1

    .line 1373
    :cond_2
    const/16 v1, 0x2009

    .line 1419
    if-eqz v8, :cond_1

    goto :goto_0

    .line 1381
    .restart local v11       #iFileSize:J
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/mtp/MtpDatabase;->isStorageSubDirectory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1382
    const/16 v1, 0x200d

    .line 1419
    if-eqz v8, :cond_1

    goto :goto_0

    .line 1385
    :cond_4
    const/16 v1, 0x3001

    if-ne v10, v1, :cond_5

    .line 1387
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 1388
    .local v15, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    const-string v2, "_data LIKE ?1 AND lower(substr(_data,1,?2))=lower(?3)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v15, v2, v3}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1395
    .end local v15           #uri:Landroid/net/Uri;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    move/from16 v0, p1

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v15

    .line 1396
    .restart local v15       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v15, v2, v3}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_8

    .line 1397
    const/16 v1, 0x3001

    if-eq v10, v1, :cond_6

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v14, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/.nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-eqz v1, :cond_6

    .line 1400
    const/4 v1, 0x0

    :try_start_2
    const-string v2, "/"

    invoke-virtual {v14, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v14, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 1401
    .local v13, parentPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    const-string/jumbo v2, "unhide"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v13, v3}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1406
    .end local v13           #parentPath:Ljava/lang/String;
    :cond_6
    :goto_1
    const-wide/32 v1, 0x6400000

    cmp-long v1, v11, v1

    if-lez v1, :cond_7

    .line 1408
    :try_start_3
    const-string v1, "MtpDatabase"

    const-string v2, "[USBF] deleteFile: sending ACTION_MEDIA_SCANNER_FINISHED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1411
    :cond_7
    const/16 v1, 0x2001

    .line 1419
    if-eqz v8, :cond_1

    goto/16 :goto_0

    .line 1402
    :catch_0
    move-exception v9

    .line 1403
    .local v9, e:Landroid/os/RemoteException;
    const-string v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to unhide/rescan for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1415
    .end local v9           #e:Landroid/os/RemoteException;
    .end local v11           #iFileSize:J
    .end local v15           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v9

    .line 1416
    .restart local v9       #e:Landroid/os/RemoteException;
    :try_start_4
    const-string v1, "MtpDatabase"

    const-string v2, "RemoteException in deleteFile"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1417
    const/16 v1, 0x2002

    .line 1419
    if-eqz v8, :cond_1

    goto/16 :goto_0

    .line 1413
    .end local v9           #e:Landroid/os/RemoteException;
    .restart local v11       #iFileSize:J
    .restart local v15       #uri:Landroid/net/Uri;
    :cond_8
    const/16 v1, 0x2009

    .line 1419
    if-eqz v8, :cond_1

    goto/16 :goto_0

    .end local v11           #iFileSize:J
    .end local v15           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_9

    .line 1420
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1419
    :cond_9
    throw v1
.end method

.method private endSendObject(Ljava/lang/String;IIZ)V
    .locals 9
    .parameter "path"
    .parameter "handle"
    .parameter "format"
    .parameter "succeeded"

    .prologue
    .line 337
    if-eqz p4, :cond_4

    .line 340
    const v4, 0xba05

    if-ne p3, v4, :cond_3

    .line 342
    move-object v2, p1

    .line 343
    .local v2, name:Ljava/lang/String;
    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 344
    .local v1, lastSlash:I
    if-ltz v1, :cond_0

    .line 345
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 348
    :cond_0
    const-string v4, ".pla"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 349
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 352
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 353
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "_data"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v4, "format"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 356
    const-string v4, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 357
    const-string/jumbo v4, "media_scanner_new_object_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 359
    :try_start_0
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    sget-object v5, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v4, v5, v3}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    .end local v1           #lastSlash:I
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_2
    :goto_0
    return-void

    .line 360
    .restart local v1       #lastSlash:I
    .restart local v2       #name:Ljava/lang/String;
    .restart local v3       #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 361
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "MtpDatabase"

    const-string v5, "RemoteException in endSendObject"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 364
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #lastSlash:I
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_3
    const-string v4, "MtpDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[USBF] endSendObject: MediaScanner.scanMtpFile+, format="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-virtual {v4, p1, v5, p2, p3}, Landroid/media/MediaScanner;->scanMtpFile(Ljava/lang/String;Ljava/lang/String;II)V

    .line 366
    const-string v4, "MtpDatabase"

    const-string v5, "[USBF] endSendObject: MediaScanner.scanMtpFile-"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-wide v4, p0, Landroid/mtp/MtpDatabase;->mObjectFileSize:J

    const-wide/32 v6, 0x6400000

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 370
    const-string v4, "MtpDatabase"

    const-string v5, "[USBF] endSendObject: sending ACTION_MEDIA_SCANNER_FINISHED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MEDIA_SCANNER_FINISHED"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 375
    :cond_4
    invoke-direct {p0, p2}, Landroid/mtp/MtpDatabase;->deleteFile(I)I

    goto :goto_0
.end method

.method private getDeviceProperty(I[J[C)I
    .locals 11
    .parameter "property"
    .parameter "outIntValue"
    .parameter "outStringValue"

    .prologue
    const/16 v7, 0x2001

    const/4 v10, 0x0

    .line 1214
    sparse-switch p1, :sswitch_data_0

    .line 1239
    const/16 v6, 0x200a

    :goto_0
    return v6

    .line 1218
    :sswitch_0
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1219
    .local v4, value:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 1220
    .local v3, length:I
    const/16 v6, 0xff

    if-le v3, v6, :cond_0

    .line 1221
    const/16 v3, 0xff

    .line 1223
    :cond_0
    invoke-virtual {v4, v10, v3, p3, v10}, Ljava/lang/String;->getChars(II[CI)V

    .line 1224
    aput-char v10, p3, v3

    move v6, v7

    .line 1225
    goto :goto_0

    .line 1229
    .end local v3           #length:I
    .end local v4           #value:Ljava/lang/String;
    :sswitch_1
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "window"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1231
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v5

    .line 1232
    .local v5, width:I
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v1

    .line 1233
    .local v1, height:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "x"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1234
    .local v2, imageSize:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v10, v6, p3, v10}, Ljava/lang/String;->getChars(II[CI)V

    .line 1235
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    aput-char v10, p3, v6

    move v6, v7

    .line 1236
    goto :goto_0

    .line 1214
    :sswitch_data_0
    .sparse-switch
        0x5003 -> :sswitch_1
        0xd401 -> :sswitch_0
        0xd402 -> :sswitch_0
    .end sparse-switch
.end method

.method private getNumObjects(III)I
    .locals 4
    .parameter "storageID"
    .parameter "format"
    .parameter "parent"

    .prologue
    .line 797
    const/4 v0, 0x0

    .line 799
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpDatabase;->createObjectQuery(III)Landroid/database/Cursor;

    move-result-object v0

    .line 800
    if-eqz v0, :cond_3

    .line 801
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 806
    if-eqz v0, :cond_0

    .line 807
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 810
    :cond_0
    :goto_0
    return v2

    .line 803
    :catch_0
    move-exception v1

    .line 804
    .local v1, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "MtpDatabase"

    const-string v3, "RemoteException in getNumObjects"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 806
    if-eqz v0, :cond_1

    .line 807
    .end local v1           #e:Landroid/os/RemoteException;
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 810
    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    .line 806
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    .line 807
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 806
    :cond_2
    throw v2

    :cond_3
    if-eqz v0, :cond_1

    goto :goto_1
.end method

.method private getObjectFilePath(I[C[J)I
    .locals 11
    .parameter "handle"
    .parameter "outFilePath"
    .parameter "outFileLengthFormat"

    .prologue
    const/16 v10, 0x2001

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1324
    if-nez p1, :cond_1

    .line 1326
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1, p2, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 1327
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    aput-char v2, p2, v0

    .line 1328
    const-wide/16 v0, 0x0

    aput-wide v0, p3, v2

    .line 1329
    const-wide/16 v0, 0x3001

    aput-wide v0, p3, v3

    move v0, v10

    .line 1348
    :cond_0
    :goto_0
    return v0

    .line 1332
    :cond_1
    const/4 v7, 0x0

    .line 1334
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MtpDatabase;->PATH_SIZE_FORMAT_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 1336
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1337
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1338
    .local v9, path:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v9, v0, v1, p2, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 1339
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    aput-char v1, p2, v0

    .line 1340
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    aput-wide v1, p3, v0

    .line 1341
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    aput-wide v1, p3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1350
    if-eqz v7, :cond_2

    .line 1351
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v10

    .line 1342
    goto :goto_0

    .line 1344
    .end local v9           #path:Ljava/lang/String;
    :cond_3
    const/16 v0, 0x2009

    .line 1350
    if-eqz v7, :cond_0

    .line 1351
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1346
    :catch_0
    move-exception v8

    .line 1347
    .local v8, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException in getObjectFilePath"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1348
    const/16 v0, 0x2002

    .line 1350
    if-eqz v7, :cond_0

    goto :goto_1

    .end local v8           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 1351
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1350
    :cond_4
    throw v0
.end method

.method private getObjectInfo(I[I[C[J)Z
    .locals 11
    .parameter "handle"
    .parameter "outStorageFormatParent"
    .parameter "outName"
    .parameter "outSizeModified"

    .prologue
    .line 1271
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    if-eqz v0, :cond_1

    .line 1273
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCacheHandle:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1275
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCacheHandle:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 1277
    .local v9, ii:I
    const/4 v0, -0x1

    if-eq v9, v0, :cond_1

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCacheHandle:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1279
    const-string v0, "MtpDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[USBF] getObjectInfo.HandleIdx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    aget-object v1, v1, v9

    iget v1, v1, Landroid/mtp/MtpDatabase$MtpPropertyCache;->miStorageId:I

    aput v1, p2, v0

    .line 1282
    const/4 v0, 0x1

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    aget-object v1, v1, v9

    iget v1, v1, Landroid/mtp/MtpDatabase$MtpPropertyCache;->miFormat:I

    aput v1, p2, v0

    .line 1283
    const/4 v0, 0x2

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    aget-object v1, v1, v9

    iget v1, v1, Landroid/mtp/MtpDatabase$MtpPropertyCache;->miParent:I

    aput v1, p2, v0

    .line 1286
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    aget-object v0, v0, v9

    iget-object v10, v0, Landroid/mtp/MtpDatabase$MtpPropertyCache;->mszFullPath:Ljava/lang/String;

    .line 1287
    .local v10, path:Ljava/lang/String;
    invoke-static {v10, p3}, Landroid/mtp/MtpDatabase;->nameFromPath(Ljava/lang/String;[C)V

    .line 1289
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    aget-object v1, v1, v9

    iget-wide v1, v1, Landroid/mtp/MtpDatabase$MtpPropertyCache;->miSize:J

    aput-wide v1, p4, v0

    .line 1290
    const/4 v0, 0x1

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    aget-object v1, v1, v9

    iget-wide v1, v1, Landroid/mtp/MtpDatabase$MtpPropertyCache;->miModified:J

    aput-wide v1, p4, v0

    .line 1292
    const/4 v0, 0x1

    .line 1320
    .end local v9           #ii:I
    .end local v10           #path:Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 1296
    :cond_1
    const/4 v7, 0x0

    .line 1298
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MtpDatabase;->OBJECT_INFO_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 1300
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1301
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    aput v1, p2, v0

    .line 1302
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    aput v1, p2, v0

    .line 1303
    const/4 v0, 0x2

    const/4 v1, 0x3

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    aput v1, p2, v0

    .line 1306
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1307
    .restart local v10       #path:Ljava/lang/String;
    invoke-static {v10, p3}, Landroid/mtp/MtpDatabase;->nameFromPath(Ljava/lang/String;[C)V

    .line 1309
    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    aput-wide v1, p4, v0

    .line 1310
    const/4 v0, 0x1

    const/4 v1, 0x6

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    aput-wide v1, p4, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1311
    const/4 v0, 0x1

    .line 1316
    if-eqz v7, :cond_0

    .line 1317
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1313
    .end local v10           #path:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1314
    .local v8, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException in getObjectInfo"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1316
    if-eqz v7, :cond_2

    .line 1317
    .end local v8           #e:Landroid/os/RemoteException;
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1320
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1316
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 1317
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1316
    :cond_3
    throw v0

    :cond_4
    if-eqz v7, :cond_2

    goto :goto_1
.end method

.method private getObjectList(III)[I
    .locals 11
    .parameter "storageID"
    .parameter "format"
    .parameter "parent"

    .prologue
    const/16 v10, 0x20

    const/4 v9, -0x1

    const/4 v5, 0x0

    .line 712
    const/4 v3, 0x0

    .line 714
    .local v3, sCur:Landroid/database/Cursor;
    if-eqz p3, :cond_0

    if-eq p3, v9, :cond_0

    .line 715
    :try_start_0
    invoke-virtual {p0, p3, p1}, Landroid/mtp/MtpDatabase;->StartMediaScanner(II)V

    .line 716
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpDatabase;->createObjectQuery(III)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 717
    if-nez v3, :cond_3

    .line 790
    if-eqz v3, :cond_1

    .line 791
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v2, v5

    .line 793
    :cond_2
    :goto_0
    return-object v2

    .line 720
    :cond_3
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 721
    .local v0, iCount:I
    if-lez v0, :cond_c

    .line 722
    new-array v2, v0, [I

    .line 724
    .local v2, result:[I
    invoke-static {v0}, Landroid/mtp/MtpDatabase;->SetMtpCpuPerf(I)V

    .line 725
    if-le v0, v10, :cond_6

    .line 727
    const-string v6, "MtpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[USBF] getObjectList.Count.HandleIdx="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    if-eqz v6, :cond_5

    .line 730
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCacheHandle:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 731
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCacheHandle:Ljava/util/ArrayList;

    .line 733
    const/4 v1, 0x0

    .local v1, ii:I
    :goto_1
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    array-length v6, v6

    if-ge v1, v6, :cond_4

    .line 734
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    const/4 v7, 0x0

    aput-object v7, v6, v1

    .line 733
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 735
    :cond_4
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    .line 737
    .end local v1           #ii:I
    :cond_5
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    if-nez v6, :cond_6

    .line 739
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCacheHandle:Ljava/util/ArrayList;

    .line 740
    new-array v6, v0, [Landroid/mtp/MtpDatabase$MtpPropertyCache;

    iput-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    .line 741
    const/4 v1, 0x0

    .restart local v1       #ii:I
    :goto_2
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    array-length v6, v6

    if-ge v1, v6, :cond_6

    .line 742
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    new-instance v7, Landroid/mtp/MtpDatabase$MtpPropertyCache;

    invoke-direct {v7, p0}, Landroid/mtp/MtpDatabase$MtpPropertyCache;-><init>(Landroid/mtp/MtpDatabase;)V

    aput-object v7, v6, v1

    .line 741
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 745
    .end local v1           #ii:I
    :cond_6
    const/4 v1, 0x0

    .restart local v1       #ii:I
    :goto_3
    if-ge v1, v0, :cond_b

    .line 746
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 747
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    aput v6, v2, v1

    .line 749
    if-le v0, v10, :cond_7

    .line 751
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    if-eqz v6, :cond_7

    .line 753
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCacheHandle:Ljava/util/ArrayList;

    aget v7, v2, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    aget-object v6, v6, v1

    const/4 v7, 0x1

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v6, Landroid/mtp/MtpDatabase$MtpPropertyCache;->miStorageId:I

    .line 755
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    aget-object v6, v6, v1

    const/4 v7, 0x2

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v6, Landroid/mtp/MtpDatabase$MtpPropertyCache;->miFormat:I

    .line 756
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    aget-object v6, v6, v1

    const/4 v7, 0x3

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v6, Landroid/mtp/MtpDatabase$MtpPropertyCache;->miParent:I

    .line 758
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    aget-object v6, v6, v1

    const/4 v7, 0x4

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/mtp/MtpDatabase$MtpPropertyCache;->mszFullPath:Ljava/lang/String;

    .line 759
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    aget-object v6, v6, v1

    const/4 v7, 0x5

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v6, Landroid/mtp/MtpDatabase$MtpPropertyCache;->miSize:J

    .line 760
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    aget-object v6, v6, v1

    const/4 v7, 0x6

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v6, Landroid/mtp/MtpDatabase$MtpPropertyCache;->miModified:J

    .line 761
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    aget-object v6, v6, v1

    const/4 v7, 0x7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/mtp/MtpDatabase$MtpPropertyCache;->mszTitle:Ljava/lang/String;

    .line 762
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    aget-object v6, v6, v1

    const/16 v7, 0x8

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v6, Landroid/mtp/MtpDatabase$MtpPropertyCache;->miAdded:J

    .line 764
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    aget-object v6, v6, v1

    const/16 v7, 0x9

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/mtp/MtpDatabase$MtpPropertyCache;->mszAlbumArtist:Ljava/lang/String;

    .line 765
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    aget-object v6, v6, v1

    const/16 v7, 0xa

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/mtp/MtpDatabase$MtpPropertyCache;->mszComposer:Ljava/lang/String;

    .line 766
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    aget-object v6, v6, v1

    const/16 v7, 0xb

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/mtp/MtpDatabase$MtpPropertyCache;->mszDescription:Ljava/lang/String;

    .line 767
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    aget-object v6, v6, v1

    const/16 v7, 0xc

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v6, Landroid/mtp/MtpDatabase$MtpPropertyCache;->miDuration:J

    .line 768
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    aget-object v6, v6, v1

    const/16 v7, 0xd

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v6, Landroid/mtp/MtpDatabase$MtpPropertyCache;->miOriginalReleaseDate:I

    .line 769
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    aget-object v6, v6, v1

    const/16 v7, 0xe

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v6, Landroid/mtp/MtpDatabase$MtpPropertyCache;->miTrack:I

    .line 770
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    aget-object v6, v6, v1

    const/16 v7, 0xf

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/mtp/MtpDatabase$MtpPropertyCache;->mszDisplayName:Ljava/lang/String;

    .line 774
    :cond_7
    if-nez v1, :cond_8

    if-ne p3, v9, :cond_8

    .line 775
    aget v6, v2, v1

    invoke-virtual {p0, v6, p1, p3}, Landroid/mtp/MtpDatabase;->StartMediaScanner(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 745
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 780
    .end local v0           #iCount:I
    .end local v1           #ii:I
    .end local v2           #result:[I
    :catch_0
    move-exception v4

    .line 782
    .local v4, sEx:Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "MtpDatabase"

    const-string v7, "RemoteException in getObjectList"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 790
    if-eqz v3, :cond_9

    .line 791
    .end local v4           #sEx:Landroid/os/RemoteException;
    :goto_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_9
    move-object v2, v5

    .line 793
    goto/16 :goto_0

    .line 784
    :catch_1
    move-exception v4

    .line 786
    .local v4, sEx:Ljava/lang/Exception;
    :try_start_3
    const-string v6, "MtpDatabase"

    const-string v7, "Exception in getObjectList"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 790
    if-eqz v3, :cond_9

    goto :goto_4

    .end local v4           #sEx:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_a

    .line 791
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 790
    :cond_a
    throw v5

    .restart local v0       #iCount:I
    .restart local v1       #ii:I
    .restart local v2       #result:[I
    :cond_b
    if-eqz v3, :cond_2

    .line 791
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 790
    .end local v1           #ii:I
    .end local v2           #result:[I
    :cond_c
    if-eqz v3, :cond_9

    goto :goto_4
.end method

.method private getObjectPropertyList(JIJII)Landroid/mtp/MtpPropertyList;
    .locals 5
    .parameter "handle"
    .parameter "format"
    .parameter "property"
    .parameter "groupCode"
    .parameter "depth"

    .prologue
    const/4 v4, 0x0

    .line 1092
    if-eqz p6, :cond_0

    .line 1093
    new-instance v2, Landroid/mtp/MtpPropertyList;

    const v3, 0xa807

    invoke-direct {v2, v4, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 1113
    :goto_0
    return-object v2

    .line 1097
    :cond_0
    const-wide v2, 0xffffffffL

    cmp-long v2, p4, v2

    if-nez v2, :cond_2

    .line 1098
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpPropertyGroup;

    .line 1099
    .local v0, propertyGroup:Landroid/mtp/MtpPropertyGroup;
    if-nez v0, :cond_1

    .line 1100
    invoke-direct {p0, p3}, Landroid/mtp/MtpDatabase;->getSupportedObjectProperties(I)[I

    move-result-object v1

    .line 1101
    .local v1, propertyList:[I
    new-instance v0, Landroid/mtp/MtpPropertyGroup;

    .end local v0           #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-direct {v0, p0, v2, v3, v1}, Landroid/mtp/MtpPropertyGroup;-><init>(Landroid/mtp/MtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;[I)V

    .line 1102
    .restart local v0       #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    .end local v1           #propertyList:[I
    :cond_1
    :goto_1
    long-to-int v2, p1

    invoke-virtual {v0, v2, p3, p7}, Landroid/mtp/MtpPropertyGroup;->getPropertyList(III)Landroid/mtp/MtpPropertyList;

    move-result-object v2

    goto :goto_0

    .line 1105
    .end local v0           #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    :cond_2
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpPropertyGroup;

    .line 1106
    .restart local v0       #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    if-nez v0, :cond_1

    .line 1107
    const/4 v2, 0x1

    new-array v1, v2, [I

    long-to-int v2, p4

    aput v2, v1, v4

    .line 1108
    .restart local v1       #propertyList:[I
    new-instance v0, Landroid/mtp/MtpPropertyGroup;

    .end local v0           #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-direct {v0, p0, v2, v3, v1}, Landroid/mtp/MtpPropertyGroup;-><init>(Landroid/mtp/MtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;[I)V

    .line 1109
    .restart local v0       #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    long-to-int v4, p4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private getObjectReferences(I)[I
    .locals 13
    .parameter "handle"

    .prologue
    const/4 v12, 0x0

    .line 1426
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Landroid/provider/MediaStore$Files;->getMtpReferencesUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 1427
    .local v1, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 1429
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    sget-object v2, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1430
    if-nez v7, :cond_2

    .line 1445
    if-eqz v7, :cond_0

    .line 1446
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v11, v12

    .line 1449
    :cond_1
    :goto_0
    return-object v11

    .line 1433
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 1434
    .local v8, count:I
    if-lez v8, :cond_6

    .line 1435
    new-array v11, v8, [I

    .line 1436
    .local v11, result:[I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v8, :cond_5

    .line 1437
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 1438
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v11, v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1436
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1442
    .end local v8           #count:I
    .end local v10           #i:I
    .end local v11           #result:[I
    :catch_0
    move-exception v9

    .line 1443
    .local v9, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v0, "MtpDatabase"

    const-string v2, "RemoteException in getObjectReferences"

    invoke-static {v0, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1445
    if-eqz v7, :cond_3

    .line 1446
    .end local v9           #e:Landroid/os/RemoteException;
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v11, v12

    .line 1449
    goto :goto_0

    .line 1445
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 1446
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1445
    :cond_4
    throw v0

    .restart local v8       #count:I
    .restart local v10       #i:I
    .restart local v11       #result:[I
    :cond_5
    if-eqz v7, :cond_1

    .line 1446
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1445
    .end local v10           #i:I
    .end local v11           #result:[I
    :cond_6
    if-eqz v7, :cond_3

    goto :goto_2
.end method

.method private getPhoneDeviceId(I[C[J)I
    .locals 5
    .parameter "handle"
    .parameter "szDeviceIdBuf"
    .parameter "outFileLengthFormat"

    .prologue
    const/4 v4, 0x0

    .line 1043
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1044
    .local v0, mTelephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 1045
    .local v1, szDevId:Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v4, v2, p2, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1046
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    aput-char v4, p2, v2

    .line 1047
    const/16 v2, 0x2001

    return v2

    .line 1044
    .end local v1           #szDevId:Ljava/lang/String;
    :cond_0
    const-string v1, "NA"

    goto :goto_0
.end method

.method private getStorageInfo(I[C[J)I
    .locals 10
    .parameter "iStorageID"
    .parameter "szDeviceIdBuf"
    .parameter "outFileLengthFormat"

    .prologue
    const/4 v9, 0x0

    .line 1053
    const-string v5, "NA"

    .line 1055
    .local v5, szDevId:Ljava/lang/String;
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "storage"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 1056
    .local v2, mStorageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 1058
    .local v0, aVolumes:[Landroid/os/storage/StorageVolume;
    const/4 v1, 0x0

    .local v1, ii:I
    :goto_0
    array-length v6, v0

    if-ge v1, v6, :cond_1

    .line 1059
    aget-object v6, v0, v1

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getStorageId()I

    move-result v6

    if-ne p1, v6, :cond_3

    .line 1061
    aget-object v6, v0, v1

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1062
    .local v3, szCurPath:Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1064
    .local v4, szCurState:Ljava/lang/String;
    const-string/jumbo v6, "mounted"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1066
    aget-object v6, v0, v1

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1067
    const-string v5, "Card"

    .line 1071
    :cond_0
    :goto_1
    const-string v6, "MtpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[USBF] getStorageInfo: StorageId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",Path="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",State="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    .end local v3           #szCurPath:Ljava/lang/String;
    .end local v4           #szCurState:Ljava/lang/String;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v9, v6, p2, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 1077
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    aput-char v9, p2, v6

    .line 1078
    const/16 v6, 0x2001

    return v6

    .line 1069
    .restart local v3       #szCurPath:Ljava/lang/String;
    .restart local v4       #szCurState:Ljava/lang/String;
    :cond_2
    const-string v5, "Phone"

    goto :goto_1

    .line 1058
    .end local v3           #szCurPath:Ljava/lang/String;
    .end local v4           #szCurState:Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getSupportedCaptureFormats()[I
    .locals 1

    .prologue
    .line 857
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSupportedDeviceProperties()[I
    .locals 1

    .prologue
    .line 1082
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 0x4
        0x1t 0xd4t 0x0t 0x0t
        0x2t 0xd4t 0x0t 0x0t
        0x3t 0x50t 0x0t 0x0t
    .end array-data
.end method

.method private getSupportedObjectProperties(I)[I
    .locals 1
    .parameter "format"

    .prologue
    .line 1016
    sparse-switch p1, :sswitch_data_0

    .line 1035
    sget-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    :goto_0
    return-object v0

    .line 1022
    :sswitch_0
    sget-object v0, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    goto :goto_0

    .line 1026
    :sswitch_1
    sget-object v0, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    goto :goto_0

    .line 1031
    :sswitch_2
    sget-object v0, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    goto :goto_0

    .line 1033
    :sswitch_3
    sget-object v0, Landroid/mtp/MtpDatabase;->ALL_PROPERTIES:[I

    goto :goto_0

    .line 1016
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x3008 -> :sswitch_0
        0x3009 -> :sswitch_0
        0x300b -> :sswitch_1
        0x3801 -> :sswitch_2
        0x3804 -> :sswitch_2
        0x3807 -> :sswitch_2
        0x380b -> :sswitch_2
        0xb901 -> :sswitch_0
        0xb902 -> :sswitch_0
        0xb903 -> :sswitch_0
        0xb981 -> :sswitch_1
        0xb984 -> :sswitch_1
    .end sparse-switch
.end method

.method private getSupportedPlaybackFormats()[I
    .locals 1

    .prologue
    .line 814
    const/16 v0, 0x1f

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 0x4
        0x0t 0x30t 0x0t 0x0t
        0x1t 0x30t 0x0t 0x0t
        0x4t 0x30t 0x0t 0x0t
        0x5t 0x30t 0x0t 0x0t
        0x8t 0x30t 0x0t 0x0t
        0x9t 0x30t 0x0t 0x0t
        0xbt 0x30t 0x0t 0x0t
        0x1t 0x38t 0x0t 0x0t
        0x2t 0x38t 0x0t 0x0t
        0x7t 0x38t 0x0t 0x0t
        0x8t 0x38t 0x0t 0x0t
        0xbt 0x38t 0x0t 0x0t
        0xdt 0x38t 0x0t 0x0t
        0x1t 0xb9t 0x0t 0x0t
        0x2t 0xb9t 0x0t 0x0t
        0x3t 0xb9t 0x0t 0x0t
        0x82t 0xb9t 0x0t 0x0t
        0x83t 0xb9t 0x0t 0x0t
        0x84t 0xb9t 0x0t 0x0t
        0x5t 0xbat 0x0t 0x0t
        0x10t 0xbat 0x0t 0x0t
        0x11t 0xbat 0x0t 0x0t
        0x14t 0xbat 0x0t 0x0t
        0x82t 0xbat 0x0t 0x0t
        0x6t 0xb9t 0x0t 0x0t
        0xat 0x30t 0x0t 0x0t
        0xct 0x30t 0x0t 0x0t
        0x4t 0x38t 0x0t 0x0t
        0x83t 0xbat 0x0t 0x0t
        0x85t 0xbat 0x0t 0x0t
        0x86t 0xbat 0x0t 0x0t
    .end array-data
.end method

.method private inStorageSubDirectory(Ljava/lang/String;)Z
    .locals 7
    .parameter "path"

    .prologue
    .line 259
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    if-nez v5, :cond_1

    const/4 v0, 0x1

    .line 273
    :cond_0
    :goto_0
    return v0

    .line 260
    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 262
    :cond_2
    const/4 v0, 0x0

    .line 263
    .local v0, allowed:Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 264
    .local v2, pathLength:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    if-nez v0, :cond_0

    .line 265
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    aget-object v3, v5, v1

    .line 266
    .local v3, subdir:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 267
    .local v4, subdirLength:I
    if-ge v4, v2, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 270
    const/4 v0, 0x1

    .line 264
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private initDeviceProperties(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 222
    const-string v10, "device-properties"

    .line 223
    .local v10, devicePropertiesName:Ljava/lang/String;
    const-string v1, "device-properties"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    .line 224
    const-string v1, "device-properties"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 226
    .local v9, databaseFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 232
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "device-properties"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 233
    if-eqz v0, :cond_4

    .line 234
    const-string/jumbo v1, "properties"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "code"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 236
    if-eqz v8, :cond_4

    .line 237
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 238
    .local v11, e:Landroid/content/SharedPreferences$Editor;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 239
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 240
    .local v12, name:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 241
    .local v13, value:Ljava/lang/String;
    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 246
    .end local v11           #e:Landroid/content/SharedPreferences$Editor;
    .end local v12           #name:Ljava/lang/String;
    .end local v13           #value:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 247
    .local v11, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "MtpDatabase"

    const-string v2, "failed to migrate device properties"

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 250
    :cond_0
    if-eqz v0, :cond_1

    .end local v11           #e:Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 252
    :cond_1
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 254
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #c:Landroid/database/Cursor;
    :cond_2
    return-void

    .line 243
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8       #c:Landroid/database/Cursor;
    .local v11, e:Landroid/content/SharedPreferences$Editor;
    :cond_3
    :try_start_2
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 249
    .end local v11           #e:Landroid/content/SharedPreferences$Editor;
    :cond_4
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 250
    :cond_5
    if-eqz v0, :cond_1

    goto :goto_1

    .line 249
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 250
    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 249
    :cond_7
    throw v1
.end method

.method private isStorageSubDirectory(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    const/4 v1, 0x0

    .line 279
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    if-nez v2, :cond_1

    .line 285
    :cond_0
    :goto_0
    return v1

    .line 280
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 281
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 282
    const/4 v1, 0x1

    goto :goto_0

    .line 280
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static nameFromPath(Ljava/lang/String;[C)V
    .locals 6
    .parameter "path"
    .parameter "outName"

    .prologue
    const/4 v3, 0x0

    .line 1259
    const/16 v4, 0x2f

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1260
    .local v1, lastSlash:I
    if-ltz v1, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 1261
    .local v2, start:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1262
    .local v0, end:I
    sub-int v4, v0, v2

    const/16 v5, 0xff

    if-le v4, v5, :cond_0

    .line 1263
    add-int/lit16 v0, v2, 0xff

    .line 1265
    :cond_0
    invoke-virtual {p0, v2, v0, p1, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 1266
    sub-int v4, v0, v2

    aput-char v3, p1, v4

    .line 1267
    return-void

    .end local v0           #end:I
    .end local v2           #start:I
    :cond_1
    move v2, v3

    .line 1260
    goto :goto_0
.end method

.method private final native native_finalize()V
.end method

.method private final native native_setup()V
.end method

.method private renameFile(ILjava/lang/String;)I
    .locals 18
    .parameter "handle"
    .parameter "newName"

    .prologue
    .line 1117
    const/4 v8, 0x0

    .line 1120
    .local v8, c:Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 1121
    .local v14, path:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 1123
    .local v5, whereArgs:[Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v3, Landroid/mtp/MtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    const-string v4, "_id=?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 1124
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1125
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 1131
    :cond_0
    if-eqz v8, :cond_1

    .line 1132
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1135
    :cond_1
    if-nez v14, :cond_4

    .line 1136
    const/16 v1, 0x2009

    .line 1199
    :cond_2
    :goto_0
    return v1

    .line 1127
    :catch_0
    move-exception v9

    .line 1128
    .local v9, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "MtpDatabase"

    const-string v2, "RemoteException in getObjectFilePath"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1129
    const/16 v1, 0x2002

    .line 1131
    if-eqz v8, :cond_2

    .line 1132
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1131
    .end local v9           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_3

    .line 1132
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1131
    :cond_3
    throw v1

    .line 1140
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/mtp/MtpDatabase;->isStorageSubDirectory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1141
    const/16 v1, 0x200d

    goto :goto_0

    .line 1145
    :cond_5
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1146
    .local v13, oldFile:Ljava/io/File;
    const/16 v1, 0x2f

    invoke-virtual {v14, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    .line 1147
    .local v10, lastSlash:I
    const/4 v1, 0x1

    if-gt v10, v1, :cond_6

    .line 1148
    const/16 v1, 0x2002

    goto :goto_0

    .line 1150
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    add-int/lit8 v3, v10, 0x1

    invoke-virtual {v14, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1151
    .local v12, newPath:Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1152
    .local v11, newFile:Ljava/io/File;
    invoke-virtual {v13, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v15

    .line 1153
    .local v15, success:Z
    if-nez v15, :cond_7

    .line 1154
    const-string v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "renaming "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    const/16 v1, 0x2002

    goto/16 :goto_0

    .line 1159
    :cond_7
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 1160
    .local v17, values:Landroid/content/ContentValues;
    const-string v1, "_data"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    const/16 v16, 0x0

    .line 1165
    .local v16, updated:I
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    const-string v3, "_id=?"

    move-object/from16 v0, v17

    invoke-interface {v1, v2, v0, v3, v5}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v16

    .line 1169
    :goto_1
    if-nez v16, :cond_8

    .line 1170
    const-string v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to update path for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    invoke-virtual {v11, v13}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1173
    const/16 v1, 0x2002

    goto/16 :goto_0

    .line 1166
    :catch_1
    move-exception v9

    .line 1167
    .restart local v9       #e:Landroid/os/RemoteException;
    const-string v1, "MtpDatabase"

    const-string v2, "RemoteException in mMediaProvider.update"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1177
    .end local v9           #e:Landroid/os/RemoteException;
    :cond_8
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1179
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "."

    invoke-virtual {v12, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1182
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    const-string/jumbo v2, "unhide"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v12, v3}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1199
    :cond_9
    :goto_2
    const/16 v1, 0x2001

    goto/16 :goto_0

    .line 1183
    :catch_2
    move-exception v9

    .line 1184
    .restart local v9       #e:Landroid/os/RemoteException;
    const-string v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to unhide/rescan for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1189
    .end local v9           #e:Landroid/os/RemoteException;
    :cond_a
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v12, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1192
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    const-string/jumbo v2, "unhide"

    invoke-virtual {v13}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 1193
    :catch_3
    move-exception v9

    .line 1194
    .restart local v9       #e:Landroid/os/RemoteException;
    const-string v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to unhide/rescan for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private sessionEnded()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1505
    const-string v1, "MtpDatabase"

    const-string/jumbo v2, "sessionEnded"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    iget-boolean v1, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    if-eqz v1, :cond_0

    .line 1507
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.provider.action.MTP_SESSION_END"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1508
    iput-boolean v5, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 1510
    :cond_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mScanDirectory:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1511
    const-string v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[USBF] Scanned Stop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mScanDirectory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mScanDirectory:Ljava/lang/String;

    invoke-virtual {p0, v1, v5}, Landroid/mtp/MtpDatabase;->StartMediaScannerNew(Ljava/lang/String;I)V

    .line 1519
    iput-object v4, p0, Landroid/mtp/MtpDatabase;->mScanDirectory:Ljava/lang/String;

    .line 1521
    :cond_1
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    if-eqz v1, :cond_3

    .line 1523
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCacheHandle:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1524
    iput-object v4, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCacheHandle:Ljava/util/ArrayList;

    .line 1526
    const/4 v0, 0x0

    .local v0, ii:I
    :goto_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1527
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    aput-object v4, v1, v0

    .line 1526
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1528
    :cond_2
    iput-object v4, p0, Landroid/mtp/MtpDatabase;->amMtpPropertyCache:[Landroid/mtp/MtpDatabase$MtpPropertyCache;

    .line 1530
    .end local v0           #ii:I
    :cond_3
    iput-boolean v5, p0, Landroid/mtp/MtpDatabase;->mSessionActive:Z

    .line 1531
    return-void
.end method

.method private sessionStarted()V
    .locals 2

    .prologue
    .line 1499
    const-string v0, "MtpDatabase"

    const-string/jumbo v1, "sessionStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 1501
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mSessionActive:Z

    .line 1502
    return-void
.end method

.method private setDeviceProperty(IJLjava/lang/String;)I
    .locals 2
    .parameter "property"
    .parameter "intValue"
    .parameter "stringValue"

    .prologue
    .line 1244
    packed-switch p1, :pswitch_data_0

    .line 1254
    const/16 v1, 0x200a

    :goto_0
    return v1

    .line 1248
    :pswitch_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1249
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1250
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2001

    goto :goto_0

    :cond_0
    const/16 v1, 0x2002

    goto :goto_0

    .line 1244
    nop

    :pswitch_data_0
    .packed-switch 0xd401
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setObjectProperty(IIJLjava/lang/String;)I
    .locals 1
    .parameter "handle"
    .parameter "property"
    .parameter "intValue"
    .parameter "stringValue"

    .prologue
    .line 1204
    packed-switch p2, :pswitch_data_0

    .line 1209
    const v0, 0xa80a

    :goto_0
    return v0

    .line 1206
    :pswitch_0
    invoke-direct {p0, p1, p5}, Landroid/mtp/MtpDatabase;->renameFile(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1204
    :pswitch_data_0
    .packed-switch 0xdc07
        :pswitch_0
    .end packed-switch
.end method

.method private setObjectReferences(I[I)I
    .locals 9
    .parameter "handle"
    .parameter "references"

    .prologue
    .line 1453
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 1454
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    int-to-long v7, p1

    invoke-static {v6, v7, v8}, Landroid/provider/MediaStore$Files;->getMtpReferencesUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    .line 1455
    .local v3, uri:Landroid/net/Uri;
    array-length v0, p2

    .line 1456
    .local v0, count:I
    new-array v5, v0, [Landroid/content/ContentValues;

    .line 1457
    .local v5, valuesList:[Landroid/content/ContentValues;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1458
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1459
    .local v4, values:Landroid/content/ContentValues;
    const-string v6, "_id"

    aget v7, p2, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1460
    aput-object v4, v5, v2

    .line 1457
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1463
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_0
    :try_start_0
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-interface {v6, v3, v5}, Landroid/content/IContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-lez v6, :cond_1

    .line 1464
    const/16 v6, 0x2001

    .line 1469
    :goto_1
    return v6

    .line 1466
    :catch_0
    move-exception v1

    .line 1467
    .local v1, e:Landroid/os/RemoteException;
    const-string v6, "MtpDatabase"

    const-string v7, "RemoteException in setObjectReferences"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1469
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    const/16 v6, 0x2002

    goto :goto_1
.end method


# virtual methods
.method public GetFilenamefromHandle(I)Ljava/lang/String;
    .locals 10
    .parameter "iHandle"

    .prologue
    const/4 v0, 0x1

    .line 458
    const/4 v7, 0x0

    .line 459
    .local v7, sCur:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 460
    .local v9, szPath:Ljava/lang/String;
    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 463
    .local v4, whereArgs:[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 464
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 472
    :cond_0
    if-eqz v7, :cond_1

    .line 473
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 476
    :cond_1
    const-string v0, "MtpDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[USBF] GetFilenamefromHandle: Path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Handle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    return-object v9

    .line 468
    :catch_0
    move-exception v8

    .line 469
    .local v8, sEx:Landroid/os/RemoteException;
    :try_start_1
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 472
    if-eqz v7, :cond_1

    goto :goto_0

    .end local v8           #sEx:Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 473
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 472
    :cond_2
    throw v0
.end method

.method public StartMediaScanner(II)V
    .locals 0
    .parameter "iHandle"
    .parameter "storageID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 484
    invoke-virtual {p0, p1, p2, p1}, Landroid/mtp/MtpDatabase;->StartMediaScanner(III)V

    .line 485
    return-void
.end method

.method public StartMediaScanner(III)V
    .locals 5
    .parameter "iHandle"
    .parameter "storageID"
    .parameter "iParent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 489
    const-string v2, "MtpDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[USBF] StartMediaScanner: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    if-nez p3, :cond_1

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    invoke-virtual {p0, p1}, Landroid/mtp/MtpDatabase;->GetFilenamefromHandle(I)Ljava/lang/String;

    move-result-object v1

    .line 498
    .local v1, szPath:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 499
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 501
    .local v0, file1:Ljava/io/File;
    const/4 v2, -0x1

    if-ne p3, v2, :cond_2

    .line 504
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 506
    :cond_2
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2, p2}, Landroid/mtp/MtpDatabase;->StartMediaScannerDir([Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public StartMediaScannerDir([Ljava/lang/String;I)V
    .locals 6
    .parameter "filelist"
    .parameter "storageID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 521
    const-string v1, "Notify:"

    .line 522
    .local v1, szNotify:Ljava/lang/String;
    const/4 v0, 0x0

    .line 524
    .local v0, BaseDirPath:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 525
    invoke-direct {p0, p2}, Landroid/mtp/MtpDatabase;->GetStorageBase(I)Ljava/lang/String;

    move-result-object v0

    .line 527
    :cond_0
    aget-object v2, p1, v5

    if-nez v2, :cond_1

    .line 529
    const-string v2, "MtpDatabase"

    const-string v3, "[USBF] StartMediaScannerDir-: null path!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :goto_0
    return-void

    .line 532
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 533
    const-string v2, "MtpDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[USBF] StartMediaScannerDir+: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    if-eqz v0, :cond_2

    aget-object v2, p1, v5

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 536
    const-string v2, "MtpDatabase"

    const-string v3, "[USBF] StartMediaScannerDir-: Not valid path!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 545
    :cond_2
    aget-object v2, p1, v5

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/mtp/MtpDatabase;->StartMediaScannerNew(Ljava/lang/String;I)V

    .line 546
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mScanDirectory:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 547
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    iput-object v2, p0, Landroid/mtp/MtpDatabase;->mScanDirectory:Ljava/lang/String;

    .line 549
    :cond_3
    aget-object v2, p1, v5

    iput-object v2, p0, Landroid/mtp/MtpDatabase;->mScanDirectory:Ljava/lang/String;

    .line 586
    const-string v2, "MtpDatabase"

    const-string v3, "[USBF] StartMediaScannerDir-"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public StartMediaScannerNew(Ljava/lang/String;I)V
    .locals 4
    .parameter "szScanPath"
    .parameter "iScanLevel"

    .prologue
    .line 511
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 512
    .local v0, sScanIntent:Landroid/content/Intent;
    const-string v1, "MTP_Path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    if-eqz p2, :cond_0

    .line 514
    const-string v1, "MTP_Level"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 517
    :goto_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 518
    return-void

    .line 516
    :cond_0
    const-string v1, "MTP_Level"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public addStorage(Landroid/mtp/MtpStorage;)V
    .locals 2
    .parameter "storage"

    .prologue
    .line 214
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 207
    :try_start_0
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 211
    return-void

    .line 209
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public removeStorage(Landroid/mtp/MtpStorage;)V
    .locals 2
    .parameter "storage"

    .prologue
    .line 218
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    return-void
.end method
