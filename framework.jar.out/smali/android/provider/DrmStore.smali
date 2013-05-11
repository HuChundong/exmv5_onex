.class public final Landroid/provider/DrmStore;
.super Ljava/lang/Object;
.source "DrmStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/DrmStore$UpdateLicense;,
        Landroid/provider/DrmStore$ErrorCode;,
        Landroid/provider/DrmStore$Err;,
        Landroid/provider/DrmStore$DrmConstraint;,
        Landroid/provider/DrmStore$Stamp;,
        Landroid/provider/DrmStore$AlbumArt;,
        Landroid/provider/DrmStore$Albums;,
        Landroid/provider/DrmStore$Artists;,
        Landroid/provider/DrmStore$Jar;,
        Landroid/provider/DrmStore$Video;,
        Landroid/provider/DrmStore$Audio;,
        Landroid/provider/DrmStore$Images;,
        Landroid/provider/DrmStore$Columns;
    }
.end annotation


# static fields
.field private static final ACCESS_DRM_PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_DRM"

.field public static final ALBUMS_PROJECTION:[Ljava/lang/String; = null

.field public static final ARTISTS_PROJECTION:[Ljava/lang/String; = null

.field public static final AUTHORITY:Ljava/lang/String; = "drm"

.field private static CMD_CHMOD:[Ljava/lang/String; = null

.field public static final CONSTRAINT_PROJECTION:[Ljava/lang/String; = null

.field private static final CUSTOMIZATION_URI:Ljava/lang/String; = "content://customization_settings/SettingTable/"

.field private static final CUSTOM_CATEGORY_NAME:Ljava/lang/String; = "application"

.field private static final CUSTOM_FUNCTION_NAME:Ljava/lang/String; = "Drm_Support"

.field private static final CUSTOM_MODEL_NAME:Ljava/lang/String; = "Drm_Provider"

.field private static final CUSTOM_NAME_COMBINED_DELIVERY:Ljava/lang/String; = "combined_delivery"

.field private static final CUSTOM_NAME_COMBINED_DELIVERY_ACRONYM:Ljava/lang/String; = "CD"

.field private static final CUSTOM_NAME_FORWARD_LOCK:Ljava/lang/String; = "forward_lock"

.field private static final CUSTOM_NAME_FORWARD_LOCK_ACRONYM:Ljava/lang/String; = "FL"

.field private static final CUSTOM_NAME_SEPARATE_DELIVERY:Ljava/lang/String; = "separate_delivery"

.field private static final CUSTOM_NAME_SEPARATE_DELIVERY_ACRONYM:Ljava/lang/String; = "SD"

.field private static final CUSTOM_NAME_VERSION:Ljava/lang/String; = "version"

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

.field private static final LOGD:Z = true

.field public static final METADATA_PROJECTION:[Ljava/lang/String; = null

.field public static final MIDLET_PROJECTION:[Ljava/lang/String; = null

.field private static final PLATFORM_7x27:Ljava/lang/String; = "7x27"

.field private static final PLATFORM_MSM7K:Ljava/lang/String; = "msm7k"

.field private static REBUILD_DATABASE:Z = false

.field private static RELOAD_CUSTOM_SETTING:Z = false

.field private static final REPEAT_COUNT:I = 0x3

.field public static final STAMP_PROJECTION:[Ljava/lang/String; = null

.field private static SWITCH_TO_CID:Z = false

.field private static final TAG:Ljava/lang/String; = "DrmStore"

.field public static final TITLE_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 80
    sput-boolean v3, Landroid/provider/DrmStore;->REBUILD_DATABASE:Z

    .line 81
    sput-boolean v3, Landroid/provider/DrmStore;->DISABLE_FORWORD_LOCK:Z

    .line 82
    sput-boolean v4, Landroid/provider/DrmStore;->DISABLE_COMBINED_DELIVERY:Z

    .line 83
    sput-boolean v4, Landroid/provider/DrmStore;->DISABLE_SEPARATE_DELIVERY:Z

    .line 84
    sput-boolean v4, Landroid/provider/DrmStore;->SWITCH_TO_CID:Z

    .line 85
    sput-boolean v3, Landroid/provider/DrmStore;->RELOAD_CUSTOM_SETTING:Z

    .line 8545
    new-array v0, v7, [Landroid/net/Uri;

    sget-object v1, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v3

    sget-object v1, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v4

    sget-object v1, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v5

    sget-object v1, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v6

    sput-object v0, Landroid/provider/DrmStore;->DrmUriCollection:[Landroid/net/Uri;

    .line 8592
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string/jumbo v1, "title"

    aput-object v1, v0, v5

    const-string v1, "content_url"

    aput-object v1, v0, v6

    sput-object v0, Landroid/provider/DrmStore;->TITLE_PROJECTION:[Ljava/lang/String;

    .line 8599
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    sput-object v0, Landroid/provider/DrmStore;->FILEPATH_PROJECTION:[Ljava/lang/String;

    .line 8604
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "date_added"

    aput-object v1, v0, v4

    sput-object v0, Landroid/provider/DrmStore;->CONSTRAINT_PROJECTION:[Ljava/lang/String;

    .line 8609
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "_size"

    aput-object v1, v0, v5

    const-string/jumbo v1, "title"

    aput-object v1, v0, v6

    const-string/jumbo v1, "mime_type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "message_type"

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

    sput-object v0, Landroid/provider/DrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    .line 8622
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "delivery_type"

    aput-object v1, v0, v5

    sput-object v0, Landroid/provider/DrmStore;->DCFLIST_PROJECTION:[Ljava/lang/String;

    .line 8629
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string/jumbo v1, "mime_type"

    aput-object v1, v0, v5

    const-string v1, "content_id"

    aput-object v1, v0, v6

    sput-object v0, Landroid/provider/DrmStore;->METADATA_PROJECTION:[Ljava/lang/String;

    .line 8636
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    sput-object v0, Landroid/provider/DrmStore;->MIDLET_PROJECTION:[Ljava/lang/String;

    .line 8641
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "album_id"

    aput-object v1, v0, v3

    const-string v1, "album"

    aput-object v1, v0, v4

    const-string v1, "album_key"

    aput-object v1, v0, v5

    sput-object v0, Landroid/provider/DrmStore;->ALBUMS_PROJECTION:[Ljava/lang/String;

    .line 8647
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "artist_id"

    aput-object v1, v0, v3

    const-string v1, "artist"

    aput-object v1, v0, v4

    const-string v1, "artist_key"

    aput-object v1, v0, v5

    sput-object v0, Landroid/provider/DrmStore;->ARTISTS_PROJECTION:[Ljava/lang/String;

    .line 8653
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "time_stamp"

    aput-object v1, v0, v4

    const-string v1, "clock_stamp"

    aput-object v1, v0, v5

    const-string/jumbo v1, "timezone_stamp"

    aput-object v1, v0, v6

    const-string/jumbo v1, "time_differential"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "network_sync"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/DrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    .line 8687
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "chmod"

    aput-object v1, v0, v3

    const-string v1, "666"

    aput-object v1, v0, v4

    const-string v1, ""

    aput-object v1, v0, v5

    sput-object v0, Landroid/provider/DrmStore;->CMD_CHMOD:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8692
    return-void
.end method

.method private static final NeedToEncrypt(Ljava/lang/String;)Z
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 8537
    const-string v0, "application/java-archive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 8538
    const/4 v0, 0x1

    .line 8540
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final SupportForwardLockOnly()Z
    .locals 2

    .prologue
    .line 8381
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

    .line 8408
    :cond_0
    const/4 v0, 0x1

    .line 8410
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final acquireRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 18
    .parameter "cx"
    .parameter "contentUri"
    .parameter "strFilePath"
    .parameter "className"

    .prologue
    .line 7132
    const-string v2, "DrmStore"

    const-string v3, "********acquireRights"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7134
    const/16 v16, 0x0

    .line 7136
    .local v16, uri:Landroid/net/Uri;
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 7138
    :cond_0
    const-string v2, "DrmStore"

    const-string v3, "acquireRights (1) : -2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7140
    const/4 v2, 0x0

    .line 7254
    :goto_0
    return-object v2

    .line 7143
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Landroid/provider/DrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const-string v5, "_data=?"

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v6, v3

    const-string v7, "_id"

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 7144
    .local v8, c:Landroid/database/Cursor;
    if-nez v8, :cond_2

    .line 7146
    const-string v2, "DrmStore"

    const-string v3, "acquireRights (2) : -6"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7148
    const/4 v2, 0x0

    goto :goto_0

    .line 7149
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 7151
    const-string v2, "DrmStore"

    const-string v3, "acquireRights no record."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7153
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 7154
    const/4 v2, 0x0

    goto :goto_0

    .line 7157
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7158
    const-string/jumbo v2, "message_type"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 7159
    .local v15, messageTypeColumnId:I
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 7160
    .local v14, messageType:Ljava/lang/String;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 7162
    const-string v2, "application/vnd.oma.drm.content"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 7164
    const-string v2, "DrmStore"

    const-string v3, "acquireRights (3) : -2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7166
    const/4 v2, 0x0

    goto :goto_0

    .line 7169
    :cond_4
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7171
    .local v11, file:Ljava/io/File;
    :try_start_0
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 7172
    .local v12, fis:Ljava/io/InputStream;
    new-instance v9, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v12}, Ljava/io/FileInputStream;->available()I

    move-result v2

    invoke-direct {v9, v12, v2, v14}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 7173
    .local v9, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual {v9}, Landroid/drm/mobile1/DrmRawContent;->getRightsAddress()Ljava/lang/String;

    move-result-object v13

    .line 7174
    .local v13, issuer:Ljava/lang/String;
    if-nez v13, :cond_5

    .line 7176
    const-string v2, "DrmStore"

    const-string v3, "acquireRights (4) : Null issuer : -9"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7178
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 7179
    const/4 v2, 0x0

    goto :goto_0

    .line 7180
    :cond_5
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 7182
    const-string v2, "DrmStore"

    const-string v3, "acquireRights (5) : Empty issuer : -9"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7184
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 7185
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 7187
    :cond_6
    const-string v2, "\\"

    const-string v3, "/"

    invoke-virtual {v13, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 7189
    const-string v2, "DrmStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquireRights (6) : Right Issure = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 7193
    :try_start_1
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 7195
    .local v17, values:Landroid/content/ContentValues;
    const-string/jumbo v2, "uri"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7197
    const-string v2, "entity"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7199
    const-string/jumbo v2, "notificationpackage"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7201
    const-string/jumbo v2, "notificationclass"

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7203
    const-string/jumbo v2, "visibility"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7205
    const-string v2, "is_visible_in_downloads_ui"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 7210
    const-string/jumbo v2, "restriction"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7240
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v16

    move-object/from16 v2, v16

    .line 7254
    goto/16 :goto_0

    .line 7241
    .end local v17           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v10

    .line 7243
    .local v10, e:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "DrmStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquireRights (10) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7245
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 7246
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 7248
    .end local v9           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v10           #e:Ljava/lang/Exception;
    .end local v12           #fis:Ljava/io/InputStream;
    .end local v13           #issuer:Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 7250
    .restart local v10       #e:Ljava/lang/Exception;
    const-string v2, "DrmStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquireRights (11) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7252
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public static final addDrmFile(Landroid/content/ContentResolver;Ljava/io/File;Ljava/lang/String;)Landroid/content/Intent;
    .locals 8
    .parameter "cr"
    .parameter "file"
    .parameter "title"

    .prologue
    .line 328
    const-string v5, "DrmStore"

    const-string v6, " @@@@@     addDrmFile (1)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v1, 0x0

    .line 333
    .local v1, fis:Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 336
    .local v4, result:Landroid/content/Intent;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    .end local v1           #fis:Ljava/io/FileInputStream;
    .local v2, fis:Ljava/io/FileInputStream;
    if-nez p2, :cond_0

    .line 338
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    .line 339
    const/16 v5, 0x2e

    invoke-virtual {p2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 340
    .local v3, lastDot:I
    if-lez v3, :cond_0

    .line 341
    const/4 v5, 0x0

    invoke-virtual {p2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 344
    .end local v3           #lastDot:I
    :cond_0
    invoke-static {p0, v2, p2}, Landroid/provider/DrmStore;->addDrmFile(Landroid/content/ContentResolver;Ljava/io/FileInputStream;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v4

    .line 349
    if-eqz v2, :cond_1

    .line 350
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_0
    move-object v1, v2

    .line 356
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    return-object v4

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v5, "DrmStore"

    const-string/jumbo v6, "pushing file failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 349
    if-eqz v1, :cond_2

    .line 350
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 351
    :catch_1
    move-exception v0

    .line 352
    .local v0, e:Ljava/io/IOException;
    const-string v5, "DrmStore"

    const-string v6, "IOException in DrmStore.addDrmFile()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 348
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 349
    :goto_3
    if-eqz v1, :cond_3

    .line 350
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 348
    :cond_3
    :goto_4
    throw v5

    .line 351
    :catch_2
    move-exception v0

    .line 352
    .restart local v0       #e:Ljava/io/IOException;
    const-string v6, "DrmStore"

    const-string v7, "IOException in DrmStore.addDrmFile()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 351
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_3
    move-exception v0

    .line 352
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "DrmStore"

    const-string v6, "IOException in DrmStore.addDrmFile()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 348
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 345
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static final addDrmFile(Landroid/content/ContentResolver;Ljava/io/FileInputStream;Ljava/lang/String;)Landroid/content/Intent;
    .locals 22
    .parameter "cr"
    .parameter "fis"
    .parameter "title"

    .prologue
    .line 372
    const-string v19, "DrmStore"

    const-string v20, " @@@@@     addDrmFile (2)"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const/4 v10, 0x0

    .line 377
    .local v10, os:Ljava/io/OutputStream;
    const/4 v11, 0x0

    .line 380
    .local v11, result:Landroid/content/Intent;
    :try_start_0
    new-instance v4, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->available()I

    move-result v19

    const-string v20, "application/vnd.oma.drm.message"

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v4, v0, v1, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 382
    .local v4, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual {v4}, Landroid/drm/mobile1/DrmRawContent;->getContentType()Ljava/lang/String;

    move-result-object v9

    .line 384
    .local v9, mimeType:Ljava/lang/String;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v8

    .line 385
    .local v8, manager:Landroid/drm/mobile1/DrmRightsManager;
    invoke-virtual {v8, v4}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v13

    .line 386
    .local v13, rights:Landroid/drm/mobile1/DrmRights;
    invoke-virtual {v4, v13}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;

    move-result-object v16

    .line 387
    .local v16, stream:Ljava/io/InputStream;
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->available()I

    move-result v19

    move/from16 v0, v19

    int-to-long v14, v0

    .line 389
    .local v14, size:J
    const/4 v5, 0x0

    .line 390
    .local v5, contentUri:Landroid/net/Uri;
    const-string v19, "audio/"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 391
    sget-object v5, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    .line 398
    :goto_0
    if-eqz v5, :cond_7

    .line 399
    new-instance v18, Landroid/content/ContentValues;

    const/16 v19, 0x3

    invoke-direct/range {v18 .. v19}, Landroid/content/ContentValues;-><init>(I)V

    .line 400
    .local v18, values:Landroid/content/ContentValues;
    const-string/jumbo v19, "title"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string v19, "_size"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 402
    const-string/jumbo v19, "mime_type"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v17

    .line 405
    .local v17, uri:Landroid/net/Uri;
    if-eqz v17, :cond_7

    .line 406
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v10

    .line 408
    const/16 v19, 0x3e8

    move/from16 v0, v19

    new-array v3, v0, [B

    .line 411
    .local v3, buffer:[B
    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, count:I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v6, v0, :cond_6

    .line 412
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v10, v3, v0, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 419
    .end local v3           #buffer:[B
    .end local v4           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v5           #contentUri:Landroid/net/Uri;
    .end local v6           #count:I
    .end local v8           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v9           #mimeType:Ljava/lang/String;
    .end local v13           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v14           #size:J
    .end local v16           #stream:Ljava/io/InputStream;
    .end local v17           #uri:Landroid/net/Uri;
    .end local v18           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v7

    .line 420
    .local v7, e:Ljava/lang/Exception;
    :goto_2
    :try_start_1
    const-string v19, "DrmStore"

    const-string/jumbo v20, "pushing file failed"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 423
    if-eqz p1, :cond_0

    .line 424
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V

    .line 425
    :cond_0
    if-eqz v10, :cond_1

    .line 426
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 432
    .end local v7           #e:Ljava/lang/Exception;
    :cond_1
    :goto_3
    return-object v11

    .line 392
    .restart local v4       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v5       #contentUri:Landroid/net/Uri;
    .restart local v8       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v9       #mimeType:Ljava/lang/String;
    .restart local v13       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v14       #size:J
    .restart local v16       #stream:Ljava/io/InputStream;
    :cond_2
    :try_start_3
    const-string v19, "image/"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 393
    sget-object v5, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 395
    :cond_3
    const-string v19, "DrmStore"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "unsupported mime type "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 422
    .end local v4           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v5           #contentUri:Landroid/net/Uri;
    .end local v8           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v9           #mimeType:Ljava/lang/String;
    .end local v13           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v14           #size:J
    .end local v16           #stream:Ljava/io/InputStream;
    :catchall_0
    move-exception v19

    .line 423
    :goto_4
    if-eqz p1, :cond_4

    .line 424
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V

    .line 425
    :cond_4
    if-eqz v10, :cond_5

    .line 426
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 422
    :cond_5
    :goto_5
    throw v19

    .line 414
    .restart local v3       #buffer:[B
    .restart local v4       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v5       #contentUri:Landroid/net/Uri;
    .restart local v6       #count:I
    .restart local v8       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v9       #mimeType:Ljava/lang/String;
    .restart local v13       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v14       #size:J
    .restart local v16       #stream:Ljava/io/InputStream;
    .restart local v17       #uri:Landroid/net/Uri;
    .restart local v18       #values:Landroid/content/ContentValues;
    :cond_6
    :try_start_5
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 415
    .end local v11           #result:Landroid/content/Intent;
    .local v12, result:Landroid/content/Intent;
    :try_start_6
    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move-object v11, v12

    .line 423
    .end local v3           #buffer:[B
    .end local v6           #count:I
    .end local v12           #result:Landroid/content/Intent;
    .end local v17           #uri:Landroid/net/Uri;
    .end local v18           #values:Landroid/content/ContentValues;
    .restart local v11       #result:Landroid/content/Intent;
    :cond_7
    if-eqz p1, :cond_8

    .line 424
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V

    .line 425
    :cond_8
    if-eqz v10, :cond_1

    .line 426
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 427
    :catch_1
    move-exception v7

    .line 428
    .local v7, e:Ljava/io/IOException;
    const-string v19, "DrmStore"

    const-string v20, "IOException in DrmStore.addDrmFile()"

    .end local v4           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v5           #contentUri:Landroid/net/Uri;
    .end local v8           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v9           #mimeType:Ljava/lang/String;
    .end local v13           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v14           #size:J
    .end local v16           #stream:Ljava/io/InputStream;
    :goto_6
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 427
    .end local v7           #e:Ljava/io/IOException;
    :catch_2
    move-exception v7

    .line 428
    .restart local v7       #e:Ljava/io/IOException;
    const-string v20, "DrmStore"

    const-string v21, "IOException in DrmStore.addDrmFile()"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 427
    .local v7, e:Ljava/lang/Exception;
    :catch_3
    move-exception v7

    .line 428
    .local v7, e:Ljava/io/IOException;
    const-string v19, "DrmStore"

    const-string v20, "IOException in DrmStore.addDrmFile()"

    goto :goto_6

    .line 422
    .end local v7           #e:Ljava/io/IOException;
    .end local v11           #result:Landroid/content/Intent;
    .restart local v3       #buffer:[B
    .restart local v4       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v5       #contentUri:Landroid/net/Uri;
    .restart local v6       #count:I
    .restart local v8       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v9       #mimeType:Ljava/lang/String;
    .restart local v12       #result:Landroid/content/Intent;
    .restart local v13       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v14       #size:J
    .restart local v16       #stream:Ljava/io/InputStream;
    .restart local v17       #uri:Landroid/net/Uri;
    .restart local v18       #values:Landroid/content/ContentValues;
    :catchall_1
    move-exception v19

    move-object v11, v12

    .end local v12           #result:Landroid/content/Intent;
    .restart local v11       #result:Landroid/content/Intent;
    goto :goto_4

    .line 419
    .end local v11           #result:Landroid/content/Intent;
    .restart local v12       #result:Landroid/content/Intent;
    :catch_4
    move-exception v7

    move-object v11, v12

    .end local v12           #result:Landroid/content/Intent;
    .restart local v11       #result:Landroid/content/Intent;
    goto/16 :goto_2
.end method

.method public static final addDrmFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 48
    .parameter "cx"
    .parameter "file"
    .parameter "title"
    .parameter "mediaType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 834
    const-string v7, "DrmStore"

    const-string v8, "********addDrmFile (deprecated)"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p3, :cond_2

    .line 839
    :cond_0
    const-string v7, "DrmStore"

    const-string v8, "addDrmFile input error."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    const/16 v34, 0x0

    .line 1161
    :cond_1
    :goto_0
    return-object v34

    .line 844
    :cond_2
    const/16 v34, 0x0

    .line 845
    .local v34, intent:Landroid/content/Intent;
    const/16 v31, 0x0

    .line 848
    .local v31, fin:Ljava/io/FileInputStream;
    const-string v7, "application/vnd.oma.drm.rights+wbxml"

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "application/vnd.oma.drm.rights+wbxml"

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 851
    :cond_3
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/provider/DrmStore;->installRightsObject(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 852
    .local v45, uid:Ljava/lang/String;
    if-eqz v45, :cond_1

    .line 854
    const-string v7, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Install rights : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v45

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    new-instance v34, Landroid/content/Intent;

    .end local v34           #intent:Landroid/content/Intent;
    invoke-direct/range {v34 .. v34}, Landroid/content/Intent;-><init>()V

    .line 857
    .restart local v34       #intent:Landroid/content/Intent;
    const-string v7, "DRM Rights"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    move-object/from16 v0, v34

    move-object/from16 v1, p3

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 862
    .end local v45           #uid:Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 864
    .local v5, cr:Landroid/content/ContentResolver;
    const/16 v29, 0x0

    .line 865
    .local v29, fileName:Ljava/lang/String;
    if-nez p2, :cond_6

    .line 866
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v29

    .line 872
    :goto_1
    const-string v7, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Add DRM file : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :try_start_0
    new-instance v32, Ljava/io/FileInputStream;

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d

    .line 878
    .end local v31           #fin:Ljava/io/FileInputStream;
    .local v32, fin:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v17, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->available()I

    move-result v7

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v7, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 880
    .local v17, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual/range {v17 .. v17}, Landroid/drm/mobile1/DrmRawContent;->getContentType()Ljava/lang/String;

    move-result-object v37

    .line 882
    .local v37, mimeType:Ljava/lang/String;
    const-string v7, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mimeType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    invoke-virtual/range {v17 .. v17}, Landroid/drm/mobile1/DrmRawContent;->getRawType()I

    move-result v36

    .line 887
    .local v36, method:I
    const-string v7, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "method = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/drm/mobile1/DrmRawContent;->getContentOffset(Landroid/drm/mobile1/DrmRights;)I

    move-result v18

    .line 891
    .local v18, contentOffset:I
    const-string v19, ""

    .line 893
    .local v19, contentUid:Ljava/lang/String;
    const/4 v6, 0x0

    .line 896
    .local v6, contentUri:Landroid/net/Uri;
    const-string v7, "audio/"

    move-object/from16 v0, v37

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 897
    sget-object v6, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    .line 913
    :goto_2
    const/16 v27, 0x0

    .line 914
    .local v27, duplicate:Z
    const/16 v39, 0x0

    .line 915
    .local v39, overwrite:Z
    const/16 v46, 0x0

    .line 916
    .local v46, uri:Landroid/net/Uri;
    sget-object v7, Landroid/provider/DrmStore;->TITLE_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v8, "title=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v29, v9, v10

    const-string v10, "_id"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 917
    .local v14, c:Landroid/database/Cursor;
    if-eqz v14, :cond_17

    .line 918
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_5

    .line 920
    const-string v7, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " duplicated."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 924
    const-string v7, "_id"

    invoke-interface {v14, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 925
    .local v16, columnIdIndex:I
    move/from16 v0, v16

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 926
    .local v15, columnId:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v46

    .line 927
    new-instance v35, Landroid/content/Intent;

    invoke-direct/range {v35 .. v35}, Landroid/content/Intent;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 928
    .end local v34           #intent:Landroid/content/Intent;
    .local v35, intent:Landroid/content/Intent;
    :try_start_2
    move-object/from16 v0, v35

    move-object/from16 v1, v46

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 929
    const/16 v27, 0x1

    .line 930
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 937
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/provider/DrmStore;->getExternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 940
    .local v30, filePath:Ljava/lang/String;
    const-string v7, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Check file path: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    new-instance v26, Ljava/io/File;

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 944
    .local v26, dupFile:Ljava/io/File;
    new-instance v22, Landroid/content/ContentValues;

    const/4 v7, 0x3

    move-object/from16 v0, v22

    invoke-direct {v0, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 946
    .local v22, cv:Landroid/content/ContentValues;
    sget-object v8, Landroid/provider/DrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v9, Landroid/provider/DrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "_id"

    move-object v7, v5

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v40

    .line 947
    .local v40, stampCursor:Landroid/database/Cursor;
    if-eqz v40, :cond_c

    .line 948
    invoke-interface/range {v40 .. v40}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 954
    const-string/jumbo v7, "time_differential"

    move-object/from16 v0, v40

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 955
    .local v25, differentialColumnId:I
    move-object/from16 v0, v40

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 956
    .local v23, differential:J
    const-string/jumbo v7, "timezone_stamp"

    invoke-interface {v14, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v44

    .line 957
    .local v44, timeZoneColumnIndex:I
    move/from16 v0, v44

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 958
    .local v42, timeZone:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 959
    .local v20, currentClock:J
    const-string v7, "date_modified"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 960
    const-string v7, "date_added"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 965
    .end local v20           #currentClock:J
    .end local v23           #differential:J
    .end local v25           #differentialColumnId:I
    .end local v42           #timeZone:J
    .end local v44           #timeZoneColumnIndex:I
    :goto_3
    invoke-interface/range {v40 .. v40}, Landroid/database/Cursor;->close()V

    .line 971
    :goto_4
    const/16 v39, 0x1

    .line 973
    const-string v7, "existence"

    const-string v8, "exist"

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v34, v35

    .line 976
    .end local v15           #columnId:I
    .end local v16           #columnIdIndex:I
    .end local v22           #cv:Landroid/content/ContentValues;
    .end local v26           #dupFile:Ljava/io/File;
    .end local v30           #filePath:Ljava/lang/String;
    .end local v35           #intent:Landroid/content/Intent;
    .end local v40           #stampCursor:Landroid/database/Cursor;
    .restart local v34       #intent:Landroid/content/Intent;
    :cond_5
    :try_start_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 978
    if-eqz v27, :cond_e

    if-nez v39, :cond_e

    .line 979
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V

    .line 981
    const-string v7, "DrmStore"

    const-string v8, "File is duplicated and exist."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 1152
    if-eqz v32, :cond_1

    .line 1153
    :try_start_4
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 1155
    :catch_0
    move-exception v28

    .line 1157
    .local v28, e:Ljava/lang/Exception;
    const-string v7, "DrmStore"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    .end local v6           #contentUri:Landroid/net/Uri;
    .end local v14           #c:Landroid/database/Cursor;
    .end local v17           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v18           #contentOffset:I
    .end local v19           #contentUid:Ljava/lang/String;
    .end local v27           #duplicate:Z
    .end local v32           #fin:Ljava/io/FileInputStream;
    .end local v34           #intent:Landroid/content/Intent;
    .end local v36           #method:I
    .end local v37           #mimeType:Ljava/lang/String;
    .end local v39           #overwrite:Z
    .end local v46           #uri:Landroid/net/Uri;
    :goto_5
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 868
    .end local v28           #e:Ljava/lang/Exception;
    .restart local v31       #fin:Ljava/io/FileInputStream;
    .restart local v34       #intent:Landroid/content/Intent;
    :cond_6
    move-object/from16 v29, p2

    goto/16 :goto_1

    .line 898
    .end local v31           #fin:Ljava/io/FileInputStream;
    .restart local v6       #contentUri:Landroid/net/Uri;
    .restart local v17       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v18       #contentOffset:I
    .restart local v19       #contentUid:Ljava/lang/String;
    .restart local v32       #fin:Ljava/io/FileInputStream;
    .restart local v36       #method:I
    .restart local v37       #mimeType:Ljava/lang/String;
    :cond_7
    :try_start_5
    const-string v7, "image/"

    move-object/from16 v0, v37

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 899
    sget-object v6, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_2

    .line 900
    :cond_8
    const-string/jumbo v7, "video/"

    move-object/from16 v0, v37

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 901
    sget-object v6, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_2

    .line 902
    :cond_9
    const-string v7, "application/java-archive"

    move-object/from16 v0, v37

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 903
    sget-object v6, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_2

    .line 906
    :cond_a
    const-string v7, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported mime type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 909
    const/16 v34, 0x0

    .line 1152
    .end local v34           #intent:Landroid/content/Intent;
    if-eqz v32, :cond_1

    .line 1153
    :try_start_6
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 1155
    :catch_1
    move-exception v28

    .line 1157
    .restart local v28       #e:Ljava/lang/Exception;
    const-string v7, "DrmStore"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    .line 962
    .end local v28           #e:Ljava/lang/Exception;
    .restart local v14       #c:Landroid/database/Cursor;
    .restart local v15       #columnId:I
    .restart local v16       #columnIdIndex:I
    .restart local v22       #cv:Landroid/content/ContentValues;
    .restart local v26       #dupFile:Ljava/io/File;
    .restart local v27       #duplicate:Z
    .restart local v30       #filePath:Ljava/lang/String;
    .restart local v35       #intent:Landroid/content/Intent;
    .restart local v39       #overwrite:Z
    .restart local v40       #stampCursor:Landroid/database/Cursor;
    .restart local v46       #uri:Landroid/net/Uri;
    :cond_b
    :try_start_7
    const-string v7, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 963
    const-string v7, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_3

    .line 1146
    .end local v15           #columnId:I
    .end local v16           #columnIdIndex:I
    .end local v22           #cv:Landroid/content/ContentValues;
    .end local v26           #dupFile:Ljava/io/File;
    .end local v30           #filePath:Ljava/lang/String;
    .end local v40           #stampCursor:Landroid/database/Cursor;
    :catch_2
    move-exception v28

    move-object/from16 v31, v32

    .end local v32           #fin:Ljava/io/FileInputStream;
    .restart local v31       #fin:Ljava/io/FileInputStream;
    move-object/from16 v34, v35

    .line 1148
    .end local v6           #contentUri:Landroid/net/Uri;
    .end local v14           #c:Landroid/database/Cursor;
    .end local v17           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v18           #contentOffset:I
    .end local v19           #contentUid:Ljava/lang/String;
    .end local v27           #duplicate:Z
    .end local v35           #intent:Landroid/content/Intent;
    .end local v36           #method:I
    .end local v37           #mimeType:Ljava/lang/String;
    .end local v39           #overwrite:Z
    .end local v46           #uri:Landroid/net/Uri;
    .restart local v28       #e:Ljava/lang/Exception;
    .restart local v34       #intent:Landroid/content/Intent;
    :goto_6
    :try_start_8
    const-string v7, "DrmStore"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 1152
    if-eqz v31, :cond_1

    .line 1153
    :try_start_9
    invoke-virtual/range {v31 .. v31}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_0

    .line 1155
    :catch_3
    move-exception v28

    .line 1157
    const-string v7, "DrmStore"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_5

    .line 967
    .end local v28           #e:Ljava/lang/Exception;
    .end local v31           #fin:Ljava/io/FileInputStream;
    .end local v34           #intent:Landroid/content/Intent;
    .restart local v6       #contentUri:Landroid/net/Uri;
    .restart local v14       #c:Landroid/database/Cursor;
    .restart local v15       #columnId:I
    .restart local v16       #columnIdIndex:I
    .restart local v17       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v18       #contentOffset:I
    .restart local v19       #contentUid:Ljava/lang/String;
    .restart local v22       #cv:Landroid/content/ContentValues;
    .restart local v26       #dupFile:Ljava/io/File;
    .restart local v27       #duplicate:Z
    .restart local v30       #filePath:Ljava/lang/String;
    .restart local v32       #fin:Ljava/io/FileInputStream;
    .restart local v35       #intent:Landroid/content/Intent;
    .restart local v36       #method:I
    .restart local v37       #mimeType:Ljava/lang/String;
    .restart local v39       #overwrite:Z
    .restart local v40       #stampCursor:Landroid/database/Cursor;
    .restart local v46       #uri:Landroid/net/Uri;
    :cond_c
    :try_start_a
    const-string v7, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 968
    const-string v7, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_4

    .line 1151
    .end local v15           #columnId:I
    .end local v16           #columnIdIndex:I
    .end local v22           #cv:Landroid/content/ContentValues;
    .end local v26           #dupFile:Ljava/io/File;
    .end local v30           #filePath:Ljava/lang/String;
    .end local v40           #stampCursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v7

    move-object/from16 v31, v32

    .end local v32           #fin:Ljava/io/FileInputStream;
    .restart local v31       #fin:Ljava/io/FileInputStream;
    move-object/from16 v34, v35

    .line 1152
    .end local v6           #contentUri:Landroid/net/Uri;
    .end local v14           #c:Landroid/database/Cursor;
    .end local v17           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v18           #contentOffset:I
    .end local v19           #contentUid:Ljava/lang/String;
    .end local v27           #duplicate:Z
    .end local v35           #intent:Landroid/content/Intent;
    .end local v36           #method:I
    .end local v37           #mimeType:Ljava/lang/String;
    .end local v39           #overwrite:Z
    .end local v46           #uri:Landroid/net/Uri;
    .restart local v34       #intent:Landroid/content/Intent;
    :goto_7
    if-eqz v31, :cond_d

    .line 1153
    :try_start_b
    invoke-virtual/range {v31 .. v31}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 1151
    :cond_d
    :goto_8
    throw v7

    .line 984
    .end local v31           #fin:Ljava/io/FileInputStream;
    .restart local v6       #contentUri:Landroid/net/Uri;
    .restart local v14       #c:Landroid/database/Cursor;
    .restart local v17       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v18       #contentOffset:I
    .restart local v19       #contentUid:Ljava/lang/String;
    .restart local v27       #duplicate:Z
    .restart local v32       #fin:Ljava/io/FileInputStream;
    .restart local v36       #method:I
    .restart local v37       #mimeType:Ljava/lang/String;
    .restart local v39       #overwrite:Z
    .restart local v46       #uri:Landroid/net/Uri;
    :cond_e
    if-eqz v27, :cond_16

    if-eqz v39, :cond_16

    .line 986
    :try_start_c
    const-string v7, "DrmStore"

    const-string v8, "Overwrite the file."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    invoke-static/range {v37 .. v37}, Landroid/provider/DrmStore;->NeedToEncrypt(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_f

    const/4 v7, 0x3

    move/from16 v0, v36

    if-ne v0, v7, :cond_14

    .line 993
    :cond_f
    new-instance v41, Ljava/io/FileInputStream;

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 996
    .local v41, stream:Ljava/io/FileInputStream;
    new-instance v38, Ljava/io/FileOutputStream;

    move-object/from16 v0, v46

    invoke-static {v5, v0}, Landroid/provider/DrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v38

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    .line 998
    .local v38, os:Ljava/io/FileOutputStream;
    if-eqz v38, :cond_10

    .line 999
    :try_start_d
    move-object/from16 v0, v41

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/provider/DrmStore;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1002
    :cond_10
    if-eqz v38, :cond_11

    .line 1003
    :try_start_e
    invoke-virtual/range {v38 .. v38}, Ljava/io/FileOutputStream;->close()V

    .line 1006
    :cond_11
    invoke-virtual/range {v41 .. v41}, Ljava/io/FileInputStream;->close()V

    .line 1022
    .end local v38           #os:Ljava/io/FileOutputStream;
    .end local v41           #stream:Ljava/io/FileInputStream;
    :cond_12
    :goto_9
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    .line 1152
    if-eqz v32, :cond_1

    .line 1153
    :try_start_f
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    goto/16 :goto_0

    .line 1155
    :catch_4
    move-exception v28

    .line 1157
    .restart local v28       #e:Ljava/lang/Exception;
    const-string v7, "DrmStore"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_5

    .line 1002
    .end local v28           #e:Ljava/lang/Exception;
    .restart local v38       #os:Ljava/io/FileOutputStream;
    .restart local v41       #stream:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    if-eqz v38, :cond_13

    .line 1003
    :try_start_10
    invoke-virtual/range {v38 .. v38}, Ljava/io/FileOutputStream;->close()V

    .line 1002
    :cond_13
    throw v7

    .line 1146
    .end local v6           #contentUri:Landroid/net/Uri;
    .end local v14           #c:Landroid/database/Cursor;
    .end local v17           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v18           #contentOffset:I
    .end local v19           #contentUid:Ljava/lang/String;
    .end local v27           #duplicate:Z
    .end local v36           #method:I
    .end local v37           #mimeType:Ljava/lang/String;
    .end local v38           #os:Ljava/io/FileOutputStream;
    .end local v39           #overwrite:Z
    .end local v41           #stream:Ljava/io/FileInputStream;
    .end local v46           #uri:Landroid/net/Uri;
    :catch_5
    move-exception v28

    move-object/from16 v31, v32

    .end local v32           #fin:Ljava/io/FileInputStream;
    .restart local v31       #fin:Ljava/io/FileInputStream;
    goto/16 :goto_6

    .line 1007
    .end local v31           #fin:Ljava/io/FileInputStream;
    .restart local v6       #contentUri:Landroid/net/Uri;
    .restart local v14       #c:Landroid/database/Cursor;
    .restart local v17       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v18       #contentOffset:I
    .restart local v19       #contentUid:Ljava/lang/String;
    .restart local v27       #duplicate:Z
    .restart local v32       #fin:Ljava/io/FileInputStream;
    .restart local v36       #method:I
    .restart local v37       #mimeType:Ljava/lang/String;
    .restart local v39       #overwrite:Z
    .restart local v46       #uri:Landroid/net/Uri;
    :cond_14
    const-string v7, "application/vnd.oma.drm.message"

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1010
    new-instance v38, Ljava/io/FileOutputStream;

    move-object/from16 v0, v46

    invoke-static {v5, v0}, Landroid/provider/DrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v38

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5

    .line 1011
    .restart local v38       #os:Ljava/io/FileOutputStream;
    if-eqz v38, :cond_12

    .line 1013
    :try_start_11
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v38

    invoke-static {v0, v1, v2}, Landroid/provider/DrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/io/FileOutputStream;)I

    .line 1014
    const/4 v7, 0x2

    move/from16 v0, v36

    if-ne v0, v7, :cond_15

    .line 1015
    const-string v7, "application/vnd.oma.drm.message"

    move-object/from16 v0, p1

    invoke-static {v0, v7}, Landroid/provider/DrmStore;->installRightsObject(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 1018
    :cond_15
    :try_start_12
    invoke-virtual/range {v38 .. v38}, Ljava/io/FileOutputStream;->close()V

    goto :goto_9

    .line 1151
    .end local v6           #contentUri:Landroid/net/Uri;
    .end local v14           #c:Landroid/database/Cursor;
    .end local v17           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v18           #contentOffset:I
    .end local v19           #contentUid:Ljava/lang/String;
    .end local v27           #duplicate:Z
    .end local v36           #method:I
    .end local v37           #mimeType:Ljava/lang/String;
    .end local v38           #os:Ljava/io/FileOutputStream;
    .end local v39           #overwrite:Z
    .end local v46           #uri:Landroid/net/Uri;
    :catchall_2
    move-exception v7

    move-object/from16 v31, v32

    .end local v32           #fin:Ljava/io/FileInputStream;
    .restart local v31       #fin:Ljava/io/FileInputStream;
    goto/16 :goto_7

    .line 1018
    .end local v31           #fin:Ljava/io/FileInputStream;
    .restart local v6       #contentUri:Landroid/net/Uri;
    .restart local v14       #c:Landroid/database/Cursor;
    .restart local v17       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v18       #contentOffset:I
    .restart local v19       #contentUid:Ljava/lang/String;
    .restart local v27       #duplicate:Z
    .restart local v32       #fin:Ljava/io/FileInputStream;
    .restart local v36       #method:I
    .restart local v37       #mimeType:Ljava/lang/String;
    .restart local v38       #os:Ljava/io/FileOutputStream;
    .restart local v39       #overwrite:Z
    .restart local v46       #uri:Landroid/net/Uri;
    :catchall_3
    move-exception v7

    invoke-virtual/range {v38 .. v38}, Ljava/io/FileOutputStream;->close()V

    throw v7

    .line 1026
    .end local v38           #os:Ljava/io/FileOutputStream;
    :cond_16
    const-string v7, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Prepare to install: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5

    :cond_17
    move-object/from16 v35, v34

    .line 1031
    .end local v34           #intent:Landroid/content/Intent;
    .restart local v35       #intent:Landroid/content/Intent;
    :try_start_13
    new-instance v22, Landroid/content/ContentValues;

    const/16 v7, 0xb

    move-object/from16 v0, v22

    invoke-direct {v0, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 1032
    .restart local v22       #cv:Landroid/content/ContentValues;
    const-string v7, "_size"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1033
    const-string/jumbo v7, "title"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    const-string/jumbo v7, "mime_type"

    move-object/from16 v0, v22

    move-object/from16 v1, v37

    invoke-virtual {v0, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    const-string/jumbo v7, "message_type"

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    const-string v7, "delivery_type"

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1037
    const-string v7, "content_offset"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1040
    sget-object v8, Landroid/provider/DrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v9, Landroid/provider/DrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "_id"

    move-object v7, v5

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v40

    .line 1041
    .restart local v40       #stampCursor:Landroid/database/Cursor;
    if-eqz v40, :cond_19

    .line 1042
    invoke-interface/range {v40 .. v40}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_18

    .line 1048
    const-string/jumbo v7, "time_differential"

    move-object/from16 v0, v40

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 1049
    .restart local v25       #differentialColumnId:I
    move-object/from16 v0, v40

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 1050
    .restart local v23       #differential:J
    const-string/jumbo v7, "timezone_stamp"

    move-object/from16 v0, v40

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v44

    .line 1051
    .restart local v44       #timeZoneColumnIndex:I
    move-object/from16 v0, v40

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 1052
    .restart local v42       #timeZone:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 1053
    .restart local v20       #currentClock:J
    const-string v7, "date_added"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1057
    .end local v20           #currentClock:J
    .end local v23           #differential:J
    .end local v25           #differentialColumnId:I
    .end local v42           #timeZone:J
    .end local v44           #timeZoneColumnIndex:I
    :goto_a
    invoke-interface/range {v40 .. v40}, Landroid/database/Cursor;->close()V

    .line 1063
    :goto_b
    move-object/from16 v0, v22

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v46

    .line 1064
    if-nez v46, :cond_1a

    .line 1066
    const-string v7, "DrmStore"

    const-string v8, "Insert DRM db failed."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2

    .line 1069
    const/16 v34, 0x0

    .line 1152
    if-eqz v32, :cond_1

    .line 1153
    :try_start_14
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6

    goto/16 :goto_0

    .line 1155
    :catch_6
    move-exception v28

    .line 1157
    .restart local v28       #e:Ljava/lang/Exception;
    const-string v7, "DrmStore"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_5

    .line 1055
    .end local v28           #e:Ljava/lang/Exception;
    :cond_18
    :try_start_15
    const-string v7, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_a

    .line 1059
    :cond_19
    const-string v7, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_b

    .line 1071
    :cond_1a
    const/4 v13, 0x0

    .line 1074
    .local v13, boundary_length:I
    invoke-static/range {v37 .. v37}, Landroid/provider/DrmStore;->NeedToEncrypt(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1b

    const/4 v7, 0x3

    move/from16 v0, v36

    if-ne v0, v7, :cond_1f

    .line 1076
    :cond_1b
    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/drm/mobile1/DrmRawContent;->getContentId(Landroid/drm/mobile1/DrmRights;)Ljava/lang/String;

    move-result-object v19

    .line 1077
    new-instance v41, Ljava/io/FileInputStream;

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1080
    .restart local v41       #stream:Ljava/io/FileInputStream;
    new-instance v38, Ljava/io/FileOutputStream;

    move-object/from16 v0, v46

    invoke-static {v5, v0}, Landroid/provider/DrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v38

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1081
    .restart local v38       #os:Ljava/io/FileOutputStream;
    if-nez v38, :cond_1c

    .line 1083
    const-string v7, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "openOutputStream from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v46 .. v46}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " return null."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    invoke-virtual/range {v41 .. v41}, Ljava/io/FileInputStream;->close()V

    .line 1086
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_2

    .line 1087
    const/16 v34, 0x0

    .line 1152
    if-eqz v32, :cond_1

    .line 1153
    :try_start_16
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_7

    goto/16 :goto_0

    .line 1155
    :catch_7
    move-exception v28

    .line 1157
    .restart local v28       #e:Ljava/lang/Exception;
    const-string v7, "DrmStore"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_5

    .line 1090
    .end local v28           #e:Ljava/lang/Exception;
    :cond_1c
    :try_start_17
    move-object/from16 v0, v41

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/provider/DrmStore;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    .line 1092
    :try_start_18
    invoke-virtual/range {v41 .. v41}, Ljava/io/FileInputStream;->close()V

    .line 1093
    invoke-virtual/range {v38 .. v38}, Ljava/io/FileOutputStream;->close()V

    .line 1131
    .end local v38           #os:Ljava/io/FileOutputStream;
    .end local v41           #stream:Ljava/io/FileInputStream;
    :goto_c
    const-string v7, "audio"

    move-object/from16 v0, v37

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 1132
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, v37

    move-object/from16 v4, v46

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/DrmStore;->parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/ContentValues;

    move-result-object v47

    .line 1133
    .local v47, values:Landroid/content/ContentValues;
    if-eqz v47, :cond_1d

    .line 1134
    const-string v7, "album_id"

    const-string v8, "album_id"

    move-object/from16 v0, v47

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1135
    const-string v7, "artist_id"

    const-string v8, "artist_id"

    move-object/from16 v0, v47

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1139
    .end local v47           #values:Landroid/content/ContentValues;
    :cond_1d
    const-string v7, "content_id"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    const-string v7, "content_boundary_offset"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1142
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1144
    new-instance v34, Landroid/content/Intent;

    invoke-direct/range {v34 .. v34}, Landroid/content/Intent;-><init>()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_2

    .line 1145
    .end local v35           #intent:Landroid/content/Intent;
    .restart local v34       #intent:Landroid/content/Intent;
    :try_start_19
    move-object/from16 v0, v34

    move-object/from16 v1, v46

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_5

    .line 1152
    if-eqz v32, :cond_1e

    .line 1153
    :try_start_1a
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_c

    :cond_1e
    :goto_d
    move-object/from16 v31, v32

    .line 1160
    .end local v32           #fin:Ljava/io/FileInputStream;
    .restart local v31       #fin:Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 1092
    .end local v31           #fin:Ljava/io/FileInputStream;
    .end local v34           #intent:Landroid/content/Intent;
    .restart local v32       #fin:Ljava/io/FileInputStream;
    .restart local v35       #intent:Landroid/content/Intent;
    .restart local v38       #os:Ljava/io/FileOutputStream;
    .restart local v41       #stream:Ljava/io/FileInputStream;
    :catchall_4
    move-exception v7

    :try_start_1b
    invoke-virtual/range {v41 .. v41}, Ljava/io/FileInputStream;->close()V

    .line 1093
    invoke-virtual/range {v38 .. v38}, Ljava/io/FileOutputStream;->close()V

    .line 1092
    throw v7

    .line 1095
    .end local v38           #os:Ljava/io/FileOutputStream;
    .end local v41           #stream:Ljava/io/FileInputStream;
    :cond_1f
    const/4 v7, 0x1

    move/from16 v0, v36

    if-ne v0, v7, :cond_21

    .line 1098
    new-instance v33, Ljava/io/FileOutputStream;

    move-object/from16 v0, v46

    invoke-static {v5, v0}, Landroid/provider/DrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v33

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1099
    .local v33, fl_os:Ljava/io/FileOutputStream;
    if-eqz v33, :cond_20

    .line 1100
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/DrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/io/FileOutputStream;)I

    move-result v13

    .line 1101
    invoke-virtual/range {v33 .. v33}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_c

    .line 1103
    :cond_20
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_2

    .line 1104
    const/16 v34, 0x0

    .line 1152
    if-eqz v32, :cond_1

    .line 1153
    :try_start_1c
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_8

    goto/16 :goto_0

    .line 1155
    :catch_8
    move-exception v28

    .line 1157
    .restart local v28       #e:Ljava/lang/Exception;
    const-string v7, "DrmStore"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_5

    .line 1106
    .end local v28           #e:Ljava/lang/Exception;
    .end local v33           #fl_os:Ljava/io/FileOutputStream;
    :cond_21
    const/4 v7, 0x2

    move/from16 v0, v36

    if-ne v0, v7, :cond_23

    .line 1107
    :try_start_1d
    const-string v7, "application/vnd.oma.drm.message"

    move-object/from16 v0, p1

    invoke-static {v0, v7}, Landroid/provider/DrmStore;->installRightsObject(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_22

    .line 1109
    const-string v7, "DrmStore"

    const-string v8, "Install rights of combine delivery failed."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_2

    .line 1112
    const/16 v34, 0x0

    .line 1152
    if-eqz v32, :cond_1

    .line 1153
    :try_start_1e
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_9

    goto/16 :goto_0

    .line 1155
    :catch_9
    move-exception v28

    .line 1157
    .restart local v28       #e:Ljava/lang/Exception;
    const-string v7, "DrmStore"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_5

    .line 1116
    .end local v28           #e:Ljava/lang/Exception;
    :cond_22
    :try_start_1f
    new-instance v38, Ljava/io/FileOutputStream;

    move-object/from16 v0, v46

    invoke-static {v5, v0}, Landroid/provider/DrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v38

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_2

    .line 1118
    .restart local v38       #os:Ljava/io/FileOutputStream;
    :try_start_20
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v38

    invoke-static {v0, v1, v2}, Landroid/provider/DrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/io/FileOutputStream;)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_5

    move-result v13

    .line 1120
    :try_start_21
    invoke-virtual/range {v38 .. v38}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_c

    :catchall_5
    move-exception v7

    invoke-virtual/range {v38 .. v38}, Ljava/io/FileOutputStream;->close()V

    throw v7

    .line 1124
    .end local v38           #os:Ljava/io/FileOutputStream;
    :cond_23
    const-string v7, "DrmStore"

    const-string v8, "Unknown method."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_2

    .line 1127
    const/16 v34, 0x0

    .line 1152
    if-eqz v32, :cond_1

    .line 1153
    :try_start_22
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_a

    goto/16 :goto_0

    .line 1155
    :catch_a
    move-exception v28

    .line 1157
    .restart local v28       #e:Ljava/lang/Exception;
    const-string v7, "DrmStore"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_5

    .line 1155
    .end local v6           #contentUri:Landroid/net/Uri;
    .end local v13           #boundary_length:I
    .end local v14           #c:Landroid/database/Cursor;
    .end local v17           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v18           #contentOffset:I
    .end local v19           #contentUid:Ljava/lang/String;
    .end local v22           #cv:Landroid/content/ContentValues;
    .end local v27           #duplicate:Z
    .end local v28           #e:Ljava/lang/Exception;
    .end local v32           #fin:Ljava/io/FileInputStream;
    .end local v35           #intent:Landroid/content/Intent;
    .end local v36           #method:I
    .end local v37           #mimeType:Ljava/lang/String;
    .end local v39           #overwrite:Z
    .end local v40           #stampCursor:Landroid/database/Cursor;
    .end local v46           #uri:Landroid/net/Uri;
    .restart local v31       #fin:Ljava/io/FileInputStream;
    .restart local v34       #intent:Landroid/content/Intent;
    :catch_b
    move-exception v28

    .line 1157
    .restart local v28       #e:Ljava/lang/Exception;
    const-string v8, "DrmStore"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1155
    .end local v28           #e:Ljava/lang/Exception;
    .end local v31           #fin:Ljava/io/FileInputStream;
    .restart local v6       #contentUri:Landroid/net/Uri;
    .restart local v13       #boundary_length:I
    .restart local v14       #c:Landroid/database/Cursor;
    .restart local v17       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v18       #contentOffset:I
    .restart local v19       #contentUid:Ljava/lang/String;
    .restart local v22       #cv:Landroid/content/ContentValues;
    .restart local v27       #duplicate:Z
    .restart local v32       #fin:Ljava/io/FileInputStream;
    .restart local v36       #method:I
    .restart local v37       #mimeType:Ljava/lang/String;
    .restart local v39       #overwrite:Z
    .restart local v40       #stampCursor:Landroid/database/Cursor;
    .restart local v46       #uri:Landroid/net/Uri;
    :catch_c
    move-exception v28

    .line 1157
    .restart local v28       #e:Ljava/lang/Exception;
    const-string v7, "DrmStore"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 1151
    .end local v6           #contentUri:Landroid/net/Uri;
    .end local v13           #boundary_length:I
    .end local v14           #c:Landroid/database/Cursor;
    .end local v17           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v18           #contentOffset:I
    .end local v19           #contentUid:Ljava/lang/String;
    .end local v22           #cv:Landroid/content/ContentValues;
    .end local v27           #duplicate:Z
    .end local v28           #e:Ljava/lang/Exception;
    .end local v32           #fin:Ljava/io/FileInputStream;
    .end local v36           #method:I
    .end local v37           #mimeType:Ljava/lang/String;
    .end local v39           #overwrite:Z
    .end local v40           #stampCursor:Landroid/database/Cursor;
    .end local v46           #uri:Landroid/net/Uri;
    .restart local v31       #fin:Ljava/io/FileInputStream;
    :catchall_6
    move-exception v7

    goto/16 :goto_7

    .line 1146
    :catch_d
    move-exception v28

    goto/16 :goto_6
.end method

.method public static final addDrmFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .parameter "cx"
    .parameter "file"
    .parameter "title"
    .parameter "mediaType"
    .parameter "url"

    .prologue
    .line 1179
    const-string v0, "DrmStore"

    const-string v1, " @@@@@     addDrmFile with url (4)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/provider/DrmStore;->addDrmFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

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
    .line 1206
    const-string v0, "DrmStore"

    const-string v1, " @@@@@     addDrmFile with url and destination (5)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Landroid/provider/DrmStore;->addDrmFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static final addDrmFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 110
    .parameter "cx"
    .parameter "file"
    .parameter "title"
    .parameter "mediaType"
    .parameter "url"
    .parameter "destination"
    .parameter "targetFolder"

    .prologue
    .line 1234
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6) -BEGIN"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_2

    .line 1244
    :cond_0
    const-string v3, "DrmStore"

    const-string v5, "ERROR: addDrmFile input error."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    const/16 v71, 0x0

    .line 2640
    :cond_1
    :goto_0
    return-object v71

    .line 1258
    :cond_2
    const/4 v3, 0x7

    move/from16 v0, p5

    if-eq v0, v3, :cond_3

    .line 1261
    const/16 p5, 0x0

    .line 1264
    :cond_3
    const/16 v71, 0x0

    .line 1265
    .local v71, intent:Landroid/content/Intent;
    const/16 v61, 0x0

    .line 1268
    .local v61, fin:Ljava/io/FileInputStream;
    const-string v3, "application/vnd.oma.drm.rights+xml"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "application/vnd.oma.drm.rights+wbxml"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1272
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/provider/DrmStore;->installRightsObject(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v107

    .line 1274
    .local v107, uid:Ljava/lang/String;
    if-eqz v107, :cond_6

    .line 1278
    const-string v3, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Install rights : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v107

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/DrmStore;->METADATA_PROJECTION:[Ljava/lang/String;

    const-string v6, "content_id=?"

    const/4 v9, 0x1

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v107, v7, v9

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v38

    .line 1287
    .local v38, cursor:Landroid/database/Cursor;
    if-nez v38, :cond_5

    .line 1291
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(1) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1296
    :cond_5
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_7

    .line 1303
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->close()V

    .line 1452
    :goto_1
    new-instance v71, Landroid/content/Intent;

    .end local v71           #intent:Landroid/content/Intent;
    invoke-direct/range {v71 .. v71}, Landroid/content/Intent;-><init>()V

    .line 1453
    .restart local v71       #intent:Landroid/content/Intent;
    const-string v3, "DRM Rights"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v71

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1459
    .end local v38           #cursor:Landroid/database/Cursor;
    :cond_6
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(3) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1312
    .restart local v38       #cursor:Landroid/database/Cursor;
    :cond_7
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1314
    const-string v3, "_data"

    move-object/from16 v0, v38

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v40

    .line 1315
    .local v40, dataColumnIndext:I
    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v59

    .line 1317
    .local v59, filepath:Ljava/lang/String;
    const-string/jumbo v3, "mime_type"

    move-object/from16 v0, v38

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v78

    .line 1318
    .local v78, mimeTypeColumnIndex:I
    move-object/from16 v0, v38

    move/from16 v1, v78

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1320
    .local v6, mimeType:Ljava/lang/String;
    const-string v3, "_id"

    move-object/from16 v0, v38

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v70

    .line 1321
    .local v70, idColumnIndex:I
    move-object/from16 v0, v38

    move/from16 v1, v70

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v69

    .line 1323
    .local v69, id:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v69

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1325
    .local v7, contentUri:Landroid/net/Uri;
    if-eqz v59, :cond_b

    .line 1327
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v59

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1332
    .local v4, parseFile:Ljava/io/File;
    move/from16 v8, p5

    .line 1333
    .local v8, newDestination:I
    const/16 v29, 0x0

    .line 1334
    .local v29, checked:Z
    invoke-static {}, Landroid/os/Environment;->getSupportedStorages()I

    move-result v97

    .line 1336
    .local v97, supportedStorages:I
    and-int/lit8 v3, v97, 0x1

    if-eqz v3, :cond_9

    .line 1343
    invoke-virtual/range {v59 .. v59}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v60

    .line 1344
    .local v60, filepathUpperCase:Ljava/lang/String;
    const/16 v48, 0x0

    .line 1346
    .local v48, downloadPathUpperCase:Ljava/lang/String;
    if-eqz p6, :cond_8

    const-string v3, ""

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1349
    :cond_8
    invoke-static {}, Landroid/provider/DrmStore;->getExternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v48

    .line 1357
    :goto_2
    move-object/from16 v0, v60

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1358
    const/4 v8, 0x0

    .line 1359
    const/16 v29, 0x1

    .line 1375
    .end local v48           #downloadPathUpperCase:Ljava/lang/String;
    .end local v60           #filepathUpperCase:Ljava/lang/String;
    :cond_9
    if-nez v29, :cond_a

    and-int/lit8 v3, v97, 0x2

    if-eqz v3, :cond_a

    .line 1392
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v47

    .line 1395
    .local v47, downloadPath:Ljava/lang/String;
    move-object/from16 v0, v59

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1396
    const/4 v8, 0x7

    .line 1413
    .end local v47           #downloadPath:Ljava/lang/String;
    :cond_a
    sparse-switch v8, :sswitch_data_0

    .line 1422
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     rights\' download destination is unknown!!!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    :goto_3
    const-string v5, "application/vnd.oma.drm.content"

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v9}, Landroid/provider/DrmStore;->updateAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZ)Landroid/content/ContentValues;

    move-result-object v109

    .line 1442
    .local v109, values:Landroid/content/ContentValues;
    if-eqz v109, :cond_b

    .line 1444
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v109

    invoke-virtual {v3, v7, v0, v5, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1448
    .end local v4           #parseFile:Ljava/io/File;
    .end local v8           #newDestination:I
    .end local v29           #checked:Z
    .end local v97           #supportedStorages:I
    .end local v109           #values:Landroid/content/ContentValues;
    :cond_b
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1354
    .restart local v4       #parseFile:Ljava/io/File;
    .restart local v8       #newDestination:I
    .restart local v29       #checked:Z
    .restart local v48       #downloadPathUpperCase:Ljava/lang/String;
    .restart local v60       #filepathUpperCase:Ljava/lang/String;
    .restart local v97       #supportedStorages:I
    :cond_c
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v48

    goto :goto_2

    .line 1416
    .end local v48           #downloadPathUpperCase:Ljava/lang/String;
    .end local v60           #filepathUpperCase:Ljava/lang/String;
    :sswitch_0
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     rights\' download destination is in external."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1419
    :sswitch_1
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     rights\' download destination is in internal."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1466
    .end local v4           #parseFile:Ljava/io/File;
    .end local v6           #mimeType:Ljava/lang/String;
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v8           #newDestination:I
    .end local v29           #checked:Z
    .end local v38           #cursor:Landroid/database/Cursor;
    .end local v40           #dataColumnIndext:I
    .end local v59           #filepath:Ljava/lang/String;
    .end local v69           #id:I
    .end local v70           #idColumnIndex:I
    .end local v78           #mimeTypeColumnIndex:I
    .end local v97           #supportedStorages:I
    .end local v107           #uid:Ljava/lang/String;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 1469
    .local v11, cr:Landroid/content/ContentResolver;
    const/16 v56, 0x0

    .line 1471
    .local v56, fileName:Ljava/lang/String;
    if-nez p2, :cond_f

    .line 1473
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v56

    .line 1487
    :goto_4
    const-string v3, "."

    move-object/from16 v0, v56

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v45

    .line 1489
    .local v45, dot:I
    const/4 v3, -0x1

    move/from16 v0, v45

    if-ne v0, v3, :cond_11

    .line 1492
    const-string v3, "application/vnd.oma.drm.message"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1494
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v56

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".dm"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    .line 1515
    :cond_e
    :goto_5
    const-string v3, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Add DRM file : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v56

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    :try_start_0
    new-instance v62, Ljava/io/FileInputStream;

    move-object/from16 v0, v62

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_13

    .line 1522
    .end local v61           #fin:Ljava/io/FileInputStream;
    .local v62, fin:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v32, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->available()I

    move-result v3

    move-object/from16 v0, v32

    move-object/from16 v1, v62

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v3, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 1528
    .local v32, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual/range {v32 .. v32}, Landroid/drm/mobile1/DrmRawContent;->getTransferEncoding()I

    move-result v105

    .line 1530
    .local v105, transferEncoding:I
    const-string v3, "application/vnd.oma.drm.message"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 v3, 0x3

    move/from16 v0, v105

    if-ne v0, v3, :cond_17

    .line 1535
    const-string v3, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " @@@@@  Handle specific transfer-encoding="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v105

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "."

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    const-string v83, "/data/data/com.android.providers.drm/rights/tmp"

    .line 1541
    .local v83, outputBinaryFilePath:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v83

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/provider/DrmStore;->checkAndCreateFolder(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_13

    .line 1542
    const-string v3, "DrmStore"

    const-string v5, " @@@@@ ERROR: cannot create file!!!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(3)-(1) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1549
    const/16 v71, 0x0

    .line 2623
    .end local v71           #intent:Landroid/content/Intent;
    if-eqz v62, :cond_1

    .line 2624
    :try_start_2
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 2626
    :catch_0
    move-exception v52

    .line 2628
    .local v52, e:Ljava/lang/Exception;
    const-string v3, "DrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v11           #cr:Landroid/content/ContentResolver;
    .end local v32           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v62           #fin:Ljava/io/FileInputStream;
    .end local v83           #outputBinaryFilePath:Ljava/lang/String;
    .end local v105           #transferEncoding:I
    :goto_6
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1479
    .end local v45           #dot:I
    .end local v52           #e:Ljava/lang/Exception;
    .restart local v11       #cr:Landroid/content/ContentResolver;
    .restart local v61       #fin:Ljava/io/FileInputStream;
    .restart local v71       #intent:Landroid/content/Intent;
    :cond_f
    const-string v3, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Title is "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    move-object/from16 v56, p2

    goto/16 :goto_4

    .line 1496
    .restart local v45       #dot:I
    :cond_10
    const-string v3, "application/vnd.oma.drm.content"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1498
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v56

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".dcf"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    goto/16 :goto_5

    .line 1503
    :cond_11
    const-string v3, "application/vnd.oma.drm.message"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1505
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    move-object/from16 v0, v56

    move/from16 v1, v45

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".dm"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    goto/16 :goto_5

    .line 1507
    :cond_12
    const-string v3, "application/vnd.oma.drm.content"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1509
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    move-object/from16 v0, v56

    move/from16 v1, v45

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".dcf"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    goto/16 :goto_5

    .line 1552
    .end local v61           #fin:Ljava/io/FileInputStream;
    .restart local v32       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v62       #fin:Ljava/io/FileInputStream;
    .restart local v83       #outputBinaryFilePath:Ljava/lang/String;
    .restart local v105       #transferEncoding:I
    :cond_13
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v83

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v56

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v83

    .line 1554
    const/4 v3, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v83

    invoke-static {v0, v1, v2}, Landroid/provider/DrmStore;->saveFileFromBase64ToBinary(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I

    move-result v5

    if-ne v3, v5, :cond_14

    .line 1557
    const-string v3, "DrmStore"

    const-string v5, " @@@@@ ERROR: convert base64 file Fail!!!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(3)-(2) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1564
    const/16 v71, 0x0

    .line 2623
    .end local v71           #intent:Landroid/content/Intent;
    if-eqz v62, :cond_1

    .line 2624
    :try_start_4
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 2626
    :catch_1
    move-exception v52

    .line 2628
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 1567
    .end local v52           #e:Ljava/lang/Exception;
    .restart local v71       #intent:Landroid/content/Intent;
    :cond_14
    :try_start_5
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, v83

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1569
    .local v10, binaryFile:Ljava/io/File;
    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {v10, v3, v5}, Ljava/io/File;->setWritable(ZZ)Z

    .line 1570
    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {v10, v3, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1571
    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {v10, v3, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    move-object/from16 v9, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p5

    move-object/from16 v15, p6

    .line 1573
    invoke-static/range {v9 .. v15}, Landroid/provider/DrmStore;->addDrmFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .end local v11           #cr:Landroid/content/ContentResolver;
    move-result-object v89

    .line 1577
    .local v89, resultIntent:Landroid/content/Intent;
    :try_start_6
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1578
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 2623
    :cond_15
    :goto_7
    if-eqz v62, :cond_16

    .line 2624
    :try_start_7
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1d

    :cond_16
    :goto_8
    move-object/from16 v71, v89

    .line 1586
    goto/16 :goto_0

    .line 1580
    :catch_2
    move-exception v52

    .line 1581
    .restart local v52       #e:Ljava/lang/Exception;
    :try_start_8
    const-string v3, "DrmStore"

    const-string v5, " @@@@@  ERROR: delete temp files FAILED!!!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    const-string v3, "DrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_7

    .line 2605
    .end local v10           #binaryFile:Ljava/io/File;
    .end local v32           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v52           #e:Ljava/lang/Exception;
    .end local v83           #outputBinaryFilePath:Ljava/lang/String;
    .end local v89           #resultIntent:Landroid/content/Intent;
    .end local v105           #transferEncoding:I
    :catch_3
    move-exception v52

    move-object/from16 v61, v62

    .line 2611
    .end local v62           #fin:Ljava/io/FileInputStream;
    .restart local v52       #e:Ljava/lang/Exception;
    .restart local v61       #fin:Ljava/io/FileInputStream;
    :goto_9
    :try_start_9
    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->printStackTrace()V

    .line 2616
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(12) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 2619
    const/16 v71, 0x0

    .line 2623
    .end local v71           #intent:Landroid/content/Intent;
    if-eqz v61, :cond_1

    .line 2624
    :try_start_a
    invoke-virtual/range {v61 .. v61}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_0

    .line 2626
    :catch_4
    move-exception v52

    .line 2628
    const-string v3, "DrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 1591
    .end local v52           #e:Ljava/lang/Exception;
    .end local v61           #fin:Ljava/io/FileInputStream;
    .restart local v11       #cr:Landroid/content/ContentResolver;
    .restart local v32       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v62       #fin:Ljava/io/FileInputStream;
    .restart local v71       #intent:Landroid/content/Intent;
    .restart local v105       #transferEncoding:I
    :cond_17
    :try_start_b
    invoke-virtual/range {v32 .. v32}, Landroid/drm/mobile1/DrmRawContent;->getContentType()Ljava/lang/String;

    move-result-object v6

    .line 1593
    .restart local v6       #mimeType:Ljava/lang/String;
    const-string v3, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mimeType = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    invoke-virtual/range {v32 .. v32}, Landroid/drm/mobile1/DrmRawContent;->getRawType()I

    move-result v77

    .line 1598
    .local v77, method:I
    const-string v3, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "method = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v77

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    const/4 v3, 0x1

    move/from16 v0, v77

    if-ne v0, v3, :cond_26

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x91

    if-eq v3, v5, :cond_1a

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x93

    if-ne v3, v5, :cond_18

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x94

    if-eq v3, v5, :cond_1a

    :cond_18
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x3a

    if-ne v3, v5, :cond_19

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x94

    if-eq v3, v5, :cond_1a

    :cond_19
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x63

    if-ne v3, v5, :cond_26

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x66

    if-ne v3, v5, :cond_26

    .line 1624
    :cond_1a
    const/16 v18, 0x1

    .line 1630
    .local v18, flRingtone:Z
    :goto_a
    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/drm/mobile1/DrmRawContent;->getContentOffset(Landroid/drm/mobile1/DrmRights;)I

    move-result v33

    .line 1637
    .local v33, contentOffset:I
    const-string/jumbo v3, "video"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1b

    const-string v3, "audio"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    :cond_1b
    const/4 v3, 0x1

    move/from16 v0, v77

    if-eq v0, v3, :cond_1c

    const/4 v3, 0x2

    move/from16 v0, v77

    if-ne v0, v3, :cond_30

    .line 1640
    :cond_1c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x2e

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v6}, Landroid/media/MediaFile;->getExtensionForMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    .line 1645
    .local v54, extention:Ljava/lang/String;
    new-instance v82, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/com.android.providers.drm/rights/DRM"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v82

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 1652
    .local v82, outFile:Ljava/io/File;
    const/16 v63, 0x0

    .line 1653
    .local v63, fis:Ljava/io/FileInputStream;
    const/16 v65, 0x0

    .line 1655
    .local v65, fis2:Ljava/io/FileInputStream;
    const/16 v67, 0x0

    .line 1656
    .local v67, fos:Ljava/io/FileOutputStream;
    const/16 v73, 0x0

    .line 1657
    .local v73, is:Ljava/io/InputStream;
    const/16 v74, 0x0

    .line 1664
    .local v74, isTerminated:Z
    :try_start_c
    new-instance v64, Ljava/io/FileInputStream;

    move-object/from16 v0, v64

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    .line 1673
    .end local v63           #fis:Ljava/io/FileInputStream;
    .local v64, fis:Ljava/io/FileInputStream;
    :try_start_d
    new-instance v98, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v64 .. v64}, Ljava/io/FileInputStream;->available()I

    move-result v3

    move-object/from16 v0, v98

    move-object/from16 v1, v64

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v3, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 1677
    .local v98, tempContent:Landroid/drm/mobile1/DrmRawContent;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v75

    .line 1678
    .local v75, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, v75

    move-object/from16 v1, v98

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v91

    .line 1683
    .local v91, rights:Landroid/drm/mobile1/DrmRights;
    const/16 v41, 0x0

    .line 1684
    .local v41, deleteRights:Z
    if-nez v91, :cond_76

    const/4 v3, 0x2

    move/from16 v0, v77

    if-ne v0, v3, :cond_76

    .line 1713
    if-eqz v64, :cond_1d

    .line 1714
    invoke-virtual/range {v64 .. v64}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_20

    .line 1715
    const/16 v63, 0x0

    .end local v64           #fis:Ljava/io/FileInputStream;
    .restart local v63       #fis:Ljava/io/FileInputStream;
    move-object/from16 v64, v63

    .line 1717
    .end local v63           #fis:Ljava/io/FileInputStream;
    .restart local v64       #fis:Ljava/io/FileInputStream;
    :try_start_e
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    .line 1720
    :cond_1d
    :try_start_f
    new-instance v63, Ljava/io/FileInputStream;

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_20

    .line 1726
    .end local v64           #fis:Ljava/io/FileInputStream;
    .restart local v63       #fis:Ljava/io/FileInputStream;
    :try_start_10
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileInputStream;->available()I

    move-result v3

    move-object/from16 v0, v75

    move-object/from16 v1, v63

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v3, v2}, Landroid/drm/mobile1/DrmRightsManager;->installRights(Ljava/io/InputStream;ILjava/lang/String;)Landroid/drm/mobile1/DrmRights;

    move-result-object v91

    .line 1728
    const/16 v41, 0x1

    .line 1734
    :goto_b
    if-eqz v63, :cond_1e

    .line 1735
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileInputStream;->close()V

    .line 1736
    const/16 v63, 0x0

    .line 1740
    :cond_1e
    if-eqz v91, :cond_28

    .line 1747
    new-instance v66, Ljava/io/FileInputStream;

    move-object/from16 v0, v66

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    .line 1748
    .end local v65           #fis2:Ljava/io/FileInputStream;
    .local v66, fis2:Ljava/io/FileInputStream;
    :try_start_11
    new-instance v98, Landroid/drm/mobile1/DrmRawContent;

    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual/range {v66 .. v66}, Ljava/io/FileInputStream;->available()I

    move-result v3

    move-object/from16 v0, v98

    move-object/from16 v1, v66

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v3, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 1752
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    move-object/from16 v0, v98

    move-object/from16 v1, v91

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;

    move-result-object v73

    .line 1753
    new-instance v68, Ljava/io/FileOutputStream;

    move-object/from16 v0, v68

    move-object/from16 v1, v82

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_21

    .line 1755
    .end local v67           #fos:Ljava/io/FileOutputStream;
    .local v68, fos:Ljava/io/FileOutputStream;
    :try_start_12
    move-object/from16 v0, v73

    move-object/from16 v1, v68

    invoke-static {v0, v1}, Landroid/provider/DrmStore;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I

    .line 1757
    if-eqz v41, :cond_1f

    .line 1758
    move-object/from16 v0, v75

    move-object/from16 v1, v91

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRightsManager;->deleteRights(Landroid/drm/mobile1/DrmRights;)V

    .line 1763
    :cond_1f
    sget-object v3, Landroid/provider/DrmStore;->CMD_CHMOD:[Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual/range {v82 .. v82}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v5

    .line 1764
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    sget-object v5, Landroid/provider/DrmStore;->CMD_CHMOD:[Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    .line 1766
    new-instance v76, Landroid/media/MediaInfo;

    move-object/from16 v0, v76

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/media/MediaInfo;-><init>(Landroid/content/Context;)V

    .line 1767
    .local v76, mediaInfo:Landroid/media/MediaInfo;
    invoke-virtual/range {v82 .. v82}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v76

    invoke-virtual {v0, v3}, Landroid/media/MediaInfo;->getFileType(Ljava/lang/String;)I

    move-result v106

    .line 1768
    .local v106, type:I
    const/4 v3, 0x1

    move/from16 v0, v106

    if-ne v0, v3, :cond_27

    .line 1769
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "audio/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v6, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1778
    :cond_20
    :goto_c
    const-string v3, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MIME type by MediaInfo: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_22

    move-object/from16 v67, v68

    .end local v68           #fos:Ljava/io/FileOutputStream;
    .restart local v67       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v65, v66

    .line 1787
    .end local v66           #fis2:Ljava/io/FileInputStream;
    .end local v76           #mediaInfo:Landroid/media/MediaInfo;
    .end local v106           #type:I
    .restart local v65       #fis2:Ljava/io/FileInputStream;
    :goto_d
    if-eqz v67, :cond_21

    .line 1788
    :try_start_13
    invoke-virtual/range {v67 .. v67}, Ljava/io/FileOutputStream;->close()V

    .line 1789
    const/16 v67, 0x0

    .line 1791
    :cond_21
    if-eqz v73, :cond_22

    .line 1792
    invoke-virtual/range {v73 .. v73}, Ljava/io/InputStream;->close()V

    .line 1793
    const/16 v73, 0x0

    .line 1802
    :cond_22
    if-eqz v63, :cond_23

    .line 1803
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileInputStream;->close()V

    .line 1804
    const/16 v63, 0x0

    .line 1806
    :cond_23
    if-eqz v65, :cond_24

    .line 1807
    invoke-virtual/range {v65 .. v65}, Ljava/io/FileInputStream;->close()V

    .line 1808
    const/16 v65, 0x0

    .line 1811
    :cond_24
    invoke-virtual/range {v82 .. v82}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1812
    invoke-virtual/range {v82 .. v82}, Ljava/io/File;->delete()Z

    .line 1814
    :cond_25
    if-eqz v74, :cond_30

    .line 1818
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(4) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3

    .line 1820
    const/16 v71, 0x0

    .line 2623
    .end local v71           #intent:Landroid/content/Intent;
    if-eqz v62, :cond_1

    .line 2624
    :try_start_14
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5

    goto/16 :goto_0

    .line 2626
    :catch_5
    move-exception v52

    .line 2628
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 1626
    .end local v18           #flRingtone:Z
    .end local v33           #contentOffset:I
    .end local v41           #deleteRights:Z
    .end local v52           #e:Ljava/lang/Exception;
    .end local v54           #extention:Ljava/lang/String;
    .end local v63           #fis:Ljava/io/FileInputStream;
    .end local v65           #fis2:Ljava/io/FileInputStream;
    .end local v67           #fos:Ljava/io/FileOutputStream;
    .end local v73           #is:Ljava/io/InputStream;
    .end local v74           #isTerminated:Z
    .end local v75           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v82           #outFile:Ljava/io/File;
    .end local v91           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v71       #intent:Landroid/content/Intent;
    :cond_26
    const/16 v18, 0x0

    .restart local v18       #flRingtone:Z
    goto/16 :goto_a

    .line 1771
    .restart local v33       #contentOffset:I
    .restart local v41       #deleteRights:Z
    .restart local v54       #extention:Ljava/lang/String;
    .restart local v63       #fis:Ljava/io/FileInputStream;
    .restart local v66       #fis2:Ljava/io/FileInputStream;
    .restart local v68       #fos:Ljava/io/FileOutputStream;
    .restart local v73       #is:Ljava/io/InputStream;
    .restart local v74       #isTerminated:Z
    .restart local v75       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v76       #mediaInfo:Landroid/media/MediaInfo;
    .restart local v82       #outFile:Ljava/io/File;
    .restart local v91       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v106       #type:I
    :cond_27
    const/4 v3, 0x2

    move/from16 v0, v106

    if-ne v0, v3, :cond_20

    .line 1772
    :try_start_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "video/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v6, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_22

    move-result-object v6

    goto/16 :goto_c

    .line 1781
    .end local v66           #fis2:Ljava/io/FileInputStream;
    .end local v68           #fos:Ljava/io/FileOutputStream;
    .end local v76           #mediaInfo:Landroid/media/MediaInfo;
    .end local v106           #type:I
    .restart local v65       #fis2:Ljava/io/FileInputStream;
    .restart local v67       #fos:Ljava/io/FileOutputStream;
    :cond_28
    :try_start_16
    const-string v3, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MIME type from DRM header: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_6

    goto/16 :goto_d

    .line 1783
    .end local v41           #deleteRights:Z
    .end local v63           #fis:Ljava/io/FileInputStream;
    .end local v75           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v91           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    :catch_6
    move-exception v52

    .line 1784
    .restart local v52       #e:Ljava/lang/Exception;
    :goto_e
    :try_start_17
    const-string v3, "DrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_c

    .line 1785
    const/16 v74, 0x1

    .line 1787
    if-eqz v67, :cond_29

    .line 1788
    :try_start_18
    invoke-virtual/range {v67 .. v67}, Ljava/io/FileOutputStream;->close()V

    .line 1789
    const/16 v67, 0x0

    .line 1791
    :cond_29
    if-eqz v73, :cond_2a

    .line 1792
    invoke-virtual/range {v73 .. v73}, Ljava/io/InputStream;->close()V

    .line 1793
    const/16 v73, 0x0

    .line 1802
    :cond_2a
    if-eqz v63, :cond_2b

    .line 1803
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileInputStream;->close()V

    .line 1804
    const/16 v63, 0x0

    .line 1806
    :cond_2b
    if-eqz v65, :cond_2c

    .line 1807
    invoke-virtual/range {v65 .. v65}, Ljava/io/FileInputStream;->close()V

    .line 1808
    const/16 v65, 0x0

    .line 1811
    :cond_2c
    invoke-virtual/range {v82 .. v82}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1812
    invoke-virtual/range {v82 .. v82}, Ljava/io/File;->delete()Z

    .line 1814
    :cond_2d
    if-eqz v74, :cond_30

    .line 1818
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(4) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_3

    .line 1820
    const/16 v71, 0x0

    .line 2623
    .end local v71           #intent:Landroid/content/Intent;
    if-eqz v62, :cond_1

    .line 2624
    :try_start_19
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_7

    goto/16 :goto_0

    .line 2626
    :catch_7
    move-exception v52

    .line 2628
    const-string v3, "DrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 1787
    .end local v52           #e:Ljava/lang/Exception;
    .restart local v71       #intent:Landroid/content/Intent;
    :cond_2e
    :try_start_1a
    throw v3
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_3

    .line 2622
    .end local v6           #mimeType:Ljava/lang/String;
    .end local v11           #cr:Landroid/content/ContentResolver;
    .end local v18           #flRingtone:Z
    .end local v32           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v33           #contentOffset:I
    .end local v54           #extention:Ljava/lang/String;
    .end local v65           #fis2:Ljava/io/FileInputStream;
    .end local v67           #fos:Ljava/io/FileOutputStream;
    .end local v73           #is:Ljava/io/InputStream;
    .end local v74           #isTerminated:Z
    .end local v77           #method:I
    .end local v82           #outFile:Ljava/io/File;
    .end local v105           #transferEncoding:I
    :catchall_0
    move-exception v3

    move-object/from16 v61, v62

    .line 2623
    .end local v62           #fin:Ljava/io/FileInputStream;
    .restart local v61       #fin:Ljava/io/FileInputStream;
    :goto_f
    if-eqz v61, :cond_2f

    .line 2624
    :try_start_1b
    invoke-virtual/range {v61 .. v61}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1c

    .line 2622
    :cond_2f
    :goto_10
    throw v3

    .line 1827
    .end local v61           #fin:Ljava/io/FileInputStream;
    .restart local v6       #mimeType:Ljava/lang/String;
    .restart local v11       #cr:Landroid/content/ContentResolver;
    .restart local v18       #flRingtone:Z
    .restart local v32       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v33       #contentOffset:I
    .restart local v62       #fin:Ljava/io/FileInputStream;
    .restart local v77       #method:I
    .restart local v105       #transferEncoding:I
    :cond_30
    :try_start_1c
    const-string v34, ""

    .line 1829
    .local v34, contentUid:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1832
    .restart local v7       #contentUri:Landroid/net/Uri;
    const-string v3, "audio/"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 1833
    sget-object v7, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    .line 1855
    :goto_11
    const/16 v50, 0x0

    .line 1856
    .local v50, duplicate:Z
    const/16 v84, 0x0

    .line 1857
    .local v84, overwrite:Z
    const/16 v108, 0x0

    .line 1859
    .local v108, uri:Landroid/net/Uri;
    sget-object v13, Landroid/provider/DrmStore;->TITLE_PROJECTION:[Ljava/lang/String;

    const-string v14, "content_url=?"

    const/4 v3, 0x1

    new-array v15, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p4, v15, v3

    const-string v16, "_id"

    move-object v12, v7

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 1860
    .local v26, c:Landroid/database/Cursor;
    if-eqz v26, :cond_75

    .line 1861
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_74

    .line 1865
    const-string v3, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v56

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " duplicated."

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1868
    const-string v3, "_id"

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 1869
    .local v31, columnIdIndex:I
    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 1870
    .local v30, columnId:I
    const-string v3, "_data"

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v58

    .line 1871
    .local v58, filePathIndex:I
    move-object/from16 v0, v26

    move/from16 v1, v58

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v57

    .line 1872
    .local v57, filePath:Ljava/lang/String;
    const-string/jumbo v3, "title"

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v104

    .line 1873
    .local v104, titleInddex:I
    move-object/from16 v0, v26

    move/from16 v1, v104

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 1874
    .local v49, dup_title:Ljava/lang/String;
    const/16 v47, 0x0

    .line 1876
    .restart local v47       #downloadPath:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v108

    .line 1877
    new-instance v72, Landroid/content/Intent;

    invoke-direct/range {v72 .. v72}, Landroid/content/Intent;-><init>()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_3

    .line 1878
    .end local v71           #intent:Landroid/content/Intent;
    .local v72, intent:Landroid/content/Intent;
    :try_start_1d
    move-object/from16 v0, v72

    move-object/from16 v1, v108

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1880
    const-string v3, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dup_title:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    const-string/jumbo v3, "title"

    move-object/from16 v0, v72

    move-object/from16 v1, v49

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1883
    const/16 v50, 0x1

    .line 1888
    const-string v3, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Check file path: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    new-instance v55, Ljava/io/File;

    move-object/from16 v0, v55

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1892
    .local v55, f:Ljava/io/File;
    invoke-virtual/range {v55 .. v55}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v56

    .line 1893
    invoke-virtual/range {v55 .. v55}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1894
    invoke-virtual/range {v55 .. v55}, Ljava/io/File;->delete()Z

    .line 1898
    :cond_31
    const/4 v3, 0x7

    move/from16 v0, p5

    if-ne v0, v3, :cond_39

    .line 1908
    invoke-static {}, Landroid/provider/DrmStore;->getInternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v47

    .line 1910
    if-eqz v47, :cond_32

    const-string v3, ""

    move-object/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 1911
    :cond_32
    const-string v3, "DrmStore"

    const-string v5, " @@@@@ internal download path doesn\'t exist!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_c

    .line 1914
    const/16 v71, 0x0

    .line 2623
    if-eqz v62, :cond_1

    .line 2624
    :try_start_1e
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_8

    goto/16 :goto_0

    .line 2626
    :catch_8
    move-exception v52

    .line 2628
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 1834
    .end local v26           #c:Landroid/database/Cursor;
    .end local v30           #columnId:I
    .end local v31           #columnIdIndex:I
    .end local v47           #downloadPath:Ljava/lang/String;
    .end local v49           #dup_title:Ljava/lang/String;
    .end local v50           #duplicate:Z
    .end local v52           #e:Ljava/lang/Exception;
    .end local v55           #f:Ljava/io/File;
    .end local v57           #filePath:Ljava/lang/String;
    .end local v58           #filePathIndex:I
    .end local v72           #intent:Landroid/content/Intent;
    .end local v84           #overwrite:Z
    .end local v104           #titleInddex:I
    .end local v108           #uri:Landroid/net/Uri;
    .restart local v71       #intent:Landroid/content/Intent;
    :cond_33
    :try_start_1f
    const-string v3, "image/"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1835
    sget-object v7, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_11

    .line 1836
    :cond_34
    const-string/jumbo v3, "video/"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1837
    sget-object v7, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_11

    .line 1838
    :cond_35
    const-string v3, "application/java-archive"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1839
    sget-object v7, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_11

    .line 1842
    :cond_36
    const-string v3, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported mime type "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V

    .line 1848
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(5) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_3

    .line 1851
    const/16 v71, 0x0

    .line 2623
    .end local v71           #intent:Landroid/content/Intent;
    if-eqz v62, :cond_1

    .line 2624
    :try_start_20
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_9

    goto/16 :goto_0

    .line 2626
    :catch_9
    move-exception v52

    .line 2628
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 1917
    .end local v52           #e:Ljava/lang/Exception;
    .restart local v26       #c:Landroid/database/Cursor;
    .restart local v30       #columnId:I
    .restart local v31       #columnIdIndex:I
    .restart local v47       #downloadPath:Ljava/lang/String;
    .restart local v49       #dup_title:Ljava/lang/String;
    .restart local v50       #duplicate:Z
    .restart local v55       #f:Ljava/io/File;
    .restart local v57       #filePath:Ljava/lang/String;
    .restart local v58       #filePathIndex:I
    .restart local v72       #intent:Landroid/content/Intent;
    .restart local v84       #overwrite:Z
    .restart local v104       #titleInddex:I
    .restart local v108       #uri:Landroid/net/Uri;
    :cond_37
    :try_start_21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v56

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    .line 1959
    :goto_12
    const-string v3, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Saved file path: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    new-instance v55, Ljava/io/File;

    .end local v55           #f:Ljava/io/File;
    move-object/from16 v0, v55

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1966
    .restart local v55       #f:Ljava/io/File;
    invoke-virtual/range {v55 .. v55}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 1968
    const-string v3, "DrmStore"

    const-string v5, "File exists, use a new name"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    const-string v3, "."

    move-object/from16 v0, v56

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v53

    .line 1971
    .local v53, ext:I
    const/16 v87, 0x0

    .line 1972
    .local v87, prefix:Ljava/lang/String;
    const/16 v96, 0x0

    .line 1973
    .local v96, suffix:Ljava/lang/String;
    if-lez v53, :cond_3e

    .line 1974
    const/4 v3, 0x0

    move-object/from16 v0, v56

    move/from16 v1, v53

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v87

    .line 1975
    invoke-virtual/range {v56 .. v56}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, v56

    move/from16 v1, v53

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v96

    .line 1980
    :goto_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v87

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "---"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v55 .. v55}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    move-object/from16 v0, v96

    invoke-static {v3, v0, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v79

    .line 1982
    .local v79, newFile:Ljava/io/File;
    invoke-virtual/range {v79 .. v79}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v57

    .line 1984
    const-string v3, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "New file path: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    .end local v53           #ext:I
    .end local v79           #newFile:Ljava/io/File;
    .end local v87           #prefix:Ljava/lang/String;
    .end local v96           #suffix:Ljava/lang/String;
    :cond_38
    new-instance v39, Landroid/content/ContentValues;

    invoke-direct/range {v39 .. v39}, Landroid/content/ContentValues;-><init>()V

    .line 1991
    .local v39, cv:Landroid/content/ContentValues;
    sget-object v12, Landroid/provider/DrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v13, Landroid/provider/DrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v16, "_id"

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v93

    .line 1992
    .local v93, stampCursor:Landroid/database/Cursor;
    if-eqz v93, :cond_40

    .line 1993
    invoke-interface/range {v93 .. v93}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 1999
    const-string/jumbo v3, "time_differential"

    move-object/from16 v0, v93

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v44

    .line 2000
    .local v44, differentialColumnId:I
    move-object/from16 v0, v93

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 2001
    .local v42, differential:J
    const-string/jumbo v3, "timezone_stamp"

    move-object/from16 v0, v93

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v102

    .line 2002
    .local v102, timeZoneColumnIndex:I
    move-object/from16 v0, v93

    move/from16 v1, v102

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v100

    .line 2003
    .local v100, timeZone:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    .line 2004
    .local v36, currentClock:J
    const-string v3, "date_modified"

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2005
    const-string v3, "date_added"

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2010
    .end local v36           #currentClock:J
    .end local v42           #differential:J
    .end local v44           #differentialColumnId:I
    .end local v100           #timeZone:J
    .end local v102           #timeZoneColumnIndex:I
    :goto_14
    invoke-interface/range {v93 .. v93}, Landroid/database/Cursor;->close()V

    .line 2016
    :goto_15
    const/16 v84, 0x1

    .line 2018
    const-string v3, "existence"

    const-string v5, "exist"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2020
    const-string v3, "_data"

    move-object/from16 v0, v39

    move-object/from16 v1, v57

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2027
    const-string v3, "/"

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v92

    .line 2028
    .local v92, slashPos:I
    add-int/lit8 v3, v92, 0x1

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v46

    .line 2030
    .local v46, downloadName:Ljava/lang/String;
    const-string v3, "bucket_display_name"

    move-object/from16 v0, v39

    move-object/from16 v1, v46

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2033
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v108

    move-object/from16 v1, v39

    invoke-virtual {v11, v0, v1, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_c

    move-object/from16 v16, v108

    .end local v108           #uri:Landroid/net/Uri;
    .local v16, uri:Landroid/net/Uri;
    move-object/from16 v71, v72

    .line 2035
    .end local v30           #columnId:I
    .end local v31           #columnIdIndex:I
    .end local v39           #cv:Landroid/content/ContentValues;
    .end local v46           #downloadName:Ljava/lang/String;
    .end local v47           #downloadPath:Ljava/lang/String;
    .end local v49           #dup_title:Ljava/lang/String;
    .end local v55           #f:Ljava/io/File;
    .end local v57           #filePath:Ljava/lang/String;
    .end local v58           #filePathIndex:I
    .end local v72           #intent:Landroid/content/Intent;
    .end local v92           #slashPos:I
    .end local v93           #stampCursor:Landroid/database/Cursor;
    .end local v104           #titleInddex:I
    .restart local v71       #intent:Landroid/content/Intent;
    :goto_16
    :try_start_22
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 2037
    if-eqz v50, :cond_41

    if-nez v84, :cond_41

    .line 2039
    const-string v3, "DrmStore"

    const-string v5, "File is duplicated and exist."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_3

    .line 2623
    if-eqz v62, :cond_1

    .line 2624
    :try_start_23
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_a

    goto/16 :goto_0

    .line 2626
    :catch_a
    move-exception v52

    .line 2628
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 1941
    .end local v16           #uri:Landroid/net/Uri;
    .end local v52           #e:Ljava/lang/Exception;
    .end local v71           #intent:Landroid/content/Intent;
    .restart local v30       #columnId:I
    .restart local v31       #columnIdIndex:I
    .restart local v47       #downloadPath:Ljava/lang/String;
    .restart local v49       #dup_title:Ljava/lang/String;
    .restart local v55       #f:Ljava/io/File;
    .restart local v57       #filePath:Ljava/lang/String;
    .restart local v58       #filePathIndex:I
    .restart local v72       #intent:Landroid/content/Intent;
    .restart local v104       #titleInddex:I
    .restart local v108       #uri:Landroid/net/Uri;
    :cond_39
    if-eqz p6, :cond_3a

    :try_start_24
    const-string v3, ""

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 1942
    :cond_3a
    invoke-static {}, Landroid/provider/DrmStore;->getExternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v47

    .line 1948
    :goto_17
    if-eqz v47, :cond_3b

    const-string v3, ""

    move-object/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 1949
    :cond_3b
    const-string v3, "DrmStore"

    const-string v5, " @@@@@ external download path doesn\'t exist!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_c

    .line 1952
    const/16 v71, 0x0

    .line 2623
    if-eqz v62, :cond_1

    .line 2624
    :try_start_25
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_b

    goto/16 :goto_0

    .line 2626
    :catch_b
    move-exception v52

    .line 2628
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 1945
    .end local v52           #e:Ljava/lang/Exception;
    :cond_3c
    move-object/from16 v47, p6

    goto :goto_17

    .line 1955
    :cond_3d
    :try_start_26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v56

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    goto/16 :goto_12

    .line 1977
    .restart local v53       #ext:I
    .restart local v87       #prefix:Ljava/lang/String;
    .restart local v96       #suffix:Ljava/lang/String;
    :cond_3e
    move-object/from16 v87, v56

    .line 1978
    const-string v96, ""

    goto/16 :goto_13

    .line 2007
    .end local v53           #ext:I
    .end local v87           #prefix:Ljava/lang/String;
    .end local v96           #suffix:Ljava/lang/String;
    .restart local v39       #cv:Landroid/content/ContentValues;
    .restart local v93       #stampCursor:Landroid/database/Cursor;
    :cond_3f
    const-string v3, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2008
    const-string v3, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_14

    .line 2605
    .end local v30           #columnId:I
    .end local v31           #columnIdIndex:I
    .end local v39           #cv:Landroid/content/ContentValues;
    .end local v47           #downloadPath:Ljava/lang/String;
    .end local v49           #dup_title:Ljava/lang/String;
    .end local v55           #f:Ljava/io/File;
    .end local v57           #filePath:Ljava/lang/String;
    .end local v58           #filePathIndex:I
    .end local v93           #stampCursor:Landroid/database/Cursor;
    .end local v104           #titleInddex:I
    .end local v108           #uri:Landroid/net/Uri;
    :catch_c
    move-exception v52

    move-object/from16 v61, v62

    .end local v62           #fin:Ljava/io/FileInputStream;
    .restart local v61       #fin:Ljava/io/FileInputStream;
    move-object/from16 v71, v72

    .end local v72           #intent:Landroid/content/Intent;
    .restart local v71       #intent:Landroid/content/Intent;
    goto/16 :goto_9

    .line 2012
    .end local v61           #fin:Ljava/io/FileInputStream;
    .end local v71           #intent:Landroid/content/Intent;
    .restart local v30       #columnId:I
    .restart local v31       #columnIdIndex:I
    .restart local v39       #cv:Landroid/content/ContentValues;
    .restart local v47       #downloadPath:Ljava/lang/String;
    .restart local v49       #dup_title:Ljava/lang/String;
    .restart local v55       #f:Ljava/io/File;
    .restart local v57       #filePath:Ljava/lang/String;
    .restart local v58       #filePathIndex:I
    .restart local v62       #fin:Ljava/io/FileInputStream;
    .restart local v72       #intent:Landroid/content/Intent;
    .restart local v93       #stampCursor:Landroid/database/Cursor;
    .restart local v104       #titleInddex:I
    .restart local v108       #uri:Landroid/net/Uri;
    :cond_40
    const-string v3, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2013
    const-string v3, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_c

    goto/16 :goto_15

    .line 2622
    .end local v30           #columnId:I
    .end local v31           #columnIdIndex:I
    .end local v39           #cv:Landroid/content/ContentValues;
    .end local v47           #downloadPath:Ljava/lang/String;
    .end local v49           #dup_title:Ljava/lang/String;
    .end local v55           #f:Ljava/io/File;
    .end local v57           #filePath:Ljava/lang/String;
    .end local v58           #filePathIndex:I
    .end local v93           #stampCursor:Landroid/database/Cursor;
    .end local v104           #titleInddex:I
    .end local v108           #uri:Landroid/net/Uri;
    :catchall_1
    move-exception v3

    move-object/from16 v61, v62

    .end local v62           #fin:Ljava/io/FileInputStream;
    .restart local v61       #fin:Ljava/io/FileInputStream;
    move-object/from16 v71, v72

    .end local v72           #intent:Landroid/content/Intent;
    .restart local v71       #intent:Landroid/content/Intent;
    goto/16 :goto_f

    .line 2043
    .end local v61           #fin:Ljava/io/FileInputStream;
    .restart local v16       #uri:Landroid/net/Uri;
    .restart local v62       #fin:Ljava/io/FileInputStream;
    :cond_41
    if-eqz v50, :cond_54

    if-eqz v84, :cond_54

    .line 2045
    :try_start_27
    const-string v3, "DrmStore"

    const-string v5, "Overwrite the file."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    move-object/from16 v0, v16

    invoke-static {v11, v0}, Landroid/provider/DrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v51

    .line 2051
    .local v51, duplicatePath:Ljava/lang/String;
    new-instance v28, Ljava/io/File;

    move-object/from16 v0, v28

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2052
    .local v28, checkFile:Ljava/io/File;
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_42

    .line 2053
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 2058
    :cond_42
    invoke-static {v6}, Landroid/provider/DrmStore;->NeedToEncrypt(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_43

    const/4 v3, 0x3

    move/from16 v0, v77

    if-ne v0, v3, :cond_48

    .line 2061
    :cond_43
    new-instance v94, Ljava/io/FileInputStream;

    move-object/from16 v0, v94

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_3

    .line 2067
    .local v94, stream:Ljava/io/FileInputStream;
    :try_start_28
    new-instance v81, Ljava/io/FileOutputStream;

    move-object/from16 v0, v81

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_28} :catch_e
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_3

    .line 2085
    .local v81, os:Ljava/io/FileOutputStream;
    :goto_18
    if-nez v81, :cond_47

    .line 2086
    :try_start_29
    invoke-virtual/range {v94 .. v94}, Ljava/io/FileInputStream;->close()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_3

    .line 2230
    .end local v81           #os:Ljava/io/FileOutputStream;
    .end local v94           #stream:Ljava/io/FileInputStream;
    :cond_44
    :goto_19
    :try_start_2a
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_12

    move-object/from16 v61, v62

    .line 2240
    .end local v62           #fin:Ljava/io/FileInputStream;
    .restart local v61       #fin:Ljava/io/FileInputStream;
    :goto_1a
    :try_start_2b
    const-string v3, "audio"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p3

    move-object v15, v6

    move/from16 v17, p5

    .line 2252
    invoke-static/range {v12 .. v18}, Landroid/provider/DrmStore;->parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZ)Landroid/content/ContentValues;
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_14

    .line 2623
    :cond_45
    :goto_1b
    if-eqz v61, :cond_1

    .line 2624
    :try_start_2c
    invoke-virtual/range {v61 .. v61}, Ljava/io/FileInputStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_d

    goto/16 :goto_0

    .line 2626
    :catch_d
    move-exception v52

    .line 2628
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 2068
    .end local v52           #e:Ljava/lang/Exception;
    .end local v61           #fin:Ljava/io/FileInputStream;
    .restart local v62       #fin:Ljava/io/FileInputStream;
    .restart local v94       #stream:Ljava/io/FileInputStream;
    :catch_e
    move-exception v52

    .line 2069
    .local v52, e:Ljava/io/FileNotFoundException;
    :try_start_2d
    new-instance v35, Ljava/io/File;

    move-object/from16 v0, v35

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2070
    .local v35, createFile:Ljava/io/File;
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 2071
    new-instance v81, Ljava/io/FileOutputStream;

    move-object/from16 v0, v81

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .restart local v81       #os:Ljava/io/FileOutputStream;
    goto :goto_18

    .line 2073
    .end local v81           #os:Ljava/io/FileOutputStream;
    :cond_46
    const-string v3, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Create new file:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " failed."

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V

    .line 2078
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(6) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_3

    .line 2081
    const/16 v71, 0x0

    .line 2623
    .end local v71           #intent:Landroid/content/Intent;
    if-eqz v62, :cond_1

    .line 2624
    :try_start_2e
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_f

    goto/16 :goto_0

    .line 2626
    :catch_f
    move-exception v52

    .line 2628
    .local v52, e:Ljava/lang/Exception;
    const-string v3, "DrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 2089
    .end local v35           #createFile:Ljava/io/File;
    .end local v52           #e:Ljava/lang/Exception;
    .restart local v71       #intent:Landroid/content/Intent;
    .restart local v81       #os:Ljava/io/FileOutputStream;
    :cond_47
    :try_start_2f
    move-object/from16 v0, v94

    move-object/from16 v1, v81

    invoke-static {v0, v1}, Landroid/provider/DrmStore;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_2

    .line 2091
    :try_start_30
    invoke-virtual/range {v94 .. v94}, Ljava/io/FileInputStream;->close()V

    .line 2092
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_19

    .line 2091
    :catchall_2
    move-exception v3

    invoke-virtual/range {v94 .. v94}, Ljava/io/FileInputStream;->close()V

    .line 2092
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V

    .line 2091
    throw v3

    .line 2095
    .end local v81           #os:Ljava/io/FileOutputStream;
    .end local v94           #stream:Ljava/io/FileInputStream;
    :cond_48
    const-string v3, "application/vnd.oma.drm.message"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 2097
    const/4 v3, 0x2

    move/from16 v0, v77

    if-ne v0, v3, :cond_49

    .line 2098
    const-string v3, "application/vnd.oma.drm.message"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Landroid/provider/DrmStore;->installRightsObject(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 2107
    :cond_49
    const-string/jumbo v3, "ro.board.platform"

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v85

    .line 2110
    .local v85, platform:Ljava/lang/String;
    if-eqz v85, :cond_4a

    const-string v3, ""

    move-object/from16 v0, v85

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 2111
    :cond_4a
    const/16 v86, 0x0

    .line 2116
    .local v86, platformLowerCase:Ljava/lang/String;
    :goto_1c
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x62

    if-eq v3, v5, :cond_4b

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x42

    if-eq v3, v5, :cond_4b

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x10

    if-eq v3, v5, :cond_4b

    if-eqz v86, :cond_51

    const-string v3, ""

    move-object/from16 v0, v86

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    const-string/jumbo v3, "msm7k"

    move-object/from16 v0, v86

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4b

    const-string v3, "7x27"

    move-object/from16 v0, v86

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 2131
    :cond_4b
    const-string v3, "DrmStore"

    const-string v5, " @@@@@ save duplicate File for MSM7K case."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_3

    .line 2135
    :try_start_31
    new-instance v35, Ljava/io/File;

    move-object/from16 v0, v35

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2137
    .restart local v35       #createFile:Ljava/io/File;
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->exists()Z
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_4

    move-result v3

    if-nez v3, :cond_4c

    .line 2139
    :try_start_32
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->createNewFile()Z
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_19

    .line 2142
    const/16 v35, 0x0

    .line 2143
    :try_start_33
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2147
    :cond_4c
    :goto_1d
    const/16 v88, 0x0

    .line 2148
    .local v88, repeat:I
    const/16 v95, 0x0

    .line 2149
    .local v95, success:Z
    const/16 v90, 0x0

    .line 2151
    .local v90, resultSaveFile:I
    :goto_1e
    const/4 v3, 0x3

    move/from16 v0, v88

    if-ge v0, v3, :cond_50

    .line 2153
    if-ltz v88, :cond_4e

    .line 2154
    new-instance v99, Ljava/io/FileInputStream;

    move-object/from16 v0, v99

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2155
    .local v99, tempFin:Ljava/io/FileInputStream;
    new-instance v98, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v99 .. v99}, Ljava/io/FileInputStream;->available()I

    move-result v3

    move-object/from16 v0, v98

    move-object/from16 v1, v99

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v3, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 2158
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    move-object/from16 v0, p1

    move-object/from16 v1, v98

    move-object/from16 v2, v51

    invoke-static {v0, v1, v2}, Landroid/provider/DrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_4

    move-result v90

    .line 2161
    :try_start_34
    invoke-virtual/range {v99 .. v99}, Ljava/io/FileInputStream;->close()V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_1a

    .line 2170
    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v99           #tempFin:Ljava/io/FileInputStream;
    :goto_1f
    const/4 v3, -0x1

    move/from16 v0, v90

    if-ne v0, v3, :cond_4f

    .line 2171
    add-int/lit8 v88, v88, 0x1

    goto :goto_1e

    .line 2113
    .end local v35           #createFile:Ljava/io/File;
    .end local v86           #platformLowerCase:Ljava/lang/String;
    .end local v88           #repeat:I
    .end local v90           #resultSaveFile:I
    .end local v95           #success:Z
    :cond_4d
    :try_start_35
    invoke-virtual/range {v85 .. v85}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_3

    move-result-object v86

    .restart local v86       #platformLowerCase:Ljava/lang/String;
    goto/16 :goto_1c

    .line 2142
    .restart local v35       #createFile:Ljava/io/File;
    :catchall_3
    move-exception v3

    const/16 v35, 0x0

    .line 2143
    :try_start_36
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2142
    throw v3
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_4

    .line 2182
    .end local v35           #createFile:Ljava/io/File;
    :catchall_4
    move-exception v3

    :try_start_37
    throw v3
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_3

    .line 2163
    .restart local v35       #createFile:Ljava/io/File;
    .restart local v88       #repeat:I
    .restart local v90       #resultSaveFile:I
    .restart local v95       #success:Z
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v99       #tempFin:Ljava/io/FileInputStream;
    :catchall_5
    move-exception v3

    :try_start_38
    throw v3

    .line 2167
    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v99           #tempFin:Ljava/io/FileInputStream;
    :cond_4e
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v51

    invoke-static {v0, v1, v2}, Landroid/provider/DrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_4

    move-result v90

    goto :goto_1f

    .line 2174
    :cond_4f
    const/16 v88, 0x3

    .line 2175
    const/16 v95, 0x1

    goto :goto_1e

    .line 2179
    :cond_50
    if-nez v95, :cond_44

    .line 2180
    const/16 v71, 0x0

    goto/16 :goto_19

    .line 2191
    .end local v35           #createFile:Ljava/io/File;
    .end local v88           #repeat:I
    .end local v90           #resultSaveFile:I
    .end local v95           #success:Z
    :cond_51
    :try_start_39
    new-instance v81, Ljava/io/FileOutputStream;

    move-object/from16 v0, v81

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_39 .. :try_end_39} :catch_10
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_3

    .line 2209
    .restart local v81       #os:Ljava/io/FileOutputStream;
    :goto_20
    if-eqz v81, :cond_44

    .line 2215
    const/4 v3, -0x1

    :try_start_3a
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v81

    invoke-static {v0, v1, v2}, Landroid/provider/DrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/io/FileOutputStream;)I
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_6

    move-result v5

    if-ne v3, v5, :cond_52

    .line 2217
    const/16 v71, 0x0

    .line 2221
    :cond_52
    :try_start_3b
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_19

    .line 2192
    .end local v81           #os:Ljava/io/FileOutputStream;
    :catch_10
    move-exception v52

    .line 2193
    .local v52, e:Ljava/io/FileNotFoundException;
    new-instance v35, Ljava/io/File;

    move-object/from16 v0, v35

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2194
    .restart local v35       #createFile:Ljava/io/File;
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 2195
    new-instance v81, Ljava/io/FileOutputStream;

    move-object/from16 v0, v81

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .restart local v81       #os:Ljava/io/FileOutputStream;
    goto :goto_20

    .line 2197
    .end local v81           #os:Ljava/io/FileOutputStream;
    :cond_53
    const-string v3, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Create new file:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " failed."

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V

    .line 2202
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(7) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_3

    .line 2205
    const/16 v71, 0x0

    .line 2623
    .end local v71           #intent:Landroid/content/Intent;
    if-eqz v62, :cond_1

    .line 2624
    :try_start_3c
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_11

    goto/16 :goto_0

    .line 2626
    :catch_11
    move-exception v52

    .line 2628
    .local v52, e:Ljava/lang/Exception;
    const-string v3, "DrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 2221
    .end local v35           #createFile:Ljava/io/File;
    .end local v52           #e:Ljava/lang/Exception;
    .restart local v71       #intent:Landroid/content/Intent;
    .restart local v81       #os:Ljava/io/FileOutputStream;
    :catchall_6
    move-exception v3

    :try_start_3d
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V

    throw v3

    .line 2231
    .end local v81           #os:Ljava/io/FileOutputStream;
    .end local v85           #platform:Ljava/lang/String;
    .end local v86           #platformLowerCase:Ljava/lang/String;
    :catch_12
    move-exception v52

    .line 2232
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmStore"

    const-string v5, " @@@@@  ERROR: close file failed!!! (6)-(7)-(1)"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    const-string v3, "DrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_3

    .line 2236
    const/16 v61, 0x0

    .line 2237
    .end local v62           #fin:Ljava/io/FileInputStream;
    .restart local v61       #fin:Ljava/io/FileInputStream;
    :try_start_3e
    invoke-static {}, Ljava/lang/System;->gc()V

    goto/16 :goto_1a

    .line 2605
    .end local v6           #mimeType:Ljava/lang/String;
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v16           #uri:Landroid/net/Uri;
    .end local v18           #flRingtone:Z
    .end local v26           #c:Landroid/database/Cursor;
    .end local v28           #checkFile:Ljava/io/File;
    .end local v32           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v33           #contentOffset:I
    .end local v34           #contentUid:Ljava/lang/String;
    .end local v50           #duplicate:Z
    .end local v51           #duplicatePath:Ljava/lang/String;
    .end local v52           #e:Ljava/lang/Exception;
    .end local v77           #method:I
    .end local v84           #overwrite:Z
    .end local v105           #transferEncoding:I
    :catch_13
    move-exception v52

    goto/16 :goto_9

    .line 2256
    .restart local v6       #mimeType:Ljava/lang/String;
    .restart local v7       #contentUri:Landroid/net/Uri;
    .restart local v16       #uri:Landroid/net/Uri;
    .restart local v18       #flRingtone:Z
    .restart local v26       #c:Landroid/database/Cursor;
    .restart local v28       #checkFile:Ljava/io/File;
    .restart local v32       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v33       #contentOffset:I
    .restart local v34       #contentUid:Ljava/lang/String;
    .restart local v50       #duplicate:Z
    .restart local v51       #duplicatePath:Ljava/lang/String;
    .restart local v77       #method:I
    .restart local v84       #overwrite:Z
    .restart local v105       #transferEncoding:I
    :catch_14
    move-exception v52

    .line 2258
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File duplicate parse Media: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_13

    goto/16 :goto_1b

    .line 2622
    .end local v6           #mimeType:Ljava/lang/String;
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v11           #cr:Landroid/content/ContentResolver;
    .end local v16           #uri:Landroid/net/Uri;
    .end local v18           #flRingtone:Z
    .end local v26           #c:Landroid/database/Cursor;
    .end local v28           #checkFile:Ljava/io/File;
    .end local v32           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v33           #contentOffset:I
    .end local v34           #contentUid:Ljava/lang/String;
    .end local v50           #duplicate:Z
    .end local v51           #duplicatePath:Ljava/lang/String;
    .end local v52           #e:Ljava/lang/Exception;
    .end local v77           #method:I
    .end local v84           #overwrite:Z
    .end local v105           #transferEncoding:I
    :catchall_7
    move-exception v3

    goto/16 :goto_f

    .line 2264
    .end local v61           #fin:Ljava/io/FileInputStream;
    .restart local v6       #mimeType:Ljava/lang/String;
    .restart local v7       #contentUri:Landroid/net/Uri;
    .restart local v11       #cr:Landroid/content/ContentResolver;
    .restart local v16       #uri:Landroid/net/Uri;
    .restart local v18       #flRingtone:Z
    .restart local v26       #c:Landroid/database/Cursor;
    .restart local v32       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v33       #contentOffset:I
    .restart local v34       #contentUid:Ljava/lang/String;
    .restart local v50       #duplicate:Z
    .restart local v62       #fin:Ljava/io/FileInputStream;
    .restart local v77       #method:I
    .restart local v84       #overwrite:Z
    .restart local v105       #transferEncoding:I
    :cond_54
    :try_start_3f
    const-string v3, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Prepare to install: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v56

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_3

    move-object/from16 v72, v71

    .line 2270
    .end local v71           #intent:Landroid/content/Intent;
    .restart local v72       #intent:Landroid/content/Intent;
    :goto_21
    :try_start_40
    new-instance v39, Landroid/content/ContentValues;

    invoke-direct/range {v39 .. v39}, Landroid/content/ContentValues;-><init>()V

    .line 2272
    .restart local v39       #cv:Landroid/content/ContentValues;
    const-string v3, "_size"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2274
    const-string/jumbo v3, "title"

    move-object/from16 v0, v39

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2276
    const-string/jumbo v3, "mime_type"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2277
    const-string/jumbo v3, "message_type"

    move-object/from16 v0, v39

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2278
    const-string v3, "delivery_type"

    invoke-static/range {v77 .. v77}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2279
    const-string v3, "content_offset"

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2280
    const-string v3, "content_url"

    move-object/from16 v0, v39

    move-object/from16 v1, p4

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2283
    sget-object v20, Landroid/provider/DrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v21, Landroid/provider/DrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v24, "_id"

    move-object/from16 v19, v11

    invoke-virtual/range {v19 .. v24}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v93

    .line 2284
    .restart local v93       #stampCursor:Landroid/database/Cursor;
    if-eqz v93, :cond_57

    .line 2285
    invoke-interface/range {v93 .. v93}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 2291
    const-string/jumbo v3, "time_differential"

    move-object/from16 v0, v93

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v44

    .line 2292
    .restart local v44       #differentialColumnId:I
    move-object/from16 v0, v93

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 2293
    .restart local v42       #differential:J
    const-string/jumbo v3, "timezone_stamp"

    move-object/from16 v0, v93

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v102

    .line 2294
    .restart local v102       #timeZoneColumnIndex:I
    move-object/from16 v0, v93

    move/from16 v1, v102

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v100

    .line 2295
    .restart local v100       #timeZone:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    .line 2296
    .restart local v36       #currentClock:J
    const-string v3, "date_added"

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2300
    .end local v36           #currentClock:J
    .end local v42           #differential:J
    .end local v44           #differentialColumnId:I
    .end local v100           #timeZone:J
    .end local v102           #timeZoneColumnIndex:I
    :goto_22
    invoke-interface/range {v93 .. v93}, Landroid/database/Cursor;->close()V

    .line 2312
    :goto_23
    if-eqz p6, :cond_55

    const-string v3, ""

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 2314
    :cond_55
    const-string v3, "Destination"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2363
    :goto_24
    move-object/from16 v0, v39

    invoke-virtual {v11, v7, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v16

    .line 2364
    if-nez v16, :cond_5b

    .line 2366
    const-string v3, "DrmStore"

    const-string v5, "Insert to DRM db failed."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V

    .line 2372
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(8) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_c

    .line 2375
    const/16 v71, 0x0

    .line 2623
    if-eqz v62, :cond_1

    .line 2624
    :try_start_41
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_15

    goto/16 :goto_0

    .line 2626
    :catch_15
    move-exception v52

    .line 2628
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 2298
    .end local v52           #e:Ljava/lang/Exception;
    :cond_56
    :try_start_42
    const-string v3, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_22

    .line 2302
    :cond_57
    const-string v3, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_23

    .line 2318
    :cond_58
    move/from16 v8, p5

    .line 2319
    .restart local v8       #newDestination:I
    const/16 v29, 0x0

    .line 2320
    .restart local v29       #checked:Z
    invoke-static {}, Landroid/os/Environment;->getSupportedStorages()I

    move-result v97

    .line 2322
    .restart local v97       #supportedStorages:I
    and-int/lit8 v3, v97, 0x1

    if-eqz v3, :cond_59

    .line 2324
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 2327
    const/4 v8, 0x0

    .line 2328
    const/16 v29, 0x1

    .line 2332
    :cond_59
    if-nez v29, :cond_5a

    and-int/lit8 v3, v97, 0x2

    if-eqz v3, :cond_5a

    .line 2334
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 2337
    const/4 v8, 0x7

    .line 2341
    :cond_5a
    const-string v3, "Destination"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2342
    const-string v3, "_data"

    move-object/from16 v0, v39

    move-object/from16 v1, p6

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2346
    sparse-switch v8, :sswitch_data_1

    .line 2355
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     rights\' download destination is unknown!!!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24

    .line 2349
    :sswitch_2
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     rights\' download destination is in external."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24

    .line 2352
    :sswitch_3
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     rights\' download destination is in internal."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24

    .line 2381
    .end local v8           #newDestination:I
    .end local v29           #checked:Z
    .end local v97           #supportedStorages:I
    :cond_5b
    const-string v3, "_data"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2384
    const/16 v25, 0x0

    .line 2387
    .local v25, boundary_length:I
    invoke-static {v6}, Landroid/provider/DrmStore;->NeedToEncrypt(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5c

    const/4 v3, 0x3

    move/from16 v0, v77

    if-ne v0, v3, :cond_5e

    .line 2389
    :cond_5c
    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/drm/mobile1/DrmRawContent;->getContentId(Landroid/drm/mobile1/DrmRights;)Ljava/lang/String;

    move-result-object v34

    .line 2390
    new-instance v94, Ljava/io/FileInputStream;

    move-object/from16 v0, v94

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2393
    .restart local v94       #stream:Ljava/io/FileInputStream;
    new-instance v81, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-static {v11, v0}, Landroid/provider/DrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v81

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_c

    .line 2394
    .restart local v81       #os:Ljava/io/FileOutputStream;
    if-eqz v81, :cond_5d

    .line 2396
    :try_start_43
    move-object/from16 v0, v94

    move-object/from16 v1, v81

    invoke-static {v0, v1}, Landroid/provider/DrmStore;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_8

    .line 2398
    :try_start_44
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V

    .line 2527
    .end local v81           #os:Ljava/io/FileOutputStream;
    .end local v94           #stream:Ljava/io/FileInputStream;
    :cond_5d
    :goto_25
    const/4 v3, -0x1

    move/from16 v0, v25

    if-ne v0, v3, :cond_68

    .line 2530
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(11) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_44} :catch_c

    .line 2533
    const/16 v71, 0x0

    .line 2623
    if-eqz v62, :cond_1

    .line 2624
    :try_start_45
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_16

    goto/16 :goto_0

    .line 2626
    :catch_16
    move-exception v52

    .line 2628
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 2398
    .end local v52           #e:Ljava/lang/Exception;
    .restart local v81       #os:Ljava/io/FileOutputStream;
    .restart local v94       #stream:Ljava/io/FileInputStream;
    :catchall_8
    move-exception v3

    :try_start_46
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V

    throw v3

    .line 2401
    .end local v81           #os:Ljava/io/FileOutputStream;
    .end local v94           #stream:Ljava/io/FileInputStream;
    :cond_5e
    const/4 v3, 0x1

    move/from16 v0, v77

    if-ne v0, v3, :cond_5f

    .line 2403
    new-instance v81, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-static {v11, v0}, Landroid/provider/DrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v81

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_c

    .line 2404
    .restart local v81       #os:Ljava/io/FileOutputStream;
    if-eqz v81, :cond_5d

    .line 2406
    :try_start_47
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v81

    invoke-static {v0, v1, v2}, Landroid/provider/DrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/io/FileOutputStream;)I
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_9

    move-result v25

    .line 2408
    :try_start_48
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V

    goto :goto_25

    :catchall_9
    move-exception v3

    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V

    throw v3

    .line 2411
    .end local v81           #os:Ljava/io/FileOutputStream;
    :cond_5f
    const/4 v3, 0x2

    move/from16 v0, v77

    if-ne v0, v3, :cond_67

    .line 2412
    const-string v3, "application/vnd.oma.drm.message"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Landroid/provider/DrmStore;->installRightsObject(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_60

    .line 2414
    const-string v3, "DrmStore"

    const-string v5, "Install rights of combine delivery failed."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V

    .line 2420
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(9) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_c

    .line 2423
    const/16 v71, 0x0

    .line 2623
    if-eqz v62, :cond_1

    .line 2624
    :try_start_49
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_49} :catch_17

    goto/16 :goto_0

    .line 2626
    :catch_17
    move-exception v52

    .line 2628
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 2431
    .end local v52           #e:Ljava/lang/Exception;
    :cond_60
    :try_start_4a
    const-string/jumbo v3, "ro.board.platform"

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v85

    .line 2434
    .restart local v85       #platform:Ljava/lang/String;
    if-eqz v85, :cond_61

    const-string v3, ""

    move-object/from16 v0, v85

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 2435
    :cond_61
    const/16 v86, 0x0

    .line 2440
    .restart local v86       #platformLowerCase:Ljava/lang/String;
    :goto_26
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x62

    if-eq v3, v5, :cond_62

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x42

    if-eq v3, v5, :cond_62

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x10

    if-eq v3, v5, :cond_62

    if-eqz v86, :cond_66

    const-string v3, ""

    move-object/from16 v0, v86

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_66

    const-string/jumbo v3, "msm7k"

    move-object/from16 v0, v86

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_62

    const-string v3, "7x27"

    move-object/from16 v0, v86

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 2455
    :cond_62
    const-string v3, "DrmStore"

    const-string v5, " @@@@@ saveFile for MSM7K case."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2458
    const/16 v88, 0x0

    .line 2460
    .restart local v88       #repeat:I
    :goto_27
    const/4 v3, 0x3

    move/from16 v0, v88

    if-ge v0, v3, :cond_5d

    .line 2462
    if-ltz v88, :cond_64

    .line 2463
    new-instance v99, Ljava/io/FileInputStream;

    move-object/from16 v0, v99

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2464
    .restart local v99       #tempFin:Ljava/io/FileInputStream;
    new-instance v98, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v99 .. v99}, Ljava/io/FileInputStream;->available()I

    move-result v3

    move-object/from16 v0, v98

    move-object/from16 v1, v99

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v3, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 2467
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    move-object/from16 v0, v16

    invoke-static {v11, v0}, Landroid/provider/DrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, v98

    invoke-static {v0, v1, v3}, Landroid/provider/DrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4a} :catch_c

    move-result v25

    .line 2470
    :try_start_4b
    invoke-virtual/range {v99 .. v99}, Ljava/io/FileInputStream;->close()V
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_a
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4b} :catch_1b

    .line 2479
    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v99           #tempFin:Ljava/io/FileInputStream;
    :goto_28
    const/4 v3, -0x1

    move/from16 v0, v25

    if-ne v0, v3, :cond_65

    .line 2480
    add-int/lit8 v88, v88, 0x1

    goto :goto_27

    .line 2437
    .end local v86           #platformLowerCase:Ljava/lang/String;
    .end local v88           #repeat:I
    :cond_63
    :try_start_4c
    invoke-virtual/range {v85 .. v85}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v86

    .restart local v86       #platformLowerCase:Ljava/lang/String;
    goto :goto_26

    .line 2472
    .restart local v88       #repeat:I
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v99       #tempFin:Ljava/io/FileInputStream;
    :catchall_a
    move-exception v3

    throw v3

    .line 2476
    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v99           #tempFin:Ljava/io/FileInputStream;
    :cond_64
    move-object/from16 v0, v16

    invoke-static {v11, v0}, Landroid/provider/DrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-static {v0, v1, v3}, Landroid/provider/DrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I

    move-result v25

    goto :goto_28

    .line 2483
    :cond_65
    const/16 v88, 0x3

    goto :goto_27

    .line 2492
    .end local v88           #repeat:I
    :cond_66
    const-string v3, "DrmStore"

    const-string v5, " @@@@@ saveFile for NORMAL case."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4c} :catch_c

    .line 2499
    :try_start_4d
    move-object/from16 v0, v16

    invoke-static {v11, v0}, Landroid/provider/DrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-static {v0, v3, v1}, Landroid/provider/DrmStore;->saveFile(Ljava/io/File;Ljava/lang/String;Landroid/drm/mobile1/DrmRawContent;)I
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_b

    move-result v25

    goto/16 :goto_25

    .line 2501
    :catchall_b
    move-exception v3

    :try_start_4e
    throw v3

    .line 2511
    .end local v85           #platform:Ljava/lang/String;
    .end local v86           #platformLowerCase:Ljava/lang/String;
    :cond_67
    const-string v3, "DrmStore"

    const-string v5, "Unknown method."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V

    .line 2517
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(10) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4e} :catch_c

    .line 2520
    const/16 v71, 0x0

    .line 2623
    if-eqz v62, :cond_1

    .line 2624
    :try_start_4f
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_4f} :catch_18

    goto/16 :goto_0

    .line 2626
    :catch_18
    move-exception v52

    .line 2628
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 2537
    .end local v52           #e:Ljava/lang/Exception;
    :cond_68
    :try_start_50
    new-instance v71, Landroid/content/Intent;

    invoke-direct/range {v71 .. v71}, Landroid/content/Intent;-><init>()V
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_50} :catch_c

    .line 2538
    .end local v72           #intent:Landroid/content/Intent;
    .restart local v71       #intent:Landroid/content/Intent;
    :try_start_51
    move-object/from16 v0, v71

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2540
    sget-object v21, Landroid/provider/DrmStore;->TITLE_PROJECTION:[Ljava/lang/String;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v24, "_id"

    move-object/from16 v19, v11

    move-object/from16 v20, v16

    invoke-virtual/range {v19 .. v24}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 2541
    .local v27, c_title:Landroid/database/Cursor;
    if-eqz v27, :cond_6a

    .line 2542
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_69

    .line 2543
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2544
    const-string/jumbo v3, "title"

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v103

    .line 2545
    .local v103, titleIdIndex:I
    move-object/from16 v0, v27

    move/from16 v1, v103

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v80

    .line 2547
    .local v80, newTitle:Ljava/lang/String;
    const-string v3, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "newTitle:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v80

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2549
    if-eqz v80, :cond_69

    .line 2550
    const-string/jumbo v3, "title"

    move-object/from16 v0, v71

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2551
    const-string/jumbo v3, "title"

    move-object/from16 v0, v39

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2554
    .end local v80           #newTitle:Ljava/lang/String;
    .end local v103           #titleIdIndex:I
    :cond_69
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 2558
    :cond_6a
    const-string v3, "audio"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6c

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p3

    move-object v15, v6

    move/from16 v17, p5

    .line 2571
    invoke-static/range {v12 .. v18}, Landroid/provider/DrmStore;->parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZ)Landroid/content/ContentValues;

    move-result-object v109

    .line 2573
    .restart local v109       #values:Landroid/content/ContentValues;
    if-eqz v109, :cond_6b

    .line 2574
    const-string v3, "album_id"

    const-string v5, "album_id"

    move-object/from16 v0, v109

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2575
    const-string v3, "artist_id"

    const-string v5, "artist_id"

    move-object/from16 v0, v109

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2577
    const-string/jumbo v3, "title"

    move-object/from16 v0, v109

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6b

    const-string/jumbo v3, "title"

    move-object/from16 v0, v109

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6b

    .line 2578
    const-string/jumbo v3, "title"

    const-string/jumbo v5, "title"

    move-object/from16 v0, v109

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2588
    :cond_6b
    if-eqz v18, :cond_6e

    .line 2589
    const-string v3, "is_ringtone"

    const-string v5, "1"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2600
    .end local v109           #values:Landroid/content/ContentValues;
    :cond_6c
    :goto_29
    const-string v3, "content_id"

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2601
    const-string v3, "content_boundary_offset"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2603
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v39

    invoke-virtual {v11, v0, v1, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_51} :catch_3

    .line 2623
    if-eqz v62, :cond_6d

    .line 2624
    :try_start_52
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_52} :catch_1f

    .line 2637
    :cond_6d
    :goto_2a
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(20) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2590
    .restart local v109       #values:Landroid/content/ContentValues;
    :cond_6e
    :try_start_53
    invoke-static {}, Landroid/provider/DrmStore;->SupportForwardLockOnly()Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 2591
    const/4 v3, 0x1

    move/from16 v0, v77

    if-ne v0, v3, :cond_6c

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/32 v14, 0x4b000

    cmp-long v3, v12, v14

    if-gez v3, :cond_6c

    .line 2592
    const-string v3, "is_ringtone"

    const-string v5, "1"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_53} :catch_3

    goto :goto_29

    .line 2140
    .end local v25           #boundary_length:I
    .end local v27           #c_title:Landroid/database/Cursor;
    .end local v39           #cv:Landroid/content/ContentValues;
    .end local v93           #stampCursor:Landroid/database/Cursor;
    .end local v109           #values:Landroid/content/ContentValues;
    .restart local v28       #checkFile:Ljava/io/File;
    .restart local v35       #createFile:Ljava/io/File;
    .restart local v51       #duplicatePath:Ljava/lang/String;
    .restart local v85       #platform:Ljava/lang/String;
    .restart local v86       #platformLowerCase:Ljava/lang/String;
    :catch_19
    move-exception v3

    .line 2142
    const/16 v35, 0x0

    .line 2143
    :try_start_54
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_4

    goto/16 :goto_1d

    .line 2162
    .restart local v88       #repeat:I
    .restart local v90       #resultSaveFile:I
    .restart local v95       #success:Z
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v99       #tempFin:Ljava/io/FileInputStream;
    :catch_1a
    move-exception v3

    goto/16 :goto_1f

    .line 2471
    .end local v28           #checkFile:Ljava/io/File;
    .end local v35           #createFile:Ljava/io/File;
    .end local v51           #duplicatePath:Ljava/lang/String;
    .end local v71           #intent:Landroid/content/Intent;
    .end local v90           #resultSaveFile:I
    .end local v95           #success:Z
    .restart local v25       #boundary_length:I
    .restart local v39       #cv:Landroid/content/ContentValues;
    .restart local v72       #intent:Landroid/content/Intent;
    .restart local v93       #stampCursor:Landroid/database/Cursor;
    :catch_1b
    move-exception v3

    goto/16 :goto_28

    .line 2626
    .end local v6           #mimeType:Ljava/lang/String;
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v11           #cr:Landroid/content/ContentResolver;
    .end local v16           #uri:Landroid/net/Uri;
    .end local v18           #flRingtone:Z
    .end local v25           #boundary_length:I
    .end local v26           #c:Landroid/database/Cursor;
    .end local v32           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v33           #contentOffset:I
    .end local v34           #contentUid:Ljava/lang/String;
    .end local v39           #cv:Landroid/content/ContentValues;
    .end local v50           #duplicate:Z
    .end local v62           #fin:Ljava/io/FileInputStream;
    .end local v72           #intent:Landroid/content/Intent;
    .end local v77           #method:I
    .end local v84           #overwrite:Z
    .end local v85           #platform:Ljava/lang/String;
    .end local v86           #platformLowerCase:Ljava/lang/String;
    .end local v88           #repeat:I
    .end local v93           #stampCursor:Landroid/database/Cursor;
    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v99           #tempFin:Ljava/io/FileInputStream;
    .end local v105           #transferEncoding:I
    .restart local v61       #fin:Ljava/io/FileInputStream;
    .restart local v71       #intent:Landroid/content/Intent;
    :catch_1c
    move-exception v52

    .line 2628
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v5, "DrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 2626
    .end local v52           #e:Ljava/lang/Exception;
    .end local v61           #fin:Ljava/io/FileInputStream;
    .restart local v10       #binaryFile:Ljava/io/File;
    .restart local v32       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v62       #fin:Ljava/io/FileInputStream;
    .restart local v83       #outputBinaryFilePath:Ljava/lang/String;
    .restart local v89       #resultIntent:Landroid/content/Intent;
    .restart local v105       #transferEncoding:I
    :catch_1d
    move-exception v52

    .line 2628
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1787
    .end local v10           #binaryFile:Ljava/io/File;
    .end local v52           #e:Ljava/lang/Exception;
    .end local v83           #outputBinaryFilePath:Ljava/lang/String;
    .end local v89           #resultIntent:Landroid/content/Intent;
    .restart local v6       #mimeType:Ljava/lang/String;
    .restart local v11       #cr:Landroid/content/ContentResolver;
    .restart local v18       #flRingtone:Z
    .restart local v33       #contentOffset:I
    .restart local v54       #extention:Ljava/lang/String;
    .restart local v65       #fis2:Ljava/io/FileInputStream;
    .restart local v67       #fos:Ljava/io/FileOutputStream;
    .restart local v73       #is:Ljava/io/InputStream;
    .restart local v74       #isTerminated:Z
    .restart local v77       #method:I
    .restart local v82       #outFile:Ljava/io/File;
    :catchall_c
    move-exception v3

    :goto_2b
    if-eqz v67, :cond_6f

    .line 1788
    :try_start_55
    invoke-virtual/range {v67 .. v67}, Ljava/io/FileOutputStream;->close()V

    .line 1789
    const/16 v67, 0x0

    .line 1791
    :cond_6f
    if-eqz v73, :cond_70

    .line 1792
    invoke-virtual/range {v73 .. v73}, Ljava/io/InputStream;->close()V

    .line 1793
    const/16 v73, 0x0

    .line 1802
    :cond_70
    if-eqz v63, :cond_71

    .line 1803
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileInputStream;->close()V

    .line 1804
    const/16 v63, 0x0

    .line 1806
    :cond_71
    if-eqz v65, :cond_72

    .line 1807
    invoke-virtual/range {v65 .. v65}, Ljava/io/FileInputStream;->close()V

    .line 1808
    const/16 v65, 0x0

    .line 1811
    :cond_72
    invoke-virtual/range {v82 .. v82}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_73

    .line 1812
    invoke-virtual/range {v82 .. v82}, Ljava/io/File;->delete()Z

    .line 1814
    :cond_73
    if-eqz v74, :cond_2e

    .line 1818
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(4) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_55} :catch_3

    .line 1820
    const/16 v71, 0x0

    .line 2623
    .end local v71           #intent:Landroid/content/Intent;
    if-eqz v62, :cond_1

    .line 2624
    :try_start_56
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_56} :catch_1e

    goto/16 :goto_0

    .line 2626
    :catch_1e
    move-exception v52

    .line 2628
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 2626
    .end local v52           #e:Ljava/lang/Exception;
    .end local v54           #extention:Ljava/lang/String;
    .end local v65           #fis2:Ljava/io/FileInputStream;
    .end local v67           #fos:Ljava/io/FileOutputStream;
    .end local v73           #is:Ljava/io/InputStream;
    .end local v74           #isTerminated:Z
    .end local v82           #outFile:Ljava/io/File;
    .restart local v7       #contentUri:Landroid/net/Uri;
    .restart local v16       #uri:Landroid/net/Uri;
    .restart local v25       #boundary_length:I
    .restart local v26       #c:Landroid/database/Cursor;
    .restart local v27       #c_title:Landroid/database/Cursor;
    .restart local v34       #contentUid:Ljava/lang/String;
    .restart local v39       #cv:Landroid/content/ContentValues;
    .restart local v50       #duplicate:Z
    .restart local v71       #intent:Landroid/content/Intent;
    .restart local v84       #overwrite:Z
    .restart local v93       #stampCursor:Landroid/database/Cursor;
    :catch_1f
    move-exception v52

    .line 2628
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    .line 1787
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v16           #uri:Landroid/net/Uri;
    .end local v25           #boundary_length:I
    .end local v26           #c:Landroid/database/Cursor;
    .end local v27           #c_title:Landroid/database/Cursor;
    .end local v34           #contentUid:Ljava/lang/String;
    .end local v39           #cv:Landroid/content/ContentValues;
    .end local v50           #duplicate:Z
    .end local v52           #e:Ljava/lang/Exception;
    .end local v84           #overwrite:Z
    .end local v93           #stampCursor:Landroid/database/Cursor;
    .restart local v54       #extention:Ljava/lang/String;
    .restart local v64       #fis:Ljava/io/FileInputStream;
    .restart local v65       #fis2:Ljava/io/FileInputStream;
    .restart local v67       #fos:Ljava/io/FileOutputStream;
    .restart local v73       #is:Ljava/io/InputStream;
    .restart local v74       #isTerminated:Z
    .restart local v82       #outFile:Ljava/io/File;
    :catchall_d
    move-exception v3

    move-object/from16 v63, v64

    .end local v64           #fis:Ljava/io/FileInputStream;
    .restart local v63       #fis:Ljava/io/FileInputStream;
    goto :goto_2b

    .end local v65           #fis2:Ljava/io/FileInputStream;
    .restart local v41       #deleteRights:Z
    .restart local v66       #fis2:Ljava/io/FileInputStream;
    .restart local v75       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v91       #rights:Landroid/drm/mobile1/DrmRights;
    :catchall_e
    move-exception v3

    move-object/from16 v65, v66

    .end local v66           #fis2:Ljava/io/FileInputStream;
    .restart local v65       #fis2:Ljava/io/FileInputStream;
    goto :goto_2b

    .end local v65           #fis2:Ljava/io/FileInputStream;
    .end local v67           #fos:Ljava/io/FileOutputStream;
    .restart local v66       #fis2:Ljava/io/FileInputStream;
    .restart local v68       #fos:Ljava/io/FileOutputStream;
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    :catchall_f
    move-exception v3

    move-object/from16 v67, v68

    .end local v68           #fos:Ljava/io/FileOutputStream;
    .restart local v67       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v65, v66

    .end local v66           #fis2:Ljava/io/FileInputStream;
    .restart local v65       #fis2:Ljava/io/FileInputStream;
    goto :goto_2b

    .line 1783
    .end local v41           #deleteRights:Z
    .end local v63           #fis:Ljava/io/FileInputStream;
    .end local v75           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v91           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v64       #fis:Ljava/io/FileInputStream;
    :catch_20
    move-exception v52

    move-object/from16 v63, v64

    .end local v64           #fis:Ljava/io/FileInputStream;
    .restart local v63       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_e

    .end local v65           #fis2:Ljava/io/FileInputStream;
    .restart local v41       #deleteRights:Z
    .restart local v66       #fis2:Ljava/io/FileInputStream;
    .restart local v75       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v91       #rights:Landroid/drm/mobile1/DrmRights;
    :catch_21
    move-exception v52

    move-object/from16 v65, v66

    .end local v66           #fis2:Ljava/io/FileInputStream;
    .restart local v65       #fis2:Ljava/io/FileInputStream;
    goto/16 :goto_e

    .end local v65           #fis2:Ljava/io/FileInputStream;
    .end local v67           #fos:Ljava/io/FileOutputStream;
    .restart local v66       #fis2:Ljava/io/FileInputStream;
    .restart local v68       #fos:Ljava/io/FileOutputStream;
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    :catch_22
    move-exception v52

    move-object/from16 v67, v68

    .end local v68           #fos:Ljava/io/FileOutputStream;
    .restart local v67       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v65, v66

    .end local v66           #fis2:Ljava/io/FileInputStream;
    .restart local v65       #fis2:Ljava/io/FileInputStream;
    goto/16 :goto_e

    .end local v41           #deleteRights:Z
    .end local v54           #extention:Ljava/lang/String;
    .end local v63           #fis:Ljava/io/FileInputStream;
    .end local v65           #fis2:Ljava/io/FileInputStream;
    .end local v67           #fos:Ljava/io/FileOutputStream;
    .end local v73           #is:Ljava/io/InputStream;
    .end local v74           #isTerminated:Z
    .end local v75           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v82           #outFile:Ljava/io/File;
    .end local v91           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v7       #contentUri:Landroid/net/Uri;
    .restart local v26       #c:Landroid/database/Cursor;
    .restart local v34       #contentUid:Ljava/lang/String;
    .restart local v50       #duplicate:Z
    .restart local v84       #overwrite:Z
    .restart local v108       #uri:Landroid/net/Uri;
    :cond_74
    move-object/from16 v16, v108

    .end local v108           #uri:Landroid/net/Uri;
    .restart local v16       #uri:Landroid/net/Uri;
    goto/16 :goto_16

    .end local v16           #uri:Landroid/net/Uri;
    .restart local v108       #uri:Landroid/net/Uri;
    :cond_75
    move-object/from16 v16, v108

    .end local v108           #uri:Landroid/net/Uri;
    .restart local v16       #uri:Landroid/net/Uri;
    move-object/from16 v72, v71

    .end local v71           #intent:Landroid/content/Intent;
    .restart local v72       #intent:Landroid/content/Intent;
    goto/16 :goto_21

    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v16           #uri:Landroid/net/Uri;
    .end local v26           #c:Landroid/database/Cursor;
    .end local v34           #contentUid:Ljava/lang/String;
    .end local v50           #duplicate:Z
    .end local v72           #intent:Landroid/content/Intent;
    .end local v84           #overwrite:Z
    .restart local v41       #deleteRights:Z
    .restart local v54       #extention:Ljava/lang/String;
    .restart local v64       #fis:Ljava/io/FileInputStream;
    .restart local v65       #fis2:Ljava/io/FileInputStream;
    .restart local v67       #fos:Ljava/io/FileOutputStream;
    .restart local v71       #intent:Landroid/content/Intent;
    .restart local v73       #is:Ljava/io/InputStream;
    .restart local v74       #isTerminated:Z
    .restart local v75       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v82       #outFile:Ljava/io/File;
    .restart local v91       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    :cond_76
    move-object/from16 v63, v64

    .end local v64           #fis:Ljava/io/FileInputStream;
    .restart local v63       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_b

    .line 1413
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch

    .line 2346
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x7 -> :sswitch_3
    .end sparse-switch
.end method

.method public static final addDrmFileWithoutRights(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 91
    .parameter "cx"
    .parameter "file"
    .parameter "title"
    .parameter "mediaType"
    .parameter "url"
    .parameter "destination"

    .prologue
    .line 3551
    const-string v4, "DrmStore"

    const-string v8, "********addDrmFileWithoutRights"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3554
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_2

    .line 3556
    :cond_0
    const-string v4, "DrmStore"

    const-string v8, "addDrmFile input error."

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3558
    const/16 v53, 0x0

    .line 4602
    :cond_1
    :goto_0
    return-object v53

    .line 3568
    :cond_2
    const/4 v4, 0x7

    move/from16 v0, p5

    if-eq v0, v4, :cond_3

    .line 3571
    const/16 p5, 0x0

    .line 3574
    :cond_3
    const/16 v53, 0x0

    .line 3575
    .local v53, intent:Landroid/content/Intent;
    const/16 v45, 0x0

    .line 3578
    .local v45, fin:Ljava/io/FileInputStream;
    const-string v4, "application/vnd.oma.drm.rights+xml"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "application/vnd.oma.drm.rights+wbxml"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3581
    :cond_4
    const-string v4, "DrmStore"

    const-string v8, "Rights object installation is not supported via this method"

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3582
    const/16 v53, 0x0

    goto :goto_0

    .line 3622
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 3624
    .local v6, cr:Landroid/content/ContentResolver;
    const/16 v42, 0x0

    .line 3625
    .local v42, fileName:Ljava/lang/String;
    if-nez p2, :cond_7

    .line 3626
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v42

    .line 3635
    :goto_1
    const-string v4, "."

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v32

    .line 3636
    .local v32, dot:I
    const/4 v4, -0x1

    move/from16 v0, v32

    if-ne v0, v4, :cond_9

    .line 3638
    const-string v4, "application/vnd.oma.drm.message"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3639
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ".dm"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    .line 3652
    :cond_6
    :goto_2
    const-string v4, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Add DRM file : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3657
    :try_start_0
    new-instance v46, Ljava/io/FileInputStream;

    move-object/from16 v0, v46

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_f

    .line 3658
    .end local v45           #fin:Ljava/io/FileInputStream;
    .local v46, fin:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v20, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->available()I

    move-result v4

    move-object/from16 v0, v20

    move-object/from16 v1, v46

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v4, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 3662
    .local v20, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual/range {v20 .. v20}, Landroid/drm/mobile1/DrmRawContent;->getTransferEncoding()I

    move-result v87

    .line 3664
    .local v87, transferEncoding:I
    const-string v4, "application/vnd.oma.drm.message"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v4, 0x3

    move/from16 v0, v87

    if-ne v0, v4, :cond_f

    .line 3669
    const-string v4, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " @@@@@  Handle specific transfer-encoding="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v87

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3672
    const-string v65, "/data/data/com.android.providers.drm/rights/tmp"

    .line 3675
    .local v65, outputBinaryFilePath:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v65

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    invoke-static {v4, v8}, Landroid/provider/DrmStore;->checkAndCreateFolder(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_b

    .line 3676
    const-string v4, "DrmStore"

    const-string v8, " @@@@@ ERROR: cannot create file!!!"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3680
    const-string v4, "DrmStore"

    const-string v8, " @@@@@     addDrmFileWithoutRights (1)-(3)-(1) -END"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 3683
    const/16 v53, 0x0

    .line 4593
    .end local v53           #intent:Landroid/content/Intent;
    if-eqz v46, :cond_1

    .line 4594
    :try_start_2
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 4596
    :catch_0
    move-exception v38

    .line 4598
    .local v38, e:Ljava/lang/Exception;
    const-string v4, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    .end local v6           #cr:Landroid/content/ContentResolver;
    .end local v20           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v46           #fin:Ljava/io/FileInputStream;
    .end local v65           #outputBinaryFilePath:Ljava/lang/String;
    .end local v87           #transferEncoding:I
    :goto_3
    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3629
    .end local v32           #dot:I
    .end local v38           #e:Ljava/lang/Exception;
    .restart local v6       #cr:Landroid/content/ContentResolver;
    .restart local v45       #fin:Ljava/io/FileInputStream;
    .restart local v53       #intent:Landroid/content/Intent;
    :cond_7
    const-string v4, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Title is "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3631
    move-object/from16 v42, p2

    goto/16 :goto_1

    .line 3640
    .restart local v32       #dot:I
    :cond_8
    const-string v4, "application/vnd.oma.drm.content"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3641
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ".dcf"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    goto/16 :goto_2

    .line 3644
    :cond_9
    const-string v4, "application/vnd.oma.drm.message"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3645
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v32

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ".dm"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    goto/16 :goto_2

    .line 3646
    :cond_a
    const-string v4, "application/vnd.oma.drm.content"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3647
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v32

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ".dcf"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    goto/16 :goto_2

    .line 3686
    .end local v45           #fin:Ljava/io/FileInputStream;
    .restart local v20       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v46       #fin:Ljava/io/FileInputStream;
    .restart local v65       #outputBinaryFilePath:Ljava/lang/String;
    .restart local v87       #transferEncoding:I
    :cond_b
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v65

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    .line 3688
    const/4 v4, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v65

    invoke-static {v0, v1, v2}, Landroid/provider/DrmStore;->saveFileFromBase64ToBinary(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I

    move-result v8

    if-ne v4, v8, :cond_c

    .line 3691
    const-string v4, "DrmStore"

    const-string v8, " @@@@@ ERROR: convert base64 file Fail!!!"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3695
    const-string v4, "DrmStore"

    const-string v8, " @@@@@     addDrmFileWithoutRights (1)-(3)-(2) -END"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 3698
    const/16 v53, 0x0

    .line 4593
    .end local v53           #intent:Landroid/content/Intent;
    if-eqz v46, :cond_1

    .line 4594
    :try_start_4
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 4596
    :catch_1
    move-exception v38

    .line 4598
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 3701
    .end local v38           #e:Ljava/lang/Exception;
    .restart local v53       #intent:Landroid/content/Intent;
    :cond_c
    :try_start_5
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, v65

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3703
    .local v5, binaryFile:Ljava/io/File;
    const/4 v4, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5, v4, v8}, Ljava/io/File;->setWritable(ZZ)Z

    .line 3704
    const/4 v4, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5, v4, v8}, Ljava/io/File;->setReadable(ZZ)Z

    .line 3705
    const/4 v4, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5, v4, v8}, Ljava/io/File;->setExecutable(ZZ)Z

    move-object/from16 v4, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    .line 3707
    invoke-static/range {v4 .. v9}, Landroid/provider/DrmStore;->addDrmFileWithoutRights(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .end local v6           #cr:Landroid/content/ContentResolver;
    move-result-object v71

    .line 3711
    .local v71, resultIntent:Landroid/content/Intent;
    :try_start_6
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3712
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 4593
    :cond_d
    :goto_4
    if-eqz v46, :cond_e

    .line 4594
    :try_start_7
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1c

    :cond_e
    :goto_5
    move-object/from16 v53, v71

    .line 3720
    goto/16 :goto_0

    .line 3714
    :catch_2
    move-exception v38

    .line 3715
    .restart local v38       #e:Ljava/lang/Exception;
    :try_start_8
    const-string v4, "DrmStore"

    const-string v8, " @@@@@  ERROR: delete temp files FAILED!!!"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3716
    const-string v4, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3717
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_4

    .line 4581
    .end local v5           #binaryFile:Ljava/io/File;
    .end local v20           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v38           #e:Ljava/lang/Exception;
    .end local v65           #outputBinaryFilePath:Ljava/lang/String;
    .end local v71           #resultIntent:Landroid/content/Intent;
    .end local v87           #transferEncoding:I
    :catch_3
    move-exception v38

    move-object/from16 v45, v46

    .line 4587
    .end local v46           #fin:Ljava/io/FileInputStream;
    .restart local v38       #e:Ljava/lang/Exception;
    .restart local v45       #fin:Ljava/io/FileInputStream;
    :goto_6
    :try_start_9
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 4589
    const/16 v53, 0x0

    .line 4593
    .end local v53           #intent:Landroid/content/Intent;
    if-eqz v45, :cond_1

    .line 4594
    :try_start_a
    invoke-virtual/range {v45 .. v45}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_0

    .line 4596
    :catch_4
    move-exception v38

    .line 4598
    const-string v4, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 3724
    .end local v38           #e:Ljava/lang/Exception;
    .end local v45           #fin:Ljava/io/FileInputStream;
    .restart local v6       #cr:Landroid/content/ContentResolver;
    .restart local v20       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v46       #fin:Ljava/io/FileInputStream;
    .restart local v53       #intent:Landroid/content/Intent;
    .restart local v87       #transferEncoding:I
    :cond_f
    :try_start_b
    invoke-virtual/range {v20 .. v20}, Landroid/drm/mobile1/DrmRawContent;->getContentType()Ljava/lang/String;

    move-result-object v60

    .line 3726
    .local v60, mimeType:Ljava/lang/String;
    const-string v4, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mimeType = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v60

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3729
    invoke-virtual/range {v20 .. v20}, Landroid/drm/mobile1/DrmRawContent;->getRawType()I

    move-result v59

    .line 3731
    .local v59, method:I
    const-string v4, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "method = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v59

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3734
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/drm/mobile1/DrmRawContent;->getContentOffset(Landroid/drm/mobile1/DrmRights;)I

    move-result v21

    .line 3741
    .local v21, contentOffset:I
    const-string/jumbo v4, "video"

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    const-string v4, "audio"

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    :cond_10
    const/4 v4, 0x1

    move/from16 v0, v59

    if-eq v0, v4, :cond_11

    const/4 v4, 0x2

    move/from16 v0, v59

    if-ne v0, v4, :cond_24

    .line 3744
    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x2e

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v60 .. v60}, Landroid/media/MediaFile;->getExtensionForMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    .line 3749
    .local v40, extention:Ljava/lang/String;
    new-instance v64, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/data/com.android.providers.drm/rights/DRM"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v64

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 3756
    .local v64, outFile:Ljava/io/File;
    const/16 v47, 0x0

    .line 3757
    .local v47, fis:Ljava/io/FileInputStream;
    const/16 v49, 0x0

    .line 3759
    .local v49, fis2:Ljava/io/FileInputStream;
    const/16 v51, 0x0

    .line 3760
    .local v51, fos:Ljava/io/FileOutputStream;
    const/16 v55, 0x0

    .line 3761
    .local v55, is:Ljava/io/InputStream;
    const/16 v56, 0x0

    .line 3768
    .local v56, isTerminated:Z
    :try_start_c
    new-instance v48, Ljava/io/FileInputStream;

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    .line 3777
    .end local v47           #fis:Ljava/io/FileInputStream;
    .local v48, fis:Ljava/io/FileInputStream;
    :try_start_d
    new-instance v80, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v48 .. v48}, Ljava/io/FileInputStream;->available()I

    move-result v4

    move-object/from16 v0, v80

    move-object/from16 v1, v48

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v4, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 3781
    .local v80, tempContent:Landroid/drm/mobile1/DrmRawContent;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v57

    .line 3782
    .local v57, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, v57

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v73

    .line 3787
    .local v73, rights:Landroid/drm/mobile1/DrmRights;
    const/16 v27, 0x0

    .line 3788
    .local v27, deleteRights:Z
    if-nez v73, :cond_65

    const/4 v4, 0x2

    move/from16 v0, v59

    if-ne v0, v4, :cond_65

    .line 3806
    if-eqz v48, :cond_12

    .line 3807
    invoke-virtual/range {v48 .. v48}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1f

    .line 3808
    const/16 v47, 0x0

    .end local v48           #fis:Ljava/io/FileInputStream;
    .restart local v47       #fis:Ljava/io/FileInputStream;
    move-object/from16 v48, v47

    .line 3810
    .end local v47           #fis:Ljava/io/FileInputStream;
    .restart local v48       #fis:Ljava/io/FileInputStream;
    :try_start_e
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    .line 3813
    :cond_12
    :try_start_f
    new-instance v47, Ljava/io/FileInputStream;

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1f

    .line 3817
    .end local v48           #fis:Ljava/io/FileInputStream;
    .restart local v47       #fis:Ljava/io/FileInputStream;
    :try_start_10
    invoke-virtual/range {v47 .. v47}, Ljava/io/FileInputStream;->available()I

    move-result v4

    move-object/from16 v0, v57

    move-object/from16 v1, v47

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v4, v2}, Landroid/drm/mobile1/DrmRightsManager;->installRights(Ljava/io/InputStream;ILjava/lang/String;)Landroid/drm/mobile1/DrmRights;

    move-result-object v73

    .line 3819
    const/16 v27, 0x1

    .line 3825
    :goto_7
    if-eqz v47, :cond_13

    .line 3826
    invoke-virtual/range {v47 .. v47}, Ljava/io/FileInputStream;->close()V

    .line 3827
    const/16 v47, 0x0

    .line 3831
    :cond_13
    if-eqz v73, :cond_1c

    .line 3838
    new-instance v50, Ljava/io/FileInputStream;

    move-object/from16 v0, v50

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    .line 3839
    .end local v49           #fis2:Ljava/io/FileInputStream;
    .local v50, fis2:Ljava/io/FileInputStream;
    :try_start_11
    new-instance v80, Landroid/drm/mobile1/DrmRawContent;

    .end local v80           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual/range {v50 .. v50}, Ljava/io/FileInputStream;->available()I

    move-result v4

    move-object/from16 v0, v80

    move-object/from16 v1, v50

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v4, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 3843
    .restart local v80       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    move-object/from16 v0, v80

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;

    move-result-object v55

    .line 3844
    new-instance v52, Ljava/io/FileOutputStream;

    move-object/from16 v0, v52

    move-object/from16 v1, v64

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_20

    .line 3846
    .end local v51           #fos:Ljava/io/FileOutputStream;
    .local v52, fos:Ljava/io/FileOutputStream;
    :try_start_12
    move-object/from16 v0, v55

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Landroid/provider/DrmStore;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I

    .line 3848
    if-eqz v27, :cond_14

    .line 3849
    move-object/from16 v0, v57

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRightsManager;->deleteRights(Landroid/drm/mobile1/DrmRights;)V

    .line 3854
    :cond_14
    sget-object v4, Landroid/provider/DrmStore;->CMD_CHMOD:[Ljava/lang/String;

    const/4 v8, 0x2

    invoke-virtual/range {v64 .. v64}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v8

    .line 3855
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    sget-object v8, Landroid/provider/DrmStore;->CMD_CHMOD:[Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    .line 3857
    new-instance v58, Landroid/media/MediaInfo;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/media/MediaInfo;-><init>(Landroid/content/Context;)V

    .line 3858
    .local v58, mediaInfo:Landroid/media/MediaInfo;
    invoke-virtual/range {v64 .. v64}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v58

    invoke-virtual {v0, v4}, Landroid/media/MediaInfo;->getFileType(Ljava/lang/String;)I

    move-result v88

    .line 3859
    .local v88, type:I
    const/4 v4, 0x1

    move/from16 v0, v88

    if-ne v0, v4, :cond_1b

    .line 3860
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "audio/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/"

    move-object/from16 v0, v60

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v60

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    .line 3869
    :cond_15
    :goto_8
    const-string v4, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MIME type by MediaInfo: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v60

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_10
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_21

    move-object/from16 v51, v52

    .end local v52           #fos:Ljava/io/FileOutputStream;
    .restart local v51       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v49, v50

    .line 3878
    .end local v50           #fis2:Ljava/io/FileInputStream;
    .end local v58           #mediaInfo:Landroid/media/MediaInfo;
    .end local v88           #type:I
    .restart local v49       #fis2:Ljava/io/FileInputStream;
    :goto_9
    if-eqz v51, :cond_16

    .line 3879
    :try_start_13
    invoke-virtual/range {v51 .. v51}, Ljava/io/FileOutputStream;->close()V

    .line 3880
    const/16 v51, 0x0

    .line 3882
    :cond_16
    if-eqz v55, :cond_17

    .line 3883
    invoke-virtual/range {v55 .. v55}, Ljava/io/InputStream;->close()V

    .line 3884
    const/16 v55, 0x0

    .line 3893
    :cond_17
    if-eqz v47, :cond_18

    .line 3894
    invoke-virtual/range {v47 .. v47}, Ljava/io/FileInputStream;->close()V

    .line 3895
    const/16 v47, 0x0

    .line 3897
    :cond_18
    if-eqz v49, :cond_19

    .line 3898
    invoke-virtual/range {v49 .. v49}, Ljava/io/FileInputStream;->close()V

    .line 3899
    const/16 v49, 0x0

    .line 3902
    :cond_19
    invoke-virtual/range {v64 .. v64}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 3903
    invoke-virtual/range {v64 .. v64}, Ljava/io/File;->delete()Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3

    .line 3905
    :cond_1a
    if-eqz v56, :cond_24

    .line 3906
    const/16 v53, 0x0

    .line 4593
    .end local v53           #intent:Landroid/content/Intent;
    if-eqz v46, :cond_1

    .line 4594
    :try_start_14
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5

    goto/16 :goto_0

    .line 4596
    :catch_5
    move-exception v38

    .line 4598
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 3862
    .end local v38           #e:Ljava/lang/Exception;
    .end local v49           #fis2:Ljava/io/FileInputStream;
    .end local v51           #fos:Ljava/io/FileOutputStream;
    .restart local v50       #fis2:Ljava/io/FileInputStream;
    .restart local v52       #fos:Ljava/io/FileOutputStream;
    .restart local v53       #intent:Landroid/content/Intent;
    .restart local v58       #mediaInfo:Landroid/media/MediaInfo;
    .restart local v88       #type:I
    :cond_1b
    const/4 v4, 0x2

    move/from16 v0, v88

    if-ne v0, v4, :cond_15

    .line 3863
    :try_start_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "video/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/"

    move-object/from16 v0, v60

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v60

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_10
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_21

    move-result-object v60

    goto :goto_8

    .line 3872
    .end local v50           #fis2:Ljava/io/FileInputStream;
    .end local v52           #fos:Ljava/io/FileOutputStream;
    .end local v58           #mediaInfo:Landroid/media/MediaInfo;
    .end local v88           #type:I
    .restart local v49       #fis2:Ljava/io/FileInputStream;
    .restart local v51       #fos:Ljava/io/FileOutputStream;
    :cond_1c
    :try_start_16
    const-string v4, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MIME type from DRM header: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v60

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_6

    goto :goto_9

    .line 3874
    .end local v27           #deleteRights:Z
    .end local v47           #fis:Ljava/io/FileInputStream;
    .end local v57           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v73           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v80           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    :catch_6
    move-exception v38

    .line 3875
    .restart local v38       #e:Ljava/lang/Exception;
    :goto_a
    :try_start_17
    const-string v4, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_d

    .line 3876
    const/16 v56, 0x1

    .line 3878
    if-eqz v51, :cond_1d

    .line 3879
    :try_start_18
    invoke-virtual/range {v51 .. v51}, Ljava/io/FileOutputStream;->close()V

    .line 3880
    const/16 v51, 0x0

    .line 3882
    :cond_1d
    if-eqz v55, :cond_1e

    .line 3883
    invoke-virtual/range {v55 .. v55}, Ljava/io/InputStream;->close()V

    .line 3884
    const/16 v55, 0x0

    .line 3893
    :cond_1e
    if-eqz v47, :cond_1f

    .line 3894
    invoke-virtual/range {v47 .. v47}, Ljava/io/FileInputStream;->close()V

    .line 3895
    const/16 v47, 0x0

    .line 3897
    :cond_1f
    if-eqz v49, :cond_20

    .line 3898
    invoke-virtual/range {v49 .. v49}, Ljava/io/FileInputStream;->close()V

    .line 3899
    const/16 v49, 0x0

    .line 3902
    :cond_20
    invoke-virtual/range {v64 .. v64}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 3903
    invoke-virtual/range {v64 .. v64}, Ljava/io/File;->delete()Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_3

    .line 3905
    :cond_21
    if-eqz v56, :cond_24

    .line 3906
    const/16 v53, 0x0

    .line 4593
    .end local v53           #intent:Landroid/content/Intent;
    if-eqz v46, :cond_1

    .line 4594
    :try_start_19
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_7

    goto/16 :goto_0

    .line 4596
    :catch_7
    move-exception v38

    .line 4598
    const-string v4, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 3878
    .end local v38           #e:Ljava/lang/Exception;
    .restart local v53       #intent:Landroid/content/Intent;
    :cond_22
    :try_start_1a
    throw v4
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_3

    .line 4592
    .end local v6           #cr:Landroid/content/ContentResolver;
    .end local v20           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v21           #contentOffset:I
    .end local v40           #extention:Ljava/lang/String;
    .end local v49           #fis2:Ljava/io/FileInputStream;
    .end local v51           #fos:Ljava/io/FileOutputStream;
    .end local v55           #is:Ljava/io/InputStream;
    .end local v56           #isTerminated:Z
    .end local v59           #method:I
    .end local v60           #mimeType:Ljava/lang/String;
    .end local v64           #outFile:Ljava/io/File;
    .end local v87           #transferEncoding:I
    :catchall_0
    move-exception v4

    move-object/from16 v45, v46

    .line 4593
    .end local v46           #fin:Ljava/io/FileInputStream;
    .restart local v45       #fin:Ljava/io/FileInputStream;
    :goto_b
    if-eqz v45, :cond_23

    .line 4594
    :try_start_1b
    invoke-virtual/range {v45 .. v45}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1b

    .line 4592
    :cond_23
    :goto_c
    throw v4

    .line 3912
    .end local v45           #fin:Ljava/io/FileInputStream;
    .restart local v6       #cr:Landroid/content/ContentResolver;
    .restart local v20       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v21       #contentOffset:I
    .restart local v46       #fin:Ljava/io/FileInputStream;
    .restart local v59       #method:I
    .restart local v60       #mimeType:Ljava/lang/String;
    .restart local v87       #transferEncoding:I
    :cond_24
    :try_start_1c
    const-string v22, ""

    .line 3914
    .local v22, contentUid:Ljava/lang/String;
    const/4 v7, 0x0

    .line 3917
    .local v7, contentUri:Landroid/net/Uri;
    const-string v4, "audio/"

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 3918
    sget-object v7, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    .line 3934
    :goto_d
    const/16 v36, 0x0

    .line 3935
    .local v36, duplicate:Z
    const/16 v66, 0x0

    .line 3936
    .local v66, overwrite:Z
    const/16 v89, 0x0

    .line 3938
    .local v89, uri:Landroid/net/Uri;
    sget-object v8, Landroid/provider/DrmStore;->TITLE_PROJECTION:[Ljava/lang/String;

    const-string v9, "content_url=?"

    const/4 v4, 0x1

    new-array v10, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p4, v10, v4

    const-string v11, "_id"

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 3939
    .local v15, c:Landroid/database/Cursor;
    if-eqz v15, :cond_64

    .line 3940
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_63

    .line 3944
    const-string v4, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " duplicated."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3946
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3947
    const-string v4, "_id"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 3948
    .local v19, columnIdIndex:I
    move/from16 v0, v19

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 3949
    .local v18, columnId:I
    const-string v4, "_data"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v44

    .line 3950
    .local v44, filePathIndex:I
    move/from16 v0, v44

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    .line 3951
    .local v43, filePath:Ljava/lang/String;
    const-string/jumbo v4, "title"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    .line 3952
    .local v86, titleInddex:I
    move/from16 v0, v86

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 3953
    .local v35, dup_title:Ljava/lang/String;
    const/16 v34, 0x0

    .line 3955
    .local v34, downloadPath:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v89

    .line 3956
    new-instance v54, Landroid/content/Intent;

    invoke-direct/range {v54 .. v54}, Landroid/content/Intent;-><init>()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_3

    .line 3957
    .end local v53           #intent:Landroid/content/Intent;
    .local v54, intent:Landroid/content/Intent;
    :try_start_1d
    move-object/from16 v0, v54

    move-object/from16 v1, v89

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 3959
    const-string v4, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dup_title:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3961
    const-string/jumbo v4, "title"

    move-object/from16 v0, v54

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3962
    const/16 v36, 0x1

    .line 3968
    const-string v4, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Check file path: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v43

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3971
    new-instance v41, Ljava/io/File;

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3972
    .local v41, f:Ljava/io/File;
    invoke-virtual/range {v41 .. v41}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v42

    .line 3973
    invoke-virtual/range {v41 .. v41}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 3974
    invoke-virtual/range {v41 .. v41}, Ljava/io/File;->delete()Z

    .line 3978
    :cond_25
    const/4 v4, 0x7

    move/from16 v0, p5

    if-ne v0, v4, :cond_2d

    .line 3988
    invoke-static {}, Landroid/provider/DrmStore;->getInternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v34

    .line 3990
    if-eqz v34, :cond_26

    const-string v4, ""

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 3991
    :cond_26
    const-string v4, "DrmStore"

    const-string v8, " @@@@@ internal download path doesn\'t exist!"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3993
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_c

    .line 3994
    const/16 v53, 0x0

    .line 4593
    if-eqz v46, :cond_1

    .line 4594
    :try_start_1e
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_8

    goto/16 :goto_0

    .line 4596
    :catch_8
    move-exception v38

    .line 4598
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 3919
    .end local v15           #c:Landroid/database/Cursor;
    .end local v18           #columnId:I
    .end local v19           #columnIdIndex:I
    .end local v34           #downloadPath:Ljava/lang/String;
    .end local v35           #dup_title:Ljava/lang/String;
    .end local v36           #duplicate:Z
    .end local v38           #e:Ljava/lang/Exception;
    .end local v41           #f:Ljava/io/File;
    .end local v43           #filePath:Ljava/lang/String;
    .end local v44           #filePathIndex:I
    .end local v54           #intent:Landroid/content/Intent;
    .end local v66           #overwrite:Z
    .end local v86           #titleInddex:I
    .end local v89           #uri:Landroid/net/Uri;
    .restart local v53       #intent:Landroid/content/Intent;
    :cond_27
    :try_start_1f
    const-string v4, "image/"

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 3920
    sget-object v7, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_d

    .line 3921
    :cond_28
    const-string/jumbo v4, "video/"

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 3922
    sget-object v7, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_d

    .line 3923
    :cond_29
    const-string v4, "application/java-archive"

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 3924
    sget-object v7, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_d

    .line 3927
    :cond_2a
    const-string v4, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unsupported mime type "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v60

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3929
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_3

    .line 3930
    const/16 v53, 0x0

    .line 4593
    .end local v53           #intent:Landroid/content/Intent;
    if-eqz v46, :cond_1

    .line 4594
    :try_start_20
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_9

    goto/16 :goto_0

    .line 4596
    :catch_9
    move-exception v38

    .line 4598
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 3997
    .end local v38           #e:Ljava/lang/Exception;
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v18       #columnId:I
    .restart local v19       #columnIdIndex:I
    .restart local v34       #downloadPath:Ljava/lang/String;
    .restart local v35       #dup_title:Ljava/lang/String;
    .restart local v36       #duplicate:Z
    .restart local v41       #f:Ljava/io/File;
    .restart local v43       #filePath:Ljava/lang/String;
    .restart local v44       #filePathIndex:I
    .restart local v54       #intent:Landroid/content/Intent;
    .restart local v66       #overwrite:Z
    .restart local v86       #titleInddex:I
    .restart local v89       #uri:Landroid/net/Uri;
    :cond_2b
    :try_start_21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .line 4033
    :goto_e
    const-string v4, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Saved file path: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v43

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4039
    new-instance v41, Ljava/io/File;

    .end local v41           #f:Ljava/io/File;
    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4040
    .restart local v41       #f:Ljava/io/File;
    invoke-virtual/range {v41 .. v41}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 4042
    const-string v4, "DrmStore"

    const-string v8, "File exists, use a new name"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4044
    const-string v4, "."

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v39

    .line 4045
    .local v39, ext:I
    const/16 v69, 0x0

    .line 4046
    .local v69, prefix:Ljava/lang/String;
    const/16 v79, 0x0

    .line 4047
    .local v79, suffix:Ljava/lang/String;
    if-lez v39, :cond_30

    .line 4048
    const/4 v4, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v39

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v69

    .line 4049
    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v42

    move/from16 v1, v39

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v79

    .line 4054
    :goto_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v69

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "---"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v41 .. v41}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    move-object/from16 v0, v79

    invoke-static {v4, v0, v8}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v61

    .line 4056
    .local v61, newFile:Ljava/io/File;
    invoke-virtual/range {v61 .. v61}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v43

    .line 4058
    const-string v4, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "New file path: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v43

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4063
    .end local v39           #ext:I
    .end local v61           #newFile:Ljava/io/File;
    .end local v69           #prefix:Ljava/lang/String;
    .end local v79           #suffix:Ljava/lang/String;
    :cond_2c
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 4065
    .local v26, cv:Landroid/content/ContentValues;
    sget-object v9, Landroid/provider/DrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v10, Landroid/provider/DrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "_id"

    move-object v8, v6

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v76

    .line 4066
    .local v76, stampCursor:Landroid/database/Cursor;
    if-eqz v76, :cond_32

    .line 4067
    invoke-interface/range {v76 .. v76}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 4073
    const-string/jumbo v4, "time_differential"

    move-object/from16 v0, v76

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 4074
    .local v31, differentialColumnId:I
    move-object/from16 v0, v76

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 4075
    .local v29, differential:J
    const-string/jumbo v4, "timezone_stamp"

    move-object/from16 v0, v76

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v84

    .line 4076
    .local v84, timeZoneColumnIndex:I
    move-object/from16 v0, v76

    move/from16 v1, v84

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v82

    .line 4077
    .local v82, timeZone:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 4078
    .local v24, currentClock:J
    const-string v4, "date_modified"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4079
    const-string v4, "date_added"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4084
    .end local v24           #currentClock:J
    .end local v29           #differential:J
    .end local v31           #differentialColumnId:I
    .end local v82           #timeZone:J
    .end local v84           #timeZoneColumnIndex:I
    :goto_10
    invoke-interface/range {v76 .. v76}, Landroid/database/Cursor;->close()V

    .line 4090
    :goto_11
    const/16 v66, 0x1

    .line 4092
    const-string v4, "existence"

    const-string v8, "exist"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4094
    const-string v4, "_data"

    move-object/from16 v0, v26

    move-object/from16 v1, v43

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4101
    const-string v4, "/"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v74

    .line 4102
    .local v74, slashPos:I
    add-int/lit8 v4, v74, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v33

    .line 4104
    .local v33, downloadName:Ljava/lang/String;
    const-string v4, "bucket_display_name"

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4107
    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v89

    move-object/from16 v1, v26

    invoke-virtual {v6, v0, v1, v4, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_c

    move-object/from16 v9, v89

    .end local v89           #uri:Landroid/net/Uri;
    .local v9, uri:Landroid/net/Uri;
    move-object/from16 v53, v54

    .line 4109
    .end local v18           #columnId:I
    .end local v19           #columnIdIndex:I
    .end local v26           #cv:Landroid/content/ContentValues;
    .end local v33           #downloadName:Ljava/lang/String;
    .end local v34           #downloadPath:Ljava/lang/String;
    .end local v35           #dup_title:Ljava/lang/String;
    .end local v41           #f:Ljava/io/File;
    .end local v43           #filePath:Ljava/lang/String;
    .end local v44           #filePathIndex:I
    .end local v54           #intent:Landroid/content/Intent;
    .end local v74           #slashPos:I
    .end local v76           #stampCursor:Landroid/database/Cursor;
    .end local v86           #titleInddex:I
    .restart local v53       #intent:Landroid/content/Intent;
    :goto_12
    :try_start_22
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 4111
    if-eqz v36, :cond_33

    if-nez v66, :cond_33

    .line 4113
    const-string v4, "DrmStore"

    const-string v8, "File is duplicated and exist."

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4115
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_3

    .line 4593
    if-eqz v46, :cond_1

    .line 4594
    :try_start_23
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_a

    goto/16 :goto_0

    .line 4596
    :catch_a
    move-exception v38

    .line 4598
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 4019
    .end local v9           #uri:Landroid/net/Uri;
    .end local v38           #e:Ljava/lang/Exception;
    .end local v53           #intent:Landroid/content/Intent;
    .restart local v18       #columnId:I
    .restart local v19       #columnIdIndex:I
    .restart local v34       #downloadPath:Ljava/lang/String;
    .restart local v35       #dup_title:Ljava/lang/String;
    .restart local v41       #f:Ljava/io/File;
    .restart local v43       #filePath:Ljava/lang/String;
    .restart local v44       #filePathIndex:I
    .restart local v54       #intent:Landroid/content/Intent;
    .restart local v86       #titleInddex:I
    .restart local v89       #uri:Landroid/net/Uri;
    :cond_2d
    :try_start_24
    invoke-static {}, Landroid/provider/DrmStore;->getExternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v34

    .line 4021
    if-eqz v34, :cond_2e

    const-string v4, ""

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 4022
    :cond_2e
    const-string v4, "DrmStore"

    const-string v8, " @@@@@ external download path doesn\'t exist!"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4024
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_c

    .line 4025
    const/16 v53, 0x0

    .line 4593
    if-eqz v46, :cond_1

    .line 4594
    :try_start_25
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_b

    goto/16 :goto_0

    .line 4596
    :catch_b
    move-exception v38

    .line 4598
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 4028
    .end local v38           #e:Ljava/lang/Exception;
    :cond_2f
    :try_start_26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    goto/16 :goto_e

    .line 4051
    .restart local v39       #ext:I
    .restart local v69       #prefix:Ljava/lang/String;
    .restart local v79       #suffix:Ljava/lang/String;
    :cond_30
    move-object/from16 v69, v42

    .line 4052
    const-string v79, ""

    goto/16 :goto_f

    .line 4081
    .end local v39           #ext:I
    .end local v69           #prefix:Ljava/lang/String;
    .end local v79           #suffix:Ljava/lang/String;
    .restart local v26       #cv:Landroid/content/ContentValues;
    .restart local v76       #stampCursor:Landroid/database/Cursor;
    :cond_31
    const-string v4, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4082
    const-string v4, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_10

    .line 4581
    .end local v18           #columnId:I
    .end local v19           #columnIdIndex:I
    .end local v26           #cv:Landroid/content/ContentValues;
    .end local v34           #downloadPath:Ljava/lang/String;
    .end local v35           #dup_title:Ljava/lang/String;
    .end local v41           #f:Ljava/io/File;
    .end local v43           #filePath:Ljava/lang/String;
    .end local v44           #filePathIndex:I
    .end local v76           #stampCursor:Landroid/database/Cursor;
    .end local v86           #titleInddex:I
    .end local v89           #uri:Landroid/net/Uri;
    :catch_c
    move-exception v38

    move-object/from16 v45, v46

    .end local v46           #fin:Ljava/io/FileInputStream;
    .restart local v45       #fin:Ljava/io/FileInputStream;
    move-object/from16 v53, v54

    .end local v54           #intent:Landroid/content/Intent;
    .restart local v53       #intent:Landroid/content/Intent;
    goto/16 :goto_6

    .line 4086
    .end local v45           #fin:Ljava/io/FileInputStream;
    .end local v53           #intent:Landroid/content/Intent;
    .restart local v18       #columnId:I
    .restart local v19       #columnIdIndex:I
    .restart local v26       #cv:Landroid/content/ContentValues;
    .restart local v34       #downloadPath:Ljava/lang/String;
    .restart local v35       #dup_title:Ljava/lang/String;
    .restart local v41       #f:Ljava/io/File;
    .restart local v43       #filePath:Ljava/lang/String;
    .restart local v44       #filePathIndex:I
    .restart local v46       #fin:Ljava/io/FileInputStream;
    .restart local v54       #intent:Landroid/content/Intent;
    .restart local v76       #stampCursor:Landroid/database/Cursor;
    .restart local v86       #titleInddex:I
    .restart local v89       #uri:Landroid/net/Uri;
    :cond_32
    const-string v4, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4087
    const-string v4, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_c

    goto/16 :goto_11

    .line 4592
    .end local v18           #columnId:I
    .end local v19           #columnIdIndex:I
    .end local v26           #cv:Landroid/content/ContentValues;
    .end local v34           #downloadPath:Ljava/lang/String;
    .end local v35           #dup_title:Ljava/lang/String;
    .end local v41           #f:Ljava/io/File;
    .end local v43           #filePath:Ljava/lang/String;
    .end local v44           #filePathIndex:I
    .end local v76           #stampCursor:Landroid/database/Cursor;
    .end local v86           #titleInddex:I
    .end local v89           #uri:Landroid/net/Uri;
    :catchall_1
    move-exception v4

    move-object/from16 v45, v46

    .end local v46           #fin:Ljava/io/FileInputStream;
    .restart local v45       #fin:Ljava/io/FileInputStream;
    move-object/from16 v53, v54

    .end local v54           #intent:Landroid/content/Intent;
    .restart local v53       #intent:Landroid/content/Intent;
    goto/16 :goto_b

    .line 4117
    .end local v45           #fin:Ljava/io/FileInputStream;
    .restart local v9       #uri:Landroid/net/Uri;
    .restart local v46       #fin:Ljava/io/FileInputStream;
    :cond_33
    if-eqz v36, :cond_44

    if-eqz v66, :cond_44

    .line 4119
    :try_start_27
    const-string v4, "DrmStore"

    const-string v8, "Overwrite the file."

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4124
    invoke-static {v6, v9}, Landroid/provider/DrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v37

    .line 4125
    .local v37, duplicatePath:Ljava/lang/String;
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4126
    .local v17, checkFile:Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_34

    .line 4127
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 4132
    :cond_34
    invoke-static/range {v60 .. v60}, Landroid/provider/DrmStore;->NeedToEncrypt(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_35

    const/4 v4, 0x3

    move/from16 v0, v59

    if-ne v0, v4, :cond_39

    .line 4135
    :cond_35
    new-instance v77, Ljava/io/FileInputStream;

    move-object/from16 v0, v77

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4138
    .local v77, stream:Ljava/io/FileInputStream;
    new-instance v63, Ljava/io/FileOutputStream;

    move-object/from16 v0, v63

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 4139
    .local v63, os:Ljava/io/FileOutputStream;
    if-nez v63, :cond_38

    .line 4140
    invoke-virtual/range {v77 .. v77}, Ljava/io/FileInputStream;->close()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_3

    .line 4261
    .end local v63           #os:Ljava/io/FileOutputStream;
    .end local v77           #stream:Ljava/io/FileInputStream;
    :cond_36
    :goto_13
    :try_start_28
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_e

    move-object/from16 v45, v46

    .line 4272
    .end local v46           #fin:Ljava/io/FileInputStream;
    .restart local v45       #fin:Ljava/io/FileInputStream;
    :goto_14
    :try_start_29
    const-string v4, "audio"

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 4273
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, v60

    invoke-static {v0, v1, v2, v3, v9}, Landroid/provider/DrmStore;->parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/ContentValues;
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_10

    .line 4593
    :cond_37
    :goto_15
    if-eqz v45, :cond_1

    .line 4594
    :try_start_2a
    invoke-virtual/range {v45 .. v45}, Ljava/io/FileInputStream;->close()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_d

    goto/16 :goto_0

    .line 4596
    :catch_d
    move-exception v38

    .line 4598
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 4143
    .end local v38           #e:Ljava/lang/Exception;
    .end local v45           #fin:Ljava/io/FileInputStream;
    .restart local v46       #fin:Ljava/io/FileInputStream;
    .restart local v63       #os:Ljava/io/FileOutputStream;
    .restart local v77       #stream:Ljava/io/FileInputStream;
    :cond_38
    :try_start_2b
    move-object/from16 v0, v77

    move-object/from16 v1, v63

    invoke-static {v0, v1}, Landroid/provider/DrmStore;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_2

    .line 4145
    :try_start_2c
    invoke-virtual/range {v77 .. v77}, Ljava/io/FileInputStream;->close()V

    .line 4146
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V

    goto :goto_13

    .line 4145
    :catchall_2
    move-exception v4

    invoke-virtual/range {v77 .. v77}, Ljava/io/FileInputStream;->close()V

    .line 4146
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V

    .line 4145
    throw v4

    .line 4149
    .end local v63           #os:Ljava/io/FileOutputStream;
    .end local v77           #stream:Ljava/io/FileInputStream;
    :cond_39
    const-string v4, "application/vnd.oma.drm.message"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 4151
    const/4 v4, 0x2

    move/from16 v0, v59

    if-ne v0, v4, :cond_3a

    .line 4161
    :cond_3a
    const-string/jumbo v4, "ro.board.platform"

    const/4 v8, 0x0

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    .line 4164
    .local v67, platform:Ljava/lang/String;
    if-eqz v67, :cond_3b

    const-string v4, ""

    move-object/from16 v0, v67

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 4165
    :cond_3b
    const/16 v68, 0x0

    .line 4170
    .local v68, platformLowerCase:Ljava/lang/String;
    :goto_16
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x62

    if-eq v4, v8, :cond_3c

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x42

    if-eq v4, v8, :cond_3c

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x10

    if-eq v4, v8, :cond_3c

    if-eqz v68, :cond_42

    const-string v4, ""

    move-object/from16 v0, v68

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_42

    const-string/jumbo v4, "msm7k"

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3c

    const-string v4, "7x27"

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 4185
    :cond_3c
    const-string v4, "DrmStore"

    const-string v8, " @@@@@ save Duplicate File for MSM7K case."

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_3

    .line 4189
    :try_start_2d
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4191
    .local v23, createFile:Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_4

    move-result v4

    if-nez v4, :cond_3d

    .line 4193
    :try_start_2e
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->createNewFile()Z
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_18

    .line 4196
    const/16 v23, 0x0

    .line 4197
    :try_start_2f
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 4201
    :cond_3d
    :goto_17
    const/16 v70, 0x0

    .line 4202
    .local v70, repeat:I
    const/16 v78, 0x0

    .line 4203
    .local v78, success:Z
    const/16 v72, 0x0

    .line 4205
    .local v72, resultSaveFile:I
    :goto_18
    const/4 v4, 0x3

    move/from16 v0, v70

    if-ge v0, v4, :cond_41

    .line 4207
    if-ltz v70, :cond_3f

    .line 4208
    new-instance v81, Ljava/io/FileInputStream;

    move-object/from16 v0, v81

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4209
    .local v81, tempFin:Ljava/io/FileInputStream;
    new-instance v80, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v81 .. v81}, Ljava/io/FileInputStream;->available()I

    move-result v4

    move-object/from16 v0, v80

    move-object/from16 v1, v81

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v4, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 4212
    .restart local v80       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    move-object/from16 v0, p1

    move-object/from16 v1, v80

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/DrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_4

    move-result v72

    .line 4215
    :try_start_30
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileInputStream;->close()V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_19

    .line 4224
    .end local v80           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v81           #tempFin:Ljava/io/FileInputStream;
    :goto_19
    const/4 v4, -0x1

    move/from16 v0, v72

    if-ne v0, v4, :cond_40

    .line 4225
    add-int/lit8 v70, v70, 0x1

    goto :goto_18

    .line 4167
    .end local v23           #createFile:Ljava/io/File;
    .end local v68           #platformLowerCase:Ljava/lang/String;
    .end local v70           #repeat:I
    .end local v72           #resultSaveFile:I
    .end local v78           #success:Z
    :cond_3e
    :try_start_31
    invoke-virtual/range {v67 .. v67}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_3

    move-result-object v68

    .restart local v68       #platformLowerCase:Ljava/lang/String;
    goto/16 :goto_16

    .line 4196
    .restart local v23       #createFile:Ljava/io/File;
    :catchall_3
    move-exception v4

    const/16 v23, 0x0

    .line 4197
    :try_start_32
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 4196
    throw v4
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_4

    .line 4236
    .end local v23           #createFile:Ljava/io/File;
    :catchall_4
    move-exception v4

    :try_start_33
    throw v4
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_3

    .line 4217
    .restart local v23       #createFile:Ljava/io/File;
    .restart local v70       #repeat:I
    .restart local v72       #resultSaveFile:I
    .restart local v78       #success:Z
    .restart local v80       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v81       #tempFin:Ljava/io/FileInputStream;
    :catchall_5
    move-exception v4

    :try_start_34
    throw v4

    .line 4221
    .end local v80           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v81           #tempFin:Ljava/io/FileInputStream;
    :cond_3f
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/DrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_4

    move-result v72

    goto :goto_19

    .line 4228
    :cond_40
    const/16 v70, 0x3

    .line 4229
    const/16 v78, 0x1

    goto :goto_18

    .line 4233
    :cond_41
    if-nez v78, :cond_36

    .line 4234
    const/16 v53, 0x0

    goto/16 :goto_13

    .line 4240
    .end local v23           #createFile:Ljava/io/File;
    .end local v70           #repeat:I
    .end local v72           #resultSaveFile:I
    .end local v78           #success:Z
    :cond_42
    :try_start_35
    new-instance v63, Ljava/io/FileOutputStream;

    move-object/from16 v0, v63

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_3

    .line 4241
    .restart local v63       #os:Ljava/io/FileOutputStream;
    if-eqz v63, :cond_36

    .line 4247
    const/4 v4, -0x1

    :try_start_36
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v63

    invoke-static {v0, v1, v2}, Landroid/provider/DrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/io/FileOutputStream;)I
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_6

    move-result v8

    if-ne v4, v8, :cond_43

    .line 4249
    const/16 v53, 0x0

    .line 4253
    :cond_43
    :try_start_37
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_13

    :catchall_6
    move-exception v4

    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V

    throw v4

    .line 4262
    .end local v63           #os:Ljava/io/FileOutputStream;
    .end local v67           #platform:Ljava/lang/String;
    .end local v68           #platformLowerCase:Ljava/lang/String;
    :catch_e
    move-exception v38

    .line 4263
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "DrmStore"

    const-string v8, " @@@@@  ERROR: close file failed!!! (addDrmFileWithoutRights)"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4264
    const-string v4, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4265
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_3

    .line 4267
    const/16 v45, 0x0

    .line 4268
    .end local v46           #fin:Ljava/io/FileInputStream;
    .restart local v45       #fin:Ljava/io/FileInputStream;
    :try_start_38
    invoke-static {}, Ljava/lang/System;->gc()V

    goto/16 :goto_14

    .line 4581
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v9           #uri:Landroid/net/Uri;
    .end local v15           #c:Landroid/database/Cursor;
    .end local v17           #checkFile:Ljava/io/File;
    .end local v20           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v21           #contentOffset:I
    .end local v22           #contentUid:Ljava/lang/String;
    .end local v36           #duplicate:Z
    .end local v37           #duplicatePath:Ljava/lang/String;
    .end local v38           #e:Ljava/lang/Exception;
    .end local v59           #method:I
    .end local v60           #mimeType:Ljava/lang/String;
    .end local v66           #overwrite:Z
    .end local v87           #transferEncoding:I
    :catch_f
    move-exception v38

    goto/16 :goto_6

    .line 4275
    .restart local v7       #contentUri:Landroid/net/Uri;
    .restart local v9       #uri:Landroid/net/Uri;
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v17       #checkFile:Ljava/io/File;
    .restart local v20       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v21       #contentOffset:I
    .restart local v22       #contentUid:Ljava/lang/String;
    .restart local v36       #duplicate:Z
    .restart local v37       #duplicatePath:Ljava/lang/String;
    .restart local v59       #method:I
    .restart local v60       #mimeType:Ljava/lang/String;
    .restart local v66       #overwrite:Z
    .restart local v87       #transferEncoding:I
    :catch_10
    move-exception v38

    .line 4277
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File duplicate parse Media: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_f

    goto/16 :goto_15

    .line 4592
    .end local v6           #cr:Landroid/content/ContentResolver;
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v9           #uri:Landroid/net/Uri;
    .end local v15           #c:Landroid/database/Cursor;
    .end local v17           #checkFile:Ljava/io/File;
    .end local v20           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v21           #contentOffset:I
    .end local v22           #contentUid:Ljava/lang/String;
    .end local v36           #duplicate:Z
    .end local v37           #duplicatePath:Ljava/lang/String;
    .end local v38           #e:Ljava/lang/Exception;
    .end local v59           #method:I
    .end local v60           #mimeType:Ljava/lang/String;
    .end local v66           #overwrite:Z
    .end local v87           #transferEncoding:I
    :catchall_7
    move-exception v4

    goto/16 :goto_b

    .line 4283
    .end local v45           #fin:Ljava/io/FileInputStream;
    .restart local v6       #cr:Landroid/content/ContentResolver;
    .restart local v7       #contentUri:Landroid/net/Uri;
    .restart local v9       #uri:Landroid/net/Uri;
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v20       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v21       #contentOffset:I
    .restart local v22       #contentUid:Ljava/lang/String;
    .restart local v36       #duplicate:Z
    .restart local v46       #fin:Ljava/io/FileInputStream;
    .restart local v59       #method:I
    .restart local v60       #mimeType:Ljava/lang/String;
    .restart local v66       #overwrite:Z
    .restart local v87       #transferEncoding:I
    :cond_44
    :try_start_39
    const-string v4, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Prepare to install: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_3

    move-object/from16 v54, v53

    .line 4289
    .end local v53           #intent:Landroid/content/Intent;
    .restart local v54       #intent:Landroid/content/Intent;
    :goto_1a
    :try_start_3a
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 4291
    .restart local v26       #cv:Landroid/content/ContentValues;
    const-string v4, "_size"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4293
    const-string/jumbo v4, "title"

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4295
    const-string/jumbo v4, "mime_type"

    move-object/from16 v0, v26

    move-object/from16 v1, v60

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4296
    const-string/jumbo v4, "message_type"

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4297
    const-string v4, "delivery_type"

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4298
    const-string v4, "content_offset"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4299
    const-string v4, "content_url"

    move-object/from16 v0, v26

    move-object/from16 v1, p4

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4302
    sget-object v9, Landroid/provider/DrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    .end local v9           #uri:Landroid/net/Uri;
    sget-object v10, Landroid/provider/DrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "_id"

    move-object v8, v6

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v76

    .line 4303
    .restart local v76       #stampCursor:Landroid/database/Cursor;
    if-eqz v76, :cond_46

    .line 4304
    invoke-interface/range {v76 .. v76}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 4310
    const-string/jumbo v4, "time_differential"

    move-object/from16 v0, v76

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 4311
    .restart local v31       #differentialColumnId:I
    move-object/from16 v0, v76

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 4312
    .restart local v29       #differential:J
    const-string/jumbo v4, "timezone_stamp"

    move-object/from16 v0, v76

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v84

    .line 4313
    .restart local v84       #timeZoneColumnIndex:I
    move-object/from16 v0, v76

    move/from16 v1, v84

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v82

    .line 4314
    .restart local v82       #timeZone:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 4315
    .restart local v24       #currentClock:J
    const-string v4, "date_added"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4319
    .end local v24           #currentClock:J
    .end local v29           #differential:J
    .end local v31           #differentialColumnId:I
    .end local v82           #timeZone:J
    .end local v84           #timeZoneColumnIndex:I
    :goto_1b
    invoke-interface/range {v76 .. v76}, Landroid/database/Cursor;->close()V

    .line 4325
    :goto_1c
    const-string v4, "Destination"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4328
    move-object/from16 v0, v26

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .line 4329
    .restart local v9       #uri:Landroid/net/Uri;
    if-nez v9, :cond_47

    .line 4331
    const-string v4, "DrmStore"

    const-string v8, "Insert to DRM db failed."

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4333
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_c

    .line 4334
    const/16 v53, 0x0

    .line 4593
    if-eqz v46, :cond_1

    .line 4594
    :try_start_3b
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_11

    goto/16 :goto_0

    .line 4596
    :catch_11
    move-exception v38

    .line 4598
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 4317
    .end local v9           #uri:Landroid/net/Uri;
    .end local v38           #e:Ljava/lang/Exception;
    :cond_45
    :try_start_3c
    const-string v4, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1b

    .line 4321
    :cond_46
    const-string v4, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1c

    .line 4336
    .restart local v9       #uri:Landroid/net/Uri;
    :cond_47
    const/4 v14, 0x0

    .line 4340
    .local v14, boundary_length:I
    invoke-static/range {v60 .. v60}, Landroid/provider/DrmStore;->NeedToEncrypt(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_48

    const/4 v4, 0x3

    move/from16 v0, v59

    if-ne v0, v4, :cond_4a

    .line 4342
    :cond_48
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/drm/mobile1/DrmRawContent;->getContentId(Landroid/drm/mobile1/DrmRights;)Ljava/lang/String;

    move-result-object v22

    .line 4343
    new-instance v77, Ljava/io/FileInputStream;

    move-object/from16 v0, v77

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4346
    .restart local v77       #stream:Ljava/io/FileInputStream;
    new-instance v63, Ljava/io/FileOutputStream;

    invoke-static {v6, v9}, Landroid/provider/DrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v63

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_c

    .line 4347
    .restart local v63       #os:Ljava/io/FileOutputStream;
    if-eqz v63, :cond_49

    .line 4349
    :try_start_3d
    move-object/from16 v0, v77

    move-object/from16 v1, v63

    invoke-static {v0, v1}, Landroid/provider/DrmStore;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_8

    .line 4351
    :try_start_3e
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_c

    .line 4520
    .end local v63           #os:Ljava/io/FileOutputStream;
    .end local v77           #stream:Ljava/io/FileInputStream;
    :cond_49
    :goto_1d
    const/4 v4, -0x1

    if-ne v14, v4, :cond_58

    .line 4521
    const/16 v53, 0x0

    .line 4593
    if-eqz v46, :cond_1

    .line 4594
    :try_start_3f
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_12

    goto/16 :goto_0

    .line 4596
    :catch_12
    move-exception v38

    .line 4598
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 4351
    .end local v38           #e:Ljava/lang/Exception;
    .restart local v63       #os:Ljava/io/FileOutputStream;
    .restart local v77       #stream:Ljava/io/FileInputStream;
    :catchall_8
    move-exception v4

    :try_start_40
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V

    throw v4

    .line 4354
    .end local v63           #os:Ljava/io/FileOutputStream;
    .end local v77           #stream:Ljava/io/FileInputStream;
    :cond_4a
    const/4 v4, 0x1

    move/from16 v0, v59

    if-ne v0, v4, :cond_50

    .line 4364
    sget-boolean v4, Landroid/provider/DrmStore;->REBUILD_DATABASE:Z

    const/4 v8, 0x1

    if-ne v4, v8, :cond_4f

    .line 4366
    new-instance v75, Ljava/io/FileInputStream;

    move-object/from16 v0, v75

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4368
    .local v75, sourceFileInputStream:Ljava/io/FileInputStream;
    new-instance v28, Ljava/io/FileOutputStream;

    invoke-static {v6, v9}, Landroid/provider/DrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_c

    .line 4371
    .local v28, destinationFileOutputStream:Ljava/io/FileOutputStream;
    if-eqz v28, :cond_49

    .line 4375
    :try_start_41
    move-object/from16 v0, v75

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/provider/DrmStore;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_9
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_14

    .line 4385
    if-eqz v75, :cond_4b

    .line 4387
    :try_start_42
    invoke-virtual/range {v75 .. v75}, Ljava/io/FileInputStream;->close()V

    .line 4390
    :cond_4b
    if-eqz v28, :cond_49

    .line 4392
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileOutputStream;->close()V
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_13

    goto :goto_1d

    .line 4395
    :catch_13
    move-exception v38

    .line 4397
    .restart local v38       #e:Ljava/lang/Exception;
    :try_start_43
    const-string v4, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_c

    goto :goto_1d

    .line 4377
    .end local v38           #e:Ljava/lang/Exception;
    :catch_14
    move-exception v38

    .line 4379
    .restart local v38       #e:Ljava/lang/Exception;
    :try_start_44
    const-string v4, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_9

    .line 4385
    if-eqz v75, :cond_4c

    .line 4387
    :try_start_45
    invoke-virtual/range {v75 .. v75}, Ljava/io/FileInputStream;->close()V

    .line 4390
    :cond_4c
    if-eqz v28, :cond_49

    .line 4392
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileOutputStream;->close()V
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_15

    goto :goto_1d

    .line 4395
    :catch_15
    move-exception v38

    .line 4397
    :try_start_46
    const-string v4, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_c

    goto :goto_1d

    .line 4383
    .end local v38           #e:Ljava/lang/Exception;
    :catchall_9
    move-exception v4

    .line 4385
    if-eqz v75, :cond_4d

    .line 4387
    :try_start_47
    invoke-virtual/range {v75 .. v75}, Ljava/io/FileInputStream;->close()V

    .line 4390
    :cond_4d
    if-eqz v28, :cond_4e

    .line 4392
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileOutputStream;->close()V
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_47} :catch_1e

    .line 4383
    :cond_4e
    :goto_1e
    :try_start_48
    throw v4

    .line 4406
    .end local v28           #destinationFileOutputStream:Ljava/io/FileOutputStream;
    .end local v75           #sourceFileInputStream:Ljava/io/FileInputStream;
    :cond_4f
    new-instance v63, Ljava/io/FileOutputStream;

    invoke-static {v6, v9}, Landroid/provider/DrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v63

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_c

    .line 4407
    .restart local v63       #os:Ljava/io/FileOutputStream;
    if-eqz v63, :cond_49

    .line 4409
    :try_start_49
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v63

    invoke-static {v0, v1, v2}, Landroid/provider/DrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/io/FileOutputStream;)I
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_a

    move-result v14

    .line 4411
    :try_start_4a
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_1d

    :catchall_a
    move-exception v4

    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V

    throw v4

    .line 4417
    .end local v63           #os:Ljava/io/FileOutputStream;
    :cond_50
    const/4 v4, 0x2

    move/from16 v0, v59

    if-ne v0, v4, :cond_57

    .line 4432
    const-string/jumbo v4, "ro.board.platform"

    const/4 v8, 0x0

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    .line 4435
    .restart local v67       #platform:Ljava/lang/String;
    if-eqz v67, :cond_51

    const-string v4, ""

    move-object/from16 v0, v67

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 4436
    :cond_51
    const/16 v68, 0x0

    .line 4441
    .restart local v68       #platformLowerCase:Ljava/lang/String;
    :goto_1f
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x62

    if-eq v4, v8, :cond_52

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x42

    if-eq v4, v8, :cond_52

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x10

    if-eq v4, v8, :cond_52

    if-eqz v68, :cond_56

    const-string v4, ""

    move-object/from16 v0, v68

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_56

    const-string/jumbo v4, "msm7k"

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_52

    const-string v4, "7x27"

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 4456
    :cond_52
    const-string v4, "DrmStore"

    const-string v8, " @@@@@ saveFile for MSM7K case."

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4459
    const/16 v70, 0x0

    .line 4461
    .restart local v70       #repeat:I
    :goto_20
    const/4 v4, 0x3

    move/from16 v0, v70

    if-ge v0, v4, :cond_49

    .line 4463
    if-ltz v70, :cond_54

    .line 4464
    new-instance v81, Ljava/io/FileInputStream;

    move-object/from16 v0, v81

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4465
    .restart local v81       #tempFin:Ljava/io/FileInputStream;
    new-instance v80, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v81 .. v81}, Ljava/io/FileInputStream;->available()I

    move-result v4

    move-object/from16 v0, v80

    move-object/from16 v1, v81

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v4, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 4468
    .restart local v80       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    invoke-static {v6, v9}, Landroid/provider/DrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, v80

    invoke-static {v0, v1, v4}, Landroid/provider/DrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4a} :catch_c

    move-result v14

    .line 4471
    :try_start_4b
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileInputStream;->close()V
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4b} :catch_1a

    .line 4480
    .end local v80           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v81           #tempFin:Ljava/io/FileInputStream;
    :goto_21
    const/4 v4, -0x1

    if-ne v14, v4, :cond_55

    .line 4481
    add-int/lit8 v70, v70, 0x1

    goto :goto_20

    .line 4438
    .end local v68           #platformLowerCase:Ljava/lang/String;
    .end local v70           #repeat:I
    :cond_53
    :try_start_4c
    invoke-virtual/range {v67 .. v67}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v68

    .restart local v68       #platformLowerCase:Ljava/lang/String;
    goto :goto_1f

    .line 4473
    .restart local v70       #repeat:I
    .restart local v80       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v81       #tempFin:Ljava/io/FileInputStream;
    :catchall_b
    move-exception v4

    throw v4

    .line 4477
    .end local v80           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v81           #tempFin:Ljava/io/FileInputStream;
    :cond_54
    invoke-static {v6, v9}, Landroid/provider/DrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4}, Landroid/provider/DrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I

    move-result v14

    goto :goto_21

    .line 4484
    :cond_55
    const/16 v70, 0x3

    goto :goto_20

    .line 4493
    .end local v70           #repeat:I
    :cond_56
    const-string v4, "DrmStore"

    const-string v8, " @@@@@ saveFile for NORMAL case."

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4496
    new-instance v63, Ljava/io/FileOutputStream;

    invoke-static {v6, v9}, Landroid/provider/DrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v63

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4c} :catch_c

    .line 4498
    .restart local v63       #os:Ljava/io/FileOutputStream;
    if-eqz v63, :cond_49

    .line 4500
    :try_start_4d
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v63

    invoke-static {v0, v1, v2}, Landroid/provider/DrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/io/FileOutputStream;)I
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_c

    move-result v14

    .line 4503
    :try_start_4e
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_1d

    :catchall_c
    move-exception v4

    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V

    throw v4

    .line 4510
    .end local v63           #os:Ljava/io/FileOutputStream;
    .end local v67           #platform:Ljava/lang/String;
    .end local v68           #platformLowerCase:Ljava/lang/String;
    :cond_57
    const-string v4, "DrmStore"

    const-string v8, "Unknown method."

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4512
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4e} :catch_c

    .line 4513
    const/16 v53, 0x0

    .line 4593
    if-eqz v46, :cond_1

    .line 4594
    :try_start_4f
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_4f} :catch_16

    goto/16 :goto_0

    .line 4596
    :catch_16
    move-exception v38

    .line 4598
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 4525
    .end local v38           #e:Ljava/lang/Exception;
    :cond_58
    :try_start_50
    new-instance v53, Landroid/content/Intent;

    invoke-direct/range {v53 .. v53}, Landroid/content/Intent;-><init>()V
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_50} :catch_c

    .line 4526
    .end local v54           #intent:Landroid/content/Intent;
    .restart local v53       #intent:Landroid/content/Intent;
    :try_start_51
    move-object/from16 v0, v53

    move-object/from16 v1, v60

    invoke-virtual {v0, v9, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 4528
    sget-object v10, Landroid/provider/DrmStore;->TITLE_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "_id"

    move-object v8, v6

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 4529
    .local v16, c_title:Landroid/database/Cursor;
    if-eqz v16, :cond_5a

    .line 4530
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_59

    .line 4531
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4532
    const-string/jumbo v4, "title"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v85

    .line 4533
    .local v85, titleIdIndex:I
    move-object/from16 v0, v16

    move/from16 v1, v85

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v62

    .line 4535
    .local v62, newTitle:Ljava/lang/String;
    const-string v4, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "newTitle:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v62

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4537
    if-eqz v62, :cond_59

    .line 4538
    const-string/jumbo v4, "title"

    move-object/from16 v0, v53

    move-object/from16 v1, v62

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4539
    const-string/jumbo v4, "title"

    move-object/from16 v0, v26

    move-object/from16 v1, v62

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4542
    .end local v62           #newTitle:Ljava/lang/String;
    .end local v85           #titleIdIndex:I
    :cond_59
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 4546
    :cond_5a
    const-string v4, "audio"

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 4547
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, v60

    invoke-static {v0, v1, v2, v3, v9}, Landroid/provider/DrmStore;->parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/ContentValues;

    move-result-object v90

    .line 4548
    .local v90, values:Landroid/content/ContentValues;
    if-eqz v90, :cond_5b

    .line 4549
    const-string v4, "album_id"

    const-string v8, "album_id"

    move-object/from16 v0, v90

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4550
    const-string v4, "artist_id"

    const-string v8, "artist_id"

    move-object/from16 v0, v90

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4552
    const-string/jumbo v4, "title"

    move-object/from16 v0, v90

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5b

    const-string/jumbo v4, "title"

    move-object/from16 v0, v90

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5b

    .line 4553
    const-string/jumbo v4, "title"

    const-string/jumbo v8, "title"

    move-object/from16 v0, v90

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4557
    :cond_5b
    invoke-static {}, Landroid/provider/DrmStore;->SupportForwardLockOnly()Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 4558
    const/4 v4, 0x1

    move/from16 v0, v59

    if-ne v0, v4, :cond_5c

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/32 v12, 0x4b000

    cmp-long v4, v10, v12

    if-gez v4, :cond_5c

    .line 4559
    const-string v4, "is_ringtone"

    const-string v8, "1"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4564
    .end local v90           #values:Landroid/content/ContentValues;
    :cond_5c
    const-string v4, "content_id"

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4565
    const-string v4, "content_boundary_offset"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4573
    sget-boolean v4, Landroid/provider/DrmStore;->REBUILD_DATABASE:Z

    const/4 v8, 0x1

    if-ne v4, v8, :cond_5d

    .line 4575
    const-string v4, "content_url"

    invoke-static {v6, v9}, Landroid/provider/DrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4576
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    .line 4580
    :cond_5d
    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v6, v9, v0, v4, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_51} :catch_3

    .line 4593
    if-eqz v46, :cond_1

    .line 4594
    :try_start_52
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_52} :catch_17

    goto/16 :goto_0

    .line 4596
    :catch_17
    move-exception v38

    .line 4598
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 4194
    .end local v14           #boundary_length:I
    .end local v16           #c_title:Landroid/database/Cursor;
    .end local v26           #cv:Landroid/content/ContentValues;
    .end local v38           #e:Ljava/lang/Exception;
    .end local v76           #stampCursor:Landroid/database/Cursor;
    .restart local v17       #checkFile:Ljava/io/File;
    .restart local v23       #createFile:Ljava/io/File;
    .restart local v37       #duplicatePath:Ljava/lang/String;
    .restart local v67       #platform:Ljava/lang/String;
    .restart local v68       #platformLowerCase:Ljava/lang/String;
    :catch_18
    move-exception v4

    .line 4196
    const/16 v23, 0x0

    .line 4197
    :try_start_53
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_4

    goto/16 :goto_17

    .line 4216
    .restart local v70       #repeat:I
    .restart local v72       #resultSaveFile:I
    .restart local v78       #success:Z
    .restart local v80       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v81       #tempFin:Ljava/io/FileInputStream;
    :catch_19
    move-exception v4

    goto/16 :goto_19

    .line 4472
    .end local v17           #checkFile:Ljava/io/File;
    .end local v23           #createFile:Ljava/io/File;
    .end local v37           #duplicatePath:Ljava/lang/String;
    .end local v53           #intent:Landroid/content/Intent;
    .end local v72           #resultSaveFile:I
    .end local v78           #success:Z
    .restart local v14       #boundary_length:I
    .restart local v26       #cv:Landroid/content/ContentValues;
    .restart local v54       #intent:Landroid/content/Intent;
    .restart local v76       #stampCursor:Landroid/database/Cursor;
    :catch_1a
    move-exception v4

    goto/16 :goto_21

    .line 4596
    .end local v6           #cr:Landroid/content/ContentResolver;
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v9           #uri:Landroid/net/Uri;
    .end local v14           #boundary_length:I
    .end local v15           #c:Landroid/database/Cursor;
    .end local v20           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v21           #contentOffset:I
    .end local v22           #contentUid:Ljava/lang/String;
    .end local v26           #cv:Landroid/content/ContentValues;
    .end local v36           #duplicate:Z
    .end local v46           #fin:Ljava/io/FileInputStream;
    .end local v54           #intent:Landroid/content/Intent;
    .end local v59           #method:I
    .end local v60           #mimeType:Ljava/lang/String;
    .end local v66           #overwrite:Z
    .end local v67           #platform:Ljava/lang/String;
    .end local v68           #platformLowerCase:Ljava/lang/String;
    .end local v70           #repeat:I
    .end local v76           #stampCursor:Landroid/database/Cursor;
    .end local v80           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v81           #tempFin:Ljava/io/FileInputStream;
    .end local v87           #transferEncoding:I
    .restart local v45       #fin:Ljava/io/FileInputStream;
    .restart local v53       #intent:Landroid/content/Intent;
    :catch_1b
    move-exception v38

    .line 4598
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v8, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 4596
    .end local v38           #e:Ljava/lang/Exception;
    .end local v45           #fin:Ljava/io/FileInputStream;
    .restart local v5       #binaryFile:Ljava/io/File;
    .restart local v20       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v46       #fin:Ljava/io/FileInputStream;
    .restart local v65       #outputBinaryFilePath:Ljava/lang/String;
    .restart local v71       #resultIntent:Landroid/content/Intent;
    .restart local v87       #transferEncoding:I
    :catch_1c
    move-exception v38

    .line 4598
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 3878
    .end local v5           #binaryFile:Ljava/io/File;
    .end local v38           #e:Ljava/lang/Exception;
    .end local v65           #outputBinaryFilePath:Ljava/lang/String;
    .end local v71           #resultIntent:Landroid/content/Intent;
    .restart local v6       #cr:Landroid/content/ContentResolver;
    .restart local v21       #contentOffset:I
    .restart local v40       #extention:Ljava/lang/String;
    .restart local v49       #fis2:Ljava/io/FileInputStream;
    .restart local v51       #fos:Ljava/io/FileOutputStream;
    .restart local v55       #is:Ljava/io/InputStream;
    .restart local v56       #isTerminated:Z
    .restart local v59       #method:I
    .restart local v60       #mimeType:Ljava/lang/String;
    .restart local v64       #outFile:Ljava/io/File;
    :catchall_d
    move-exception v4

    :goto_22
    if-eqz v51, :cond_5e

    .line 3879
    :try_start_54
    invoke-virtual/range {v51 .. v51}, Ljava/io/FileOutputStream;->close()V

    .line 3880
    const/16 v51, 0x0

    .line 3882
    :cond_5e
    if-eqz v55, :cond_5f

    .line 3883
    invoke-virtual/range {v55 .. v55}, Ljava/io/InputStream;->close()V

    .line 3884
    const/16 v55, 0x0

    .line 3893
    :cond_5f
    if-eqz v47, :cond_60

    .line 3894
    invoke-virtual/range {v47 .. v47}, Ljava/io/FileInputStream;->close()V

    .line 3895
    const/16 v47, 0x0

    .line 3897
    :cond_60
    if-eqz v49, :cond_61

    .line 3898
    invoke-virtual/range {v49 .. v49}, Ljava/io/FileInputStream;->close()V

    .line 3899
    const/16 v49, 0x0

    .line 3902
    :cond_61
    invoke-virtual/range {v64 .. v64}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_62

    .line 3903
    invoke-virtual/range {v64 .. v64}, Ljava/io/File;->delete()Z
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_54} :catch_3

    .line 3905
    :cond_62
    if-eqz v56, :cond_22

    .line 3906
    const/16 v53, 0x0

    .line 4593
    .end local v53           #intent:Landroid/content/Intent;
    if-eqz v46, :cond_1

    .line 4594
    :try_start_55
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_55} :catch_1d

    goto/16 :goto_0

    .line 4596
    :catch_1d
    move-exception v38

    .line 4598
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 4395
    .end local v38           #e:Ljava/lang/Exception;
    .end local v40           #extention:Ljava/lang/String;
    .end local v49           #fis2:Ljava/io/FileInputStream;
    .end local v51           #fos:Ljava/io/FileOutputStream;
    .end local v55           #is:Ljava/io/InputStream;
    .end local v56           #isTerminated:Z
    .end local v64           #outFile:Ljava/io/File;
    .restart local v7       #contentUri:Landroid/net/Uri;
    .restart local v9       #uri:Landroid/net/Uri;
    .restart local v14       #boundary_length:I
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v22       #contentUid:Ljava/lang/String;
    .restart local v26       #cv:Landroid/content/ContentValues;
    .restart local v28       #destinationFileOutputStream:Ljava/io/FileOutputStream;
    .restart local v36       #duplicate:Z
    .restart local v54       #intent:Landroid/content/Intent;
    .restart local v66       #overwrite:Z
    .restart local v75       #sourceFileInputStream:Ljava/io/FileInputStream;
    .restart local v76       #stampCursor:Landroid/database/Cursor;
    :catch_1e
    move-exception v38

    .line 4397
    .restart local v38       #e:Ljava/lang/Exception;
    :try_start_56
    const-string v8, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_56} :catch_c

    goto/16 :goto_1e

    .line 3878
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v9           #uri:Landroid/net/Uri;
    .end local v14           #boundary_length:I
    .end local v15           #c:Landroid/database/Cursor;
    .end local v22           #contentUid:Ljava/lang/String;
    .end local v26           #cv:Landroid/content/ContentValues;
    .end local v28           #destinationFileOutputStream:Ljava/io/FileOutputStream;
    .end local v36           #duplicate:Z
    .end local v38           #e:Ljava/lang/Exception;
    .end local v54           #intent:Landroid/content/Intent;
    .end local v66           #overwrite:Z
    .end local v75           #sourceFileInputStream:Ljava/io/FileInputStream;
    .end local v76           #stampCursor:Landroid/database/Cursor;
    .restart local v40       #extention:Ljava/lang/String;
    .restart local v48       #fis:Ljava/io/FileInputStream;
    .restart local v49       #fis2:Ljava/io/FileInputStream;
    .restart local v51       #fos:Ljava/io/FileOutputStream;
    .restart local v53       #intent:Landroid/content/Intent;
    .restart local v55       #is:Ljava/io/InputStream;
    .restart local v56       #isTerminated:Z
    .restart local v64       #outFile:Ljava/io/File;
    :catchall_e
    move-exception v4

    move-object/from16 v47, v48

    .end local v48           #fis:Ljava/io/FileInputStream;
    .restart local v47       #fis:Ljava/io/FileInputStream;
    goto :goto_22

    .end local v49           #fis2:Ljava/io/FileInputStream;
    .restart local v27       #deleteRights:Z
    .restart local v50       #fis2:Ljava/io/FileInputStream;
    .restart local v57       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v73       #rights:Landroid/drm/mobile1/DrmRights;
    :catchall_f
    move-exception v4

    move-object/from16 v49, v50

    .end local v50           #fis2:Ljava/io/FileInputStream;
    .restart local v49       #fis2:Ljava/io/FileInputStream;
    goto :goto_22

    .end local v49           #fis2:Ljava/io/FileInputStream;
    .end local v51           #fos:Ljava/io/FileOutputStream;
    .restart local v50       #fis2:Ljava/io/FileInputStream;
    .restart local v52       #fos:Ljava/io/FileOutputStream;
    .restart local v80       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    :catchall_10
    move-exception v4

    move-object/from16 v51, v52

    .end local v52           #fos:Ljava/io/FileOutputStream;
    .restart local v51       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v49, v50

    .end local v50           #fis2:Ljava/io/FileInputStream;
    .restart local v49       #fis2:Ljava/io/FileInputStream;
    goto :goto_22

    .line 3874
    .end local v27           #deleteRights:Z
    .end local v47           #fis:Ljava/io/FileInputStream;
    .end local v57           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v73           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v80           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v48       #fis:Ljava/io/FileInputStream;
    :catch_1f
    move-exception v38

    move-object/from16 v47, v48

    .end local v48           #fis:Ljava/io/FileInputStream;
    .restart local v47       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_a

    .end local v49           #fis2:Ljava/io/FileInputStream;
    .restart local v27       #deleteRights:Z
    .restart local v50       #fis2:Ljava/io/FileInputStream;
    .restart local v57       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v73       #rights:Landroid/drm/mobile1/DrmRights;
    :catch_20
    move-exception v38

    move-object/from16 v49, v50

    .end local v50           #fis2:Ljava/io/FileInputStream;
    .restart local v49       #fis2:Ljava/io/FileInputStream;
    goto/16 :goto_a

    .end local v49           #fis2:Ljava/io/FileInputStream;
    .end local v51           #fos:Ljava/io/FileOutputStream;
    .restart local v50       #fis2:Ljava/io/FileInputStream;
    .restart local v52       #fos:Ljava/io/FileOutputStream;
    .restart local v80       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    :catch_21
    move-exception v38

    move-object/from16 v51, v52

    .end local v52           #fos:Ljava/io/FileOutputStream;
    .restart local v51       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v49, v50

    .end local v50           #fis2:Ljava/io/FileInputStream;
    .restart local v49       #fis2:Ljava/io/FileInputStream;
    goto/16 :goto_a

    .end local v27           #deleteRights:Z
    .end local v40           #extention:Ljava/lang/String;
    .end local v47           #fis:Ljava/io/FileInputStream;
    .end local v49           #fis2:Ljava/io/FileInputStream;
    .end local v51           #fos:Ljava/io/FileOutputStream;
    .end local v55           #is:Ljava/io/InputStream;
    .end local v56           #isTerminated:Z
    .end local v57           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v64           #outFile:Ljava/io/File;
    .end local v73           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v80           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v7       #contentUri:Landroid/net/Uri;
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v22       #contentUid:Ljava/lang/String;
    .restart local v36       #duplicate:Z
    .restart local v66       #overwrite:Z
    .restart local v89       #uri:Landroid/net/Uri;
    :cond_63
    move-object/from16 v9, v89

    .end local v89           #uri:Landroid/net/Uri;
    .restart local v9       #uri:Landroid/net/Uri;
    goto/16 :goto_12

    .end local v9           #uri:Landroid/net/Uri;
    .restart local v89       #uri:Landroid/net/Uri;
    :cond_64
    move-object/from16 v9, v89

    .end local v89           #uri:Landroid/net/Uri;
    .restart local v9       #uri:Landroid/net/Uri;
    move-object/from16 v54, v53

    .end local v53           #intent:Landroid/content/Intent;
    .restart local v54       #intent:Landroid/content/Intent;
    goto/16 :goto_1a

    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v9           #uri:Landroid/net/Uri;
    .end local v15           #c:Landroid/database/Cursor;
    .end local v22           #contentUid:Ljava/lang/String;
    .end local v36           #duplicate:Z
    .end local v54           #intent:Landroid/content/Intent;
    .end local v66           #overwrite:Z
    .restart local v27       #deleteRights:Z
    .restart local v40       #extention:Ljava/lang/String;
    .restart local v48       #fis:Ljava/io/FileInputStream;
    .restart local v49       #fis2:Ljava/io/FileInputStream;
    .restart local v51       #fos:Ljava/io/FileOutputStream;
    .restart local v53       #intent:Landroid/content/Intent;
    .restart local v55       #is:Ljava/io/InputStream;
    .restart local v56       #isTerminated:Z
    .restart local v57       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v64       #outFile:Ljava/io/File;
    .restart local v73       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v80       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    :cond_65
    move-object/from16 v47, v48

    .end local v48           #fis:Ljava/io/FileInputStream;
    .restart local v47       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_7
.end method

.method public static final addDrmFileWithoutRightsAndRebuild(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 3
    .parameter "cx"
    .parameter "file"
    .parameter "title"
    .parameter "mediaType"
    .parameter "url"
    .parameter "destination"

    .prologue
    .line 3514
    const-string v1, "DrmStore"

    const-string v2, " @@@@@     addDrmFileWithoutRightsAndRebuild() - BEGIN. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3517
    const/4 v0, 0x0

    .line 3521
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x1

    sput-boolean v1, Landroid/provider/DrmStore;->REBUILD_DATABASE:Z

    .line 3522
    invoke-static/range {p0 .. p5}, Landroid/provider/DrmStore;->addDrmFileWithoutRights(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 3523
    const/4 v1, 0x0

    sput-boolean v1, Landroid/provider/DrmStore;->REBUILD_DATABASE:Z

    .line 3528
    const-string v1, "DrmStore"

    const-string v2, " @@@@@     addDrmFileWithoutRightsAndRebuild() - END. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3531
    return-object v0
.end method

.method private static binaryArrayToBundle([B)Landroid/os/Bundle;
    .locals 4
    .parameter "blob"

    .prologue
    const/4 v3, 0x0

    .line 808
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 811
    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p0

    invoke-virtual {v1, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 814
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 816
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 817
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 818
    return-object v0
.end method

.method private static checkAndCreateFolder(Ljava/lang/String;Z)Z
    .locals 6
    .parameter "checkFolderPath"
    .parameter "setPermission"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 8507
    if-eqz p0, :cond_0

    const-string v4, ""

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v2, v3

    .line 8529
    :cond_1
    :goto_0
    return v2

    .line 8511
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8514
    .local v0, checkF:Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 8515
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 8518
    :cond_3
    if-eqz p1, :cond_1

    .line 8519
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/io/File;->setWritable(ZZ)Z

    .line 8520
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 8521
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/io/File;->setExecutable(ZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8525
    :catch_0
    move-exception v1

    .line 8526
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "DrmStore"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8527
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    .line 8529
    goto :goto_0
.end method

.method public static checkBeforeDownload(Landroid/content/Context;[BLjava/lang/String;)I
    .locals 26
    .parameter "context"
    .parameter "buffer"
    .parameter "mediaType"

    .prologue
    .line 460
    const-string v23, "DrmStore"

    const-string v24, "********checkBeforeDownload"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 465
    :cond_0
    const-string v23, "DrmStore"

    const-string v24, "checkBeforeDownload :-2"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const/16 v23, -0x2

    .line 652
    :goto_0
    return v23

    .line 470
    :cond_1
    sget-boolean v23, Landroid/provider/DrmStore;->RELOAD_CUSTOM_SETTING:Z

    if-nez v23, :cond_2

    const/16 v23, 0x1

    sget-boolean v24, Landroid/provider/DrmStore;->SWITCH_TO_CID:Z

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 473
    :try_start_0
    invoke-static/range {p0 .. p0}, Landroid/provider/DrmStore;->handleCutomization(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :goto_1
    const/16 v23, 0x1

    sput-boolean v23, Landroid/provider/DrmStore;->RELOAD_CUSTOM_SETTING:Z

    .line 484
    :cond_2
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x800

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_4

    const/16 v5, 0x800

    .line 486
    .local v5, dataSize:I
    :goto_2
    new-array v4, v5, [B

    .line 488
    .local v4, data:[B
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3
    if-ge v7, v5, :cond_6

    .line 491
    const-string v23, "application/vnd.oma.drm.message"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_5

    aget-byte v23, p1, v7

    const/16 v24, 0xa

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    aget-byte v23, p1, v7

    const/16 v24, 0xd

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    aget-byte v23, p1, v7

    const/16 v24, 0x3b

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 492
    :cond_3
    const/16 v23, 0x20

    aput-byte v23, v4, v7

    .line 488
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 474
    .end local v4           #data:[B
    .end local v5           #dataSize:I
    .end local v7           #i:I
    :catch_0
    move-exception v6

    .line 475
    .local v6, e:Ljava/lang/Exception;
    const-string v23, "DrmStore"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 484
    .end local v6           #e:Ljava/lang/Exception;
    :cond_4
    move-object/from16 v0, p1

    array-length v5, v0

    goto :goto_2

    .line 494
    .restart local v4       #data:[B
    .restart local v5       #dataSize:I
    .restart local v7       #i:I
    :cond_5
    aget-byte v23, p1, v7

    aput-byte v23, v4, v7

    goto :goto_4

    .line 498
    :cond_6
    new-instance v23, Ljava/lang/String;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v0, v4, v1, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    .line 499
    .local v21, segment:Ljava/lang/String;
    const-string v18, "content-type: "

    .line 500
    .local v18, pattern:Ljava/lang/String;
    const/4 v2, 0x0

    .line 502
    .local v2, MIMEType:Ljava/lang/String;
    const-string v23, "application/vnd.oma.drm.message"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 503
    const-string v23, "content-type: "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 504
    .local v12, indexOfPattern:I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v12, v0, :cond_7

    .line 506
    const-string v23, "DrmStore"

    const-string v24, "checkBeforeDownload :-7"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const/16 v23, -0x7

    goto/16 :goto_0

    .line 510
    :cond_7
    const-string v23, "content-type: "

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    add-int v8, v12, v23

    .line 511
    .local v8, indexOfContentType:I
    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    .line 512
    .local v22, subString:Ljava/lang/String;
    const/16 v23, 0x20

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 513
    .local v13, indexOfReturn:I
    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 514
    const-string v23, "application/vnd.oma.drm.rights+xml"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 520
    invoke-static {}, Landroid/provider/DrmStore;->fnIsDisableCombinedDeliveryAndSeparateDelivery()Z

    move-result v23

    if-nez v23, :cond_8

    invoke-static {}, Landroid/provider/DrmStore;->fnIsDisableCombinedDeliveryOnly()Z

    move-result v23

    if-eqz v23, :cond_9

    .line 525
    :cond_8
    const-string v23, "DrmStore"

    const-string v24, "checkBeforeDownload :-8 for FIESTA_ATT"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const/16 v23, -0x8

    goto/16 :goto_0

    .line 547
    :cond_9
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 548
    .local v16, nextSegment:Ljava/lang/String;
    const-string v23, "content-type: "

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 549
    .local v10, indexOfNextPattern:I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v10, v0, :cond_a

    .line 551
    const-string v23, "DrmStore"

    const-string v24, "checkBeforeDownload :-7"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const/16 v23, -0x7

    goto/16 :goto_0

    .line 555
    :cond_a
    const-string v23, "content-type: "

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    add-int v9, v10, v23

    .line 556
    .local v9, indexOfNextContentType:I
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 557
    .local v17, nextSubString:Ljava/lang/String;
    const/16 v23, 0x20

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .line 558
    .local v11, indexOfNextReturn:I
    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 611
    .end local v8           #indexOfContentType:I
    .end local v9           #indexOfNextContentType:I
    .end local v10           #indexOfNextPattern:I
    .end local v11           #indexOfNextReturn:I
    .end local v12           #indexOfPattern:I
    .end local v13           #indexOfReturn:I
    .end local v16           #nextSegment:Ljava/lang/String;
    .end local v17           #nextSubString:Ljava/lang/String;
    .end local v22           #subString:Ljava/lang/String;
    :cond_b
    :goto_5
    if-nez v2, :cond_11

    .line 613
    const-string v23, "DrmStore"

    const-string v24, "checkBeforeDownload :-7"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const/16 v23, -0x7

    goto/16 :goto_0

    .line 562
    :cond_c
    const-string v23, "application/vnd.oma.drm.content"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 568
    invoke-static {}, Landroid/provider/DrmStore;->fnIsDisableCombinedDeliveryAndSeparateDelivery()Z

    move-result v23

    if-nez v23, :cond_d

    invoke-static {}, Landroid/provider/DrmStore;->fnIsDisableSeparateDeliveryOnly()Z

    move-result v23

    if-eqz v23, :cond_e

    .line 573
    :cond_d
    const-string v23, "DrmStore"

    const-string v24, "checkBeforeDownload :-8 for FIESTA_ATT"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const/16 v23, -0x8

    goto/16 :goto_0

    .line 594
    :cond_e
    const/16 v23, 0x1

    aget-byte v3, v4, v23

    .line 596
    .local v3, contentTypeLen:I
    :try_start_1
    new-instance v2, Ljava/lang/String;

    .end local v2           #MIMEType:Ljava/lang/String;
    const/16 v23, 0x3

    move/from16 v0, v23

    invoke-direct {v2, v4, v0, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v2       #MIMEType:Ljava/lang/String;
    goto :goto_5

    .line 597
    .end local v2           #MIMEType:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 599
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v23, "DrmStore"

    const-string v24, "checkBeforeDownload :-7"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const/16 v23, -0x7

    goto/16 :goto_0

    .line 603
    .end local v3           #contentTypeLen:I
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v2       #MIMEType:Ljava/lang/String;
    :cond_f
    const-string v23, "application/vnd.oma.drm.rights+wbxml"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_10

    const-string v23, "application/vnd.oma.drm.rights+xml"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 606
    :cond_10
    const-string v23, "DrmStore"

    const-string v24, "checkBeforeDownload :0"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 618
    :cond_11
    new-instance v14, Landroid/content/Intent;

    const-string v23, "android.intent.action.VIEW"

    move-object/from16 v0, v23

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 619
    .local v14, intent:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 620
    .local v19, pm:Landroid/content/pm/PackageManager;
    const/16 v20, 0x0

    .line 622
    .local v20, result:Z
    const-string v23, "DrmStore"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Check Before Download MIME = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const-string v23, "application/java-archive"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_12

    .line 626
    const/16 v20, 0x1

    .line 643
    :goto_6
    if-eqz v20, :cond_19

    .line 645
    const-string v23, "DrmStore"

    const-string v24, "checkBeforeDownload :0"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 627
    :cond_12
    const-string v23, "image/"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_14

    .line 628
    const-string v23, "content://media"

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 629
    const/high16 v23, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v14, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    .line 630
    .local v15, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_13

    const/16 v20, 0x1

    .line 631
    :goto_7
    goto :goto_6

    .line 630
    :cond_13
    const/16 v20, 0x0

    goto :goto_7

    .line 631
    .end local v15           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_14
    const-string v23, "audio/"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_16

    .line 632
    const-string v23, "content://media"

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 633
    const/high16 v23, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v14, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    .line 634
    .restart local v15       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_15

    const/16 v20, 0x1

    .line 635
    :goto_8
    goto :goto_6

    .line 634
    :cond_15
    const/16 v20, 0x0

    goto :goto_8

    .line 635
    .end local v15           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_16
    const-string/jumbo v23, "video/"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_18

    .line 636
    const-string v23, "content://media"

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 637
    const/high16 v23, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v14, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    .line 638
    .restart local v15       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_17

    const/16 v20, 0x1

    .line 639
    :goto_9
    goto/16 :goto_6

    .line 638
    :cond_17
    const/16 v20, 0x0

    goto :goto_9

    .line 640
    .end local v15           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_18
    const/16 v20, 0x0

    goto/16 :goto_6

    .line 650
    :cond_19
    const-string v23, "DrmStore"

    const-string v24, "checkBeforeDownload :-8"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const/16 v23, -0x8

    goto/16 :goto_0
.end method

.method public static final checkExpiration(Landroid/content/ContentResolver;Landroid/provider/DrmStore$DrmConstraint;Landroid/net/Uri;)I
    .locals 35
    .parameter "cr"
    .parameter "dcr"
    .parameter "contentUri"

    .prologue
    .line 6678
    const-string v3, "DrmStore"

    const-string v4, "********checkExpiration"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6679
    const-string v3, "DrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6682
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 6684
    :cond_0
    const-string v3, "DrmStore"

    const-string v4, "checkExpiration (1): -2"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6686
    const/4 v3, -0x2

    .line 6846
    :goto_0
    return v3

    .line 6689
    :cond_1
    sget-object v5, Landroid/provider/DrmStore;->FILEPATH_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 6690
    .local v11, cursor:Landroid/database/Cursor;
    if-nez v11, :cond_2

    .line 6692
    const-string v3, "DrmStore"

    const-string v4, "checkExpiration (2): -6"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6694
    const/4 v3, -0x6

    goto :goto_0

    .line 6695
    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_3

    .line 6697
    const-string v3, "DrmStore"

    const-string v4, "checkExpiration (3): -2"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6699
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 6700
    const/4 v3, -0x2

    goto :goto_0

    .line 6703
    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6704
    const-string v3, "_data"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 6705
    .local v10, columnIndex:I
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 6706
    .local v20, filePath:Ljava/lang/String;
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 6708
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/DrmStore;->getDrmRight(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/drm/mobile1/DrmRights;

    move-result-object v24

    .line 6709
    .local v24, rights:Landroid/drm/mobile1/DrmRights;
    if-nez v24, :cond_4

    .line 6711
    const-string v3, "DrmStore"

    const-string v4, "checkExpiration (4): -3"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6713
    const/4 v3, -0x3

    goto :goto_0

    .line 6718
    :cond_4
    #getter for: Landroid/provider/DrmStore$DrmConstraint;->mNoConstraint:Z
    invoke-static/range {p1 .. p1}, Landroid/provider/DrmStore$DrmConstraint;->access$000(Landroid/provider/DrmStore$DrmConstraint;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6719
    const/4 v3, 0x0

    goto :goto_0

    .line 6724
    :cond_5
    #getter for: Landroid/provider/DrmStore$DrmConstraint;->mCount:I
    invoke-static/range {p1 .. p1}, Landroid/provider/DrmStore$DrmConstraint;->access$100(Landroid/provider/DrmStore$DrmConstraint;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    #getter for: Landroid/provider/DrmStore$DrmConstraint;->mInterval:J
    invoke-static/range {p1 .. p1}, Landroid/provider/DrmStore$DrmConstraint;->access$200(Landroid/provider/DrmStore$DrmConstraint;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    #getter for: Landroid/provider/DrmStore$DrmConstraint;->mStartDate:Ljava/util/Date;
    invoke-static/range {p1 .. p1}, Landroid/provider/DrmStore$DrmConstraint;->access$300(Landroid/provider/DrmStore$DrmConstraint;)Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_6

    #getter for: Landroid/provider/DrmStore$DrmConstraint;->mEndDate:Ljava/util/Date;
    invoke-static/range {p1 .. p1}, Landroid/provider/DrmStore$DrmConstraint;->access$400(Landroid/provider/DrmStore$DrmConstraint;)Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_6

    .line 6725
    const-string v3, "DrmStore"

    const-string v4, "checkExpiration (5):  All constraint expired."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6726
    const/4 v3, -0x4

    goto :goto_0

    .line 6730
    :cond_6
    #getter for: Landroid/provider/DrmStore$DrmConstraint;->mCount:I
    invoke-static/range {p1 .. p1}, Landroid/provider/DrmStore$DrmConstraint;->access$100(Landroid/provider/DrmStore$DrmConstraint;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_8

    .line 6731
    #getter for: Landroid/provider/DrmStore$DrmConstraint;->mCount:I
    invoke-static/range {p1 .. p1}, Landroid/provider/DrmStore$DrmConstraint;->access$100(Landroid/provider/DrmStore$DrmConstraint;)I

    move-result v3

    if-gtz v3, :cond_7

    .line 6733
    const-string v3, "DrmStore"

    const-string v4, "checkExpiration (6):  checkExpiration counts expired"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6735
    const/4 v3, -0x4

    goto/16 :goto_0

    .line 6737
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 6741
    :cond_8
    const/16 v23, 0x0

    .line 6742
    .local v23, permissionType:I
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 6743
    const/16 v23, 0x2

    .line 6752
    :cond_9
    :goto_1
    sget-object v4, Landroid/provider/DrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/DrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 6753
    .local v9, c:Landroid/database/Cursor;
    if-nez v9, :cond_d

    .line 6755
    const-string v3, "DrmStore"

    const-string v4, "checkExpiration (7): -6"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6757
    const/4 v3, -0x6

    goto/16 :goto_0

    .line 6744
    .end local v9           #c:Landroid/database/Cursor;
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 6745
    const/16 v23, 0x1

    goto :goto_1

    .line 6746
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 6747
    const/16 v23, 0x1

    goto :goto_1

    .line 6748
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 6749
    const/16 v23, 0x3

    goto :goto_1

    .line 6758
    .restart local v9       #c:Landroid/database/Cursor;
    :cond_d
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_e

    .line 6760
    const-string v3, "DrmStore"

    const-string v4, "checkExpiration (8): -5"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6762
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 6763
    const/4 v3, -0x5

    goto/16 :goto_0

    .line 6766
    :cond_e
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6767
    const-string/jumbo v3, "time_stamp"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    .line 6768
    .local v31, syncTimeColumnId:I
    move/from16 v0, v31

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 6769
    .local v29, syncTime:J
    const-string v3, "clock_stamp"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 6770
    .local v28, syncClockColumnId:I
    move/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 6771
    .local v26, syncClock:J
    const-string/jumbo v3, "timezone_stamp"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 6772
    .local v34, syncTimeZoneColumnId:I
    move/from16 v0, v34

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    .line 6773
    .local v32, syncTimeZone:J
    const-string/jumbo v3, "time_differential"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 6774
    .local v14, differentColumnId:I
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 6775
    .local v15, differential:J
    const-string/jumbo v3, "network_sync"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 6776
    .local v22, network_sync:I
    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 6777
    .local v21, networkSync:Ljava/lang/String;
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 6779
    const-wide/16 v3, 0x0

    cmp-long v3, v29, v3

    if-eqz v3, :cond_f

    const-wide/16 v3, 0x0

    cmp-long v3, v26, v3

    if-nez v3, :cond_10

    .line 6781
    :cond_f
    const-string v3, "DrmStore"

    const-string v4, "checkExpiration (9): -5"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6783
    const/4 v3, -0x5

    goto/16 :goto_0

    .line 6786
    :cond_10
    if-nez v21, :cond_11

    .line 6788
    const-string v3, "DrmStore"

    const-string v4, "checkExpiration (10): -5"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6790
    const/4 v3, -0x5

    goto/16 :goto_0

    .line 6791
    :cond_11
    const-string v3, "TRUE"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 6793
    const-string v3, "DrmStore"

    const-string v4, "checkExpiration (11): -5"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6795
    const/4 v3, -0x5

    goto/16 :goto_0

    .line 6799
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 6800
    .local v12, date:J
    new-instance v18, Ljava/util/Date;

    move-object/from16 v0, v18

    invoke-direct {v0, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 6802
    .local v18, drmDate:Ljava/util/Date;
    const-string v3, "DrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkExpiration (12): Current Date-Time (UTC) is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getYear()I

    move-result v5

    add-int/lit16 v5, v5, 0x76c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getMonth()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getDate()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getHours()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getMinutes()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getSeconds()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6805
    invoke-virtual/range {p1 .. p1}, Landroid/provider/DrmStore$DrmConstraint;->getStartDate()Ljava/util/Date;

    move-result-object v25

    .line 6806
    .local v25, startDate:Ljava/util/Date;
    if-eqz v25, :cond_13

    .line 6808
    const-string v3, "DrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkExpiration (13): Start Date (UTC) is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Ljava/util/Date;->getYear()I

    move-result v5

    add-int/lit16 v5, v5, 0x76c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Ljava/util/Date;->getMonth()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Ljava/util/Date;->getDate()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Ljava/util/Date;->getHours()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Ljava/util/Date;->getMinutes()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Ljava/util/Date;->getSeconds()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6810
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 6812
    const-string v3, "DrmStore"

    const-string v4, "checkExpiration (14): start date expired."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6814
    const/4 v3, -0x4

    goto/16 :goto_0

    .line 6818
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/provider/DrmStore$DrmConstraint;->getEndDate()Ljava/util/Date;

    move-result-object v19

    .line 6819
    .local v19, endDate:Ljava/util/Date;
    if-eqz v19, :cond_14

    .line 6821
    const-string v3, "DrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkExpiration (15): End Date (UTC) is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getYear()I

    move-result v5

    add-int/lit16 v5, v5, 0x76c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getMonth()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getDate()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getHours()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getMinutes()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getSeconds()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6823
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 6825
    const-string v3, "DrmStore"

    const-string v4, "checkExpiration (16): end date expired."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6827
    new-instance v17, Ljava/util/Date;

    sub-long v3, v12, v15

    sub-long v3, v3, v32

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 6828
    .local v17, drmClock:Ljava/util/Date;
    move-object/from16 v0, v24

    move/from16 v1, v23

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/drm/mobile1/DrmRights;->consumeRightsWithSync(ILjava/util/Date;)Z

    .line 6829
    const/4 v3, -0x4

    goto/16 :goto_0

    .line 6833
    .end local v17           #drmClock:Ljava/util/Date;
    :cond_14
    #getter for: Landroid/provider/DrmStore$DrmConstraint;->mInterval:J
    invoke-static/range {p1 .. p1}, Landroid/provider/DrmStore$DrmConstraint;->access$200(Landroid/provider/DrmStore$DrmConstraint;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_15

    .line 6835
    const-string v3, "DrmStore"

    const-string v4, "checkExpiration (17): Interval constraint, pass anyway"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6838
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 6842
    :cond_15
    const-string v3, "DrmStore"

    const-string v4, "checkExpiration (18): Unknown Error!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6846
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public static final checkExpiration(Landroid/net/Uri;Landroid/app/Activity;)I
    .locals 1
    .parameter "uri"
    .parameter "activity"

    .prologue
    .line 8317
    const/4 v0, 0x0

    return v0
.end method

.method public static final checkExpiration(Ljava/lang/String;Landroid/app/Activity;)I
    .locals 1
    .parameter "fileName"
    .parameter "activity"

    .prologue
    .line 8321
    const/4 v0, 0x0

    return v0
.end method

.method public static checkFileExistence(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 11
    .parameter "cr"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 7763
    sget-object v2, Landroid/provider/DrmStore;->FILEPATH_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 7764
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 7766
    const-string v0, "DrmStore"

    const-string v1, "checkFileExistence query DRM db failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 7787
    :goto_0
    return v0

    .line 7769
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 7771
    const-string v0, "DrmStore"

    const-string v1, "checkFileExistence no record."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7773
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 7774
    goto :goto_0

    .line 7776
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7777
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 7778
    .local v8, fileColumnIndex:I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 7779
    .local v9, fileName:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 7781
    const-string v0, "DrmStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Check if "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exists."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7783
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7784
    .local v7, file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7785
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v10

    .line 7787
    goto :goto_0
.end method

.method public static final consumeRights(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 1
    .parameter "cx"
    .parameter "uri"

    .prologue
    .line 8325
    const/4 v0, 0x0

    return v0
.end method

.method public static final consumeRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)I
    .locals 41
    .parameter "cx"
    .parameter "contentUri"
    .parameter "strFilePath"
    .parameter "permissionType"

    .prologue
    .line 6860
    const-string v3, "DrmStore"

    const-string v4, "********consumeRights"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6863
    const/4 v9, 0x0

    .line 6864
    .local v9, c:Landroid/database/Cursor;
    if-nez p2, :cond_0

    .line 6865
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Landroid/provider/DrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 6870
    :goto_0
    const/16 v22, 0x0

    .line 6871
    .local v22, filePath:Ljava/lang/String;
    if-nez v9, :cond_1

    .line 6873
    const-string v3, "DrmStore"

    const-string v4, "consumeRights(1): -6"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6875
    const/4 v3, -0x6

    .line 7049
    :goto_1
    return v3

    .line 6867
    .end local v22           #filePath:Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Landroid/provider/DrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const-string v6, "_data=?"

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v7, v4

    const-string v8, "_id"

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0

    .line 6876
    .restart local v22       #filePath:Ljava/lang/String;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 6878
    const-string v3, "DrmStore"

    const-string v4, "consumeRights(2): -6"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6880
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 6881
    const/4 v3, -0x6

    goto :goto_1

    .line 6882
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_6

    .line 6883
    if-nez p2, :cond_3

    .line 6885
    const-string v3, "DrmStore"

    const-string v4, "consumeRights(3): -2"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6887
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 6888
    const/4 v3, -0x2

    goto :goto_1

    .line 6890
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6891
    const-string v3, "_data"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 6892
    .local v23, filePathColumnId:I
    move/from16 v0, v23

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6893
    move-object/from16 v22, p2

    .line 6908
    :cond_4
    :goto_2
    if-nez v22, :cond_7

    .line 6910
    const-string v3, "DrmStore"

    const-string v4, "consumeRights(4): -1"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6912
    const/4 v3, -0x1

    goto :goto_1

    .line 6895
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6896
    move/from16 v0, v23

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6897
    move-object/from16 v22, p2

    .line 6898
    goto :goto_2

    .line 6903
    .end local v23           #filePathColumnId:I
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6904
    const-string v3, "_data"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 6905
    .restart local v23       #filePathColumnId:I
    move/from16 v0, v23

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto :goto_2

    .line 6915
    :cond_7
    const-string/jumbo v3, "message_type"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 6916
    .local v27, messageTypeColumnId:I
    move/from16 v0, v27

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 6917
    .local v26, messageType:Ljava/lang/String;
    const-string v3, "delivery_type"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 6918
    .local v15, deliveryTypeColumnId:I
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 6919
    .local v14, deliveryType:I
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 6921
    const/4 v3, 0x1

    if-ne v14, v3, :cond_8

    .line 6922
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 6926
    :cond_8
    :try_start_0
    new-instance v21, Ljava/io/File;

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6927
    .local v21, file:Ljava/io/File;
    if-nez v21, :cond_9

    .line 6929
    const-string v3, "DrmStore"

    const-string v4, "consumeRights(5): -2"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6931
    const/4 v3, -0x2

    goto/16 :goto_1

    .line 6933
    :cond_9
    new-instance v24, Ljava/io/FileInputStream;

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 6934
    .local v24, fis:Ljava/io/InputStream;
    new-instance v11, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v24 .. v24}, Ljava/io/FileInputStream;->available()I

    move-result v3

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v11, v0, v3, v1}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 6935
    .local v11, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v25

    .line 6936
    .local v25, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v30

    .line 6938
    .local v30, rights:Landroid/drm/mobile1/DrmRights;
    if-nez v30, :cond_a

    .line 6940
    const-string v3, "DrmStore"

    const-string v4, "consumeRights(7): -3"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6942
    const/4 v3, -0x3

    goto/16 :goto_1

    .line 6945
    :cond_a
    move-object/from16 v0, v30

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRights;->getConstraint(I)Landroid/drm/mobile1/DrmConstraintInfo;

    move-result-object v10

    .line 6946
    .local v10, constraintInfo:Landroid/drm/mobile1/DrmConstraintInfo;
    if-nez v10, :cond_b

    .line 6948
    const-string v3, "DrmStore"

    const-string v4, "consumeRights(9): -1"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6950
    const/4 v3, -0x1

    goto/16 :goto_1

    .line 6954
    :cond_b
    invoke-virtual {v10}, Landroid/drm/mobile1/DrmConstraintInfo;->isNoConstraint()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    .line 6960
    const-string v3, "DrmStore"

    const-string v4, " @@@@@     consumeRights(10): NO Constraint."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6963
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 6968
    :cond_c
    invoke-virtual {v10}, Landroid/drm/mobile1/DrmConstraintInfo;->getCount()I

    move-result v3

    if-ltz v3, :cond_e

    .line 6969
    move-object/from16 v0, v30

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRights;->consumeRights(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 6970
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 6973
    :cond_d
    const-string v3, "DrmStore"

    const-string v4, "consumeRights(11): -4"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6975
    const/4 v3, -0x4

    goto/16 :goto_1

    .line 6980
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/DrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/DrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v31

    .line 6981
    .local v31, stamp:Landroid/database/Cursor;
    if-nez v31, :cond_f

    .line 6983
    const-string v3, "DrmStore"

    const-string v4, "consumeRights query stamp failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6985
    const/4 v3, -0x6

    goto/16 :goto_1

    .line 6986
    :cond_f
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_10

    .line 6988
    const-string v3, "DrmStore"

    const-string v4, "consumeRights(12): -5"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6990
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 6991
    const/4 v3, -0x5

    goto/16 :goto_1

    .line 6994
    :cond_10
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6995
    const-string/jumbo v3, "time_stamp"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v37

    .line 6996
    .local v37, syncTimeColumnId:I
    move-object/from16 v0, v31

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    .line 6997
    .local v35, syncTime:J
    const-string v3, "clock_stamp"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 6998
    .local v34, syncClockColumnId:I
    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    .line 6999
    .local v32, syncClock:J
    const-string/jumbo v3, "timezone_stamp"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v40

    .line 7000
    .local v40, syncTimeZoneColumnId:I
    move-object/from16 v0, v31

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    .line 7001
    .local v38, syncTimeZone:J
    const-string/jumbo v3, "time_differential"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 7002
    .local v16, differentColumnId:I
    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 7003
    .local v17, differential:J
    const-string/jumbo v3, "network_sync"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 7004
    .local v29, network_sync:I
    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 7005
    .local v28, networkSync:Ljava/lang/String;
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 7007
    const-wide/16 v3, 0x0

    cmp-long v3, v35, v3

    if-eqz v3, :cond_11

    const-wide/16 v3, 0x0

    cmp-long v3, v32, v3

    if-nez v3, :cond_12

    .line 7009
    :cond_11
    const-string v3, "DrmStore"

    const-string v4, "consumeRights(13): -5"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7011
    const/4 v3, -0x5

    goto/16 :goto_1

    .line 7014
    :cond_12
    if-nez v28, :cond_13

    .line 7016
    const-string v3, "DrmStore"

    const-string v4, "consumeRights(14): checkExpiration : -5"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7018
    const/4 v3, -0x5

    goto/16 :goto_1

    .line 7019
    :cond_13
    const-string v3, "TRUE"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 7021
    const-string v3, "DrmStore"

    const-string v4, "consumeRights(15): checkExpiration : -5"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7023
    const/4 v3, -0x5

    goto/16 :goto_1

    .line 7027
    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v17

    sub-long v12, v3, v38

    .line 7029
    .local v12, date:J
    const-string v3, "DrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "syncTimeZone = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    div-long v5, v38, v5

    const-wide/16 v7, 0x3c

    div-long/2addr v5, v7

    const-wide/16 v7, 0x3c

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7031
    new-instance v19, Ljava/util/Date;

    move-object/from16 v0, v19

    invoke-direct {v0, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 7032
    .local v19, drmDate:Ljava/util/Date;
    move-object/from16 v0, v30

    move/from16 v1, p3

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/drm/mobile1/DrmRights;->consumeRightsWithSync(ILjava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 7033
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 7036
    :cond_15
    const-string v3, "DrmStore"

    const-string v4, "consumeRights(16): -4"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7038
    const/4 v3, -0x4

    goto/16 :goto_1

    .line 7041
    .end local v10           #constraintInfo:Landroid/drm/mobile1/DrmConstraintInfo;
    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v12           #date:J
    .end local v16           #differentColumnId:I
    .end local v17           #differential:J
    .end local v19           #drmDate:Ljava/util/Date;
    .end local v21           #file:Ljava/io/File;
    .end local v24           #fis:Ljava/io/InputStream;
    .end local v25           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v28           #networkSync:Ljava/lang/String;
    .end local v29           #network_sync:I
    .end local v30           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v31           #stamp:Landroid/database/Cursor;
    .end local v32           #syncClock:J
    .end local v34           #syncClockColumnId:I
    .end local v35           #syncTime:J
    .end local v37           #syncTimeColumnId:I
    .end local v38           #syncTimeZone:J
    .end local v40           #syncTimeZoneColumnId:I
    :catch_0
    move-exception v20

    .line 7043
    .local v20, e:Ljava/lang/Exception;
    const-string v3, "DrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "consumeRights(17): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7047
    const-string v3, "DrmStore"

    const-string v4, "consumeRights(18): -1"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7049
    const/4 v3, -0x1

    goto/16 :goto_1
.end method

.method public static final consumeRights(Ljava/lang/String;)I
    .locals 1
    .parameter "fileName"

    .prologue
    .line 8329
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
    .line 6149
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/DrmStore;->deleteDrmFile(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final deleteDrmFile(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)I
    .locals 13
    .parameter "cr"
    .parameter "uri"
    .parameter "filePath"

    .prologue
    .line 6077
    const-string v0, "DrmStore"

    const-string v1, "********deleteDrmFile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6079
    const/4 v6, 0x0

    .line 6080
    .local v6, c:Landroid/database/Cursor;
    if-eqz p2, :cond_0

    .line 6081
    sget-object v2, Landroid/provider/DrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const-string v3, "_data=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const-string v5, "_id"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 6086
    :goto_0
    if-nez v6, :cond_1

    .line 6088
    const-string v0, "DrmStore"

    const-string v1, "deleteDrmFile : -6"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6090
    const/4 v0, -0x6

    .line 6135
    :goto_1
    return v0

    .line 6083
    :cond_0
    sget-object v2, Landroid/provider/DrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_0

    .line 6091
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6093
    const-string v0, "DrmStore"

    const-string v1, "deleteDrmFile : -6"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6095
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 6096
    const/4 v0, -0x6

    goto :goto_1

    .line 6099
    :cond_2
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 6100
    .local v10, filenameColumnId:I
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 6102
    .local v9, filename:Ljava/lang/String;
    const-string v0, "delivery_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 6103
    .local v8, deliveryTypeColumnId:I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 6105
    .local v7, deliveryType:I
    const-string/jumbo v0, "message_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 6106
    .local v12, messageTypeColumnId:I
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 6108
    .local v11, messageType:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 6135
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_1
.end method

.method public static enforceAccessDrmPermission(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 444
    const-string v0, "android.permission.ACCESS_DRM"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DRM permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_0
    return-void
.end method

.method private static final fnIsDisableCombinedDeliveryAndSeparateDelivery()Z
    .locals 1

    .prologue
    .line 8423
    sget-boolean v0, Landroid/provider/DrmStore;->SWITCH_TO_CID:Z

    if-eqz v0, :cond_1

    .line 8424
    sget-boolean v0, Landroid/provider/DrmStore;->DISABLE_FORWORD_LOCK:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/provider/DrmStore;->DISABLE_COMBINED_DELIVERY:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/provider/DrmStore;->DISABLE_SEPARATE_DELIVERY:Z

    if-eqz v0, :cond_0

    .line 8426
    const/4 v0, 0x1

    .line 8433
    :goto_0
    return v0

    .line 8429
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 8433
    :cond_1
    invoke-static {}, Landroid/provider/DrmStore;->SupportForwardLockOnly()Z

    move-result v0

    goto :goto_0
.end method

.method private static final fnIsDisableCombinedDeliveryOnly()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 8445
    sget-boolean v1, Landroid/provider/DrmStore;->SWITCH_TO_CID:Z

    if-eqz v1, :cond_0

    .line 8447
    sget-boolean v1, Landroid/provider/DrmStore;->DISABLE_FORWORD_LOCK:Z

    if-nez v1, :cond_0

    sget-boolean v1, Landroid/provider/DrmStore;->DISABLE_COMBINED_DELIVERY:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Landroid/provider/DrmStore;->DISABLE_SEPARATE_DELIVERY:Z

    if-nez v1, :cond_0

    .line 8449
    const/4 v0, 0x1

    .line 8459
    :cond_0
    return v0
.end method

.method private static final fnIsDisableSeparateDeliveryOnly()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 8469
    sget-boolean v2, Landroid/provider/DrmStore;->SWITCH_TO_CID:Z

    if-eqz v2, :cond_2

    .line 8470
    sget-boolean v2, Landroid/provider/DrmStore;->DISABLE_FORWORD_LOCK:Z

    if-nez v2, :cond_1

    sget-boolean v2, Landroid/provider/DrmStore;->DISABLE_COMBINED_DELIVERY:Z

    if-nez v2, :cond_1

    sget-boolean v2, Landroid/provider/DrmStore;->DISABLE_SEPARATE_DELIVERY:Z

    if-eqz v2, :cond_1

    .line 8498
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 8475
    goto :goto_0

    .line 8479
    :cond_2
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x31

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x88

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 8498
    goto :goto_0
.end method

.method private static getBooleanValue(Ljava/lang/String;)Z
    .locals 2
    .parameter "value"

    .prologue
    const/4 v0, 0x1

    .line 718
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 734
    :cond_0
    :goto_0
    return v0

    .line 724
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 727
    const-string v1, "false"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "no"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "disable"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "disabled"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 731
    :cond_2
    const/4 v0, 0x0

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

    .line 7666
    const/4 v0, 0x0

    .line 7668
    .local v0, cipher:Ljavax/crypto/Cipher;
    if-nez p0, :cond_0

    .line 7670
    const-string v4, "DrmStore"

    const-string/jumbo v5, "skeySpec == null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7705
    :goto_0
    return-object v3

    .line 7673
    :cond_0
    const/4 v4, 0x1

    if-eq p1, v4, :cond_1

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    .line 7675
    const-string v4, "DrmStore"

    const-string v5, "Cipher mode error."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7682
    :cond_1
    :try_start_0
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 7684
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    const-string v3, "f45gt7g83sd56210"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 7686
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

    .line 7705
    goto :goto_0

    .line 7688
    :catch_0
    move-exception v1

    .line 7690
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    const-string v3, "DrmStore"

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

    .line 7692
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 7694
    .local v1, e:Ljavax/crypto/NoSuchPaddingException;
    const-string v3, "DrmStore"

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

    .line 7696
    .end local v1           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v1

    .line 7698
    .local v1, e:Ljava/security/InvalidKeyException;
    const-string v3, "DrmStore"

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

    .line 7700
    .end local v1           #e:Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v1

    .line 7702
    .local v1, e:Ljava/security/InvalidAlgorithmParameterException;
    const-string v3, "DrmStore"

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

.method private static getData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/provider/DrmCustomizationData;
    .locals 13
    .parameter "context"
    .parameter "categoryName"
    .parameter "moduleName"

    .prologue
    const/4 v2, 0x0

    .line 743
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 746
    :cond_0
    const-string v12, "The all of context, categoryName and moduleName must be not null. \n"

    .line 747
    .local v12, msg:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "context: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 748
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "categoryName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 749
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "moduleName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 750
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 754
    .end local v12           #msg:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 755
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://customization_settings/SettingTable/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 760
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 761
    .local v10, cursor:Landroid/database/Cursor;
    if-nez v10, :cond_2

    .line 763
    const-string v3, "DrmStore"

    const-string v4, "The cursor of the content resolver is null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    const-string v3, "DrmStore"

    const-string/jumbo v4, "uri: content://customization_settings/SettingTable/"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    new-instance v3, Landroid/provider/DrmCustomizationData;

    invoke-direct {v3, v2}, Landroid/provider/DrmCustomizationData;-><init>(Landroid/os/Bundle;)V

    move-object v2, v3

    .line 801
    :goto_0
    return-object v2

    .line 770
    :cond_2
    const-string/jumbo v3, "value"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 771
    .local v9, columnIndex:I
    const/4 v3, -0x1

    if-ne v9, v3, :cond_4

    .line 773
    invoke-interface {v10}, Landroid/database/Cursor;->getColumnCount()I

    move-result v8

    .line 775
    .local v8, columnCount:I
    const-string v3, "DrmStore"

    const-string v4, "The table does not have the column \'value\'"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    if-ge v11, v8, :cond_3

    .line 781
    const-string v3, "DrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " @@@@@     columnName["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 784
    :cond_3
    new-instance v3, Landroid/provider/DrmCustomizationData;

    invoke-direct {v3, v2}, Landroid/provider/DrmCustomizationData;-><init>(Landroid/os/Bundle;)V

    move-object v2, v3

    goto :goto_0

    .line 788
    .end local v8           #columnCount:I
    .end local v11           #i:I
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 789
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 792
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 793
    new-instance v3, Landroid/provider/DrmCustomizationData;

    invoke-direct {v3, v2}, Landroid/provider/DrmCustomizationData;-><init>(Landroid/os/Bundle;)V

    move-object v2, v3

    goto :goto_0

    .line 798
    :cond_5
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 799
    .local v6, blob:[B
    invoke-static {v6}, Landroid/provider/DrmStore;->binaryArrayToBundle([B)Landroid/os/Bundle;

    move-result-object v7

    .line 800
    .local v7, bundle:Landroid/os/Bundle;
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 801
    new-instance v2, Landroid/provider/DrmCustomizationData;

    invoke-direct {v2, v7}, Landroid/provider/DrmCustomizationData;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static getDcfFileList(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;
    .locals 11
    .parameter "contentResolver"
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 7798
    sget-object v2, Landroid/provider/DrmStore;->DCFLIST_PROJECTION:[Ljava/lang/String;

    const-string v3, "delivery_type=\'3\'"

    const-string v5, "_id"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 7799
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 7800
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 7801
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 7802
    .local v7, count:I
    new-array v10, v7, [Ljava/lang/String;

    .line 7803
    .local v10, result:[Ljava/lang/String;
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 7804
    .local v8, dataColumnIndex:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v7, :cond_1

    .line 7805
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7806
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v9

    .line 7804
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 7809
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 7814
    .end local v7           #count:I
    .end local v8           #dataColumnIndex:I
    .end local v9           #i:I
    .end local v10           #result:[Ljava/lang/String;
    :goto_1
    return-object v10

    .line 7812
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v10, v4

    .line 7814
    goto :goto_1
.end method

.method public static getDmFileList(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;
    .locals 11
    .parameter "contentResolver"
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 7821
    sget-object v2, Landroid/provider/DrmStore;->DCFLIST_PROJECTION:[Ljava/lang/String;

    const-string v3, "delivery_type=\'1\' OR delivery_type=\'2\'"

    const-string v5, "_id"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 7826
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 7827
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 7828
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 7829
    .local v7, count:I
    new-array v10, v7, [Ljava/lang/String;

    .line 7830
    .local v10, result:[Ljava/lang/String;
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 7831
    .local v8, dataColumnIndex:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v7, :cond_1

    .line 7832
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7833
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v9

    .line 7831
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 7836
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 7841
    .end local v7           #count:I
    .end local v8           #dataColumnIndex:I
    .end local v9           #i:I
    .end local v10           #result:[Ljava/lang/String;
    :goto_1
    return-object v10

    .line 7839
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v10, v4

    .line 7841
    goto :goto_1
.end method

.method public static getDrmAudioConstraint(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;
    .locals 1
    .parameter "cx"
    .parameter "strFilePath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 8226
    sget-object v0, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;

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
    .line 8174
    sget-object v0, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Landroid/provider/DrmStore;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;I)Landroid/database/Cursor;

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
    .line 8278
    sget-object v0, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Landroid/provider/DrmStore;->getDrmContentStream(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static final getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;
    .locals 31
    .parameter "cr"
    .parameter "uri"
    .parameter "permissionType"

    .prologue
    .line 6574
    const-string v3, "DrmStore"

    const-string v4, "********getDrmConstraint (2)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6576
    const/16 v27, 0x0

    .line 6578
    .local v27, res:Landroid/provider/DrmStore$DrmConstraint;
    sget-object v5, Landroid/provider/DrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 6579
    .local v9, c:Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 6581
    const-string v3, "DrmStore"

    const-string v4, "getDrmConstraint query DRM db failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6583
    const/4 v3, 0x0

    .line 6666
    :goto_0
    return-object v3

    .line 6584
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 6586
    const-string v3, "DrmStore"

    const-string v4, "getDrmConstraint no record."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6588
    const/4 v3, 0x0

    goto :goto_0

    .line 6591
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToLast()Z

    .line 6592
    const-string v3, "_data"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 6593
    .local v21, filenameColumnId:I
    move/from16 v0, v21

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 6595
    .local v20, filename:Ljava/lang/String;
    const-string/jumbo v3, "message_type"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 6596
    .local v26, messageTypeColumnId:I
    move/from16 v0, v26

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 6598
    .local v25, messageType:Ljava/lang/String;
    const-string v3, "delivery_type"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 6599
    .local v12, deliveryTypeColumnId:I
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 6601
    .local v11, deliveryType:I
    const-string v3, "_size"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 6602
    .local v19, fileSizeColumnId:I
    move/from16 v0, v19

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 6603
    .local v18, fileSize:I
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 6605
    const/4 v3, 0x1

    if-ne v11, v3, :cond_2

    .line 6607
    const-string v3, "DrmStore"

    const-string v4, "FL doesn\'t have constraint."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6609
    const/4 v3, 0x0

    goto :goto_0

    .line 6611
    :cond_2
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6613
    .local v17, file:Ljava/io/File;
    :try_start_0
    new-instance v22, Ljava/io/FileInputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 6614
    .local v22, fis:Ljava/io/InputStream;
    new-instance v10, Landroid/drm/mobile1/DrmRawContent;

    move-object/from16 v0, v22

    move/from16 v1, v18

    move-object/from16 v2, v25

    invoke-direct {v10, v0, v1, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 6615
    .local v10, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v24

    .line 6616
    .local v24, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v29

    .line 6619
    .local v29, rights:Landroid/drm/mobile1/DrmRights;
    const-string v3, "DrmStore"

    const-string v4, " @@@@@ getDrmConstraint (2) - (1)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6622
    if-eqz v29, :cond_7

    .line 6623
    move-object/from16 v0, v29

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRights;->getConstraint(I)Landroid/drm/mobile1/DrmConstraintInfo;

    move-result-object v23

    .line 6625
    .local v23, info:Landroid/drm/mobile1/DrmConstraintInfo;
    if-eqz v23, :cond_6

    .line 6626
    new-instance v28, Landroid/provider/DrmStore$DrmConstraint;

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/provider/DrmStore$DrmConstraint;-><init>(Landroid/drm/mobile1/DrmConstraintInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 6627
    .end local v27           #res:Landroid/provider/DrmStore$DrmConstraint;
    .local v28, res:Landroid/provider/DrmStore$DrmConstraint;
    if-eqz v28, :cond_8

    .line 6628
    const-wide/16 v13, 0x0

    .line 6629
    .local v13, differential:J
    const/16 v30, 0x0

    .line 6631
    .local v30, stampCursor:Landroid/database/Cursor;
    :try_start_1
    sget-object v4, Landroid/provider/DrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/DrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v30

    .line 6632
    if-eqz v30, :cond_3

    .line 6633
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6634
    const-string/jumbo v3, "time_differential"

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 6635
    .local v15, differentialColumnId:I
    move-object/from16 v0, v30

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v13

    .line 6641
    .end local v15           #differentialColumnId:I
    :cond_3
    if-eqz v30, :cond_4

    .line 6642
    :try_start_2
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    .line 6645
    :cond_4
    :goto_1
    move-object/from16 v0, v28

    invoke-virtual {v0, v13, v14}, Landroid/provider/DrmStore$DrmConstraint;->setDisserential(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v27, v28

    .line 6656
    .end local v13           #differential:J
    .end local v23           #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .end local v28           #res:Landroid/provider/DrmStore$DrmConstraint;
    .end local v30           #stampCursor:Landroid/database/Cursor;
    .restart local v27       #res:Landroid/provider/DrmStore$DrmConstraint;
    :goto_2
    :try_start_3
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v22           #fis:Ljava/io/InputStream;
    .end local v24           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v29           #rights:Landroid/drm/mobile1/DrmRights;
    :goto_3
    move-object/from16 v3, v27

    .line 6666
    goto/16 :goto_0

    .line 6638
    .end local v27           #res:Landroid/provider/DrmStore$DrmConstraint;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v13       #differential:J
    .restart local v22       #fis:Ljava/io/InputStream;
    .restart local v23       #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .restart local v24       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v28       #res:Landroid/provider/DrmStore$DrmConstraint;
    .restart local v29       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v30       #stampCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v16

    .line 6639
    .local v16, e:Ljava/lang/Exception;
    :try_start_4
    const-string v3, "DrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get differential: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 6641
    if-eqz v30, :cond_4

    .line 6642
    :try_start_5
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 6657
    .end local v16           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v16

    move-object/from16 v27, v28

    .line 6659
    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v13           #differential:J
    .end local v22           #fis:Ljava/io/InputStream;
    .end local v23           #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .end local v24           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v28           #res:Landroid/provider/DrmStore$DrmConstraint;
    .end local v29           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v30           #stampCursor:Landroid/database/Cursor;
    .restart local v16       #e:Ljava/lang/Exception;
    .restart local v27       #res:Landroid/provider/DrmStore$DrmConstraint;
    :goto_4
    :try_start_6
    const-string v3, "DrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDrmConstraint : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 6661
    .end local v16           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :goto_5
    throw v3

    .line 6641
    .end local v27           #res:Landroid/provider/DrmStore$DrmConstraint;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v13       #differential:J
    .restart local v22       #fis:Ljava/io/InputStream;
    .restart local v23       #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .restart local v24       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v28       #res:Landroid/provider/DrmStore$DrmConstraint;
    .restart local v29       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v30       #stampCursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v3

    if-eqz v30, :cond_5

    .line 6642
    :try_start_7
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    .line 6641
    :cond_5
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 6661
    :catchall_2
    move-exception v3

    move-object/from16 v27, v28

    .end local v28           #res:Landroid/provider/DrmStore$DrmConstraint;
    .restart local v27       #res:Landroid/provider/DrmStore$DrmConstraint;
    goto :goto_5

    .line 6649
    .end local v13           #differential:J
    .end local v30           #stampCursor:Landroid/database/Cursor;
    :cond_6
    :try_start_8
    const-string v3, "DrmStore"

    const-string v4, " @@@@@ NO Drm Constraint Info !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 6657
    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v22           #fis:Ljava/io/InputStream;
    .end local v23           #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .end local v24           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v29           #rights:Landroid/drm/mobile1/DrmRights;
    :catch_2
    move-exception v16

    goto :goto_4

    .line 6653
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v22       #fis:Ljava/io/InputStream;
    .restart local v24       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v29       #rights:Landroid/drm/mobile1/DrmRights;
    :cond_7
    const-string v3, "DrmStore"

    const-string v4, " @@@@@ NO Drm Rights !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    .end local v27           #res:Landroid/provider/DrmStore$DrmConstraint;
    .restart local v23       #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .restart local v28       #res:Landroid/provider/DrmStore$DrmConstraint;
    :cond_8
    move-object/from16 v27, v28

    .end local v28           #res:Landroid/provider/DrmStore$DrmConstraint;
    .restart local v27       #res:Landroid/provider/DrmStore$DrmConstraint;
    goto :goto_2
.end method

.method public static final getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;
    .locals 36
    .parameter "cx"
    .parameter "uri"
    .parameter "strFilePath"

    .prologue
    .line 6161
    const-string v4, "DrmStore"

    const-string v5, "********getDrmConstraint without renew call back"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6162
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6164
    const/4 v9, 0x0

    .line 6165
    .local v9, c:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 6166
    .local v12, contentUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 6167
    .local v3, cr:Landroid/content/ContentResolver;
    if-nez p2, :cond_1

    .line 6168
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 6173
    :goto_0
    if-nez v9, :cond_2

    .line 6175
    const-string v4, "DrmStore"

    const-string v5, "getDrmConstraint query DRM db failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6177
    const/4 v10, 0x0

    .line 6338
    :cond_0
    :goto_1
    return-object v10

    .line 6170
    :cond_1
    const/4 v5, 0x0

    const-string v6, "_data=?"

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v7, v4

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0

    .line 6178
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    .line 6179
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 6181
    const-string v4, "DrmStore"

    const-string v5, "getDrmConstraint no record."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6183
    const/4 v10, 0x0

    goto :goto_1

    .line 6186
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6187
    if-eqz p2, :cond_e

    .line 6188
    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 6189
    .local v25, index:I
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 6190
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 6209
    .end local v25           #index:I
    :goto_2
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contentUri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6212
    const-string v4, "delivery_type"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 6213
    .local v15, deliveryTypeColumnId:I
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 6214
    .local v14, deliveryType:I
    const-string/jumbo v4, "message_type"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 6215
    .local v29, messageTypeColumnId:I
    move/from16 v0, v29

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 6216
    .local v28, messageType:Ljava/lang/String;
    const-string v4, "_size"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 6217
    .local v23, fileSizeColumnId:I
    move/from16 v0, v23

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 6218
    .local v22, fileSize:I
    const/16 v31, 0x2

    .line 6219
    .local v31, permissionType:I
    if-nez p2, :cond_4

    .line 6220
    const-string v4, "_data"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 6221
    .local v21, filePathColumnId:I
    move/from16 v0, v21

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 6223
    .end local v21           #filePathColumnId:I
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 6225
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 6226
    const/16 v31, 0x2

    .line 6242
    :goto_3
    :try_start_0
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6245
    .local v20, file:Ljava/io/File;
    const/4 v4, 0x3

    if-eq v14, v4, :cond_5

    const/4 v4, 0x2

    if-ne v14, v4, :cond_13

    .line 6247
    :cond_5
    new-instance v24, Ljava/io/FileInputStream;

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 6255
    .local v24, fis:Ljava/io/InputStream;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v27

    .line 6259
    .local v27, manager:Landroid/drm/mobile1/DrmRightsManager;
    const/4 v10, 0x0

    .line 6260
    .local v10, constraint:Landroid/provider/DrmStore$DrmConstraint;
    new-instance v11, Landroid/drm/mobile1/DrmRawContent;

    move-object/from16 v0, v24

    move/from16 v1, v22

    move-object/from16 v2, v28

    invoke-direct {v11, v0, v1, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 6261
    .local v11, content:Landroid/drm/mobile1/DrmRawContent;
    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v33

    .line 6264
    .local v33, rights:Landroid/drm/mobile1/DrmRights;
    if-nez v33, :cond_6

    const/4 v4, 0x3

    if-ne v14, v4, :cond_6

    .line 6266
    move-object/from16 v13, p0

    .line 6267
    .local v13, context:Landroid/content/Context;
    new-instance v35, Landroid/widget/TextView;

    invoke-direct/range {v35 .. v36}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 6268
    .local v35, tv:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.htc"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v32

    .line 6269
    .local v32, rc:Landroid/content/res/Resources;
    const v4, 0x20400e8

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    .line 6270
    .local v30, notify:Ljava/lang/String;
    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6271
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x20400e9

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "OK"

    new-instance v6, Landroid/provider/DrmStore$2;

    move-object/from16 v0, v33

    invoke-direct {v6, v0, v11, v13}, Landroid/provider/DrmStore$2;-><init>(Landroid/drm/mobile1/DrmRights;Landroid/drm/mobile1/DrmRawContent;Landroid/content/Context;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "Cancel"

    new-instance v6, Landroid/provider/DrmStore$1;

    invoke-direct {v6}, Landroid/provider/DrmStore$1;-><init>()V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 6304
    .end local v13           #context:Landroid/content/Context;
    .end local v30           #notify:Ljava/lang/String;
    .end local v32           #rc:Landroid/content/res/Resources;
    .end local v35           #tv:Landroid/widget/TextView;
    :cond_6
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileInputStream;->close()V

    .line 6306
    if-eqz v33, :cond_9

    .line 6307
    move-object/from16 v0, v33

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRights;->getConstraint(I)Landroid/drm/mobile1/DrmConstraintInfo;

    move-result-object v26

    .line 6308
    .local v26, info:Landroid/drm/mobile1/DrmConstraintInfo;
    new-instance v10, Landroid/provider/DrmStore$DrmConstraint;

    .end local v10           #constraint:Landroid/provider/DrmStore$DrmConstraint;
    move-object/from16 v0, v26

    invoke-direct {v10, v0}, Landroid/provider/DrmStore$DrmConstraint;-><init>(Landroid/drm/mobile1/DrmConstraintInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6309
    .restart local v10       #constraint:Landroid/provider/DrmStore$DrmConstraint;
    if-eqz v10, :cond_0

    .line 6310
    const-wide/16 v16, 0x0

    .line 6311
    .local v16, differential:J
    const/16 v34, 0x0

    .line 6313
    .local v34, stampCursor:Landroid/database/Cursor;
    :try_start_1
    sget-object v4, Landroid/provider/DrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/DrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v34

    .line 6314
    if-eqz v34, :cond_7

    .line 6315
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 6316
    const-string/jumbo v4, "time_differential"

    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 6317
    .local v18, differentialColumnId:I
    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v16

    .line 6325
    .end local v18           #differentialColumnId:I
    :cond_7
    if-eqz v34, :cond_8

    .line 6326
    :try_start_2
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    .line 6329
    :cond_8
    :goto_4
    move-wide/from16 v0, v16

    invoke-virtual {v10, v0, v1}, Landroid/provider/DrmStore$DrmConstraint;->setDisserential(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 6333
    .end local v10           #constraint:Landroid/provider/DrmStore$DrmConstraint;
    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v16           #differential:J
    .end local v20           #file:Ljava/io/File;
    .end local v24           #fis:Ljava/io/InputStream;
    .end local v26           #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .end local v27           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v33           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v34           #stampCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v19

    .line 6335
    .local v19, e:Ljava/lang/Exception;
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDrmConstraint : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6338
    .end local v19           #e:Ljava/lang/Exception;
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 6192
    .end local v14           #deliveryType:I
    .end local v15           #deliveryTypeColumnId:I
    .end local v22           #fileSize:I
    .end local v23           #fileSizeColumnId:I
    .end local v28           #messageType:Ljava/lang/String;
    .end local v29           #messageTypeColumnId:I
    .end local v31           #permissionType:I
    .restart local v25       #index:I
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 6193
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto/16 :goto_2

    .line 6195
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 6196
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto/16 :goto_2

    .line 6198
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 6199
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto/16 :goto_2

    .line 6202
    :cond_d
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 6203
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 6206
    .end local v25           #index:I
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto/16 :goto_2

    .line 6228
    .restart local v14       #deliveryType:I
    .restart local v15       #deliveryTypeColumnId:I
    .restart local v22       #fileSize:I
    .restart local v23       #fileSizeColumnId:I
    .restart local v28       #messageType:Ljava/lang/String;
    .restart local v29       #messageTypeColumnId:I
    .restart local v31       #permissionType:I
    :cond_f
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 6229
    const/16 v31, 0x1

    goto/16 :goto_3

    .line 6231
    :cond_10
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 6232
    const/16 v31, 0x1

    goto/16 :goto_3

    .line 6234
    :cond_11
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 6235
    const/16 v31, 0x3

    goto/16 :goto_3

    .line 6238
    :cond_12
    const/16 v31, 0x2

    goto/16 :goto_3

    .line 6250
    .restart local v20       #file:Ljava/io/File;
    :cond_13
    :try_start_3
    const-string v4, "DrmStore"

    const-string v5, "getDrmConstraint no rights."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 6252
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 6320
    .restart local v10       #constraint:Landroid/provider/DrmStore$DrmConstraint;
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v16       #differential:J
    .restart local v24       #fis:Ljava/io/InputStream;
    .restart local v26       #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .restart local v27       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v33       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v34       #stampCursor:Landroid/database/Cursor;
    :catch_1
    move-exception v19

    .line 6322
    .restart local v19       #e:Ljava/lang/Exception;
    :try_start_4
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get differential: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 6325
    if-eqz v34, :cond_8

    .line 6326
    :try_start_5
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 6325
    .end local v19           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v34, :cond_14

    .line 6326
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    .line 6325
    :cond_14
    throw v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public static final getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/provider/DrmStore$UpdateLicense;)Landroid/provider/DrmStore$DrmConstraint;
    .locals 33
    .parameter "cx"
    .parameter "uri"
    .parameter "strFilePath"
    .parameter "updateLicense"

    .prologue
    .line 6351
    const-string v4, "DrmStore"

    const-string v5, "********getDrmConstraint (1)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6353
    const/4 v9, 0x0

    .line 6354
    .local v9, c:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 6355
    .local v12, contentUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 6356
    .local v3, cr:Landroid/content/ContentResolver;
    if-nez p2, :cond_0

    .line 6357
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 6362
    :goto_0
    if-nez v9, :cond_1

    .line 6364
    const-string v4, "DrmStore"

    const-string v5, "getDrmConstraint query DRM db failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6366
    const/4 v10, 0x0

    .line 6548
    :goto_1
    return-object v10

    .line 6359
    :cond_0
    const/4 v5, 0x0

    const-string v6, "_data=?"

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v7, v4

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0

    .line 6367
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_2

    .line 6368
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 6370
    const-string v4, "DrmStore"

    const-string v5, "getDrmConstraint no record."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6372
    const/4 v10, 0x0

    goto :goto_1

    .line 6375
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6376
    if-eqz p2, :cond_d

    .line 6377
    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 6378
    .local v24, index:I
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 6379
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 6398
    .end local v24           #index:I
    :goto_2
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contentUri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6401
    const-string v4, "delivery_type"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 6402
    .local v14, deliveryTypeColumnId:I
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 6403
    .local v13, deliveryType:I
    const-string/jumbo v4, "message_type"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 6404
    .local v28, messageTypeColumnId:I
    move/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 6405
    .local v27, messageType:Ljava/lang/String;
    const-string v4, "_size"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 6406
    .local v22, fileSizeColumnId:I
    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 6407
    .local v21, fileSize:I
    const/16 v29, 0x2

    .line 6408
    .local v29, permissionType:I
    if-nez p2, :cond_3

    .line 6409
    const-string v4, "_data"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 6410
    .local v20, filePathColumnId:I
    move/from16 v0, v20

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 6412
    .end local v20           #filePathColumnId:I
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 6414
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 6415
    const/16 v29, 0x2

    .line 6431
    :goto_3
    :try_start_0
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6434
    .local v19, file:Ljava/io/File;
    const/4 v4, 0x3

    if-eq v13, v4, :cond_4

    const/4 v4, 0x2

    if-ne v13, v4, :cond_12

    .line 6436
    :cond_4
    new-instance v23, Ljava/io/FileInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 6444
    .local v23, fis:Ljava/io/InputStream;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v26

    .line 6451
    .local v26, manager:Landroid/drm/mobile1/DrmRightsManager;
    new-instance v11, Landroid/drm/mobile1/DrmRawContent;

    move-object/from16 v0, v23

    move/from16 v1, v21

    move-object/from16 v2, v27

    invoke-direct {v11, v0, v1, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 6452
    .local v11, content:Landroid/drm/mobile1/DrmRawContent;
    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v30

    .line 6455
    .local v30, rights:Landroid/drm/mobile1/DrmRights;
    if-nez v30, :cond_5

    const/4 v4, 0x3

    if-ne v13, v4, :cond_5

    .line 6457
    if-eqz p3, :cond_5

    .line 6458
    invoke-virtual {v11}, Landroid/drm/mobile1/DrmRawContent;->getRightsAddress()Ljava/lang/String;

    move-result-object v31

    .line 6459
    .local v31, rightsIssuer:Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/provider/DrmStore$UpdateLicense;->update(Ljava/lang/String;)V

    .line 6500
    .end local v31           #rightsIssuer:Ljava/lang/String;
    :cond_5
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileInputStream;->close()V

    .line 6502
    if-eqz v30, :cond_14

    .line 6503
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRights;->getConstraint(I)Landroid/drm/mobile1/DrmConstraintInfo;

    move-result-object v25

    .line 6506
    .local v25, info:Landroid/drm/mobile1/DrmConstraintInfo;
    new-instance v10, Landroid/provider/DrmStore$DrmConstraint;

    move-object/from16 v0, v25

    invoke-direct {v10, v0}, Landroid/provider/DrmStore$DrmConstraint;-><init>(Landroid/drm/mobile1/DrmConstraintInfo;)V

    .line 6509
    .local v10, constraint:Landroid/provider/DrmStore$DrmConstraint;
    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6511
    if-eqz v10, :cond_8

    .line 6512
    const-wide/16 v15, 0x0

    .line 6513
    .local v15, differential:J
    const/16 v32, 0x0

    .line 6515
    .local v32, stampCursor:Landroid/database/Cursor;
    :try_start_1
    sget-object v4, Landroid/provider/DrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/DrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v32

    .line 6516
    if-eqz v32, :cond_6

    .line 6517
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 6518
    const-string/jumbo v4, "time_differential"

    move-object/from16 v0, v32

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 6519
    .local v17, differentialColumnId:I
    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v15

    .line 6527
    .end local v17           #differentialColumnId:I
    :cond_6
    if-eqz v32, :cond_7

    .line 6528
    :try_start_2
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 6531
    :cond_7
    :goto_4
    move-wide v0, v15

    invoke-virtual {v10, v0, v1}, Landroid/provider/DrmStore$DrmConstraint;->setDisserential(J)V

    .line 6533
    .end local v15           #differential:J
    .end local v32           #stampCursor:Landroid/database/Cursor;
    :cond_8
    monitor-exit v10

    goto/16 :goto_1

    .line 6535
    :catchall_0
    move-exception v4

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 6542
    .end local v10           #constraint:Landroid/provider/DrmStore$DrmConstraint;
    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v19           #file:Ljava/io/File;
    .end local v23           #fis:Ljava/io/InputStream;
    .end local v25           #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .end local v26           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v30           #rights:Landroid/drm/mobile1/DrmRights;
    :catch_0
    move-exception v18

    .line 6544
    .local v18, e:Ljava/lang/Exception;
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDrmConstraint : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6548
    .end local v18           #e:Ljava/lang/Exception;
    :goto_5
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 6381
    .end local v13           #deliveryType:I
    .end local v14           #deliveryTypeColumnId:I
    .end local v21           #fileSize:I
    .end local v22           #fileSizeColumnId:I
    .end local v27           #messageType:Ljava/lang/String;
    .end local v28           #messageTypeColumnId:I
    .end local v29           #permissionType:I
    .restart local v24       #index:I
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 6382
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto/16 :goto_2

    .line 6384
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 6385
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto/16 :goto_2

    .line 6387
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 6388
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto/16 :goto_2

    .line 6391
    :cond_c
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 6392
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 6395
    .end local v24           #index:I
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto/16 :goto_2

    .line 6417
    .restart local v13       #deliveryType:I
    .restart local v14       #deliveryTypeColumnId:I
    .restart local v21       #fileSize:I
    .restart local v22       #fileSizeColumnId:I
    .restart local v27       #messageType:Ljava/lang/String;
    .restart local v28       #messageTypeColumnId:I
    .restart local v29       #permissionType:I
    :cond_e
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 6418
    const/16 v29, 0x1

    goto/16 :goto_3

    .line 6420
    :cond_f
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 6421
    const/16 v29, 0x1

    goto/16 :goto_3

    .line 6423
    :cond_10
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 6424
    const/16 v29, 0x3

    goto/16 :goto_3

    .line 6427
    :cond_11
    const/16 v29, 0x2

    goto/16 :goto_3

    .line 6439
    .restart local v19       #file:Ljava/io/File;
    :cond_12
    :try_start_4
    const-string v4, "DrmStore"

    const-string v5, "getDrmConstraint no rights."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 6441
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 6522
    .restart local v10       #constraint:Landroid/provider/DrmStore$DrmConstraint;
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v15       #differential:J
    .restart local v23       #fis:Ljava/io/InputStream;
    .restart local v25       #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .restart local v26       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v30       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v32       #stampCursor:Landroid/database/Cursor;
    :catch_1
    move-exception v18

    .line 6524
    .restart local v18       #e:Ljava/lang/Exception;
    :try_start_5
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get differential: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 6527
    if-eqz v32, :cond_7

    .line 6528
    :try_start_6
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 6527
    .end local v18           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    if-eqz v32, :cond_13

    .line 6528
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 6527
    :cond_13
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 6539
    .end local v10           #constraint:Landroid/provider/DrmStore$DrmConstraint;
    .end local v15           #differential:J
    .end local v25           #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .end local v32           #stampCursor:Landroid/database/Cursor;
    :cond_14
    :try_start_7
    const-string v4, "DrmStore"

    const-string v5, "getDrmConstraint : rights is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_5
.end method

.method public static final getDrmContentStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 1
    .parameter "cx"
    .parameter "uri"

    .prologue
    .line 8351
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final getDrmContentStream(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 24
    .parameter "cx"
    .parameter "uri"
    .parameter "strFilePath"

    .prologue
    .line 7398
    const-string v3, "DrmStore"

    const-string v4, "********getDrmContentStream"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7401
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 7402
    .local v2, cr:Landroid/content/ContentResolver;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v20

    .line 7403
    .local v20, manager:Landroid/drm/mobile1/DrmRightsManager;
    const/4 v10, 0x0

    .line 7404
    .local v10, content:Landroid/drm/mobile1/DrmRawContent;
    const/16 v22, 0x0

    .line 7405
    .local v22, rights:Landroid/drm/mobile1/DrmRights;
    const/4 v14, 0x0

    .line 7406
    .local v14, drmContentStream:Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 7408
    .local v8, c:Landroid/database/Cursor;
    if-nez p2, :cond_0

    .line 7409
    sget-object v4, Landroid/provider/DrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id"

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 7414
    :goto_0
    if-nez v8, :cond_1

    .line 7416
    const-string v3, "DrmStore"

    const-string v4, "getDrmContentStream query failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7418
    const/4 v3, 0x0

    .line 7490
    :goto_1
    return-object v3

    .line 7411
    :cond_0
    sget-object v4, Landroid/provider/DrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const-string v5, "_data=?"

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v6, v3

    const-string v7, "_id"

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0

    .line 7419
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 7421
    const-string v3, "DrmStore"

    const-string v4, "getDrmContentStream no record."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7423
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 7424
    const/4 v3, 0x0

    goto :goto_1

    .line 7427
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7428
    const-string v3, "delivery_type"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 7429
    .local v13, deliveryTypeColumnId:I
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 7430
    .local v12, deliveryType:I
    const-string v3, "_size"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 7431
    .local v19, fileSizeColumnId:I
    move/from16 v0, v19

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 7432
    .local v18, fileSize:I
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 7435
    :try_start_0
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7436
    .local v17, file:Ljava/io/File;
    new-instance v23, Ljava/io/FileInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 7438
    .local v23, tempFin:Ljava/io/InputStream;
    packed-switch v12, :pswitch_data_0

    .end local v17           #file:Ljava/io/File;
    .end local v23           #tempFin:Ljava/io/InputStream;
    :goto_2
    move-object v3, v14

    .line 7490
    goto :goto_1

    .line 7441
    .restart local v17       #file:Ljava/io/File;
    .restart local v23       #tempFin:Ljava/io/InputStream;
    :pswitch_0
    new-instance v11, Landroid/drm/mobile1/DrmRawContent;

    const-string v3, "application/vnd.oma.drm.message"

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-direct {v11, v0, v1, v3}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7442
    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .local v11, content:Landroid/drm/mobile1/DrmRawContent;
    :try_start_1
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v21

    .line 7443
    .local v21, right:Landroid/drm/mobile1/DrmRights;
    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/drm/mobile1/DrmRawContent;->getContentDecryptStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v14

    move-object v10, v11

    .line 7444
    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    goto :goto_2

    .line 7448
    .end local v21           #right:Landroid/drm/mobile1/DrmRights;
    :pswitch_1
    :try_start_2
    new-instance v11, Landroid/drm/mobile1/DrmRawContent;

    const-string v3, "application/vnd.oma.drm.message"

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-direct {v11, v0, v1, v3}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 7449
    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    :try_start_3
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v22

    .line 7451
    if-eqz v22, :cond_4

    .line 7452
    invoke-static/range {p0 .. p2}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v9

    .line 7454
    .local v9, constraint:Landroid/provider/DrmStore$DrmConstraint;
    move-object/from16 v0, p1

    invoke-static {v2, v9, v0}, Landroid/provider/DrmStore;->checkExpiration(Landroid/content/ContentResolver;Landroid/provider/DrmStore$DrmConstraint;Landroid/net/Uri;)I

    move-result v3

    if-nez v3, :cond_3

    .line 7455
    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/drm/mobile1/DrmRawContent;->getContentDecryptStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;

    move-result-object v14

    move-object v10, v11

    .line 7462
    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    goto :goto_2

    .line 7458
    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    :cond_3
    const-string v3, "DrmStore"

    const-string v4, "getDrmContentStream constraint expired."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7460
    const/4 v3, 0x0

    move-object v10, v11

    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    goto/16 :goto_1

    .line 7464
    .end local v9           #constraint:Landroid/provider/DrmStore$DrmConstraint;
    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    :cond_4
    const-string v3, "DrmStore"

    const-string v4, "getDrmContentStream no rights installed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 7466
    const/4 v3, 0x0

    move-object v10, v11

    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    goto/16 :goto_1

    .line 7471
    :pswitch_2
    :try_start_4
    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 7472
    .local v15, drmStream:Ljava/io/FileInputStream;
    new-instance v11, Landroid/drm/mobile1/DrmRawContent;

    const-string v3, "application/vnd.oma.drm.content"

    move/from16 v0, v18

    invoke-direct {v11, v15, v0, v3}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 7473
    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    :try_start_5
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v22

    .line 7474
    if-nez v22, :cond_5

    .line 7476
    const-string v3, "DrmStore"

    const-string v4, "getDrmContentStream no rights installed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7478
    const/4 v3, 0x0

    move-object v10, v11

    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    goto/16 :goto_1

    .line 7480
    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    :cond_5
    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v14

    move-object v10, v11

    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    goto/16 :goto_2

    .line 7483
    .end local v15           #drmStream:Ljava/io/FileInputStream;
    .end local v17           #file:Ljava/io/File;
    .end local v23           #tempFin:Ljava/io/InputStream;
    :catch_0
    move-exception v16

    .line 7485
    .local v16, e:Ljava/lang/Exception;
    :goto_3
    :try_start_6
    const-string v3, "DrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDrmContentStream : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 7487
    .end local v16           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :goto_4
    throw v3

    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v17       #file:Ljava/io/File;
    .restart local v23       #tempFin:Ljava/io/InputStream;
    :catchall_1
    move-exception v3

    move-object v10, v11

    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    goto :goto_4

    .line 7483
    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    :catch_1
    move-exception v16

    move-object v10, v11

    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    goto :goto_3

    .line 7438
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static final getDrmContrain(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;
    .locals 1
    .parameter "cr"
    .parameter "uri"
    .parameter "permissionType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6562
    invoke-static {p0, p1, p2}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    return-object v0
.end method

.method public static getDrmCursor(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/database/Cursor;
    .locals 8
    .parameter "cr"
    .parameter "uri"
    .parameter "nDeliveryType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 7624
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 7628
    .local v3, strWhere:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "existence=\'exist\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7630
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    .line 7633
    .local v7, nHeadLength:I
    and-int/lit8 v0, p2, 0xf

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 7634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "delivery_type=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7636
    :cond_0
    and-int/lit16 v0, p2, 0xf0

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_2

    .line 7637
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v7, :cond_1

    .line 7638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7639
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "delivery_type=2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7641
    :cond_2
    and-int/lit16 v0, p2, 0xf00

    const/16 v1, 0xf00

    if-ne v0, v1, :cond_4

    .line 7642
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v7, :cond_3

    .line 7643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7644
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "delivery_type=3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7648
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7651
    const-string v0, "DrmStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start query where "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7655
    sget-object v2, Landroid/provider/DrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 7657
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 7658
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    .line 7661
    :cond_5
    return-object v6
.end method

.method private static getDrmCursor(Landroid/content/Context;Landroid/net/Uri;I)Landroid/database/Cursor;
    .locals 2
    .parameter "cx"
    .parameter "uri"
    .parameter "nDeliveryType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7608
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 7610
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {v0, p1, p2}, Landroid/provider/DrmStore;->getDrmCursor(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public static final getDrmFileStatus(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 1
    .parameter "cx"
    .parameter "uri"

    .prologue
    .line 8336
    const/4 v0, 0x0

    return v0
.end method

.method public static final getDrmFileStatus(Ljava/lang/String;)I
    .locals 1
    .parameter "fileName"

    .prologue
    .line 8343
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
    .line 8213
    sget-object v0, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;

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
    .line 8161
    sget-object v0, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Landroid/provider/DrmStore;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;I)Landroid/database/Cursor;

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
    .line 8265
    sget-object v0, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Landroid/provider/DrmStore;->getDrmContentStream(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/InputStream;

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
    .line 8252
    sget-object v0, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;

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
    .line 8200
    sget-object v0, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Landroid/provider/DrmStore;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;I)Landroid/database/Cursor;

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
    .line 8304
    sget-object v0, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Landroid/provider/DrmStore;->getDrmContentStream(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static final getDrmLicenseInfo(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "cx"
    .parameter "uri"

    .prologue
    .line 8313
    const/4 v0, 0x0

    return-object v0
.end method

.method private static final getDrmRight(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/drm/mobile1/DrmRights;
    .locals 17
    .parameter "cr"
    .parameter "uri"
    .parameter "strFilePath"

    .prologue
    .line 7552
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

    .line 7553
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 7555
    const-string v1, "DrmStore"

    const-string v2, "getDrmRight query DRM db failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7557
    const/16 v16, 0x0

    .line 7594
    :cond_0
    :goto_0
    return-object v16

    .line 7558
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 7560
    const-string v1, "DrmStore"

    const-string v2, "getDrmRight no record."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7562
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 7563
    const/16 v16, 0x0

    goto :goto_0

    .line 7566
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7567
    const-string/jumbo v1, "message_type"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 7568
    .local v15, messageTypeColumnId:I
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 7569
    .local v14, messageType:Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 7571
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7572
    .local v10, file:Ljava/io/File;
    const/4 v11, 0x0

    .line 7573
    .local v11, fis:Ljava/io/FileInputStream;
    const/16 v16, 0x0

    .line 7575
    .local v16, rights:Landroid/drm/mobile1/DrmRights;
    :try_start_0
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7576
    .end local v11           #fis:Ljava/io/FileInputStream;
    .local v12, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v8, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {v8, v12, v1, v14}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 7577
    .local v8, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v13

    .line 7578
    .local v13, manager:Landroid/drm/mobile1/DrmRightsManager;
    invoke-virtual {v13, v8}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v16

    .line 7585
    if-eqz v12, :cond_3

    .line 7586
    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_3
    :goto_1
    move-object v11, v12

    .line 7593
    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 7579
    .end local v8           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v13           #manager:Landroid/drm/mobile1/DrmRightsManager;
    :catch_0
    move-exception v9

    .line 7581
    .local v9, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v1, "DrmStore"

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

    .line 7585
    if-eqz v11, :cond_0

    .line 7586
    :try_start_4
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 7588
    :catch_1
    move-exception v9

    .line 7590
    const-string v1, "DrmStore"

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

    .line 7584
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 7585
    :goto_3
    if-eqz v11, :cond_4

    .line 7586
    :try_start_5
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 7584
    :cond_4
    :goto_4
    throw v1

    .line 7588
    :catch_2
    move-exception v9

    .line 7590
    .restart local v9       #e:Ljava/lang/Exception;
    const-string v2, "DrmStore"

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

    goto :goto_4

    .line 7588
    .end local v9           #e:Ljava/lang/Exception;
    .end local v11           #fis:Ljava/io/FileInputStream;
    .restart local v8       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v12       #fis:Ljava/io/FileInputStream;
    .restart local v13       #manager:Landroid/drm/mobile1/DrmRightsManager;
    :catch_3
    move-exception v9

    .line 7590
    .restart local v9       #e:Ljava/lang/Exception;
    const-string v1, "DrmStore"

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

    goto/16 :goto_1

    .line 7584
    .end local v8           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v9           #e:Ljava/lang/Exception;
    .end local v13           #manager:Landroid/drm/mobile1/DrmRightsManager;
    :catchall_1
    move-exception v1

    move-object v11, v12

    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 7579
    .end local v11           #fis:Ljava/io/FileInputStream;
    .restart local v12       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v9

    move-object v11, v12

    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method public static getDrmVideoConstraint(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;
    .locals 1
    .parameter "cx"
    .parameter "strFilePath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 8239
    sget-object v0, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;

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
    .line 8187
    sget-object v0, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Landroid/provider/DrmStore;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;I)Landroid/database/Cursor;

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
    .line 8291
    sget-object v0, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Landroid/provider/DrmStore;->getDrmContentStream(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalStorageDownloadPath()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 7938
    const/4 v7, 0x0

    .line 7939
    .local v7, resultDownloadPath:Ljava/lang/String;
    const/4 v3, 0x0

    .line 7941
    .local v3, findName:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "mounted"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 7942
    const-string v9, "DrmStore"

    const-string v10, " @@@@@ Environment.getExternalStorageState() is not mounted!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 8004
    .end local v7           #resultDownloadPath:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 7947
    .restart local v7       #resultDownloadPath:Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 7949
    .local v2, external_storage_file:Ljava/io/File;
    if-nez v2, :cond_1

    .line 7950
    const-string v9, "DrmStore"

    const-string v10, " @@@@@ Environment.getExternalStorageDirectory() ERROR!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 7952
    goto :goto_0

    .line 7954
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 7955
    const-string v9, "DrmStore"

    const-string v10, " @@@@@ Environment.getExternalStorageDirectory() doesn\'t exist!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 7957
    goto :goto_0

    .line 7961
    :cond_2
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v5, v0, v4

    .line 7962
    .local v5, item:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 7963
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 7964
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 7978
    .end local v5           #item:Ljava/io/File;
    :cond_3
    if-eqz v3, :cond_5

    .line 7979
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 7983
    const-string v9, "DrmStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " @@@@@ the name of download folder in sdcard is="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7984
    const-string v9, "DrmStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " @@@@@ we got download path is = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 7996
    :catch_0
    move-exception v1

    .line 7997
    .local v1, e:Ljava/lang/Exception;
    const-string v9, "DrmStore"

    const-string v10, " @@@@@ get external storage directory ERROR!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7998
    const-string v9, "DrmStore"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7999
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v8

    .line 8001
    goto/16 :goto_0

    .line 7961
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v5       #item:Ljava/io/File;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 7969
    .end local v0           #arr$:[Ljava/io/File;
    .end local v4           #i$:I
    .end local v5           #item:Ljava/io/File;
    .end local v6           #len$:I
    :catch_1
    move-exception v1

    .line 7970
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v9, "DrmStore"

    const-string v10, " @@@@@ list files ERROR!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7971
    const-string v9, "DrmStore"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7972
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v8

    .line 7974
    goto/16 :goto_0

    .line 7988
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #arr$:[Ljava/io/File;
    .restart local v4       #i$:I
    .restart local v6       #len$:I
    :cond_5
    :try_start_2
    sget-object v9, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v9}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 7992
    const-string v9, "DrmStore"

    const-string v10, " @@@@@ No download folder in sdcard."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7993
    const-string v9, "DrmStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " @@@@@ we got download path is = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method private static final getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .parameter "cr"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 4607
    const/4 v8, 0x0

    .line 4608
    .local v8, result:Ljava/lang/String;
    sget-object v2, Landroid/provider/DrmStore;->FILEPATH_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4609
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 4610
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4611
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 4612
    .local v7, filePathColumnIndex:I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 4614
    .end local v7           #filePathColumnIndex:I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4616
    :cond_1
    return-object v8
.end method

.method public static getInternalStorageDownloadPath()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 7861
    const/4 v7, 0x0

    .line 7862
    .local v7, resultDownloadPath:Ljava/lang/String;
    const/4 v2, 0x0

    .line 7865
    .local v2, findName:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "mounted"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 7866
    const-string v9, "DrmStore"

    const-string v10, " @@@@@ Environment.getPhoneStorageDirectory() is not mounted!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 7932
    .end local v7           #resultDownloadPath:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 7872
    .restart local v7       #resultDownloadPath:Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 7874
    .local v4, internal_storage_file:Ljava/io/File;
    if-nez v4, :cond_1

    .line 7876
    const-string v9, "DrmStore"

    const-string v10, " @@@@@ Environment.getPhoneStorageDirectory() ERROR!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 7879
    goto :goto_0

    .line 7881
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 7882
    const-string v9, "DrmStore"

    const-string v10, " @@@@@ Environment.getPhoneStorageDirectory() doesn\'t exist!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 7884
    goto :goto_0

    .line 7888
    :cond_2
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v6, :cond_3

    aget-object v5, v0, v3

    .line 7889
    .local v5, item:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 7890
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 7891
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 7906
    .end local v5           #item:Ljava/io/File;
    :cond_3
    if-eqz v2, :cond_5

    .line 7907
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 7911
    const-string v9, "DrmStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " @@@@@ the name of download folder in internal storage is="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7912
    const-string v9, "DrmStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " @@@@@ we got download path is = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 7924
    :catch_0
    move-exception v1

    .line 7925
    .local v1, e:Ljava/lang/Exception;
    const-string v9, "DrmStore"

    const-string v10, " @@@@@ get phone storage directory ERROR!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7926
    const-string v9, "DrmStore"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7927
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v8

    .line 7929
    goto/16 :goto_0

    .line 7888
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v5       #item:Ljava/io/File;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 7896
    .end local v0           #arr$:[Ljava/io/File;
    .end local v3           #i$:I
    .end local v5           #item:Ljava/io/File;
    .end local v6           #len$:I
    :catch_1
    move-exception v1

    .line 7897
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v9, "DrmStore"

    const-string v10, " @@@@@ list files ERROR!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7898
    const-string v9, "DrmStore"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7899
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v8

    .line 7901
    goto/16 :goto_0

    .line 7916
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #arr$:[Ljava/io/File;
    .restart local v3       #i$:I
    .restart local v6       #len$:I
    :cond_5
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 7920
    const-string v9, "DrmStore"

    const-string v10, " @@@@@ No download folder in internal storage."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7921
    const-string v9, "DrmStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " @@@@@ we got download path is = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method private static getSecretKeySpecUsingKeyGenerator()Ljavax/crypto/spec/SecretKeySpec;
    .locals 9

    .prologue
    .line 7709
    const/4 v4, 0x0

    .line 7712
    .local v4, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    const-string v6, "AES"

    invoke-static {v6}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 7714
    .local v1, kgen:Ljavax/crypto/KeyGenerator;
    const/16 v6, 0x80

    invoke-virtual {v1, v6}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 7717
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 7719
    .local v3, skey:Ljavax/crypto/SecretKey;
    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    .line 7721
    .local v2, raw:[B
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "AES"

    invoke-direct {v5, v2, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4           #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    .local v5, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    move-object v4, v5

    .line 7727
    .end local v1           #kgen:Ljavax/crypto/KeyGenerator;
    .end local v2           #raw:[B
    .end local v3           #skey:Ljavax/crypto/SecretKey;
    .end local v5           #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v4       #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v4

    .line 7722
    :catch_0
    move-exception v0

    .line 7724
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    const-string v6, "DrmStore"

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
    .line 7731
    const/4 v3, 0x0

    .line 7734
    .local v3, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 7736
    .local v1, md:Ljava/security/MessageDigest;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    .line 7738
    .local v5, telMngr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v2

    .line 7740
    .local v2, simNumber:Ljava/lang/String;
    const-string v6, "DrmStore"

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

    .line 7743
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 7745
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

    .line 7752
    .end local v1           #md:Ljava/security/MessageDigest;
    .end local v2           #simNumber:Ljava/lang/String;
    .end local v4           #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    .end local v5           #telMngr:Landroid/telephony/TelephonyManager;
    .restart local v3       #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v3

    .line 7747
    :catch_0
    move-exception v0

    .line 7749
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    const-string v6, "DrmStore"

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

.method public static final getUTC(Landroid/content/Context;)Ljava/util/Date;
    .locals 24
    .parameter "cx"

    .prologue
    .line 7499
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/DrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Landroid/provider/DrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "_id"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 7500
    .local v14, stamp:Landroid/database/Cursor;
    if-nez v14, :cond_0

    .line 7501
    const-string v1, "DrmStore"

    const-string v2, "consumeRights query stamp failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7502
    const/4 v1, 0x0

    .line 7540
    :goto_0
    return-object v1

    .line 7503
    :cond_0
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 7504
    const-string v1, "DrmStore"

    const-string v2, "consumeRights: -5"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7505
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 7506
    const/4 v1, 0x0

    goto :goto_0

    .line 7509
    :cond_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7510
    const-string/jumbo v1, "time_stamp"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 7511
    .local v20, syncTimeColumnId:I
    move/from16 v0, v20

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 7512
    .local v18, syncTime:J
    const-string v1, "clock_stamp"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 7513
    .local v17, syncClockColumnId:I
    move/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 7514
    .local v15, syncClock:J
    const-string/jumbo v1, "timezone_stamp"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 7515
    .local v23, syncTimeZoneColumnId:I
    move/from16 v0, v23

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 7516
    .local v21, syncTimeZone:J
    const-string/jumbo v1, "time_differential"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 7517
    .local v9, differentColumnId:I
    invoke-interface {v14, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 7518
    .local v10, differential:J
    const-string/jumbo v1, "network_sync"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 7519
    .local v13, network_sync:I
    invoke-interface {v14, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 7520
    .local v12, networkSync:Ljava/lang/String;
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 7522
    const-wide/16 v1, 0x0

    cmp-long v1, v18, v1

    if-eqz v1, :cond_2

    const-wide/16 v1, 0x0

    cmp-long v1, v15, v1

    if-nez v1, :cond_3

    .line 7523
    :cond_2
    const-string v1, "DrmStore"

    const-string v2, "consumeRights: -5"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7524
    const/4 v1, 0x0

    goto :goto_0

    .line 7527
    :cond_3
    if-nez v12, :cond_4

    .line 7528
    const-string v1, "DrmStore"

    const-string v2, "checkExpiration : -5"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7529
    const/4 v1, 0x0

    goto :goto_0

    .line 7530
    :cond_4
    const-string v1, "TRUE"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 7531
    const-string v1, "DrmStore"

    const-string v2, "checkExpiration : -5"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7532
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 7536
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v10

    sub-long v7, v1, v21

    .line 7538
    .local v7, date:J
    const-string v1, "DrmStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "syncTimeZone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    div-long v3, v21, v3

    const-wide/16 v5, 0x3c

    div-long/2addr v3, v5

    const-wide/16 v5, 0x3c

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7540
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v7, v8}, Ljava/util/Date;-><init>(J)V

    goto/16 :goto_0
.end method

.method private static handleCutomization(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 658
    const-string v6, "application"

    const-string v7, "Drm_Provider"

    invoke-static {p0, v6, v7}, Landroid/provider/DrmStore;->getData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/provider/DrmCustomizationData;

    move-result-object v2

    .line 660
    .local v2, data:Landroid/provider/DrmCustomizationData;
    if-nez v2, :cond_1

    .line 696
    :cond_0
    return-void

    .line 665
    :cond_1
    const-string v6, "Drm_Support"

    invoke-virtual {v2, v6}, Landroid/provider/DrmCustomizationData;->getBundleWithFunctionName(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 667
    .local v0, bundleData:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 673
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 674
    .local v1, cr:Landroid/content/ContentResolver;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 676
    .local v3, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 680
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 681
    .local v4, name:Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 684
    .local v5, value:Ljava/lang/String;
    const-string v6, "DrmStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " @@@@@     name="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", value="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const-string v6, "DrmStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cust_DrmProvider:DRMSupport"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " > "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    invoke-static {v1, v4, v5}, Landroid/provider/DrmStore;->setNameAndValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static final installRightsObject(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "file"
    .parameter "mediaType"

    .prologue
    const/4 v7, 0x0

    .line 5420
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 5422
    :cond_0
    const-string v8, "DrmStore"

    const-string v9, "installRightsObject Input error."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5478
    :cond_1
    :goto_0
    return-object v7

    .line 5426
    :cond_2
    const/4 v3, 0x0

    .line 5428
    .local v3, fin:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5429
    .end local v3           #fin:Ljava/io/FileInputStream;
    .local v4, fin:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v5

    .line 5430
    .local v5, manager:Landroid/drm/mobile1/DrmRightsManager;
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v8

    invoke-virtual {v5, v4, v8, p1}, Landroid/drm/mobile1/DrmRightsManager;->installRights(Ljava/io/InputStream;ILjava/lang/String;)Landroid/drm/mobile1/DrmRights;

    move-result-object v6

    .line 5431
    .local v6, rights:Landroid/drm/mobile1/DrmRights;
    if-eqz v6, :cond_3

    .line 5432
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 5433
    invoke-virtual {v6}, Landroid/drm/mobile1/DrmRights;->getUid()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    move-result-object v7

    .line 5469
    if-eqz v4, :cond_1

    .line 5470
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 5472
    :catch_0
    move-exception v0

    .line 5474
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "DrmStore"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    .end local v4           #fin:Ljava/io/FileInputStream;
    .end local v5           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v6           #rights:Landroid/drm/mobile1/DrmRights;
    :goto_1
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5435
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    .restart local v5       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v6       #rights:Landroid/drm/mobile1/DrmRights;
    :cond_3
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    .line 5469
    if-eqz v4, :cond_4

    .line 5470
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    :cond_4
    :goto_2
    move-object v3, v4

    .line 5477
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    goto :goto_0

    .line 5436
    .end local v5           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v6           #rights:Landroid/drm/mobile1/DrmRights;
    :catch_1
    move-exception v0

    move-object v4, v3

    .line 5438
    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v0       #e:Ljava/lang/Exception;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :goto_3
    :try_start_5
    const-string v8, "DrmStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Install right: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 5442
    if-eqz v4, :cond_5

    .line 5443
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 5452
    :cond_5
    :goto_4
    :try_start_7
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 5453
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    :try_start_8
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v5

    .line 5454
    .restart local v5       #manager:Landroid/drm/mobile1/DrmRightsManager;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v8

    invoke-virtual {v5, v3, v8, p1}, Landroid/drm/mobile1/DrmRightsManager;->installRights(Ljava/io/InputStream;ILjava/lang/String;)Landroid/drm/mobile1/DrmRights;

    move-result-object v6

    .line 5456
    .restart local v6       #rights:Landroid/drm/mobile1/DrmRights;
    if-eqz v6, :cond_7

    .line 5457
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 5458
    invoke-virtual {v6}, Landroid/drm/mobile1/DrmRights;->getUid()Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    move-result-object v7

    .line 5469
    if-eqz v3, :cond_1

    .line 5470
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_0

    .line 5472
    :catch_2
    move-exception v0

    .line 5474
    const-string v8, "DrmStore"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 5445
    .end local v3           #fin:Ljava/io/FileInputStream;
    .end local v5           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v6           #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :catch_3
    move-exception v1

    .line 5447
    .local v1, e2:Ljava/lang/Exception;
    :try_start_a
    const-string v8, "DrmStore"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_4

    .line 5468
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #e2:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    move-object v3, v4

    .line 5469
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    :goto_5
    if-eqz v3, :cond_6

    .line 5470
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 5468
    :cond_6
    :goto_6
    throw v7

    .line 5461
    .restart local v0       #e:Ljava/lang/Exception;
    .restart local v5       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v6       #rights:Landroid/drm/mobile1/DrmRights;
    :cond_7
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 5469
    .end local v5           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v6           #rights:Landroid/drm/mobile1/DrmRights;
    :goto_7
    if-eqz v3, :cond_1

    .line 5470
    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_0

    .line 5472
    :catch_4
    move-exception v0

    .line 5474
    const-string v8, "DrmStore"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 5462
    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :catch_5
    move-exception v2

    move-object v3, v4

    .line 5464
    .end local v4           #fin:Ljava/io/FileInputStream;
    .local v2, e3:Ljava/lang/Exception;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    :goto_8
    :try_start_e
    const-string v8, "DrmStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Install right: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_7

    .line 5468
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #e3:Ljava/lang/Exception;
    :catchall_1
    move-exception v7

    goto :goto_5

    .line 5472
    :catch_6
    move-exception v0

    .line 5474
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v8, "DrmStore"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 5472
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    .restart local v5       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v6       #rights:Landroid/drm/mobile1/DrmRights;
    :catch_7
    move-exception v0

    .line 5474
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v8, "DrmStore"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 5462
    .end local v4           #fin:Ljava/io/FileInputStream;
    .end local v5           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v6           #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    :catch_8
    move-exception v2

    goto :goto_8

    .line 5436
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :catch_9
    move-exception v0

    goto/16 :goto_3
.end method

.method public static final isDrmContent(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 8355
    const/4 v0, 0x1

    return v0
.end method

.method public static final isDrmContent(Ljava/lang/String;)Z
    .locals 1
    .parameter "filePath"

    .prologue
    .line 8359
    const/4 v0, 0x1

    return v0
.end method

.method public static final isFLDrmFile(Ljava/io/File;)Z
    .locals 10
    .parameter "file"

    .prologue
    .line 3442
    const-string v7, "DrmStore"

    const-string v8, " @@@@@     isFLDrmFile() - BEGIN. "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3445
    const/4 v0, 0x0

    .line 3446
    .local v0, bResult:Z
    const/4 v4, 0x0

    .line 3447
    .local v4, fin:Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 3451
    .local v1, drmContent:Landroid/drm/mobile1/DrmRawContent;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3452
    .end local v4           #fin:Ljava/io/FileInputStream;
    .local v5, fin:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v7

    const-string v8, "application/vnd.oma.drm.message"

    invoke-direct {v2, v5, v7, v8}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 3456
    .end local v1           #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .local v2, drmContent:Landroid/drm/mobile1/DrmRawContent;
    :try_start_2
    invoke-virtual {v2}, Landroid/drm/mobile1/DrmRawContent;->getRawType()I

    move-result v6

    .line 3460
    .local v6, method:I
    const-string v7, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " @@@@@     method = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 3463
    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 3465
    const/4 v0, 0x1

    .line 3481
    :cond_0
    if-eqz v5, :cond_1

    .line 3483
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1
    :goto_0
    move-object v1, v2

    .end local v2           #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v1       #drmContent:Landroid/drm/mobile1/DrmRawContent;
    move-object v4, v5

    .line 3494
    .end local v5           #fin:Ljava/io/FileInputStream;
    .end local v6           #method:I
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    const-string v7, "DrmStore"

    const-string v8, " @@@@@     isFLDrmFile() - END. "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3497
    return v0

    .line 3468
    :catch_0
    move-exception v3

    .line 3470
    .local v3, e:Ljava/lang/Exception;
    :goto_2
    const/4 v0, 0x0

    .line 3474
    :try_start_4
    const-string v7, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " @@@@@     "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3481
    if-eqz v4, :cond_2

    .line 3483
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 3486
    :catch_1
    move-exception v3

    .line 3488
    const-string v7, "DrmStore"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3479
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 3481
    :goto_3
    if-eqz v4, :cond_3

    .line 3483
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 3479
    :cond_3
    :goto_4
    throw v7

    .line 3486
    :catch_2
    move-exception v3

    .line 3488
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v8, "DrmStore"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3486
    .end local v1           #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v2       #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v5       #fin:Ljava/io/FileInputStream;
    .restart local v6       #method:I
    :catch_3
    move-exception v3

    .line 3488
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v7, "DrmStore"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3479
    .end local v2           #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v6           #method:I
    .restart local v1       #drmContent:Landroid/drm/mobile1/DrmRawContent;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v1           #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v2       #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v5       #fin:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v7

    move-object v1, v2

    .end local v2           #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v1       #drmContent:Landroid/drm/mobile1/DrmRawContent;
    move-object v4, v5

    .end local v5           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    goto :goto_3

    .line 3468
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v5       #fin:Ljava/io/FileInputStream;
    :catch_4
    move-exception v3

    move-object v4, v5

    .end local v5           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v1           #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v2       #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v5       #fin:Ljava/io/FileInputStream;
    :catch_5
    move-exception v3

    move-object v1, v2

    .end local v2           #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v1       #drmContent:Landroid/drm/mobile1/DrmRawContent;
    move-object v4, v5

    .end local v5           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static final isRightsUnlimited(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1
    .parameter "cx"
    .parameter "uri"

    .prologue
    .line 8373
    const/4 v0, 0x1

    return v0
.end method

.method public static final isRightsValidByResultCode(I)Z
    .locals 1
    .parameter "resultCode"

    .prologue
    .line 8366
    const/4 v0, 0x1

    return v0
.end method

.method private static final parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/ContentValues;
    .locals 6
    .parameter "cx"
    .parameter "file"
    .parameter "mediaType"
    .parameter "mimeType"
    .parameter "uri"

    .prologue
    .line 5756
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/provider/DrmStore;->parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;I)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method private static final parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;I)Landroid/content/ContentValues;
    .locals 7
    .parameter "cx"
    .parameter "file"
    .parameter "mediaType"
    .parameter "mimeType"
    .parameter "uri"
    .parameter "destination"

    .prologue
    .line 5761
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Landroid/provider/DrmStore;->parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZ)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method private static final parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZ)Landroid/content/ContentValues;
    .locals 31
    .parameter "cx"
    .parameter "file"
    .parameter "mediaType"
    .parameter "mimeType"
    .parameter "uri"
    .parameter "destination"
    .parameter "skipMediaDbUpdate"

    .prologue
    .line 5776
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 5777
    .local v3, cr:Landroid/content/ContentResolver;
    new-instance v29, Landroid/content/ContentValues;

    const/4 v4, 0x3

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 5778
    .local v29, values:Landroid/content/ContentValues;
    new-instance v19, Landroid/media/MediaInfo;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/media/MediaInfo;-><init>(Landroid/content/Context;)V

    .line 5779
    .local v19, mediaInfo:Landroid/media/MediaInfo;
    const/16 v20, 0x0

    .line 5780
    .local v20, mediaTag:Landroid/media/MediaInfo$MediaTag;
    const/16 v23, 0x0

    .line 5782
    .local v23, parseFile:Ljava/io/File;
    :try_start_0
    const-string v4, "application/vnd.oma.drm.content"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 5783
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/media/MediaInfo;->parseSingleFile(Ljava/lang/String;)Landroid/media/MediaInfo$MediaTag;

    move-result-object v20

    .line 5784
    if-eqz v20, :cond_0

    .line 5785
    const/4 v4, 0x3

    move-object/from16 v0, v20

    iput v4, v0, Landroid/media/MediaInfo$MediaTag;->mDrmType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5881
    :cond_0
    :goto_0
    if-eqz v20, :cond_14

    .line 5884
    sget-object v5, Landroid/provider/DrmStore;->TITLE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p4

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 5885
    .local v13, cursor:Landroid/database/Cursor;
    if-eqz v13, :cond_b

    .line 5886
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 5887
    const-string v4, "_data"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 5888
    .local v25, pathIndex:I
    move/from16 v0, v25

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    .line 5889
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 5890
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    .line 5895
    .end local v25           #pathIndex:I
    :cond_1
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 5901
    :goto_2
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mediaTag.mPath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5902
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mediaTag.mAlbum = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5903
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mediaTag.mArtist = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5904
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mediaTag.mFilename = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mFilename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5905
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mediaTag.mTitle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5909
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    if-nez v4, :cond_e

    .line 5911
    const-string v4, "DrmStore"

    const-string v5, "No title information in content, we have to decide one"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5913
    sget-object v5, Landroid/provider/DrmStore;->TITLE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p4

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 5914
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_d

    .line 5915
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 5916
    const-string/jumbo v4, "title"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 5917
    .local v28, titleIndex:I
    move/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    .line 5918
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 5919
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    .line 5924
    .end local v28           #titleIndex:I
    :cond_2
    :goto_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5929
    :goto_4
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 5930
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "We decide the tilte is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5938
    .end local v9           #c:Landroid/database/Cursor;
    :cond_3
    :goto_5
    sget-object v4, Landroid/provider/DrmStore$Albums;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/DrmStore;->ALBUMS_PROJECTION:[Ljava/lang/String;

    const-string v6, "album=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/media/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v7, v8

    const-string v8, "album_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 5939
    .local v10, cAlbums:Landroid/database/Cursor;
    if-nez v10, :cond_f

    .line 5941
    const-string v4, "DrmStore"

    const-string/jumbo v5, "query Albums failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5948
    const/16 v29, 0x0

    .line 6064
    .end local v10           #cAlbums:Landroid/database/Cursor;
    .end local v13           #cursor:Landroid/database/Cursor;
    .end local v29           #values:Landroid/content/ContentValues;
    :cond_4
    :goto_6
    return-object v29

    .line 5789
    .restart local v29       #values:Landroid/content/ContentValues;
    :cond_5
    const/16 v16, 0x0

    .line 5791
    .local v16, extention:Ljava/lang/String;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p3 .. p3}, Landroid/media/MediaFile;->getExtensionForMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 5812
    const/4 v4, 0x7

    move/from16 v0, p5

    if-ne v0, v4, :cond_8

    .line 5815
    new-instance v24, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/com.android.providers.drm/rights/PHONE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v23           #parseFile:Ljava/io/File;
    .local v24, parseFile:Ljava/io/File;
    move-object/from16 v23, v24

    .line 5830
    .end local v24           #parseFile:Ljava/io/File;
    .restart local v23       #parseFile:Ljava/io/File;
    :goto_7
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Create template file:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5833
    new-instance v22, Ljava/io/FileOutputStream;

    invoke-direct/range {v22 .. v23}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 5834
    .local v22, os:Ljava/io/FileOutputStream;
    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 5835
    .local v17, fin:Ljava/io/FileInputStream;
    new-instance v12, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->available()I

    move-result v4

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v12, v0, v4, v1}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 5836
    .local v12, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v18

    .line 5837
    .local v18, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v26

    .line 5838
    .local v26, rights:Landroid/drm/mobile1/DrmRights;
    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;

    move-result-object v27

    .line 5839
    .local v27, stream:Ljava/io/InputStream;
    invoke-virtual {v12}, Landroid/drm/mobile1/DrmRawContent;->getRawType()I

    move-result v21

    .line 5840
    .local v21, method:I
    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/provider/DrmStore;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I

    .line 5841
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->close()V

    .line 5842
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V

    .line 5843
    if-eqz v27, :cond_6

    .line 5844
    invoke-virtual/range {v27 .. v27}, Ljava/io/InputStream;->close()V

    .line 5849
    :cond_6
    sget-object v4, Landroid/provider/DrmStore;->CMD_CHMOD:[Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 5850
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore;->CMD_CHMOD:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    .line 5853
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/media/MediaInfo;->parseSingleFile(Ljava/lang/String;)Landroid/media/MediaInfo$MediaTag;

    move-result-object v20

    .line 5854
    if-eqz v20, :cond_7

    .line 5855
    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/media/MediaInfo$MediaTag;->mDrmType:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5865
    :cond_7
    if-eqz v23, :cond_0

    :try_start_2
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5866
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    .line 5867
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to delete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 5873
    .end local v12           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v16           #extention:Ljava/lang/String;
    .end local v17           #fin:Ljava/io/FileInputStream;
    .end local v18           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v21           #method:I
    .end local v22           #os:Ljava/io/FileOutputStream;
    .end local v26           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v27           #stream:Ljava/io/InputStream;
    .end local v29           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v15

    .line 5875
    .local v15, e:Ljava/lang/Exception;
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parse DCF audio. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5877
    const/16 v29, 0x0

    goto/16 :goto_6

    .line 5820
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v16       #extention:Ljava/lang/String;
    .restart local v29       #values:Landroid/content/ContentValues;
    :cond_8
    :try_start_3
    new-instance v24, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/com.android.providers.drm/rights/DRM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .end local v23           #parseFile:Ljava/io/File;
    .restart local v24       #parseFile:Ljava/io/File;
    move-object/from16 v23, v24

    .end local v24           #parseFile:Ljava/io/File;
    .restart local v23       #parseFile:Ljava/io/File;
    goto/16 :goto_7

    .line 5857
    :catch_1
    move-exception v15

    .line 5859
    .local v15, e:Ljava/io/IOException;
    :try_start_4
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parse DM audio. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5861
    const/16 v29, 0x0

    .line 5865
    .end local v29           #values:Landroid/content/ContentValues;
    if-eqz v23, :cond_4

    :try_start_5
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5866
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_4

    .line 5867
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to delete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 5865
    .end local v15           #e:Ljava/io/IOException;
    .restart local v29       #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    if-eqz v23, :cond_9

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 5866
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_9

    .line 5867
    const-string v5, "DrmStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to delete: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5865
    :cond_9
    throw v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 5893
    .end local v16           #extention:Ljava/lang/String;
    .restart local v13       #cursor:Landroid/database/Cursor;
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    goto/16 :goto_1

    .line 5897
    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    goto/16 :goto_2

    .line 5922
    .restart local v9       #c:Landroid/database/Cursor;
    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    goto/16 :goto_3

    .line 5926
    :cond_d
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    goto/16 :goto_4

    .line 5933
    .end local v9           #c:Landroid/database/Cursor;
    :cond_e
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    if-eqz v4, :cond_3

    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    const-string v5, "<unknown>"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 5934
    const-string/jumbo v4, "title"

    move-object/from16 v0, v20

    iget-object v5, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 5951
    .restart local v10       #cAlbums:Landroid/database/Cursor;
    :cond_f
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cAlbums.getCount() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5953
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_10

    .line 5954
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5956
    const-string v4, "DrmStore"

    const-string v5, "Insert a new album."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5958
    new-instance v14, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v14, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 5959
    .local v14, cv:Landroid/content/ContentValues;
    const-string v4, "album"

    move-object/from16 v0, v20

    iget-object v5, v0, Landroid/media/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5960
    sget-object v4, Landroid/provider/DrmStore$Albums;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 5961
    sget-object v4, Landroid/provider/DrmStore$Albums;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/DrmStore;->ALBUMS_PROJECTION:[Ljava/lang/String;

    const-string v6, "album=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/media/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v7, v8

    const-string v8, "album_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 5962
    if-nez v10, :cond_10

    .line 5964
    const-string v4, "DrmStore"

    const-string/jumbo v5, "query Albums failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5971
    const/16 v29, 0x0

    goto/16 :goto_6

    .line 5974
    .end local v14           #cv:Landroid/content/ContentValues;
    :cond_10
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5975
    const-string v4, "album_id"

    const/4 v5, 0x0

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5977
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Insert album id is = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5979
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5982
    sget-object v4, Landroid/provider/DrmStore$Artists;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/DrmStore;->ARTISTS_PROJECTION:[Ljava/lang/String;

    const-string v6, "artist=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v7, v8

    const-string v8, "artist_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 5983
    .local v11, cArtists:Landroid/database/Cursor;
    if-nez v11, :cond_11

    .line 5985
    const-string v4, "DrmStore"

    const-string/jumbo v5, "query Artists failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5992
    const/16 v29, 0x0

    goto/16 :goto_6

    .line 5995
    :cond_11
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cArtists.getCount() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5997
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_12

    .line 5998
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 6000
    const-string v4, "DrmStore"

    const-string v5, "Insert a new artist."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6002
    new-instance v14, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v14, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 6003
    .restart local v14       #cv:Landroid/content/ContentValues;
    const-string v4, "artist"

    move-object/from16 v0, v20

    iget-object v5, v0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6004
    sget-object v4, Landroid/provider/DrmStore$Artists;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 6005
    sget-object v4, Landroid/provider/DrmStore$Artists;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/DrmStore;->ARTISTS_PROJECTION:[Ljava/lang/String;

    const-string v6, "artist=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v7, v8

    const-string v8, "artist_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 6006
    if-nez v11, :cond_12

    .line 6008
    const-string v4, "DrmStore"

    const-string/jumbo v5, "query Artists failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6012
    .end local v14           #cv:Landroid/content/ContentValues;
    :cond_12
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6013
    const-string v4, "artist_id"

    const/4 v5, 0x0

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6015
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Insert artist id is = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6017
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 6019
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mMimeType:Ljava/lang/String;

    if-nez v4, :cond_13

    .line 6020
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/media/MediaInfo$MediaTag;->mMimeType:Ljava/lang/String;

    .line 6026
    :cond_13
    if-nez p6, :cond_4

    .line 6028
    :try_start_6
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaInfo;->insertDRMAudioToMediaProvider(Landroid/media/MediaInfo$MediaTag;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_4

    .line 6030
    const-string v4, "DrmStore"

    const-string v5, "Insert DRM content to MediaProvider failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 6037
    const/16 v29, 0x0

    goto/16 :goto_6

    .line 6039
    :catch_2
    move-exception v15

    .line 6041
    .local v15, e:Ljava/lang/Exception;
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Insert DRM content to MediaProvider Exceptoin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6048
    const/16 v29, 0x0

    goto/16 :goto_6

    .line 6054
    .end local v10           #cAlbums:Landroid/database/Cursor;
    .end local v11           #cArtists:Landroid/database/Cursor;
    .end local v13           #cursor:Landroid/database/Cursor;
    .end local v15           #e:Ljava/lang/Exception;
    :cond_14
    const-string v4, "DrmStore"

    const-string v5, "Parse mediaTag return null."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6
.end method

.method public static final renewRights(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 1
    .parameter "cx"
    .parameter "uri"

    .prologue
    .line 8347
    const/4 v0, 0x0

    return v0
.end method

.method public static final renewRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)I
    .locals 18
    .parameter "cx"
    .parameter "contentUri"
    .parameter "strFilePath"

    .prologue
    .line 7060
    const/16 v16, 0x0

    .line 7062
    .local v16, res:I
    const-string v1, "DrmStore"

    const-string/jumbo v2, "renewRights"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7064
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 7066
    :cond_0
    const-string v1, "DrmStore"

    const-string/jumbo v2, "renewRights : -2"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7068
    const/4 v1, -0x2

    .line 7127
    :goto_0
    return v1

    .line 7071
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Landroid/provider/DrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const-string v4, "_data=?"

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v5, v2

    const-string v6, "_id"

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 7072
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_2

    .line 7074
    const-string v1, "DrmStore"

    const-string/jumbo v2, "renewRights query failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7076
    const/4 v1, -0x6

    goto :goto_0

    .line 7077
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 7079
    const-string v1, "DrmStore"

    const-string/jumbo v2, "renewRights no record."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7081
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 7082
    const/4 v1, -0x6

    goto :goto_0

    .line 7085
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7086
    const-string/jumbo v1, "message_type"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 7087
    .local v15, messageTypeColumnId:I
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 7088
    .local v14, messageType:Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 7090
    const-string v1, "application/vnd.oma.drm.content"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 7092
    const-string v1, "DrmStore"

    const-string/jumbo v2, "renewRights : -2"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7094
    const/4 v1, -0x2

    goto :goto_0

    .line 7097
    :cond_4
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7099
    .local v10, file:Ljava/io/File;
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 7100
    .local v11, fis:Ljava/io/InputStream;
    new-instance v8, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v11}, Ljava/io/FileInputStream;->available()I

    move-result v1

    invoke-direct {v8, v11, v1, v14}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 7101
    .local v8, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual {v8}, Landroid/drm/mobile1/DrmRawContent;->getRightsAddress()Ljava/lang/String;

    move-result-object v13

    .line 7102
    .local v13, issuer:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 7103
    if-nez v13, :cond_5

    .line 7105
    const-string v1, "DrmStore"

    const-string/jumbo v2, "renewRights : -7"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7107
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 7108
    const/4 v1, -0x7

    goto/16 :goto_0

    .line 7110
    :cond_5
    const-string v1, "\\"

    const-string v2, "/"

    invoke-virtual {v13, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 7112
    const-string v1, "DrmStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Right Issure = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7114
    new-instance v12, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7115
    .local v12, intent:Landroid/content/Intent;
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 7116
    .local v17, righturi:Landroid/net/Uri;
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 7117
    const/high16 v1, 0x1000

    invoke-virtual {v12, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7119
    const-string v1, "com.android.browser.application_id"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7120
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v11           #fis:Ljava/io/InputStream;
    .end local v12           #intent:Landroid/content/Intent;
    .end local v13           #issuer:Ljava/lang/String;
    .end local v17           #righturi:Landroid/net/Uri;
    :goto_1
    move/from16 v1, v16

    .line 7127
    goto/16 :goto_0

    .line 7121
    :catch_0
    move-exception v9

    .line 7123
    .local v9, e:Ljava/lang/Exception;
    const-string v1, "DrmStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "renewRights : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7125
    const/16 v16, -0x1

    goto :goto_1
.end method

.method public static final renewRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)I
    .locals 16
    .parameter "cx"
    .parameter "contentUri"
    .parameter "strFilePath"
    .parameter "className"

    .prologue
    .line 7267
    const-string v1, "DrmStore"

    const-string v2, "********renewRights"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7270
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 7272
    :cond_0
    const-string v1, "DrmStore"

    const-string/jumbo v2, "renewRights : -2"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7274
    const/4 v1, -0x2

    .line 7386
    :goto_0
    return v1

    .line 7277
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Landroid/provider/DrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const-string v4, "_data=?"

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v5, v2

    const-string v6, "_id"

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 7278
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_2

    .line 7280
    const-string v1, "DrmStore"

    const-string/jumbo v2, "renewRights : -6"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7282
    const/4 v1, -0x6

    goto :goto_0

    .line 7283
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 7285
    const-string v1, "DrmStore"

    const-string/jumbo v2, "renewRights no record."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7287
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 7288
    const/4 v1, -0x6

    goto :goto_0

    .line 7291
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7292
    const-string/jumbo v1, "message_type"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 7293
    .local v14, messageTypeColumnId:I
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 7294
    .local v13, messageType:Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 7296
    const-string v1, "application/vnd.oma.drm.content"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 7298
    const-string v1, "DrmStore"

    const-string/jumbo v2, "renewRights : -2"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7300
    const/4 v1, -0x2

    goto :goto_0

    .line 7303
    :cond_4
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7305
    .local v10, file:Ljava/io/File;
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 7306
    .local v11, fis:Ljava/io/InputStream;
    new-instance v8, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v11}, Ljava/io/FileInputStream;->available()I

    move-result v1

    invoke-direct {v8, v11, v1, v13}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 7307
    .local v8, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual {v8}, Landroid/drm/mobile1/DrmRawContent;->getRightsAddress()Ljava/lang/String;

    move-result-object v12

    .line 7308
    .local v12, issuer:Ljava/lang/String;
    if-nez v12, :cond_5

    .line 7310
    const-string v1, "DrmStore"

    const-string v2, "Null issuer : -9"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7312
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 7313
    const/16 v1, -0x9

    goto :goto_0

    .line 7314
    :cond_5
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    .line 7316
    const-string v1, "DrmStore"

    const-string v2, "Empty issuer : -9"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7318
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 7319
    const/16 v1, -0x9

    goto/16 :goto_0

    .line 7321
    :cond_6
    const-string v1, "\\"

    const-string v2, "/"

    invoke-virtual {v12, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 7323
    const-string v1, "DrmStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Right Issure = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 7327
    :try_start_1
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 7329
    .local v15, values:Landroid/content/ContentValues;
    const-string/jumbo v1, "uri"

    invoke-virtual {v15, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7330
    const-string/jumbo v1, "notificationpackage"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7332
    const-string/jumbo v1, "notificationclass"

    move-object/from16 v0, p3

    invoke-virtual {v15, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7334
    const-string/jumbo v1, "visibility"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7336
    const-string v1, "is_visible_in_downloads_ui"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 7341
    const-string/jumbo v1, "restriction"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7371
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 7386
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 7373
    .end local v15           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v9

    .line 7375
    .local v9, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "DrmStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "renewRights : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7377
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 7378
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 7380
    .end local v8           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v9           #e:Ljava/lang/Exception;
    .end local v11           #fis:Ljava/io/InputStream;
    .end local v12           #issuer:Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 7382
    .restart local v9       #e:Ljava/lang/Exception;
    const-string v1, "DrmStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "renewRights : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7384
    const/4 v1, -0x1

    goto/16 :goto_0
.end method

.method private static final saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/io/FileOutputStream;)I
    .locals 23
    .parameter "file"
    .parameter "content"
    .parameter "os"

    .prologue
    .line 4783
    const/16 v16, 0x0

    .line 4785
    .local v16, res:I
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4786
    .local v11, fin_header:Ljava/io/FileInputStream;
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentOffset(Landroid/drm/mobile1/DrmRights;)I

    move-result v5

    .line 4788
    .local v5, contentOffset:I
    new-array v13, v5, [B

    .line 4789
    .local v13, header_buffer:[B
    invoke-virtual {v11, v13}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .line 4790
    .local v6, count:I
    if-ne v6, v5, :cond_1

    .line 4791
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v13, v1, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 4793
    const-string v20, "DrmStore"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Header has "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " bytes"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4802
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 4806
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v14

    .line 4807
    .local v14, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v17

    .line 4808
    .local v17, rights:Landroid/drm/mobile1/DrmRights;
    if-nez v17, :cond_0

    .line 4810
    const-string v20, "DrmStore"

    const-string/jumbo v21, "rights == null."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4813
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;

    move-result-object v18

    .line 4814
    .local v18, stream:Ljava/io/InputStream;
    move v10, v5

    .line 4815
    .local v10, endOfContent:I
    const/16 v20, 0x400

    move/from16 v0, v20

    new-array v3, v0, [B

    .line 4816
    .local v3, buffer:[B
    const/16 v20, 0x400

    move/from16 v0, v20

    new-array v8, v0, [B

    .line 4817
    .local v8, encryptBuffer:[B
    const/4 v15, 0x0

    .line 4818
    .local v15, nEncryptPadding:I
    :goto_0
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v6, v0, :cond_4

    .line 4819
    add-int/2addr v10, v6

    .line 4820
    array-length v0, v8

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v6, v0, :cond_2

    const/16 v20, 0x1

    :goto_1
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v3, v8, v6, v1}, Landroid/drm/mobile1/DrmRawContent;->encrypt([B[BIZ)I

    move-result v9

    .line 4821
    .local v9, encryptRes:I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v9, v0, :cond_3

    .line 4822
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v8, v1, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 4831
    sub-int v15, v9, v6

    .line 4832
    goto :goto_0

    .line 4796
    .end local v3           #buffer:[B
    .end local v8           #encryptBuffer:[B
    .end local v9           #encryptRes:I
    .end local v10           #endOfContent:I
    .end local v14           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v15           #nEncryptPadding:I
    .end local v17           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v18           #stream:Ljava/io/InputStream;
    :cond_1
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 4798
    const-string v20, "DrmStore"

    const-string v21, "Read header failed."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4800
    const/16 v20, -0x1

    .line 4871
    .end local v5           #contentOffset:I
    .end local v6           #count:I
    .end local v11           #fin_header:Ljava/io/FileInputStream;
    .end local v13           #header_buffer:[B
    :goto_2
    return v20

    .line 4820
    .restart local v3       #buffer:[B
    .restart local v5       #contentOffset:I
    .restart local v6       #count:I
    .restart local v8       #encryptBuffer:[B
    .restart local v10       #endOfContent:I
    .restart local v11       #fin_header:Ljava/io/FileInputStream;
    .restart local v13       #header_buffer:[B
    .restart local v14       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v15       #nEncryptPadding:I
    .restart local v17       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v18       #stream:Ljava/io/InputStream;
    :cond_2
    const/16 v20, 0x0

    goto :goto_1

    .line 4824
    .restart local v9       #encryptRes:I
    :cond_3
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    .line 4826
    const-string v20, "DrmStore"

    const-string v21, "Encrypt content failed."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4828
    const/16 v20, -0x1

    goto :goto_2

    .line 4835
    .end local v9           #encryptRes:I
    :cond_4
    sub-int v4, v10, v5

    .line 4836
    .local v4, contentCount:I
    const-string v20, "DrmStore"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Content has "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " bytes, nEncryptPadding = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4839
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    .line 4843
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4844
    .local v12, fin_tailer:Ljava/io/FileInputStream;
    int-to-long v0, v10

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v12, v0, v1}, Ljava/io/FileInputStream;->skip(J)J

    .line 4845
    const/16 v20, 0x100

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 4846
    .local v19, tailerBuffer:[B
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .line 4847
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v6, v0, :cond_5

    .line 4848
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 4850
    const-string v20, "DrmStore"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Tail has "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " bytes"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4859
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 4860
    invoke-virtual/range {p2 .. p2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/FileDescriptor;->sync()V

    .line 4862
    add-int v20, v6, v15

    goto/16 :goto_2

    .line 4853
    :cond_5
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 4855
    const-string v20, "DrmStore"

    const-string v21, "Output tailer failed."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4857
    const/16 v20, -0x1

    goto/16 :goto_2

    .line 4863
    .end local v3           #buffer:[B
    .end local v4           #contentCount:I
    .end local v5           #contentOffset:I
    .end local v6           #count:I
    .end local v8           #encryptBuffer:[B
    .end local v10           #endOfContent:I
    .end local v11           #fin_header:Ljava/io/FileInputStream;
    .end local v12           #fin_tailer:Ljava/io/FileInputStream;
    .end local v13           #header_buffer:[B
    .end local v14           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v15           #nEncryptPadding:I
    .end local v17           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v18           #stream:Ljava/io/InputStream;
    .end local v19           #tailerBuffer:[B
    :catch_0
    move-exception v7

    .line 4865
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v20, "DrmStore"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4867
    const/16 v16, -0x1

    move/from16 v20, v16

    .line 4871
    goto/16 :goto_2

    .line 4868
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v20

    throw v20
.end method

.method private static final declared-synchronized saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I
    .locals 29
    .parameter "file"
    .parameter "content"
    .parameter "outpath"

    .prologue
    .line 4883
    const-class v26, Landroid/provider/DrmStore;

    monitor-enter v26

    const/16 v21, 0x0

    .line 4886
    .local v21, res:I
    :try_start_0
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, "/"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v27, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, "/"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, "garbage"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 4889
    .local v13, garbageFilePath:Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4890
    .local v14, garbagefile:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->createNewFile()Z

    .line 4892
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 4893
    .local v15, garbageos:Ljava/io/FileOutputStream;
    new-instance v19, Ljava/io/FileOutputStream;

    const/16 v25, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 4895
    .local v19, os:Ljava/io/FileOutputStream;
    const/16 v25, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentOffset(Landroid/drm/mobile1/DrmRights;)I

    move-result v5

    .line 4898
    .local v5, contentOffset:I
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4899
    .local v11, fin_header:Ljava/io/FileInputStream;
    new-array v0, v5, [B

    move-object/from16 v17, v0

    .line 4900
    .local v17, header_buffer:[B
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .line 4902
    .local v6, count:I
    if-ne v6, v5, :cond_5

    .line 4903
    const/16 v25, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 4904
    const/16 v25, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 4907
    const-string v25, "DrmStore"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Header has "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " bytes"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 4930
    :try_start_1
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4952
    :goto_0
    :try_start_2
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v18

    .line 4953
    .local v18, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v22

    .line 4955
    .local v22, rights:Landroid/drm/mobile1/DrmRights;
    if-nez v22, :cond_0

    .line 4957
    const-string v25, "DrmStore"

    const-string/jumbo v27, "rights == null."

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4963
    :cond_0
    const/16 v23, 0x0

    .line 4964
    .local v23, stream:Ljava/io/InputStream;
    const/16 v16, 0x0

    .line 4965
    .local v16, hasFailed:Z
    const/16 v20, 0x0

    .line 4966
    .local v20, repeat:I
    const/4 v3, 0x0

    .line 4967
    .local v3, buffer:[B
    const/4 v8, 0x0

    .line 4968
    .local v8, encryptBuffer:[B
    const/4 v10, 0x0

    .line 4971
    .local v10, endOfContent:I
    const-string v25, "DrmStore"

    const-string v27, " @@@@@ Retrieve content!!! (saveFile)"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 4976
    :cond_1
    const/16 v16, 0x0

    .line 4978
    :try_start_3
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v23

    .line 4991
    :goto_1
    if-nez v16, :cond_1

    .line 4994
    :try_start_4
    const-string v25, "DrmStore"

    const-string v27, " @@@@@ Encrypt content!!! (saveFile)"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5000
    move v10, v5

    .line 5001
    const/16 v25, 0x400

    move/from16 v0, v25

    new-array v3, v0, [B

    .line 5002
    const/16 v25, 0x400

    move/from16 v0, v25

    new-array v8, v0, [B

    .line 5004
    :goto_2
    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v6, v0, :cond_b

    .line 5005
    add-int/2addr v10, v6

    .line 5006
    array-length v0, v8

    move/from16 v25, v0

    move/from16 v0, v25

    if-eq v6, v0, :cond_8

    const/16 v25, 0x1

    :goto_3
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v3, v8, v6, v1}, Landroid/drm/mobile1/DrmRawContent;->encrypt([B[BIZ)I

    move-result v9

    .line 5009
    .local v9, encryptRes:I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v9, v0, :cond_9

    .line 5010
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v15, v8, v0, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 5011
    const/16 v25, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v8, v1, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 5037
    .end local v9           #encryptRes:I
    :catch_0
    move-exception v7

    .line 5039
    .local v7, e:Ljava/lang/Exception;
    :try_start_5
    const-string v25, "DrmStore"

    const-string v27, " @@@@@ ERROR: read content stream failed. (saveFile)"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5041
    const-string v25, "DrmStore"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5042
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 5044
    const/4 v3, 0x0

    .line 5045
    const/4 v8, 0x0

    .line 5048
    if-eqz v23, :cond_2

    .line 5049
    :try_start_6
    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    .line 5053
    :cond_2
    :goto_4
    const/16 v23, 0x0

    .line 5056
    :try_start_7
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/FileDescriptor;->sync()V

    .line 5058
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/FileDescriptor;->sync()V

    .line 5059
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

    .line 5060
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V

    .line 5062
    if-eqz v14, :cond_3

    .line 5063
    invoke-virtual {v14}, Ljava/io/File;->delete()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 5066
    :cond_3
    const/4 v6, -0x1

    .line 5176
    .end local v3           #buffer:[B
    .end local v5           #contentOffset:I
    .end local v6           #count:I
    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #encryptBuffer:[B
    .end local v10           #endOfContent:I
    .end local v11           #fin_header:Ljava/io/FileInputStream;
    .end local v13           #garbageFilePath:Ljava/lang/String;
    .end local v14           #garbagefile:Ljava/io/File;
    .end local v15           #garbageos:Ljava/io/FileOutputStream;
    .end local v16           #hasFailed:Z
    .end local v17           #header_buffer:[B
    .end local v18           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v19           #os:Ljava/io/FileOutputStream;
    .end local v20           #repeat:I
    .end local v22           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v23           #stream:Ljava/io/InputStream;
    :cond_4
    :goto_5
    monitor-exit v26

    return v6

    .line 4910
    .restart local v5       #contentOffset:I
    .restart local v6       #count:I
    .restart local v11       #fin_header:Ljava/io/FileInputStream;
    .restart local v13       #garbageFilePath:Ljava/lang/String;
    .restart local v14       #garbagefile:Ljava/io/File;
    .restart local v15       #garbageos:Ljava/io/FileOutputStream;
    .restart local v17       #header_buffer:[B
    .restart local v19       #os:Ljava/io/FileOutputStream;
    :cond_5
    :try_start_8
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 4913
    const-string v25, "DrmStore"

    const-string v27, "Read header failed."

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4916
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/FileDescriptor;->sync()V

    .line 4918
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/FileDescriptor;->sync()V

    .line 4919
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

    .line 4920
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V

    .line 4922
    if-eqz v14, :cond_6

    .line 4923
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 4926
    :cond_6
    const/4 v6, -0x1

    goto :goto_5

    .line 4931
    :catch_1
    move-exception v7

    .line 4933
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v25, "DrmStore"

    const-string v27, " @@@@@ ERROR: close Read header failed. (saveFile)"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4935
    const-string v25, "DrmStore"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4936
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    .line 5166
    .end local v5           #contentOffset:I
    .end local v6           #count:I
    .end local v7           #e:Ljava/lang/Exception;
    .end local v11           #fin_header:Ljava/io/FileInputStream;
    .end local v13           #garbageFilePath:Ljava/lang/String;
    .end local v14           #garbagefile:Ljava/io/File;
    .end local v15           #garbageos:Ljava/io/FileOutputStream;
    .end local v17           #header_buffer:[B
    .end local v19           #os:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v7

    .line 5169
    .restart local v7       #e:Ljava/lang/Exception;
    :try_start_9
    const-string v25, "DrmStore"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 5172
    const/16 v21, -0x1

    move/from16 v6, v21

    .line 5176
    goto :goto_5

    .line 4979
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v3       #buffer:[B
    .restart local v5       #contentOffset:I
    .restart local v6       #count:I
    .restart local v8       #encryptBuffer:[B
    .restart local v10       #endOfContent:I
    .restart local v11       #fin_header:Ljava/io/FileInputStream;
    .restart local v13       #garbageFilePath:Ljava/lang/String;
    .restart local v14       #garbagefile:Ljava/io/File;
    .restart local v15       #garbageos:Ljava/io/FileOutputStream;
    .restart local v16       #hasFailed:Z
    .restart local v17       #header_buffer:[B
    .restart local v18       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v19       #os:Ljava/io/FileOutputStream;
    .restart local v20       #repeat:I
    .restart local v22       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v23       #stream:Ljava/io/InputStream;
    :catch_3
    move-exception v7

    .line 4981
    .restart local v7       #e:Ljava/lang/Exception;
    :try_start_a
    const-string v25, "DrmStore"

    const-string v27, " @@@@@ ERROR: get content input stream ERROR!!! (saveFile)"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4984
    const/16 v25, 0x3

    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_7

    .line 4985
    const/16 v16, 0x1

    .line 4988
    :cond_7
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    .line 5006
    .end local v7           #e:Ljava/lang/Exception;
    :cond_8
    const/16 v25, 0x0

    goto/16 :goto_3

    .line 5013
    .restart local v9       #encryptRes:I
    :cond_9
    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->close()V

    .line 5016
    const-string v25, "DrmStore"

    const-string v27, "Encrypt content failed."

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5019
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/FileDescriptor;->sync()V

    .line 5021
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/FileDescriptor;->sync()V

    .line 5022
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

    .line 5023
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V

    .line 5025
    if-eqz v14, :cond_a

    .line 5026
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 5029
    :cond_a
    const/4 v6, -0x1

    goto/16 :goto_5

    .line 5034
    .end local v9           #encryptRes:I
    :cond_b
    sub-int v4, v10, v5

    .line 5035
    .local v4, contentCount:I
    const-string v25, "DrmStore"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Content has "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " bytes"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 5070
    :try_start_b
    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 5092
    :goto_6
    :try_start_c
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 5093
    .local v12, fin_tailer:Ljava/io/FileInputStream;
    const/16 v25, 0x100

    move/from16 v0, v25

    new-array v0, v0, [B

    move-object/from16 v24, v0

    .line 5095
    .local v24, tailerBuffer:[B
    int-to-long v0, v10

    move-wide/from16 v27, v0

    move-wide/from16 v0, v27

    invoke-virtual {v12, v0, v1}, Ljava/io/FileInputStream;->skip(J)J

    .line 5096
    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .line 5098
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v6, v0, :cond_c

    .line 5099
    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 5100
    const/16 v25, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 5103
    const-string v25, "DrmStore"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Tail has "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " bytes"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 5127
    :try_start_d
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 5129
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/FileDescriptor;->sync()V

    .line 5130
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    .line 5141
    :goto_7
    :try_start_e
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/FileDescriptor;->sync()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    .line 5151
    :goto_8
    :try_start_f
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    .line 5160
    :goto_9
    if-eqz v14, :cond_4

    .line 5161
    :try_start_10
    invoke-virtual {v14}, Ljava/io/File;->delete()Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    goto/16 :goto_5

    .line 5173
    .end local v3           #buffer:[B
    .end local v4           #contentCount:I
    .end local v5           #contentOffset:I
    .end local v6           #count:I
    .end local v8           #encryptBuffer:[B
    .end local v10           #endOfContent:I
    .end local v11           #fin_header:Ljava/io/FileInputStream;
    .end local v12           #fin_tailer:Ljava/io/FileInputStream;
    .end local v13           #garbageFilePath:Ljava/lang/String;
    .end local v14           #garbagefile:Ljava/io/File;
    .end local v15           #garbageos:Ljava/io/FileOutputStream;
    .end local v16           #hasFailed:Z
    .end local v17           #header_buffer:[B
    .end local v18           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v19           #os:Ljava/io/FileOutputStream;
    .end local v20           #repeat:I
    .end local v22           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v23           #stream:Ljava/io/InputStream;
    .end local v24           #tailerBuffer:[B
    :catchall_0
    move-exception v25

    :try_start_11
    throw v25
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 4883
    :catchall_1
    move-exception v25

    monitor-exit v26

    throw v25

    .line 5053
    .restart local v3       #buffer:[B
    .restart local v5       #contentOffset:I
    .restart local v6       #count:I
    .restart local v7       #e:Ljava/lang/Exception;
    .restart local v8       #encryptBuffer:[B
    .restart local v10       #endOfContent:I
    .restart local v11       #fin_header:Ljava/io/FileInputStream;
    .restart local v13       #garbageFilePath:Ljava/lang/String;
    .restart local v14       #garbagefile:Ljava/io/File;
    .restart local v15       #garbageos:Ljava/io/FileOutputStream;
    .restart local v16       #hasFailed:Z
    .restart local v17       #header_buffer:[B
    .restart local v18       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v19       #os:Ljava/io/FileOutputStream;
    .restart local v20       #repeat:I
    .restart local v22       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v23       #stream:Ljava/io/InputStream;
    :catchall_2
    move-exception v25

    const/16 v23, 0x0

    :try_start_12
    throw v25

    .line 5071
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v4       #contentCount:I
    :catch_4
    move-exception v7

    .line 5073
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v25, "DrmStore"

    const-string v27, " @@@@@ ERROR: close content stream failed. (saveFile)"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5075
    const-string v25, "DrmStore"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5076
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .line 5106
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v12       #fin_tailer:Ljava/io/FileInputStream;
    .restart local v24       #tailerBuffer:[B
    :cond_c
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 5109
    const-string v25, "DrmStore"

    const-string v27, "Output tailer failed."

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5112
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/FileDescriptor;->sync()V

    .line 5114
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/FileDescriptor;->sync()V

    .line 5115
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

    .line 5116
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V

    .line 5118
    if-eqz v14, :cond_d

    .line 5119
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 5122
    :cond_d
    const/4 v6, -0x1

    goto/16 :goto_5

    .line 5131
    :catch_5
    move-exception v7

    .line 5133
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v25, "DrmStore"

    const-string v27, " @@@@@ ERROR: close Read tail failed. (saveFile)"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5135
    const-string v25, "DrmStore"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5136
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 5142
    .end local v7           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v7

    .line 5144
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v25, "DrmStore"

    const-string v27, " @@@@@ ERROR: sync Output Read tail failed. (saveFile)"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5146
    const-string v25, "DrmStore"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5147
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    .line 5152
    .end local v7           #e:Ljava/lang/Exception;
    :catch_7
    move-exception v7

    .line 5154
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v25, "DrmStore"

    const-string v27, " @@@@@ ERROR: close Output Read tail failed. (saveFile)"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5156
    const-string v25, "DrmStore"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5157
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2

    goto/16 :goto_9

    .line 5051
    .end local v4           #contentCount:I
    .end local v12           #fin_tailer:Ljava/io/FileInputStream;
    .end local v24           #tailerBuffer:[B
    :catch_8
    move-exception v25

    goto/16 :goto_4
.end method

.method private static final saveFile(Ljava/io/File;Ljava/lang/String;Landroid/drm/mobile1/DrmRawContent;)I
    .locals 23
    .parameter "file"
    .parameter "outpath"
    .parameter "content"

    .prologue
    .line 4657
    const-string v20, "DrmStore"

    const-string/jumbo v21, "saveFile(File file, String outpath, DrmRawContent content)"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4658
    const/16 v16, 0x0

    .line 4660
    .local v16, res:I
    :try_start_0
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v13

    .line 4661
    .local v13, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v17

    .line 4662
    .local v17, rights:Landroid/drm/mobile1/DrmRights;
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;

    move-result-object v18

    .line 4663
    .local v18, stream:Ljava/io/InputStream;
    new-instance v15, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 4664
    .local v15, os:Ljava/io/FileOutputStream;
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4665
    .local v10, fin_header:Ljava/io/FileInputStream;
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentOffset(Landroid/drm/mobile1/DrmRights;)I

    move-result v4

    .line 4667
    .local v4, contentOffset:I
    new-array v12, v4, [B

    .line 4668
    .local v12, header_buffer:[B
    invoke-virtual {v10, v12}, Ljava/io/FileInputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 4669
    .local v5, count:I
    if-ne v5, v4, :cond_1

    .line 4671
    const/16 v20, 0x0

    :try_start_1
    move/from16 v0, v20

    invoke-virtual {v15, v12, v0, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4678
    :goto_0
    :try_start_2
    const-string v20, "DrmStore"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Header has "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " bytes"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4687
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 4691
    if-nez v17, :cond_0

    .line 4693
    const-string v20, "DrmStore"

    const-string/jumbo v21, "rights == null."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4697
    :cond_0
    move v9, v4

    .line 4698
    .local v9, endOfContent:I
    const/16 v20, 0x400

    move/from16 v0, v20

    new-array v2, v0, [B

    .line 4699
    .local v2, buffer:[B
    const/16 v20, 0x400

    move/from16 v0, v20

    new-array v7, v0, [B

    .line 4700
    .local v7, encryptBuffer:[B
    const/4 v14, 0x0

    .line 4701
    .local v14, nEncryptPadding:I
    :goto_1
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v5, v0, :cond_4

    .line 4702
    add-int/2addr v9, v5

    .line 4703
    array-length v0, v7

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v5, v0, :cond_2

    const/16 v20, 0x1

    :goto_2
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v2, v7, v5, v1}, Landroid/drm/mobile1/DrmRawContent;->encrypt([B[BIZ)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v8

    .line 4704
    .local v8, encryptRes:I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v8, v0, :cond_3

    .line 4706
    const/16 v20, 0x0

    :try_start_3
    move/from16 v0, v20

    invoke-virtual {v15, v7, v0, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 4720
    :goto_3
    sub-int v14, v8, v5

    .line 4721
    goto :goto_1

    .line 4672
    .end local v2           #buffer:[B
    .end local v7           #encryptBuffer:[B
    .end local v8           #encryptRes:I
    .end local v9           #endOfContent:I
    .end local v14           #nEncryptPadding:I
    :catch_0
    move-exception v6

    .line 4673
    .local v6, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 4674
    new-instance v15, Ljava/io/FileOutputStream;

    .end local v15           #os:Ljava/io/FileOutputStream;
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-direct {v15, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 4675
    .restart local v15       #os:Ljava/io/FileOutputStream;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v12, v0, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 4763
    .end local v4           #contentOffset:I
    .end local v5           #count:I
    .end local v6           #e:Ljava/lang/Exception;
    .end local v10           #fin_header:Ljava/io/FileInputStream;
    .end local v12           #header_buffer:[B
    .end local v13           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v15           #os:Ljava/io/FileOutputStream;
    .end local v17           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v18           #stream:Ljava/io/InputStream;
    :catch_1
    move-exception v6

    .line 4765
    .restart local v6       #e:Ljava/lang/Exception;
    :try_start_5
    const-string v20, "DrmStore"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4767
    const/16 v16, -0x1

    move/from16 v20, v16

    .line 4771
    .end local v6           #e:Ljava/lang/Exception;
    :goto_4
    return v20

    .line 4681
    .restart local v4       #contentOffset:I
    .restart local v5       #count:I
    .restart local v10       #fin_header:Ljava/io/FileInputStream;
    .restart local v12       #header_buffer:[B
    .restart local v13       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v15       #os:Ljava/io/FileOutputStream;
    .restart local v17       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v18       #stream:Ljava/io/InputStream;
    :cond_1
    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 4683
    const-string v20, "DrmStore"

    const-string v21, "Read header failed."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4685
    const/16 v20, -0x1

    goto :goto_4

    .line 4703
    .restart local v2       #buffer:[B
    .restart local v7       #encryptBuffer:[B
    .restart local v9       #endOfContent:I
    .restart local v14       #nEncryptPadding:I
    :cond_2
    const/16 v20, 0x0

    goto :goto_2

    .line 4707
    .restart local v8       #encryptRes:I
    :catch_2
    move-exception v6

    .line 4708
    .restart local v6       #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 4709
    new-instance v15, Ljava/io/FileOutputStream;

    .end local v15           #os:Ljava/io/FileOutputStream;
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-direct {v15, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 4710
    .restart local v15       #os:Ljava/io/FileOutputStream;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v7, v0, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 4768
    .end local v2           #buffer:[B
    .end local v4           #contentOffset:I
    .end local v5           #count:I
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #encryptBuffer:[B
    .end local v8           #encryptRes:I
    .end local v9           #endOfContent:I
    .end local v10           #fin_header:Ljava/io/FileInputStream;
    .end local v12           #header_buffer:[B
    .end local v13           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v14           #nEncryptPadding:I
    .end local v15           #os:Ljava/io/FileOutputStream;
    .end local v17           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v18           #stream:Ljava/io/InputStream;
    :catchall_0
    move-exception v20

    throw v20

    .line 4713
    .restart local v2       #buffer:[B
    .restart local v4       #contentOffset:I
    .restart local v5       #count:I
    .restart local v7       #encryptBuffer:[B
    .restart local v8       #encryptRes:I
    .restart local v9       #endOfContent:I
    .restart local v10       #fin_header:Ljava/io/FileInputStream;
    .restart local v12       #header_buffer:[B
    .restart local v13       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v14       #nEncryptPadding:I
    .restart local v15       #os:Ljava/io/FileOutputStream;
    .restart local v17       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v18       #stream:Ljava/io/InputStream;
    :cond_3
    :try_start_7
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    .line 4715
    const-string v20, "DrmStore"

    const-string v21, "Encrypt content failed."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4717
    const/16 v20, -0x1

    goto :goto_4

    .line 4724
    .end local v8           #encryptRes:I
    :cond_4
    sub-int v3, v9, v4

    .line 4725
    .local v3, contentCount:I
    const-string v20, "DrmStore"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Content has "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " bytes, nEncryptPadding = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4728
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    .line 4732
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4733
    .local v11, fin_tailer:Ljava/io/FileInputStream;
    int-to-long v0, v9

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v11, v0, v1}, Ljava/io/FileInputStream;->skip(J)J

    .line 4734
    const/16 v20, 0x100

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 4735
    .local v19, tailerBuffer:[B
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-result v5

    .line 4736
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v5, v0, :cond_5

    .line 4738
    const/16 v20, 0x0

    :try_start_8
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 4745
    :goto_5
    :try_start_9
    const-string v20, "DrmStore"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Tail has "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " bytes"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4754
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 4755
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/FileDescriptor;->sync()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 4758
    :try_start_a
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 4762
    :goto_6
    add-int v20, v5, v14

    goto/16 :goto_4

    .line 4739
    :catch_3
    move-exception v6

    .line 4740
    .restart local v6       #e:Ljava/lang/Exception;
    :try_start_b
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 4741
    new-instance v15, Ljava/io/FileOutputStream;

    .end local v15           #os:Ljava/io/FileOutputStream;
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-direct {v15, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 4742
    .restart local v15       #os:Ljava/io/FileOutputStream;
    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_5

    .line 4748
    .end local v6           #e:Ljava/lang/Exception;
    :cond_5
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 4750
    const-string v20, "DrmStore"

    const-string v21, "Output tailer failed."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4752
    const/16 v20, -0x1

    goto/16 :goto_4

    .line 4759
    :catch_4
    move-exception v6

    .line 4760
    .restart local v6       #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_6
.end method

.method private static final saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I
    .locals 7
    .parameter "stream"
    .parameter "os"

    .prologue
    .line 4626
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 4628
    .local v0, buffer:[B
    const/4 v3, 0x0

    .line 4630
    .local v3, res:I
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, count:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 4631
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4634
    .end local v1           #count:I
    :catch_0
    move-exception v2

    .line 4635
    .local v2, e:Ljava/lang/Exception;
    const/4 v3, -0x1

    .line 4637
    :try_start_1
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content inputstream read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4642
    .end local v2           #e:Ljava/lang/Exception;
    :goto_1
    return v3

    .line 4633
    .restart local v1       #count:I
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 4639
    .end local v1           #count:I
    :catchall_0
    move-exception v4

    throw v4
.end method

.method private static final declared-synchronized saveFileFromBase64ToBinary(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I
    .locals 27
    .parameter "file"
    .parameter "content"
    .parameter "outpath"

    .prologue
    .line 5186
    const-class v24, Landroid/provider/DrmStore;

    monitor-enter v24

    const/16 v17, 0x0

    .line 5189
    .local v17, res:I
    :try_start_0
    new-instance v14, Ljava/io/FileOutputStream;

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-direct {v14, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 5190
    .local v14, os:Ljava/io/FileOutputStream;
    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentOffset(Landroid/drm/mobile1/DrmRights;)I

    move-result v4

    .line 5193
    .local v4, contentOffset:I
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 5194
    .local v8, fin_header:Ljava/io/FileInputStream;
    new-array v10, v4, [B

    .line 5195
    .local v10, header_buffer:[B
    invoke-virtual {v8, v10}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .line 5197
    .local v5, count:I
    if-ne v5, v4, :cond_3

    .line 5198
    new-instance v22, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-direct {v0, v10}, Ljava/lang/String;-><init>([B)V

    .line 5199
    .local v22, tempHeader:Ljava/lang/String;
    const-string v23, "Content-Transfer-Encoding: base64"

    const-string v25, "Content-Transfer-Encoding: binary"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 5200
    .local v12, newTempHeader:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    move-object/from16 v0, v23

    array-length v13, v0

    .line 5202
    .local v13, newTempHeaderCount:I
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v14, v0, v1, v13}, Ljava/io/FileOutputStream;->write([BII)V

    .line 5205
    const-string v23, "DrmStore"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Header has "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ") bytes. (saveFileFromBase64)"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 5208
    move v4, v13

    .line 5224
    :try_start_1
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 5245
    :goto_0
    :try_start_2
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v11

    .line 5246
    .local v11, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v18

    .line 5248
    .local v18, rights:Landroid/drm/mobile1/DrmRights;
    if-nez v18, :cond_0

    .line 5250
    const-string v23, "DrmStore"

    const-string/jumbo v25, "rights == null."

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5256
    :cond_0
    const/16 v19, 0x0

    .line 5257
    .local v19, stream:Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 5258
    .local v9, hasFailed:Z
    const/16 v16, 0x0

    .line 5259
    .local v16, repeat:I
    const/4 v3, 0x0

    .line 5260
    .local v3, buffer:[B
    const/4 v7, 0x0

    .line 5261
    .local v7, endOfContent:I
    const/4 v15, 0x0

    .line 5264
    .local v15, realContentLength:I
    const-string v23, "DrmStore"

    const-string v25, " @@@@@ Retrieve content!!! (saveFileFromBase64)"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 5269
    :cond_1
    const/4 v9, 0x0

    .line 5271
    :try_start_3
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v19

    .line 5284
    :goto_1
    if-nez v9, :cond_1

    .line 5287
    :try_start_4
    const-string v23, "DrmStore"

    const-string v25, " @@@@@ Encrypt content!!! (saveFileFromBase64)"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5291
    const/16 v23, 0x400

    move/from16 v0, v23

    new-array v3, v0, [B

    .line 5293
    :goto_2
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v5, v0, :cond_5

    .line 5294
    add-int/2addr v15, v5

    .line 5295
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v14, v3, v0, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 5305
    :catch_0
    move-exception v6

    .line 5307
    .local v6, e:Ljava/lang/Exception;
    :try_start_5
    const-string v23, "DrmStore"

    const-string v25, " @@@@@ ERROR: read content stream failed. (saveFileFromBase64)"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5309
    const-string v23, "DrmStore"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5310
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 5312
    const/4 v3, 0x0

    .line 5315
    if-eqz v19, :cond_2

    .line 5316
    :try_start_6
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    .line 5320
    :cond_2
    :goto_3
    const/16 v19, 0x0

    .line 5323
    :try_start_7
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileDescriptor;->sync()V

    .line 5324
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 5326
    const/4 v5, -0x1

    .line 5409
    .end local v3           #buffer:[B
    .end local v4           #contentOffset:I
    .end local v5           #count:I
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #endOfContent:I
    .end local v8           #fin_header:Ljava/io/FileInputStream;
    .end local v9           #hasFailed:Z
    .end local v10           #header_buffer:[B
    .end local v11           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v12           #newTempHeader:Ljava/lang/String;
    .end local v13           #newTempHeaderCount:I
    .end local v14           #os:Ljava/io/FileOutputStream;
    .end local v15           #realContentLength:I
    .end local v16           #repeat:I
    .end local v18           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v19           #stream:Ljava/io/InputStream;
    .end local v22           #tempHeader:Ljava/lang/String;
    :goto_4
    monitor-exit v24

    return v5

    .line 5210
    .restart local v4       #contentOffset:I
    .restart local v5       #count:I
    .restart local v8       #fin_header:Ljava/io/FileInputStream;
    .restart local v10       #header_buffer:[B
    .restart local v14       #os:Ljava/io/FileOutputStream;
    :cond_3
    :try_start_8
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 5213
    const-string v23, "DrmStore"

    const-string v25, "Read header failed."

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5217
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileDescriptor;->sync()V

    .line 5218
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 5220
    const/4 v5, -0x1

    goto :goto_4

    .line 5225
    .restart local v12       #newTempHeader:Ljava/lang/String;
    .restart local v13       #newTempHeaderCount:I
    .restart local v22       #tempHeader:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 5227
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v23, "DrmStore"

    const-string v25, " @@@@@ ERROR: close Read header failed. (saveFileFromBase64)"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5229
    const-string v23, "DrmStore"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5230
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    .line 5399
    .end local v4           #contentOffset:I
    .end local v5           #count:I
    .end local v6           #e:Ljava/lang/Exception;
    .end local v8           #fin_header:Ljava/io/FileInputStream;
    .end local v10           #header_buffer:[B
    .end local v12           #newTempHeader:Ljava/lang/String;
    .end local v13           #newTempHeaderCount:I
    .end local v14           #os:Ljava/io/FileOutputStream;
    .end local v22           #tempHeader:Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 5402
    .restart local v6       #e:Ljava/lang/Exception;
    :try_start_9
    const-string v23, "DrmStore"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 5405
    const/16 v17, -0x1

    move/from16 v5, v17

    .line 5409
    goto :goto_4

    .line 5272
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v3       #buffer:[B
    .restart local v4       #contentOffset:I
    .restart local v5       #count:I
    .restart local v7       #endOfContent:I
    .restart local v8       #fin_header:Ljava/io/FileInputStream;
    .restart local v9       #hasFailed:Z
    .restart local v10       #header_buffer:[B
    .restart local v11       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v12       #newTempHeader:Ljava/lang/String;
    .restart local v13       #newTempHeaderCount:I
    .restart local v14       #os:Ljava/io/FileOutputStream;
    .restart local v15       #realContentLength:I
    .restart local v16       #repeat:I
    .restart local v18       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v19       #stream:Ljava/io/InputStream;
    .restart local v22       #tempHeader:Ljava/lang/String;
    :catch_3
    move-exception v6

    .line 5274
    .restart local v6       #e:Ljava/lang/Exception;
    :try_start_a
    const-string v23, "DrmStore"

    const-string v25, " @@@@@ ERROR: get content input stream ERROR!!! (saveFileFromBase64)"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5277
    const/16 v23, 0x3

    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    .line 5278
    const/4 v9, 0x1

    .line 5281
    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 5303
    .end local v6           #e:Ljava/lang/Exception;
    :cond_5
    const-string v23, "DrmStore"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, " @@@@@ Real Content has "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " bytes."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 5330
    :try_start_b
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 5352
    :goto_5
    :try_start_c
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "\r\n"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Landroid/drm/mobile1/DrmRawContent;->getBoundary()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, "--\r\n"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 5353
    .local v20, tail:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v21, v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 5356
    .local v21, tailCount:I
    :try_start_d
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v21

    invoke-virtual {v14, v0, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 5359
    const-string v23, "DrmStore"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Tail has "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " bytes"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    .line 5376
    :try_start_e
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileDescriptor;->sync()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    .line 5386
    :goto_6
    :try_start_f
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    .line 5396
    :goto_7
    add-int v23, v4, v15

    add-int v5, v23, v21

    .line 5398
    goto/16 :goto_4

    .line 5320
    .end local v20           #tail:Ljava/lang/String;
    .end local v21           #tailCount:I
    .restart local v6       #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v23

    const/16 v19, 0x0

    :try_start_10
    throw v23
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    .line 5406
    .end local v3           #buffer:[B
    .end local v4           #contentOffset:I
    .end local v5           #count:I
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #endOfContent:I
    .end local v8           #fin_header:Ljava/io/FileInputStream;
    .end local v9           #hasFailed:Z
    .end local v10           #header_buffer:[B
    .end local v11           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v12           #newTempHeader:Ljava/lang/String;
    .end local v13           #newTempHeaderCount:I
    .end local v14           #os:Ljava/io/FileOutputStream;
    .end local v15           #realContentLength:I
    .end local v16           #repeat:I
    .end local v18           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v19           #stream:Ljava/io/InputStream;
    .end local v22           #tempHeader:Ljava/lang/String;
    :catchall_1
    move-exception v23

    :try_start_11
    throw v23
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 5186
    :catchall_2
    move-exception v23

    monitor-exit v24

    throw v23

    .line 5331
    .restart local v3       #buffer:[B
    .restart local v4       #contentOffset:I
    .restart local v5       #count:I
    .restart local v7       #endOfContent:I
    .restart local v8       #fin_header:Ljava/io/FileInputStream;
    .restart local v9       #hasFailed:Z
    .restart local v10       #header_buffer:[B
    .restart local v11       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v12       #newTempHeader:Ljava/lang/String;
    .restart local v13       #newTempHeaderCount:I
    .restart local v14       #os:Ljava/io/FileOutputStream;
    .restart local v15       #realContentLength:I
    .restart local v16       #repeat:I
    .restart local v18       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v19       #stream:Ljava/io/InputStream;
    .restart local v22       #tempHeader:Ljava/lang/String;
    :catch_4
    move-exception v6

    .line 5333
    .restart local v6       #e:Ljava/lang/Exception;
    :try_start_12
    const-string v23, "DrmStore"

    const-string v25, " @@@@@ ERROR: close content stream failed. (saveFileFromBase64)"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5335
    const-string v23, "DrmStore"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5336
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 5361
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v20       #tail:Ljava/lang/String;
    .restart local v21       #tailCount:I
    :catch_5
    move-exception v6

    .line 5364
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v23, "DrmStore"

    const-string v25, "Output tailer failed."

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5368
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileDescriptor;->sync()V

    .line 5369
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 5371
    const/4 v5, -0x1

    goto/16 :goto_4

    .line 5377
    .end local v6           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v6

    .line 5379
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v23, "DrmStore"

    const-string v25, " @@@@@ ERROR: sync Output Read tail failed. (saveFileFromBase64)"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5381
    const-string v23, "DrmStore"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5382
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 5387
    .end local v6           #e:Ljava/lang/Exception;
    :catch_7
    move-exception v6

    .line 5389
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v23, "DrmStore"

    const-string v25, " @@@@@ ERROR: close Output Read tail failed. (saveFileFromBase64)"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5391
    const-string v23, "DrmStore"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5392
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2

    goto :goto_7

    .line 5318
    .end local v20           #tail:Ljava/lang/String;
    .end local v21           #tailCount:I
    :catch_8
    move-exception v23

    goto/16 :goto_3
.end method

.method public static setEnableCombinedDelivery(Z)V
    .locals 2
    .parameter "isEnabled"

    .prologue
    const/4 v1, 0x1

    .line 7847
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/provider/DrmStore;->DISABLE_COMBINED_DELIVERY:Z

    .line 7848
    sput-boolean v1, Landroid/provider/DrmStore;->SWITCH_TO_CID:Z

    .line 7849
    return-void

    :cond_0
    move v0, v1

    .line 7847
    goto :goto_0
.end method

.method public static setEnableSeparateDelivery(Z)V
    .locals 2
    .parameter "isEnabled"

    .prologue
    const/4 v1, 0x1

    .line 7854
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/provider/DrmStore;->DISABLE_SEPARATE_DELIVERY:Z

    .line 7855
    sput-boolean v1, Landroid/provider/DrmStore;->SWITCH_TO_CID:Z

    .line 7856
    return-void

    :cond_0
    move v0, v1

    .line 7854
    goto :goto_0
.end method

.method private static setNameAndValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "resolver"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 700
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 714
    :cond_0
    :goto_0
    return-void

    .line 704
    :cond_1
    const-string v0, "combined_delivery"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "CD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 707
    :cond_2
    invoke-static {p2}, Landroid/provider/DrmStore;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Landroid/provider/DrmStore;->setEnableCombinedDelivery(Z)V

    goto :goto_0

    .line 709
    :cond_3
    const-string/jumbo v0, "separate_delivery"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "SD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    :cond_4
    invoke-static {p2}, Landroid/provider/DrmStore;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Landroid/provider/DrmStore;->setEnableSeparateDelivery(Z)V

    goto :goto_0
.end method

.method private static final updateAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/ContentValues;
    .locals 7
    .parameter "cx"
    .parameter "file"
    .parameter "mediaType"
    .parameter "mimeType"
    .parameter "uri"

    .prologue
    const/4 v5, 0x0

    .line 5483
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, v5

    invoke-static/range {v0 .. v6}, Landroid/provider/DrmStore;->updateAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZ)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public static final updateAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZ)Landroid/content/ContentValues;
    .locals 29
    .parameter "cx"
    .parameter "file"
    .parameter "mediaType"
    .parameter "mimeType"
    .parameter "uri"
    .parameter "destination"
    .parameter "skipMediaDbUpdate"

    .prologue
    .line 5501
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 5502
    .local v3, cr:Landroid/content/ContentResolver;
    new-instance v27, Landroid/content/ContentValues;

    const/4 v4, 0x3

    move-object/from16 v0, v27

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 5503
    .local v27, values:Landroid/content/ContentValues;
    new-instance v18, Landroid/media/MediaInfo;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/media/MediaInfo;-><init>(Landroid/content/Context;)V

    .line 5504
    .local v18, mediaInfo:Landroid/media/MediaInfo;
    const/16 v19, 0x0

    .line 5505
    .local v19, mediaTag:Landroid/media/MediaInfo$MediaTag;
    const/16 v22, 0x0

    .line 5508
    .local v22, parseFile:Ljava/io/File;
    const/4 v15, 0x0

    .line 5510
    .local v15, extention:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p3 .. p3}, Landroid/media/MediaFile;->getExtensionForMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 5531
    const/4 v4, 0x7

    move/from16 v0, p5

    if-ne v0, v4, :cond_6

    .line 5534
    new-instance v23, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/com.android.providers.drm/rights/PHONE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v22           #parseFile:Ljava/io/File;
    .local v23, parseFile:Ljava/io/File;
    move-object/from16 v22, v23

    .line 5550
    .end local v23           #parseFile:Ljava/io/File;
    .restart local v22       #parseFile:Ljava/io/File;
    :goto_0
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Create template file:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5553
    new-instance v21, Ljava/io/FileOutputStream;

    invoke-direct/range {v21 .. v22}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 5554
    .local v21, os:Ljava/io/FileOutputStream;
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 5555
    .local v16, fin:Ljava/io/FileInputStream;
    new-instance v11, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->available()I

    move-result v4

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-direct {v11, v0, v4, v1}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 5556
    .local v11, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v17

    .line 5557
    .local v17, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v25

    .line 5558
    .local v25, rights:Landroid/drm/mobile1/DrmRights;
    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;

    move-result-object v26

    .line 5559
    .local v26, stream:Ljava/io/InputStream;
    invoke-virtual {v11}, Landroid/drm/mobile1/DrmRawContent;->getRawType()I

    move-result v20

    .line 5560
    .local v20, method:I
    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/provider/DrmStore;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I

    .line 5561
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V

    .line 5565
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V

    .line 5566
    if-eqz v26, :cond_0

    .line 5567
    invoke-virtual/range {v26 .. v26}, Ljava/io/InputStream;->close()V

    .line 5569
    :cond_0
    sget-object v4, Landroid/provider/DrmStore;->CMD_CHMOD:[Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 5570
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore;->CMD_CHMOD:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    .line 5573
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/media/MediaInfo;->parseSingleFile(Ljava/lang/String;)Landroid/media/MediaInfo$MediaTag;

    move-result-object v19

    .line 5574
    if-eqz v19, :cond_1

    .line 5575
    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/media/MediaInfo$MediaTag;->mDrmType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5585
    :cond_1
    if-eqz v22, :cond_2

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5586
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2

    .line 5587
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to delete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5593
    :cond_2
    if-eqz v19, :cond_f

    .line 5596
    sget-object v5, Landroid/provider/DrmStore;->TITLE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p4

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 5597
    .local v12, cursor:Landroid/database/Cursor;
    if-eqz v12, :cond_9

    .line 5598
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 5599
    const-string v4, "_data"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 5600
    .local v24, pathIndex:I
    move/from16 v0, v24

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    .line 5601
    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 5602
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    .line 5607
    .end local v24           #pathIndex:I
    :cond_3
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 5614
    :goto_2
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mediaTag.mPath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5615
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mediaTag.mAlbum = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5616
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mediaTag.mArtist = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5617
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mediaTag.mFilename = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mFilename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5618
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mediaTag.mTitle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5621
    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    if-eqz v4, :cond_4

    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    const-string v5, "<unknown>"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 5622
    const-string/jumbo v4, "title"

    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5626
    :cond_4
    sget-object v4, Landroid/provider/DrmStore$Albums;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/DrmStore;->ALBUMS_PROJECTION:[Ljava/lang/String;

    const-string v6, "album=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/media/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    move-object/from16 v28, v0

    aput-object v28, v7, v8

    const-string v8, "album_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 5627
    .local v9, cAlbums:Landroid/database/Cursor;
    if-nez v9, :cond_a

    .line 5629
    const-string v4, "DrmStore"

    const-string/jumbo v5, "query Albums failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5636
    const/16 v27, 0x0

    .line 5752
    .end local v9           #cAlbums:Landroid/database/Cursor;
    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v16           #fin:Ljava/io/FileInputStream;
    .end local v17           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v20           #method:I
    .end local v21           #os:Ljava/io/FileOutputStream;
    .end local v25           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v26           #stream:Ljava/io/InputStream;
    .end local v27           #values:Landroid/content/ContentValues;
    :cond_5
    :goto_3
    return-object v27

    .line 5539
    .restart local v27       #values:Landroid/content/ContentValues;
    :cond_6
    :try_start_1
    new-instance v23, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/com.android.providers.drm/rights/DRM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v22           #parseFile:Ljava/io/File;
    .restart local v23       #parseFile:Ljava/io/File;
    move-object/from16 v22, v23

    .end local v23           #parseFile:Ljava/io/File;
    .restart local v22       #parseFile:Ljava/io/File;
    goto/16 :goto_0

    .line 5577
    :catch_0
    move-exception v14

    .line 5579
    .local v14, e:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parse DCF audio. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5581
    const/16 v27, 0x0

    .line 5585
    .end local v27           #values:Landroid/content/ContentValues;
    if-eqz v22, :cond_5

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 5586
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_5

    .line 5587
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to delete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 5585
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v27       #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    if-eqz v22, :cond_7

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 5586
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_7

    .line 5587
    const-string v5, "DrmStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to delete: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5585
    :cond_7
    throw v4

    .line 5605
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v12       #cursor:Landroid/database/Cursor;
    .restart local v16       #fin:Ljava/io/FileInputStream;
    .restart local v17       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v20       #method:I
    .restart local v21       #os:Ljava/io/FileOutputStream;
    .restart local v25       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v26       #stream:Ljava/io/InputStream;
    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    goto/16 :goto_1

    .line 5609
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    goto/16 :goto_2

    .line 5639
    .restart local v9       #cAlbums:Landroid/database/Cursor;
    :cond_a
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cAlbums.getCount() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5641
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_b

    .line 5642
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5644
    const-string v4, "DrmStore"

    const-string v5, "Insert a new album."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5646
    new-instance v13, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v13, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 5647
    .local v13, cv:Landroid/content/ContentValues;
    const-string v4, "album"

    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/media/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    invoke-virtual {v13, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5648
    sget-object v4, Landroid/provider/DrmStore$Albums;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 5649
    sget-object v4, Landroid/provider/DrmStore$Albums;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/DrmStore;->ALBUMS_PROJECTION:[Ljava/lang/String;

    const-string v6, "album=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/media/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    move-object/from16 v28, v0

    aput-object v28, v7, v8

    const-string v8, "album_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 5650
    if-nez v9, :cond_b

    .line 5652
    const-string v4, "DrmStore"

    const-string/jumbo v5, "query Albums failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5659
    const/16 v27, 0x0

    goto/16 :goto_3

    .line 5662
    .end local v13           #cv:Landroid/content/ContentValues;
    :cond_b
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5663
    const-string v4, "album_id"

    const/4 v5, 0x0

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5665
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Insert album id is = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5667
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5670
    sget-object v4, Landroid/provider/DrmStore$Artists;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/DrmStore;->ARTISTS_PROJECTION:[Ljava/lang/String;

    const-string v6, "artist=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    move-object/from16 v28, v0

    aput-object v28, v7, v8

    const-string v8, "artist_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 5671
    .local v10, cArtists:Landroid/database/Cursor;
    if-nez v10, :cond_c

    .line 5673
    const-string v4, "DrmStore"

    const-string/jumbo v5, "query Artists failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5680
    const/16 v27, 0x0

    goto/16 :goto_3

    .line 5683
    :cond_c
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cArtists.getCount() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5685
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_d

    .line 5686
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5688
    const-string v4, "DrmStore"

    const-string v5, "Insert a new artist."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5690
    new-instance v13, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v13, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 5691
    .restart local v13       #cv:Landroid/content/ContentValues;
    const-string v4, "artist"

    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    invoke-virtual {v13, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5692
    sget-object v4, Landroid/provider/DrmStore$Artists;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 5693
    sget-object v4, Landroid/provider/DrmStore$Artists;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/DrmStore;->ARTISTS_PROJECTION:[Ljava/lang/String;

    const-string v6, "artist=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    move-object/from16 v28, v0

    aput-object v28, v7, v8

    const-string v8, "artist_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 5694
    if-nez v10, :cond_d

    .line 5696
    const-string v4, "DrmStore"

    const-string/jumbo v5, "query Artists failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5700
    .end local v13           #cv:Landroid/content/ContentValues;
    :cond_d
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5701
    const-string v4, "artist_id"

    const/4 v5, 0x0

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5703
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Insert artist id is = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5705
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5707
    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mMimeType:Ljava/lang/String;

    if-nez v4, :cond_e

    .line 5708
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/media/MediaInfo$MediaTag;->mMimeType:Ljava/lang/String;

    .line 5714
    :cond_e
    if-nez p6, :cond_5

    .line 5716
    :try_start_3
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaInfo;->updateDRMAudio(Landroid/media/MediaInfo$MediaTag;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_5

    .line 5718
    const-string v4, "DrmStore"

    const-string v5, "Update DRM content to MediaProvider failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 5725
    const/16 v27, 0x0

    goto/16 :goto_3

    .line 5727
    :catch_1
    move-exception v14

    .line 5729
    .restart local v14       #e:Ljava/lang/Exception;
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update DRM content to MediaProvider Exceptoin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5736
    const/16 v27, 0x0

    goto/16 :goto_3

    .line 5742
    .end local v9           #cAlbums:Landroid/database/Cursor;
    .end local v10           #cArtists:Landroid/database/Cursor;
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v14           #e:Ljava/lang/Exception;
    :cond_f
    const-string v4, "DrmStore"

    const-string v5, "Parse mediaTag return null."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method
