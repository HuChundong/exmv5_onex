.class public Lcom/htc/opensense2/album/util/AlbumObjectManager;
.super Ljava/lang/Object;
.source "AlbumObjectManager.java"


# static fields
.field public static final FOLDER_3D_FLATTEN:Ljava/lang/String; = null

.field public static final FOLDER_INK_MERGE:Ljava/lang/String; = null

.field private static final GEO_FILTER_WHERE:Ljava/lang/String; = " AND (latitude NOT NULL) AND (longitude NOT NULL) AND (latitude <> 0 OR longitude <> 0 )"

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static PROJECTION_FAVORITE:[Ljava/lang/String; = null

.field public static SORT:I = 0x0

.field private static final SORT_ORDER:Ljava/lang/String; = "datetaken"

.field public static final SQL_ALL_3DS_DEAFULT_WHERE:Ljava/lang/String; = " ( mime_type IN ( \'image/jps\' , \'image/mpo\' , \'video/mp4-3d\')) "

.field private static final SQL_BURST_PHOTO_DEFAULT_WHERE:Ljava/lang/String; = null

.field public static final SQL_CAMERA_DEFAULT_WHERE:Ljava/lang/String; = null

.field public static final SQL_CAMERA_STANDARD_WHERE:Ljava/lang/String; = null

.field public static final SQL_DOWNLOADS_DEFAULT_WHERE:Ljava/lang/String; = null

.field private static final SQL_DRM_DEFAULT_WHERE:Ljava/lang/String; = "existence = \'exist\' "

.field public static final SQL_FAVORITES_DEFAULT_WHERE:Ljava/lang/String; = "favorite & 1"

.field public static final SQL_FOLDER_DEFAULT_WHERE:Ljava/lang/String; = " ( bucket_id = ? )"

.field private static final SQL_IMAGE_DEFUALT_WHERE:Ljava/lang/String; = null

.field private static final SQL_IMAGE_WHERE_DEFAULT_FILTER:Ljava/lang/String; = null

.field public static final SQL_IMAGE_WHERE_EXCLUDE_BURST_PHOTO:Ljava/lang/String; = "( ( favorite IS NULL ) OR( favorite&16>>4=0 ) OR( favorite&16>>4=1 AND favorite&32>>5=1 ) )"

.field public static final SQL_PANOR_DEFAULT_WHERE:Ljava/lang/String; = null

.field public static final SQL_SCRIBBLES_DEFAULT_WHERE:Ljava/lang/String; = null

.field public static final SQL_SNAPBOOTH_DEFAULT_WHERE:Ljava/lang/String; = null

.field private static final SQL_VIDEO_DEFAULT_WHERE:Ljava/lang/String; = "(1>0)"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 24
    const-class v1, Lcom/htc/opensense2/album/util/AlbumObjectManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/opensense2/album/util/AlbumObjectManager;->LOG_TAG:Ljava/lang/String;

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/3DFlatten"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/opensense2/album/util/AlbumObjectManager;->FOLDER_3D_FLATTEN:Ljava/lang/String;

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/InkMerge"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/opensense2/album/util/AlbumObjectManager;->FOLDER_INK_MERGE:Ljava/lang/String;

    .line 31
    sput v4, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SORT:I

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "( _data like \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageCameraPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, where:Ljava/lang/String;
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isSupportRemovableStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\' OR _data like \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getRemovableStorageCameraPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    :cond_0
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isSupportPhoneStorage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\' OR _data like \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStorageCameraPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\' ) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    sput-object v0, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SQL_CAMERA_STANDARD_WHERE:Ljava/lang/String;

    .line 61
    sget-object v0, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SQL_CAMERA_STANDARD_WHERE:Ljava/lang/String;

    .line 63
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isSupportSnapbooth()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND ( NOT _data LIKE \'%BOOTH%\' ) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    :cond_2
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isSupportPanorama()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND ( NOT _data LIKE \'%PANOR%\' ) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    :cond_3
    sput-object v0, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SQL_CAMERA_DEFAULT_WHERE:Ljava/lang/String;

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SQL_CAMERA_STANDARD_WHERE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LIKE \'%PANOR%\' )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SQL_PANOR_DEFAULT_WHERE:Ljava/lang/String;

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SQL_CAMERA_STANDARD_WHERE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LIKE \'%BOOTH%\' )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SQL_SNAPBOOTH_DEFAULT_WHERE:Ljava/lang/String;

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "( bucket_id IN (\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageScribblesPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isSupportRemovableStorage()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getRemovableStorageScribblesPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    :cond_4
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isSupportPhoneStorage()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStorageScribblesPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' ) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    sput-object v0, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SQL_SCRIBBLES_DEFAULT_WHERE:Ljava/lang/String;

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "( _data like \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isSupportRemovableStorage()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\' OR _data like \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getRemovableStorageDownloadPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    :cond_6
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isSupportPhoneStorage()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\' OR _data like \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStorageDownloadPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\' ) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    sput-object v0, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SQL_DOWNLOADS_DEFAULT_WHERE:Ljava/lang/String;

    .line 689
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ( ( NOT _display_name LIKE \'cover%\' ) AND ( NOT _display_name LIKE \'front.jpg\') AND ( NOT _display_name LIKE \'back.jpg\') AND ( NOT _display_name LIKE \'CD.jpg\') AND ( NOT _display_name LIKE \'~htc%\') AND ( NOT _display_name LIKE \'folder%\') AND ( NOT _display_name LIKE \'AlbumArt%\') AND ( NOT _data LIKE \'%/My Music/%\') AND ( NOT _data LIKE \'%/Music/%\') AND ( NOT bucket_id IN (\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/opensense2/album/util/AlbumObjectManager;->FOLDER_3D_FLATTEN:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/album/helper/FileOperationHelper;->genBucketID(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/opensense2/album/util/AlbumObjectManager;->FOLDER_INK_MERGE:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/album/helper/FileOperationHelper;->genBucketID(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SQL_IMAGE_WHERE_DEFAULT_FILTER:Ljava/lang/String;

    .line 711
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->FLAG_ENABLE_BURSTSHOT_MODE:Z

    if-ne v1, v4, :cond_8

    const-string v1, "( ( favorite IS NULL ) OR( favorite&16>>4=0 ) OR( favorite&16>>4=1 AND favorite&32>>5=1 ) ) AND "

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SQL_IMAGE_WHERE_DEFAULT_FILTER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SQL_IMAGE_DEFUALT_WHERE:Ljava/lang/String;

    .line 714
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SQL_IMAGE_WHERE_DEFAULT_FILTER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "favorite"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">>4=1 )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SQL_BURST_PHOTO_DEFAULT_WHERE:Ljava/lang/String;

    .line 871
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v1, v2

    const-string v2, "favorite"

    aput-object v2, v1, v4

    sput-object v1, Lcom/htc/opensense2/album/util/AlbumObjectManager;->PROJECTION_FAVORITE:[Ljava/lang/String;

    return-void

    .line 711
    :cond_8
    const-string v1, ""

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetWhereStatement(Lcom/htc/album/TabPluginDevice/location/RectD;[Lcom/htc/album/TabPluginDevice/location/RectD;)Ljava/lang/String;
    .locals 9
    .parameter "inRect"
    .parameter "exRectArr"

    .prologue
    .line 1060
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x800

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1062
    .local v4, strBuilderWhere:Ljava/lang/StringBuilder;
    const-string v5, "latitude"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " <= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/htc/album/TabPluginDevice/location/RectD;->top:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "latitude"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/htc/album/TabPluginDevice/location/RectD;->bottom:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    iget-wide v5, p0, Lcom/htc/album/TabPluginDevice/location/RectD;->left:D

    iget-wide v7, p0, Lcom/htc/album/TabPluginDevice/location/RectD;->right:D

    cmpl-double v5, v5, v7

    if-lez v5, :cond_0

    .line 1066
    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "longitude"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " >= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/htc/album/TabPluginDevice/location/RectD;->left:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " OR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "longitude"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " < "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/htc/album/TabPluginDevice/location/RectD;->right:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  ) AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1074
    :goto_0
    const-string v5, "latitude"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " <= 80.0 AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "latitude"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " > -80.0 AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "NOT("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "latitude"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " == 0.0 AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "longitude"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " == 0.0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    move-object v0, p1

    .local v0, arr$:[Lcom/htc/album/TabPluginDevice/location/RectD;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 1084
    .local v1, exRect:Lcom/htc/album/TabPluginDevice/location/RectD;
    const-string v5, " AND ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "latitude"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v1, Lcom/htc/album/TabPluginDevice/location/RectD;->top:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " OR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "latitude"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " <= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v1, Lcom/htc/album/TabPluginDevice/location/RectD;->bottom:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " OR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    iget-wide v5, v1, Lcom/htc/album/TabPluginDevice/location/RectD;->left:D

    iget-wide v7, v1, Lcom/htc/album/TabPluginDevice/location/RectD;->right:D

    cmpl-double v5, v5, v7

    if-lez v5, :cond_1

    .line 1091
    const-string v5, "NOT ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "longitude"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " < "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v1, Lcom/htc/album/TabPluginDevice/location/RectD;->left:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "longitude"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " >= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v1, Lcom/htc/album/TabPluginDevice/location/RectD;->right:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    :goto_2
    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1070
    .end local v0           #arr$:[Lcom/htc/album/TabPluginDevice/location/RectD;
    .end local v1           #exRect:Lcom/htc/album/TabPluginDevice/location/RectD;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "longitude"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " >= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/htc/album/TabPluginDevice/location/RectD;->left:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "longitude"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " < "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/htc/album/TabPluginDevice/location/RectD;->right:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ) AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1098
    .restart local v0       #arr$:[Lcom/htc/album/TabPluginDevice/location/RectD;
    .restart local v1       #exRect:Lcom/htc/album/TabPluginDevice/location/RectD;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    :cond_1
    const-string v5, "longitude"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " < "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v1, Lcom/htc/album/TabPluginDevice/location/RectD;->left:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " OR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "longitude"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " >= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v1, Lcom/htc/album/TabPluginDevice/location/RectD;->right:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1105
    .end local v1           #exRect:Lcom/htc/album/TabPluginDevice/location/RectD;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static getBurstPhotoWhereClause(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "mediaType"
    .parameter "typeFilter"

    .prologue
    .line 828
    invoke-static {p0, p1}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->getSupportedMimeTypes(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 829
    .local v0, mimeFilter:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 831
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 837
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SQL_BURST_PHOTO_DEFAULT_WHERE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 835
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getQueryArgs(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 2
    .parameter "type"
    .parameter "bucketId"
    .parameter "mediaType"

    .prologue
    .line 665
    const/4 v0, 0x0

    .line 667
    .local v0, args:[Ljava/lang/String;
    const-string v1, "com.htc.HTCAlbum.LOCAL_FOLDER"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.htc.HTCAlbum.PHONE_STORAGE"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.htc.HTCAlbum.SMART_LOCAL_FOLDER"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 671
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #args:[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 674
    .restart local v0       #args:[Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static getQuerySortOrder(I)Ljava/lang/String;
    .locals 1
    .parameter "mediaType"

    .prologue
    .line 869
    const-string v0, "datetaken"

    return-object v0
.end method

.method public static getQueryUri(ILjava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "mediaType"
    .parameter "folderType"

    .prologue
    .line 564
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 566
    const-string v0, "com.htc.HTCAlbum.PHONE_STORAGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhonePhotosUri()Landroid/net/Uri;

    move-result-object v0

    .line 582
    :goto_0
    return-object v0

    .line 566
    :cond_0
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 569
    :cond_1
    const/16 v0, 0x10

    if-ne p0, v0, :cond_3

    .line 571
    const-string v0, "com.htc.HTCAlbum.PHONE_STORAGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneVideosUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalVideosUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 574
    :cond_3
    const/16 v0, 0xe

    if-ne p0, v0, :cond_4

    .line 576
    sget-object v0, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 578
    :cond_4
    const/16 v0, 0xe0

    if-ne p0, v0, :cond_5

    .line 580
    sget-object v0, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 582
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getQueryWhere(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "type"
    .parameter "bucketId"
    .parameter "mediaType"
    .parameter "filter"

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 596
    const-string v4, ""

    .line 597
    .local v4, where:Ljava/lang/String;
    invoke-static {p2, p3}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->getSupportedMediaFormatWhereClause(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 599
    .local v0, defaultWhere:Ljava/lang/String;
    const-string v6, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 601
    sget-object v4, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SQL_CAMERA_DEFAULT_WHERE:Ljava/lang/String;

    .line 649
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 650
    .local v1, finalWhere:Ljava/lang/String;
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_c

    move v3, v2

    .line 651
    .local v3, hasWhere:Z
    :goto_1
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_d

    .line 653
    .local v2, hasDefaultWhere:Z
    :goto_2
    if-eqz v3, :cond_e

    if-eqz v2, :cond_e

    .line 654
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 660
    :cond_1
    :goto_3
    return-object v1

    .line 603
    .end local v1           #finalWhere:Ljava/lang/String;
    .end local v2           #hasDefaultWhere:Z
    .end local v3           #hasWhere:Z
    :cond_2
    const-string v6, "com.htc.HTCAlbum.SNAPBOOTH"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 605
    sget-object v4, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SQL_SNAPBOOTH_DEFAULT_WHERE:Ljava/lang/String;

    goto :goto_0

    .line 607
    :cond_3
    const-string v6, "com.htc.HTCAlbum.PANORAMA_SHOTS"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 609
    sget-object v4, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SQL_PANOR_DEFAULT_WHERE:Ljava/lang/String;

    goto :goto_0

    .line 611
    :cond_4
    const-string v6, "com.htc.HTCAlbum.MY_FAVORITES"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 613
    const-string v4, "favorite & 1"

    goto :goto_0

    .line 615
    :cond_5
    const-string v6, "com.htc.HTCAlbum.MY_INKS"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 617
    const-string v4, "favorite & 1"

    goto :goto_0

    .line 619
    :cond_6
    const-string v6, "com.htc.HTCAlbum.ALL_PHOTOS"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 623
    const-string v6, "com.htc.HTCAlbum.ALL_VIDEOS"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 627
    const-string v6, "com.htc.HTCAlbum.SCRIBBLES"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 629
    sget-object v4, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SQL_SCRIBBLES_DEFAULT_WHERE:Ljava/lang/String;

    goto :goto_0

    .line 631
    :cond_7
    const-string v6, "com.htc.HTCAlbum.ALL_DOWNLOADS"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "com.htc.HTCAlbum.SMART_ALL_DOWNLOADS"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 634
    :cond_8
    sget-object v4, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SQL_DOWNLOADS_DEFAULT_WHERE:Ljava/lang/String;

    goto/16 :goto_0

    .line 638
    :cond_9
    const-string v6, "com.htc.HTCAlbum.LOCAL_FOLDER"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "com.htc.HTCAlbum.PHONE_STORAGE"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "com.htc.HTCAlbum.SMART_LOCAL_FOLDER"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 642
    :cond_a
    const-string v4, " ( bucket_id = ? )"

    goto/16 :goto_0

    .line 644
    :cond_b
    const-string v6, "com.htc.HTCAlbum.ALL_3DS"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 646
    const-string v4, " ( mime_type IN ( \'image/jps\' , \'image/mpo\' , \'video/mp4-3d\')) "

    goto/16 :goto_0

    .restart local v1       #finalWhere:Ljava/lang/String;
    :cond_c
    move v3, v5

    .line 650
    goto/16 :goto_1

    .restart local v3       #hasWhere:Z
    :cond_d
    move v2, v5

    .line 651
    goto/16 :goto_2

    .line 655
    .restart local v2       #hasDefaultWhere:Z
    :cond_e
    if-eqz v3, :cond_f

    .line 656
    move-object v1, v4

    goto/16 :goto_3

    .line 657
    :cond_f
    if-eqz v2, :cond_1

    .line 658
    move-object v1, v0

    goto/16 :goto_3
.end method

.method public static getSupportedMediaFormatWhereClause(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "mediaType"
    .parameter "typeFilter"

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x1

    .line 784
    and-int/lit8 v2, p0, 0xe

    if-nez v2, :cond_0

    and-int/lit16 v2, p0, 0xe0

    if-eqz v2, :cond_1

    .line 787
    :cond_0
    const-string v2, "existence = \'exist\' "

    .line 823
    :goto_0
    return-object v2

    .line 790
    :cond_1
    const/4 v0, 0x0

    .line 791
    .local v0, mimeFilter:Ljava/lang/String;
    const/4 v1, 0x0

    .line 792
    .local v1, show_Geo_Only:Z
    if-eqz p1, :cond_3

    const-string v2, "media/geo_only"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 794
    const/4 v1, 0x1

    .line 802
    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 804
    if-ne p0, v4, :cond_4

    sget-object v2, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SQL_IMAGE_DEFUALT_WHERE:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 805
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 814
    :cond_2
    :goto_2
    if-ne p0, v4, :cond_7

    .line 816
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SQL_IMAGE_DEFUALT_WHERE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_6

    const-string v2, " AND (latitude NOT NULL) AND (longitude NOT NULL) AND (latitude <> 0 OR longitude <> 0 )"

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 798
    :cond_3
    invoke-static {p0, p1}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->getSupportedMimeTypes(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 806
    :cond_4
    if-ne p0, v5, :cond_2

    const-string v2, "(1>0)"

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 807
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 811
    :cond_5
    const-string v0, ""

    goto :goto_2

    .line 816
    :cond_6
    const-string v2, ""

    goto :goto_3

    .line 818
    :cond_7
    if-ne p0, v5, :cond_9

    .line 820
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(1>0)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_8

    const-string v2, " AND (latitude NOT NULL) AND (longitude NOT NULL) AND (latitude <> 0 OR longitude <> 0 )"

    :goto_4
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_8
    const-string v2, ""

    goto :goto_4

    .line 823
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private static getSupportedMimeTypes(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "mediaType"
    .parameter "filter"

    .prologue
    const/4 v1, 0x0

    .line 723
    and-int/lit8 v2, p0, 0xe

    if-nez v2, :cond_0

    and-int/lit16 v2, p0, 0xe0

    if-eqz v2, :cond_1

    .line 761
    :cond_0
    :goto_0
    return-object v1

    .line 729
    :cond_1
    const/4 v0, 0x0

    .line 730
    .local v0, mimeFilter:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #mimeFilter:Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 733
    .restart local v0       #mimeFilter:Ljava/lang/StringBuilder;
    const-string v1, "mime_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IN (\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    const-string v3, "\',\'"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\') "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static makeList(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 22
    .parameter "ctx"
    .parameter "mediaType"
    .parameter "catagory"
    .parameter "folderType"
    .parameter "typeFilter"
    .parameter "partialLoadBundle"
    .parameter "bucketIdFilter"
    .parameter "sortOrder"

    .prologue
    .line 129
    sput p7, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SORT:I

    .line 131
    const-string v3, "com.htc.HTCAlbum.CAMERA_SHOTS"

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 139
    :try_start_0
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    move/from16 v0, p1

    and-int/lit16 v7, v0, -0xef

    sget v8, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SORT:I

    const/4 v9, 0x1

    sget-object v10, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SQL_CAMERA_DEFAULT_WHERE:Ljava/lang/String;

    move-object/from16 v4, p0

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-virtual/range {v3 .. v12}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IIZLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 320
    :goto_0
    return-object v3

    .line 143
    :catch_0
    move-exception v21

    .line 144
    .local v21, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/opensense2/album/util/AlbumObjectManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][AlbumObjectManager][makeList] Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const/4 v3, 0x0

    goto :goto_0

    .line 148
    .end local v21           #e:Ljava/lang/Exception;
    :cond_0
    const-string v3, "com.htc.HTCAlbum.SNAPBOOTH"

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 149
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    move/from16 v0, p1

    and-int/lit16 v7, v0, -0xef

    sget v8, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SORT:I

    const/4 v9, 0x1

    sget-object v10, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SQL_SNAPBOOTH_DEFAULT_WHERE:Ljava/lang/String;

    move-object/from16 v4, p0

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-virtual/range {v3 .. v12}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IIZLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v3

    goto :goto_0

    .line 154
    :cond_1
    const-string v3, "com.htc.HTCAlbum.PANORAMA_SHOTS"

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 155
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    move/from16 v0, p1

    and-int/lit16 v7, v0, -0xef

    sget v8, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SORT:I

    const/4 v9, 0x1

    sget-object v10, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SQL_PANOR_DEFAULT_WHERE:Ljava/lang/String;

    move-object/from16 v4, p0

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-virtual/range {v3 .. v12}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IIZLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v3

    goto :goto_0

    .line 170
    :cond_2
    const-string v3, "com.htc.HTCAlbum.SCRIBBLES"

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 172
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    sget v8, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SORT:I

    const/4 v9, 0x1

    sget-object v10, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SQL_SCRIBBLES_DEFAULT_WHERE:Ljava/lang/String;

    move-object/from16 v4, p0

    move/from16 v7, p1

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-virtual/range {v3 .. v12}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IIZLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v3

    goto/16 :goto_0

    .line 182
    :cond_3
    const-string v3, "com.htc.HTCAlbum.MY_INKS"

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 183
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    sget v8, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SORT:I

    const/4 v9, 0x1

    const-string v10, "favorite & 1"

    move-object/from16 v4, p0

    move/from16 v7, p1

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-virtual/range {v3 .. v12}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IIZLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v3

    goto/16 :goto_0

    .line 193
    :cond_4
    const-string v3, "com.htc.HTCAlbum.ALL_3DS"

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 194
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    sget v8, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SORT:I

    const/4 v9, 0x1

    const-string v10, " ( mime_type IN ( \'image/jps\' , \'image/mpo\' , \'video/mp4-3d\')) "

    move-object/from16 v4, p0

    move/from16 v7, p1

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-virtual/range {v3 .. v12}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IIZLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v3

    goto/16 :goto_0

    .line 204
    :cond_5
    const-string v3, "com.htc.HTCAlbum.MY_FAVORITES"

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 205
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    sget v8, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SORT:I

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object/from16 v4, p0

    move/from16 v7, p1

    move-object/from16 v11, p4

    invoke-virtual/range {v3 .. v11}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IIZZLjava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v3

    goto/16 :goto_0

    .line 215
    :cond_6
    const-string v3, "com.htc.HTCAlbum.ALL_PHOTOS"

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 217
    const/4 v10, 0x0

    .line 218
    .local v10, where:Ljava/lang/String;
    if-eqz p6, :cond_7

    .line 219
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 221
    :cond_7
    and-int/lit8 v3, p1, 0xe

    if-eqz v3, :cond_8

    .line 233
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    and-int/lit8 v7, p1, 0xf

    sget v8, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SORT:I

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-virtual/range {v3 .. v12}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IIZLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v3

    goto/16 :goto_0

    .line 246
    :cond_8
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    const/4 v7, 0x1

    sget v8, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SORT:I

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-virtual/range {v3 .. v12}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IIZLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v3

    goto/16 :goto_0

    .line 257
    .end local v10           #where:Ljava/lang/String;
    :cond_9
    const-string v3, "com.htc.HTCAlbum.ALL_VIDEOS"

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 258
    move/from16 v0, p1

    and-int/lit16 v3, v0, 0xe0

    if-eqz v3, :cond_a

    .line 267
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    move/from16 v0, p1

    and-int/lit16 v15, v0, 0x1f0

    sget v16, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SORT:I

    move-object/from16 v12, p0

    move-object/from16 v17, p4

    move-object/from16 v18, p5

    invoke-virtual/range {v11 .. v18}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IILjava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v3

    goto/16 :goto_0

    .line 277
    :cond_a
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    move/from16 v0, p1

    and-int/lit16 v3, v0, 0x100

    or-int/lit8 v15, v3, 0x10

    sget v16, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SORT:I

    move-object/from16 v12, p0

    move-object/from16 v17, p4

    move-object/from16 v18, p5

    invoke-virtual/range {v11 .. v18}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IILjava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v3

    goto/16 :goto_0

    .line 287
    :cond_b
    const-string v3, "com.htc.HTCAlbum.ALL_DOWNLOADS"

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "com.htc.HTCAlbum.SMART_ALL_DOWNLOADS"

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 290
    :cond_c
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    sget v16, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SORT:I

    const/16 v17, 0x1

    sget-object v18, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SQL_DOWNLOADS_DEFAULT_WHERE:Ljava/lang/String;

    move-object/from16 v12, p0

    move/from16 v15, p1

    move-object/from16 v19, p4

    move-object/from16 v20, p5

    invoke-virtual/range {v11 .. v20}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IIZLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v3

    goto/16 :goto_0

    .line 300
    :cond_d
    if-eqz p3, :cond_e

    const-string v3, "com.htc.HTCAlbum.PHONE_STORAGE"

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 301
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->PHONE:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    sget v16, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SORT:I

    move-object/from16 v12, p0

    move/from16 v15, p1

    move-object/from16 v17, p2

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    invoke-virtual/range {v11 .. v19}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v3

    goto/16 :goto_0

    .line 312
    :cond_e
    const-string v3, "com.htc.HTCAlbum.BURST_SHOTS"

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 313
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v3

    sget v4, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SORT:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v3, v0, v4, v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->burstImages(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v3

    goto/16 :goto_0

    .line 320
    :cond_f
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->EXTERNAL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    sget v16, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SORT:I

    move-object/from16 v12, p0

    move/from16 v15, p1

    move-object/from16 v17, p2

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    invoke-virtual/range {v11 .. v19}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public static makeList(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;[D[D)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 15
    .parameter "ctx"
    .parameter "mediaType"
    .parameter "catagory"
    .parameter "folderType"
    .parameter "typeFilter"
    .parameter "partialLoadBundle"
    .parameter "bucketIdFilter"
    .parameter "darrayViewRange"
    .parameter "dArrayExclusiveRange"

    .prologue
    .line 1018
    const-string v1, "com.htc.HTCAlbum.MY_MAPVIEWS"

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1020
    const/4 v8, 0x1

    move-object v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v1 .. v8}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v14

    .line 1055
    :goto_0
    return-object v14

    .line 1029
    :cond_0
    const/4 v14, 0x0

    .line 1034
    .local v14, res:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :try_start_0
    invoke-static/range {p7 .. p7}, Lcom/htc/album/TabPluginDevice/location/RectD;->ParseArrD([D)[Lcom/htc/album/TabPluginDevice/location/RectD;

    move-result-object v13

    .line 1035
    .local v13, inRect:[Lcom/htc/album/TabPluginDevice/location/RectD;
    invoke-static/range {p8 .. p8}, Lcom/htc/album/TabPluginDevice/location/RectD;->ParseArrD([D)[Lcom/htc/album/TabPluginDevice/location/RectD;

    move-result-object v12

    .line 1036
    .local v12, exRect:[Lcom/htc/album/TabPluginDevice/location/RectD;
    const/4 v1, 0x0

    aget-object v1, v13, v1

    invoke-static {v1, v12}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->GetWhereStatement(Lcom/htc/album/TabPluginDevice/location/RectD;[Lcom/htc/album/TabPluginDevice/location/RectD;)Ljava/lang/String;

    move-result-object v8

    .line 1038
    .local v8, sWhere:Ljava/lang/String;
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    const/4 v5, 0x1

    sget v6, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SORT:I

    const/4 v7, 0x1

    move-object v2, p0

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v1 .. v10}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IIZLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    goto :goto_0

    .line 1049
    .end local v8           #sWhere:Ljava/lang/String;
    .end local v12           #exRect:[Lcom/htc/album/TabPluginDevice/location/RectD;
    .end local v13           #inRect:[Lcom/htc/album/TabPluginDevice/location/RectD;
    :catch_0
    move-exception v11

    .line 1051
    .local v11, e:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/opensense2/album/util/AlbumObjectManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[AlbumObjectManager]"

    invoke-static {v1, v2, v11}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static makeList_Slideshow(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 10
    .parameter "ctx"
    .parameter "mediaType"
    .parameter "catagory"
    .parameter "folderType"
    .parameter "typeFilter"
    .parameter "slideBundle"

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    .line 348
    sput v6, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SORT:I

    .line 350
    const-string v0, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    sget v5, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SORT:I

    sget-object v7, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SQL_CAMERA_DEFAULT_WHERE:Ljava/lang/String;

    move-object v1, p0

    move v4, p1

    move-object v8, p4

    invoke-virtual/range {v0 .. v9}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IIZLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    .line 507
    :goto_0
    return-object v0

    .line 356
    :cond_0
    const-string v0, "com.htc.HTCAlbum.SNAPBOOTH"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    sget v5, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SORT:I

    sget-object v7, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SQL_SNAPBOOTH_DEFAULT_WHERE:Ljava/lang/String;

    move-object v1, p0

    move v4, p1

    move-object v8, p4

    invoke-virtual/range {v0 .. v9}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IIZLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    goto :goto_0

    .line 363
    :cond_1
    const-string v0, "com.htc.HTCAlbum.PANORAMA_SHOTS"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 364
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    and-int/lit16 v4, p1, -0xef

    sget v5, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SORT:I

    sget-object v7, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SQL_PANOR_DEFAULT_WHERE:Ljava/lang/String;

    move-object v1, p0

    move-object v8, p4

    invoke-virtual/range {v0 .. v9}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IIZLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    goto :goto_0

    .line 379
    :cond_2
    const-string v0, "com.htc.HTCAlbum.SCRIBBLES"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 380
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    sget v5, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SORT:I

    sget-object v7, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SQL_SCRIBBLES_DEFAULT_WHERE:Ljava/lang/String;

    move-object v1, p0

    move v4, p1

    move-object v8, p4

    invoke-virtual/range {v0 .. v9}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IIZLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    goto :goto_0

    .line 389
    :cond_3
    const-string v0, "com.htc.HTCAlbum.MY_INKS"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 390
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    sget v5, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SORT:I

    const-string v7, "favorite & 1"

    move-object v1, p0

    move v4, p1

    move-object v8, p4

    invoke-virtual/range {v0 .. v9}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IIZLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    goto :goto_0

    .line 399
    :cond_4
    const-string v0, "com.htc.HTCAlbum.ALL_3DS"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 400
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    sget v5, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SORT:I

    const-string v7, " ( mime_type IN ( \'image/jps\' , \'image/mpo\' , \'video/mp4-3d\')) "

    move-object v1, p0

    move v4, p1

    move-object v8, p4

    invoke-virtual/range {v0 .. v9}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IIZLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    goto/16 :goto_0

    .line 409
    :cond_5
    const-string v0, "com.htc.HTCAlbum.MY_FAVORITES"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 410
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    sget v5, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SORT:I

    move-object v1, p0

    move v4, p1

    move v7, v6

    move-object v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IIZZLjava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    goto/16 :goto_0

    .line 420
    :cond_6
    const-string v0, "com.htc.HTCAlbum.ALL_PHOTOS"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 421
    and-int/lit8 v0, p1, 0xe

    if-eqz v0, :cond_7

    .line 422
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    sget v5, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SORT:I

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    move-object v1, p0

    move v4, p1

    move-object v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IILjava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    goto/16 :goto_0

    .line 433
    :cond_7
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    sget v7, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SORT:I

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    move-object v3, p0

    move-object v8, p4

    invoke-virtual/range {v2 .. v9}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IILjava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    goto/16 :goto_0

    .line 443
    :cond_8
    const-string v0, "com.htc.HTCAlbum.ALL_VIDEOS"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 444
    and-int/lit16 v0, p1, 0xe0

    if-eqz v0, :cond_9

    .line 453
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    sget v5, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SORT:I

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    move-object v1, p0

    move v4, p1

    move-object v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IILjava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    goto/16 :goto_0

    .line 464
    :cond_9
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    and-int/lit16 v1, p1, 0x100

    or-int/lit8 v4, v1, 0x10

    sget v5, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SORT:I

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    move-object v1, p0

    move-object v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IILjava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    goto/16 :goto_0

    .line 474
    :cond_a
    const-string v0, "com.htc.HTCAlbum.ALL_DOWNLOADS"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "com.htc.HTCAlbum.SMART_ALL_DOWNLOADS"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 477
    :cond_b
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    sget v5, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SORT:I

    sget-object v7, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SQL_DOWNLOADS_DEFAULT_WHERE:Ljava/lang/String;

    move-object v1, p0

    move v4, p1

    move-object v8, p4

    invoke-virtual/range {v0 .. v9}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IIZLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    goto/16 :goto_0

    .line 486
    :cond_c
    const-string v0, "com.htc.HTCAlbum.BURST_SHOTS"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 487
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v0

    sget v1, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SORT:I

    invoke-virtual {v0, p0, v1, p2, v9}, Lcom/htc/opensense2/album/util/ImageManager;->burstImages(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    goto/16 :goto_0

    .line 494
    :cond_d
    if-eqz p3, :cond_e

    const-string v0, "com.htc.HTCAlbum.PHONE_STORAGE"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 495
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->PHONE:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    sget v6, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SORT:I

    move-object v2, p0

    move v5, p1

    move-object v7, p2

    move-object v8, p4

    invoke-virtual/range {v1 .. v9}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    goto/16 :goto_0

    .line 507
    :cond_e
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->EXTERNAL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    sget v6, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SORT:I

    move-object v2, p0

    move v5, p1

    move-object v7, p2

    move-object v8, p4

    invoke-virtual/range {v1 .. v9}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static makeList_Slideshow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 6
    .parameter "ctx"
    .parameter "catagory"
    .parameter "folderType"

    .prologue
    const/4 v4, 0x0

    .line 342
    const/4 v1, 0x3

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList_Slideshow(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method

.method public static makeList_Slideshow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 6
    .parameter "ctx"
    .parameter "catagory"
    .parameter "folderType"
    .parameter "slideBundle"

    .prologue
    .line 333
    const/4 v1, 0x3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList_Slideshow(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method

.method public static makePhotoDMCList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 6
    .parameter "ctx"
    .parameter "catagory"
    .parameter "folderType"

    .prologue
    const/4 v4, 0x0

    .line 337
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList_Slideshow(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method

.method public static tagPhotoFavorite(Landroid/app/Activity;Landroid/net/Uri;Z)Z
    .locals 12
    .parameter "activity"
    .parameter "uriImage"
    .parameter "bIsEnable"

    .prologue
    const/4 v11, 0x1

    .line 874
    const/4 v6, 0x1

    .line 875
    .local v6, bResult:Z
    const/4 v9, 0x0

    .line 877
    .local v9, nFavorite:I
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 878
    :cond_0
    const/4 v1, 0x0

    .line 933
    :goto_0
    return v1

    .line 883
    :cond_1
    const/4 v7, 0x0

    .line 884
    .local v7, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 887
    .local v0, contentResolver:Landroid/content/ContentResolver;
    :try_start_0
    sget-object v2, Lcom/htc/opensense2/album/util/AlbumObjectManager;->PROJECTION_FAVORITE:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 892
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 894
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 895
    sget-object v1, Lcom/htc/opensense2/album/util/AlbumObjectManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][AlbumObjectManager][tagPhotoFavorite]: Orig: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 904
    :cond_2
    if-eqz v7, :cond_3

    .line 905
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 908
    :cond_3
    if-ne v11, p2, :cond_5

    .line 909
    or-int/lit8 v9, v9, 0x1

    .line 913
    :goto_2
    sget-object v1, Lcom/htc/opensense2/album/util/AlbumObjectManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][AlbumObjectManager][tagPhotoFavorite]: New: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 918
    .local v10, values:Landroid/content/ContentValues;
    const-string v1, "favorite"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 922
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, p1, v10, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 931
    :goto_3
    const/4 v0, 0x0

    move v1, v6

    .line 933
    goto :goto_0

    .line 904
    .end local v10           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_4

    .line 905
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 904
    :cond_4
    throw v1

    .line 911
    :cond_5
    and-int/lit8 v9, v9, 0x2

    goto :goto_2

    .line 926
    .restart local v10       #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v8

    .line 928
    .local v8, ex:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/opensense2/album/util/AlbumObjectManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][AlbumObjectManager][tagPhotoFavorite]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    const/4 v6, 0x0

    goto :goto_3

    .line 898
    .end local v8           #ex:Ljava/lang/Exception;
    .end local v10           #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v1

    .line 904
    if-eqz v7, :cond_3

    goto :goto_1
.end method

.method public static tagPhotoInk(Landroid/content/Context;Landroid/net/Uri;Z)Z
    .locals 12
    .parameter "context"
    .parameter "uriImage"
    .parameter "bIsEnable"

    .prologue
    .line 937
    const/4 v7, 0x1

    .line 938
    .local v7, bResult:Z
    const/4 v10, 0x0

    .line 940
    .local v10, nInked:I
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 941
    :cond_0
    const/4 v1, 0x0

    .line 1003
    :goto_0
    return v1

    .line 946
    :cond_1
    const/4 v8, 0x0

    .line 947
    .local v8, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 950
    .local v0, contentResolver:Landroid/content/ContentResolver;
    :try_start_0
    sget-object v2, Lcom/htc/opensense2/album/util/AlbumObjectManager;->PROJECTION_FAVORITE:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 955
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 957
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 958
    sget-object v1, Lcom/htc/opensense2/album/util/AlbumObjectManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][AlbumObjectManager][tagPhotoInk]: Orig: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 967
    :cond_2
    if-eqz v8, :cond_3

    .line 968
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 973
    :cond_3
    and-int/lit8 v1, v10, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    const/4 v6, 0x1

    .line 974
    .local v6, bIsEnabledOld:Z
    :goto_2
    if-ne v6, p2, :cond_6

    move v1, v7

    .line 975
    goto :goto_0

    .line 967
    .end local v6           #bIsEnabledOld:Z
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_4

    .line 968
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 967
    :cond_4
    throw v1

    .line 973
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 977
    .restart local v6       #bIsEnabledOld:Z
    :cond_6
    const/4 v1, 0x1

    if-ne v1, p2, :cond_7

    .line 978
    or-int/lit8 v10, v10, 0x2

    .line 983
    :goto_3
    sget-object v1, Lcom/htc/opensense2/album/util/AlbumObjectManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][AlbumObjectManager][tagPhotoInk]: New: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 988
    .local v11, values:Landroid/content/ContentValues;
    const-string v1, "favorite"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 992
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, p1, v11, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1001
    :goto_4
    const/4 v0, 0x0

    move v1, v7

    .line 1003
    goto :goto_0

    .line 980
    .end local v11           #values:Landroid/content/ContentValues;
    :cond_7
    and-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 996
    .restart local v11       #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v9

    .line 998
    .local v9, ex:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/opensense2/album/util/AlbumObjectManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][AlbumObjectManager][tagPhotoInk]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    const/4 v7, 0x0

    goto :goto_4

    .line 961
    .end local v6           #bIsEnabledOld:Z
    .end local v9           #ex:Ljava/lang/Exception;
    .end local v11           #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v1

    .line 967
    if-eqz v8, :cond_3

    goto :goto_1
.end method
