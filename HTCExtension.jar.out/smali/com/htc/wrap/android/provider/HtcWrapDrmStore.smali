.class public final Lcom/htc/wrap/android/provider/HtcWrapDrmStore;
.super Ljava/lang/Object;
.source "HtcWrapDrmStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;,
        Lcom/htc/wrap/android/provider/HtcWrapDrmStore$UpdateLicense;,
        Lcom/htc/wrap/android/provider/HtcWrapDrmStore$ErrorCode;,
        Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Err;,
        Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Stamp;,
        Lcom/htc/wrap/android/provider/HtcWrapDrmStore$AlbumArt;,
        Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Albums;,
        Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Artists;,
        Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Jar;,
        Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Video;,
        Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Audio;,
        Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Images;,
        Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Columns;
    }
.end annotation


# static fields
.field public static final ALBUMS_PROJECTION:[Ljava/lang/String; = null

.field public static final ARTISTS_PROJECTION:[Ljava/lang/String; = null

.field public static final AUTHORITY:Ljava/lang/String; = "drm"

.field private static CMD_CHMOD:[Ljava/lang/String; = null

.field public static final CONSTRAINT_PROJECTION:[Ljava/lang/String; = null

.field public static final DCFLIST_PROJECTION:[Ljava/lang/String; = null

.field public static final DELIVERY_TYPE_PROJECTION:[Ljava/lang/String; = null

.field private static DISABLE_COMBINED_DELIVERY:Z = false

.field private static DISABLE_FORWORD_LOCK:Z = false

.field private static DISABLE_SEPARATE_DELIVERY:Z = false

.field public static final DRM_COMBINED_DELIVERY:I = 0x2

.field public static final DRM_DELIVERY_CD:I = 0xf0

.field public static final DRM_DELIVERY_FL:I = 0xf

.field public static final DRM_DELIVERY_SD:I = 0xf00

.field private static final DRM_FIND_BASE64_PATTERN:Ljava/lang/String; = "Content-Transfer-Encoding: base64"

.field public static final DRM_FORWARD_LOCK:I = 0x1

.field public static final DRM_HTC_RIGHTS_DIRECTORY_PATH:Ljava/lang/String; = "/data/data/com.android.providers.drm/rights"

.field public static final DRM_HTC_TMP_DIRECTORY:Ljava/lang/String; = "tmp"

.field public static final DRM_PERMISSION_DISPLAY:I = 0x2

.field public static final DRM_PERMISSION_EXECUTE:I = 0x3

.field public static final DRM_PERMISSION_PLAY:I = 0x1

.field public static final DRM_PERMISSION_PRINT:I = 0x4

.field private static final DRM_REPLACE_PATTERN:Ljava/lang/String; = "Content-Transfer-Encoding: binary"

.field public static final DRM_SEPARATE_DELIVERY:I = 0x3

.field public static final DrmUriCollection:[Landroid/net/Uri; = null

.field public static final FILEPATH_PROJECTION:[Ljava/lang/String; = null

.field private static final GARBAGE_FILE:Ljava/lang/String; = "garbage"

.field private static final INSTALL_FOLDER:Ljava/lang/String; = "/download/"

.field private static final LOGD:Z = true

.field public static final METADATA_PROJECTION:[Ljava/lang/String; = null

.field public static final MIDLET_PROJECTION:[Ljava/lang/String; = null

.field private static final PLATFORM_7x27:Ljava/lang/String; = "7x27"

.field private static final PLATFORM_MSM7K:Ljava/lang/String; = "msm7k"

.field private static REBUILD_DATABASE:Z = false

.field private static final REPEAT_COUNT:I = 0x3

.field public static final STAMP_PROJECTION:[Ljava/lang/String; = null

.field public static final SUPPORTS_EXTERNAL_STORAGE:I = 0x1

.field public static final SUPPORTS_PHONE_STORAGE:I = 0x2

.field private static SWITCH_TO_CID:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcWrapDrmStore"

.field public static final TITLE_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 71
    sput-boolean v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->REBUILD_DATABASE:Z

    .line 96
    sput-boolean v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DISABLE_FORWORD_LOCK:Z

    .line 97
    sput-boolean v3, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DISABLE_COMBINED_DELIVERY:Z

    .line 98
    sput-boolean v3, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DISABLE_SEPARATE_DELIVERY:Z

    .line 99
    sput-boolean v3, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->SWITCH_TO_CID:Z

    .line 102
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "chmod"

    aput-object v1, v0, v4

    const-string v1, "666"

    aput-object v1, v0, v3

    const-string v1, ""

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->CMD_CHMOD:[Ljava/lang/String;

    .line 440
    new-array v0, v7, [Landroid/net/Uri;

    sget-object v1, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DrmUriCollection:[Landroid/net/Uri;

    .line 569
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v5

    const-string v1, "content_url"

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->TITLE_PROJECTION:[Ljava/lang/String;

    .line 576
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->FILEPATH_PROJECTION:[Ljava/lang/String;

    .line 585
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "date_added"

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->CONSTRAINT_PROJECTION:[Ljava/lang/String;

    .line 590
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "_size"

    aput-object v1, v0, v5

    const-string v1, "title"

    aput-object v1, v0, v6

    const-string v1, "mime_type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "message_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "delivery_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "existence"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "content_offset"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    .line 607
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "delivery_type"

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DCFLIST_PROJECTION:[Ljava/lang/String;

    .line 614
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "mime_type"

    aput-object v1, v0, v5

    const-string v1, "content_id"

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->METADATA_PROJECTION:[Ljava/lang/String;

    .line 625
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->MIDLET_PROJECTION:[Ljava/lang/String;

    .line 634
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "album_id"

    aput-object v1, v0, v4

    const-string v1, "album"

    aput-object v1, v0, v3

    const-string v1, "album_key"

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->ALBUMS_PROJECTION:[Ljava/lang/String;

    .line 644
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "artist_id"

    aput-object v1, v0, v4

    const-string v1, "artist"

    aput-object v1, v0, v3

    const-string v1, "artist_key"

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->ARTISTS_PROJECTION:[Ljava/lang/String;

    .line 654
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "time_stamp"

    aput-object v1, v0, v3

    const-string v1, "clock_stamp"

    aput-object v1, v0, v5

    const-string v1, "timezone_stamp"

    aput-object v1, v0, v6

    const-string v1, "time_differential"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "network_sync"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 672
    return-void
.end method

.method private static final NeedToEncrypt(Ljava/lang/String;)Z
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 1637
    const-string v0, "application/java-archive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1640
    const/4 v0, 0x1

    .line 1642
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final SupportForwardLockOnly()Z
    .locals 2

    .prologue
    .line 1462
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9a

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x51

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x94

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xaf

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x50

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9e

    if-ne v0, v1, :cond_1

    .line 1489
    :cond_0
    const/4 v0, 0x1

    .line 1491
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final acquireRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "cx"
    .parameter "contentUri"
    .parameter "strFilePath"
    .parameter "className"

    .prologue
    .line 1198
    const-string v0, "HtcWrapDrmStore"

    const-string v1, "********acquireRights"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    invoke-static {p0, p1, p2, p3}, Landroid/provider/DrmStore;->acquireRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final addDrmFile(Landroid/content/ContentResolver;Ljava/io/File;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "cr"
    .parameter "file"
    .parameter "title"

    .prologue
    .line 830
    const-string v0, "HtcWrapDrmStore"

    const-string v1, "********addDrmFile (1)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    invoke-static {p0, p1, p2}, Landroid/provider/DrmStore;->addDrmFile(Landroid/content/ContentResolver;Ljava/io/File;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static final addDrmFile(Landroid/content/ContentResolver;Ljava/io/FileInputStream;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "cr"
    .parameter "fis"
    .parameter "title"

    .prologue
    .line 842
    const-string v0, "HtcWrapDrmStore"

    const-string v1, "********addDrmFile (2)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    invoke-static {p0, p1, p2}, Landroid/provider/DrmStore;->addDrmFile(Landroid/content/ContentResolver;Ljava/io/FileInputStream;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static final addDrmFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .parameter "cx"
    .parameter "file"
    .parameter "title"
    .parameter "mediaType"
    .parameter "url"

    .prologue
    .line 897
    const-string v0, "HtcWrapDrmStore"

    const-string v1, " @@@@@     addDrmFile with url (4)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->addDrmFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static final addDrmFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 7
    .parameter "cx"
    .parameter "file"
    .parameter "title"
    .parameter "mediaType"
    .parameter "url"
    .parameter "destination"

    .prologue
    .line 924
    const-string v0, "HtcWrapDrmStore"

    const-string v1, " @@@@@     addDrmFile with url and destination (5)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->addDrmFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static final addDrmFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "cx"
    .parameter "file"
    .parameter "title"
    .parameter "mediaType"
    .parameter "url"
    .parameter "destination"
    .parameter "targetFolder"

    .prologue
    .line 956
    const-string v0, "HtcWrapDrmStore"

    const-string v1, " @@@@@     addDrmFile with url, destination and target (6) -BEGIN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    invoke-static/range {p0 .. p6}, Landroid/provider/DrmStore;->addDrmFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static final addDrmFileWithoutRights(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 2
    .parameter "cx"
    .parameter "file"
    .parameter "title"
    .parameter "mediaType"
    .parameter "url"
    .parameter "destination"

    .prologue
    .line 1018
    const-string v0, "HtcWrapDrmStore"

    const-string v1, "********addDrmFileWithoutRights"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    invoke-static/range {p0 .. p5}, Landroid/provider/DrmStore;->addDrmFileWithoutRights(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static final addDrmFileWithoutRightsAndRebuild(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 2
    .parameter "cx"
    .parameter "file"
    .parameter "title"
    .parameter "mediaType"
    .parameter "url"
    .parameter "destination"

    .prologue
    .line 995
    const-string v0, "HtcWrapDrmStore"

    const-string v1, " @@@@@     addDrmFileWithoutRightsAndRebuild() - BEGIN. "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    invoke-static/range {p0 .. p5}, Landroid/provider/DrmStore;->addDrmFileWithoutRightsAndRebuild(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static checkAndCreateFolder(Ljava/lang/String;Z)Z
    .locals 6
    .parameter "checkFolderPath"
    .parameter "setPermission"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1608
    if-eqz p0, :cond_0

    const-string v4, ""

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v2, v3

    .line 1630
    :cond_1
    :goto_0
    return v2

    .line 1612
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1615
    .local v0, checkF:Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1616
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1619
    :cond_3
    if-eqz p1, :cond_1

    .line 1620
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/io/File;->setWritable(ZZ)Z

    .line 1621
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1622
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/io/File;->setExecutable(ZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1626
    :catch_0
    move-exception v1

    .line 1627
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "HtcWrapDrmStore"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    .line 1630
    goto :goto_0
.end method

.method public static checkBeforeDownload(Landroid/content/Context;[BLjava/lang/String;)I
    .locals 2
    .parameter "context"
    .parameter "buffer"
    .parameter "mediaType"

    .prologue
    .line 871
    const-string v0, "HtcWrapDrmStore"

    const-string v1, "********checkBeforeDownload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    invoke-static {p0, p1, p2}, Landroid/provider/DrmStore;->checkBeforeDownload(Landroid/content/Context;[BLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final checkExpiration(Landroid/content/ContentResolver;Landroid/provider/DrmStore$DrmConstraint;Landroid/net/Uri;)I
    .locals 3
    .parameter "cr"
    .parameter "dcr"
    .parameter "contentUri"

    .prologue
    .line 1144
    const-string v0, "HtcWrapDrmStore"

    const-string v1, "********checkExpiration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    const-string v0, "HtcWrapDrmStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    invoke-static {p0, p1, p2}, Landroid/provider/DrmStore;->checkExpiration(Landroid/content/ContentResolver;Landroid/provider/DrmStore$DrmConstraint;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public static final checkExpiration(Landroid/net/Uri;Landroid/app/Activity;)I
    .locals 1
    .parameter "uri"
    .parameter "activity"

    .prologue
    .line 2028
    const/4 v0, 0x0

    return v0
.end method

.method public static final checkExpiration(Ljava/lang/String;Landroid/app/Activity;)I
    .locals 1
    .parameter "fileName"
    .parameter "activity"

    .prologue
    .line 2036
    const/4 v0, 0x0

    return v0
.end method

.method public static checkFileExistence(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 1
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 1436
    invoke-static {p0, p1}, Landroid/provider/DrmStore;->checkFileExistence(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public static final consumeRights(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 1
    .parameter "cx"
    .parameter "uri"

    .prologue
    .line 2044
    const/4 v0, 0x0

    return v0
.end method

.method public static final consumeRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)I
    .locals 2
    .parameter "cx"
    .parameter "contentUri"
    .parameter "strFilePath"
    .parameter "permissionType"

    .prologue
    .line 1165
    const-string v0, "HtcWrapDrmStore"

    const-string v1, "********consumeRights"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    invoke-static {p0, p1, p2, p3}, Landroid/provider/DrmStore;->consumeRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static final consumeRights(Ljava/lang/String;)I
    .locals 1
    .parameter "fileName"

    .prologue
    .line 2052
    const/4 v0, 0x0

    return v0
.end method

.method public static final deleteDrmFile(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 1
    .parameter "cr"
    .parameter "uri"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1062
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->deleteDrmFile(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final deleteDrmFile(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)I
    .locals 2
    .parameter "cr"
    .parameter "uri"
    .parameter "filePath"

    .prologue
    .line 1048
    const-string v0, "HtcWrapDrmStore"

    const-string v1, "********deleteDrmFile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    invoke-static {p0, p1, p2}, Landroid/provider/DrmStore;->deleteDrmFile(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static enforceAccessDrmPermission(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 854
    const-string v0, "HtcWrapDrmStore"

    const-string v1, "********enforceAccessDrmPermission()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    invoke-static {p0}, Landroid/provider/DrmStore;->enforceAccessDrmPermission(Landroid/content/Context;)V

    .line 858
    return-void
.end method

.method private static final fnIsDisableCombinedDeliveryAndSeparateDelivery()Z
    .locals 1

    .prologue
    .line 1504
    sget-boolean v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->SWITCH_TO_CID:Z

    if-eqz v0, :cond_1

    .line 1505
    sget-boolean v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DISABLE_FORWORD_LOCK:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DISABLE_COMBINED_DELIVERY:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DISABLE_SEPARATE_DELIVERY:Z

    if-eqz v0, :cond_0

    .line 1507
    const/4 v0, 0x1

    .line 1514
    :goto_0
    return v0

    .line 1510
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1514
    :cond_1
    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->SupportForwardLockOnly()Z

    move-result v0

    goto :goto_0
.end method

.method private static final fnIsDisableCombinedDeliveryOnly()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1526
    sget-boolean v1, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->SWITCH_TO_CID:Z

    if-eqz v1, :cond_0

    .line 1528
    sget-boolean v1, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DISABLE_FORWORD_LOCK:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DISABLE_COMBINED_DELIVERY:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DISABLE_SEPARATE_DELIVERY:Z

    if-nez v1, :cond_0

    .line 1530
    const/4 v0, 0x1

    .line 1540
    :cond_0
    return v0
.end method

.method private static final fnIsDisableSeparateDeliveryOnly()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1550
    sget-boolean v2, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->SWITCH_TO_CID:Z

    if-eqz v2, :cond_2

    .line 1551
    sget-boolean v2, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DISABLE_FORWORD_LOCK:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DISABLE_COMBINED_DELIVERY:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DISABLE_SEPARATE_DELIVERY:Z

    if-eqz v2, :cond_1

    .line 1579
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1556
    goto :goto_0

    .line 1560
    :cond_2
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x31

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x88

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 1579
    goto :goto_0
.end method

.method private static getCipher(Ljavax/crypto/spec/SecretKeySpec;I)Ljavax/crypto/Cipher;
    .locals 6
    .parameter "skeySpec"
    .parameter "mode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1339
    const/4 v0, 0x0

    .line 1341
    .local v0, cipher:Ljavax/crypto/Cipher;
    if-nez p0, :cond_0

    .line 1343
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "skeySpec == null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    :goto_0
    return-object v3

    .line 1346
    :cond_0
    const/4 v4, 0x1

    if-eq p1, v4, :cond_1

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    .line 1348
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "Cipher mode error."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1355
    :cond_1
    :try_start_0
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 1357
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    const-string v3, "f45gt7g83sd56210"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 1359
    .local v2, ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual {v0, p1, p0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3

    .end local v2           #ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    :goto_1
    move-object v3, v0

    .line 1378
    goto :goto_0

    .line 1361
    :catch_0
    move-exception v1

    .line 1363
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    const-string v3, "HtcWrapDrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NoSuchAlgorithmException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1365
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 1367
    .local v1, e:Ljavax/crypto/NoSuchPaddingException;
    const-string v3, "HtcWrapDrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NoSuchPaddingException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1369
    .end local v1           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v1

    .line 1371
    .local v1, e:Ljava/security/InvalidKeyException;
    const-string v3, "HtcWrapDrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InvalidKeyException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1373
    .end local v1           #e:Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v1

    .line 1375
    .local v1, e:Ljava/security/InvalidAlgorithmParameterException;
    const-string v3, "HtcWrapDrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InvalidAlgorithmParameterException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getDcfFileList(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;
    .locals 1
    .parameter "contentResolver"
    .parameter "uri"

    .prologue
    .line 1445
    invoke-static {p0, p1}, Landroid/provider/DrmStore;->getDcfFileList(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDmFileList(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;
    .locals 1
    .parameter "contentResolver"
    .parameter "uri"

    .prologue
    .line 1456
    invoke-static {p0, p1}, Landroid/provider/DrmStore;->getDmFileList(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDrmAudioConstraint(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;
    .locals 1
    .parameter "cx"
    .parameter "strFilePath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1924
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    return-object v0
.end method

.method public static getDrmAudioCursor(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 1
    .parameter "cx"
    .parameter "nDeliveryType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1868
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final getDrmAudioStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter "cx"
    .parameter "strFilePath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1980
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getDrmContentStream(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static final getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;
    .locals 2
    .parameter "cr"
    .parameter "uri"
    .parameter "permissionType"

    .prologue
    .line 1126
    const-string v0, "HtcWrapDrmStore"

    const-string v1, "********getDrmConstraint (2)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    invoke-static {p0, p1, p2}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    return-object v0
.end method

.method public static final getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;
    .locals 3
    .parameter "cx"
    .parameter "uri"
    .parameter "strFilePath"

    .prologue
    .line 1076
    const-string v0, "HtcWrapDrmStore"

    const-string v1, "********getDrmConstraint without renew call back"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    const-string v0, "HtcWrapDrmStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    invoke-static {p0, p1, p2}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    return-object v0
.end method

.method public static final getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/htc/wrap/android/provider/HtcWrapDrmStore$UpdateLicense;)Landroid/provider/DrmStore$DrmConstraint;
    .locals 2
    .parameter "cx"
    .parameter "uri"
    .parameter "strFilePath"
    .parameter "updateLicense"

    .prologue
    .line 1095
    const-string v0, "HtcWrapDrmStore"

    const-string v1, "********getDrmConstraint (1)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    check-cast p3, Landroid/provider/DrmStore$UpdateLicense;

    .end local p3
    invoke-static {p0, p1, p2, p3}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/provider/DrmStore$UpdateLicense;)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    return-object v0
.end method

.method public static final getDrmContentStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 1
    .parameter "cx"
    .parameter "uri"

    .prologue
    .line 2084
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final getDrmContentStream(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .parameter "cx"
    .parameter "uri"
    .parameter "strFilePath"

    .prologue
    .line 1237
    const-string v0, "HtcWrapDrmStore"

    const-string v1, "********getDrmContentStream"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    invoke-static {p0, p1, p2}, Landroid/provider/DrmStore;->getDrmContentStream(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static final getDrmContrain(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;
    .locals 1
    .parameter "cr"
    .parameter "uri"
    .parameter "permissionType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1112
    invoke-static {p0, p1, p2}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    return-object v0
.end method

.method public static getDrmCursor(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/database/Cursor;
    .locals 1
    .parameter "cr"
    .parameter "uri"
    .parameter "nDeliveryType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1333
    invoke-static {p0, p1, p2}, Landroid/provider/DrmStore;->getDrmCursor(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static getDrmCursor(Landroid/content/Context;Landroid/net/Uri;I)Landroid/database/Cursor;
    .locals 2
    .parameter "cx"
    .parameter "uri"
    .parameter "nDeliveryType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1315
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1317
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {v0, p1, p2}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getDrmCursor(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public static final getDrmFileStatus(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 1
    .parameter "cx"
    .parameter "uri"

    .prologue
    .line 2060
    const/4 v0, 0x0

    return v0
.end method

.method public static final getDrmFileStatus(Ljava/lang/String;)I
    .locals 1
    .parameter "fileName"

    .prologue
    .line 2068
    const/4 v0, 0x0

    return v0
.end method

.method public static getDrmImageConstraint(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;
    .locals 1
    .parameter "cx"
    .parameter "strFilePath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1911
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    return-object v0
.end method

.method public static getDrmImageCursor(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 1
    .parameter "cx"
    .parameter "nDeliveryType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1853
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final getDrmImageStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter "cx"
    .parameter "strFilePath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1965
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getDrmContentStream(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static getDrmJarConstraint(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;
    .locals 1
    .parameter "cx"
    .parameter "strFilePath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1950
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    return-object v0
.end method

.method public static getDrmJarCursor(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 1
    .parameter "cx"
    .parameter "nDeliveryType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1898
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final getDrmJarStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter "cx"
    .parameter "strFilePath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2010
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getDrmContentStream(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static final getDrmLicenseInfo(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "cx"
    .parameter "uri"

    .prologue
    .line 2020
    const/4 v0, 0x0

    return-object v0
.end method

.method private static final getDrmRight(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/drm/mobile1/DrmRights;
    .locals 17
    .parameter "cr"
    .parameter "uri"
    .parameter "strFilePath"

    .prologue
    .line 1261
    const/4 v3, 0x0

    const-string v4, "_data=?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v5, v1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1262
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 1264
    const-string v1, "HtcWrapDrmStore"

    const-string v2, "getDrmRight query DRM db failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    const/16 v16, 0x0

    .line 1303
    :cond_0
    :goto_0
    return-object v16

    .line 1267
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 1269
    const-string v1, "HtcWrapDrmStore"

    const-string v2, "getDrmRight no record."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1272
    const/16 v16, 0x0

    goto :goto_0

    .line 1275
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1276
    const-string v1, "message_type"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 1277
    .local v15, messageTypeColumnId:I
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1278
    .local v14, messageType:Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1280
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1281
    .local v10, file:Ljava/io/File;
    const/4 v11, 0x0

    .line 1282
    .local v11, fis:Ljava/io/FileInputStream;
    const/16 v16, 0x0

    .line 1284
    .local v16, rights:Landroid/drm/mobile1/DrmRights;
    :try_start_0
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1285
    .end local v11           #fis:Ljava/io/FileInputStream;
    .local v12, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v8, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {v8, v12, v1, v14}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 1286
    .local v8, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v13

    .line 1287
    .local v13, manager:Landroid/drm/mobile1/DrmRightsManager;
    invoke-virtual {v13, v8}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v16

    .line 1294
    if-eqz v12, :cond_3

    .line 1295
    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    move-object v11, v12

    .line 1301
    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 1297
    .end local v11           #fis:Ljava/io/FileInputStream;
    .restart local v12       #fis:Ljava/io/FileInputStream;
    :catch_0
    move-exception v9

    .line 1299
    .local v9, e:Ljava/lang/Exception;
    const-string v1, "HtcWrapDrmStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDrmRight : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v12

    .line 1302
    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 1288
    .end local v8           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v9           #e:Ljava/lang/Exception;
    .end local v13           #manager:Landroid/drm/mobile1/DrmRightsManager;
    :catch_1
    move-exception v9

    .line 1290
    .restart local v9       #e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v1, "HtcWrapDrmStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDrmRight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1294
    if-eqz v11, :cond_0

    .line 1295
    :try_start_4
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 1297
    :catch_2
    move-exception v9

    .line 1299
    const-string v1, "HtcWrapDrmStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDrmRight : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1293
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 1294
    :goto_2
    if-eqz v11, :cond_4

    .line 1295
    :try_start_5
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1301
    :cond_4
    :goto_3
    throw v1

    .line 1297
    :catch_3
    move-exception v9

    .line 1299
    .restart local v9       #e:Ljava/lang/Exception;
    const-string v2, "HtcWrapDrmStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDrmRight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1293
    .end local v9           #e:Ljava/lang/Exception;
    .end local v11           #fis:Ljava/io/FileInputStream;
    .restart local v12       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v1

    move-object v11, v12

    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 1288
    .end local v11           #fis:Ljava/io/FileInputStream;
    .restart local v12       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v9

    move-object v11, v12

    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static getDrmVideoConstraint(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;
    .locals 1
    .parameter "cx"
    .parameter "strFilePath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1937
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    return-object v0
.end method

.method public static getDrmVideoCursor(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 1
    .parameter "cx"
    .parameter "nDeliveryType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1883
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final getDrmVideoStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter "cx"
    .parameter "strFilePath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1995
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getDrmContentStream(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 1825
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalStorageDownloadPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1659
    invoke-static {}, Landroid/provider/DrmStore;->getExternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalStorageState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1784
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInternalStorageDownloadPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1651
    invoke-static {}, Landroid/provider/DrmStore;->getInternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 1691
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneStorageState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1748
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSecretKeySpecUsingKeyGenerator()Ljavax/crypto/spec/SecretKeySpec;
    .locals 9

    .prologue
    .line 1382
    const/4 v4, 0x0

    .line 1385
    .local v4, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    const-string v6, "AES"

    invoke-static {v6}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 1387
    .local v1, kgen:Ljavax/crypto/KeyGenerator;
    const/16 v6, 0x80

    invoke-virtual {v1, v6}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 1390
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 1392
    .local v3, skey:Ljavax/crypto/SecretKey;
    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    .line 1394
    .local v2, raw:[B
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "AES"

    invoke-direct {v5, v2, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4           #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    .local v5, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    move-object v4, v5

    .line 1400
    .end local v1           #kgen:Ljavax/crypto/KeyGenerator;
    .end local v2           #raw:[B
    .end local v3           #skey:Ljavax/crypto/SecretKey;
    .end local v5           #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v4       #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v4

    .line 1395
    :catch_0
    move-exception v0

    .line 1397
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    const-string v6, "HtcWrapDrmStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NoSuchAlgorithmException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getSecretKeySpecUsingSimNumber()Ljavax/crypto/spec/SecretKeySpec;
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1405
    const/4 v3, 0x0

    .line 1408
    .local v3, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 1410
    .local v1, md:Ljava/security/MessageDigest;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    .line 1412
    .local v5, telMngr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v2

    .line 1414
    .local v2, simNumber:Ljava/lang/String;
    const-string v6, "HtcWrapDrmStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIM number: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 1419
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    const-string v7, "AES"

    invoke-direct {v4, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    .local v4, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    move-object v3, v4

    .line 1426
    .end local v1           #md:Ljava/security/MessageDigest;
    .end local v2           #simNumber:Ljava/lang/String;
    .end local v4           #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    .end local v5           #telMngr:Landroid/telephony/TelephonyManager;
    .restart local v3       #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v3

    .line 1421
    :catch_0
    move-exception v0

    .line 1423
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    const-string v6, "HtcWrapDrmStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NoSuchAlgorithmException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getSupportedStorages()I
    .locals 1

    .prologue
    .line 1718
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getSupportedStorages()I

    move-result v0

    return v0
.end method

.method public static final getUTC(Landroid/content/Context;)Ljava/util/Date;
    .locals 1
    .parameter "cx"

    .prologue
    .line 1249
    invoke-static {p0}, Landroid/provider/DrmStore;->getUTC(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static hasPhoneStorage()Z
    .locals 1

    .prologue
    .line 1728
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasPhoneStorage()Z

    move-result v0

    return v0
.end method

.method public static final isDrmContent(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 2092
    const/4 v0, 0x1

    return v0
.end method

.method public static final isDrmContent(Ljava/lang/String;)Z
    .locals 1
    .parameter "filePath"

    .prologue
    .line 2100
    const/4 v0, 0x1

    return v0
.end method

.method public static final isFLDrmFile(Ljava/io/File;)Z
    .locals 2
    .parameter "file"

    .prologue
    .line 975
    const-string v0, "HtcWrapDrmStore"

    const-string v1, " @@@@@     isFLDrmFile() - BEGIN. "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    invoke-static {p0}, Landroid/provider/DrmStore;->isFLDrmFile(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static final isRightsUnlimited(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1
    .parameter "cx"
    .parameter "uri"

    .prologue
    .line 2116
    const/4 v0, 0x1

    return v0
.end method

.method public static final isRightsValidByResultCode(I)Z
    .locals 1
    .parameter "resultCode"

    .prologue
    .line 2108
    const/4 v0, 0x1

    return v0
.end method

.method public static final renewRights(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 1
    .parameter "cx"
    .parameter "uri"

    .prologue
    .line 2076
    const/4 v0, 0x0

    return v0
.end method

.method public static final renewRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)I
    .locals 3
    .parameter "cx"
    .parameter "contentUri"
    .parameter "strFilePath"

    .prologue
    .line 1183
    const/4 v0, 0x0

    .line 1185
    .local v0, res:I
    const-string v1, "HtcWrapDrmStore"

    const-string v2, "renewRights"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    invoke-static {p0, p1, p2}, Landroid/provider/DrmStore;->renewRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static final renewRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "cx"
    .parameter "contentUri"
    .parameter "strFilePath"
    .parameter "className"

    .prologue
    .line 1218
    const-string v0, "HtcWrapDrmStore"

    const-string v1, "********renewRights  (2)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    invoke-static {p0, p1, p2, p3}, Landroid/provider/DrmStore;->renewRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setEnableCombinedDelivery(Z)V
    .locals 0
    .parameter "isEnabled"

    .prologue
    .line 1592
    invoke-static {p0}, Landroid/provider/DrmStore;->setEnableCombinedDelivery(Z)V

    .line 1593
    return-void
.end method

.method public static setEnableSeparateDelivery(Z)V
    .locals 0
    .parameter "isEnabled"

    .prologue
    .line 1602
    invoke-static {p0}, Landroid/provider/DrmStore;->setEnableSeparateDelivery(Z)V

    .line 1603
    return-void
.end method

.method public static final updateAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZ)Landroid/content/ContentValues;
    .locals 1
    .parameter "cx"
    .parameter "file"
    .parameter "mediaType"
    .parameter "mimeType"
    .parameter "uri"
    .parameter "destination"
    .parameter "skipMediaDbUpdate"

    .prologue
    .line 1032
    invoke-static/range {p0 .. p6}, Landroid/provider/DrmStore;->updateAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZ)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method
