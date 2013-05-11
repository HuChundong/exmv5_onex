.class public Lcom/htc/album/helper/FastCameraImagePreviewHelper;
.super Ljava/lang/Object;
.source "FastCameraImagePreviewHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/helper/FastCameraImagePreviewHelper$LastestPhotoInfo;
    }
.end annotation


# static fields
.field private static final CONTINUOUS_SHOT_002_COVER_JPG:Ljava/lang/String; = "002_COVER.jpg"

.field private static final CONTINUOUS_SHOT_DEFAULT_COVER_FILE_NAME:Ljava/lang/String; = "/IMAG0002_COVER.jpg"

.field private static final CONTINUOUS_SHOT_REGEXP_DEFAULT_COVER_PATH:Ljava/lang/String; = "(.*IMAG\\w+_BURST)\\w+.*"

.field public static final KEY_BURST_SHOT_EXPAND:Ljava/lang/String; = "FastCameraImagePreviewHelper_key_burst_shot_expand"

.field public static final KEY_CAMERA_FILE_PATH:Ljava/lang/String; = "camera_last_file_path"

.field public static final KEY_CAMERA_MIMETYPE:Ljava/lang/String; = "camera_last_file_mime"

.field public static final KEY_FILE_PATH:Ljava/lang/String; = "FastCameraImagePreviewHelper_key_lastest_file_path"

.field private static final TAG:Ljava/lang/String; = "FastCameraImagePreviewHelper"

.field private static sContinuousShotCovertPattern:Ljava/util/regex/Pattern;

.field private static sFastCameraImagePreviewHelper:Lcom/htc/album/helper/FastCameraImagePreviewHelper;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public static declared-synchronized getContinuousShotCovertPattern()Ljava/util/regex/Pattern;
    .locals 2

    .prologue
    .line 43
    const-class v1, Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->sContinuousShotCovertPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    .line 44
    const-string v0, "(.*IMAG\\d+_BURST)\\d+_COVER.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->sContinuousShotCovertPattern:Ljava/util/regex/Pattern;

    .line 46
    :cond_0
    sget-object v0, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->sContinuousShotCovertPattern:Ljava/util/regex/Pattern;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized instance()Lcom/htc/album/helper/FastCameraImagePreviewHelper;
    .locals 2

    .prologue
    .line 35
    const-class v1, Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->sFastCameraImagePreviewHelper:Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    invoke-direct {v0}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;-><init>()V

    sput-object v0, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->sFastCameraImagePreviewHelper:Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    .line 38
    :cond_0
    sget-object v0, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->sFastCameraImagePreviewHelper:Lcom/htc/album/helper/FastCameraImagePreviewHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isLatestPhotoInCameraShot(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "imageFilePath"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 125
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v2, v3

    .line 136
    :cond_1
    :goto_0
    return v2

    .line 127
    :cond_2
    new-instance v0, Lcom/htc/album/helper/FastCameraImagePreviewHelper$LastestPhotoInfo;

    invoke-direct {v0}, Lcom/htc/album/helper/FastCameraImagePreviewHelper$LastestPhotoInfo;-><init>()V

    .line 128
    .local v0, lastestInfo:Lcom/htc/album/helper/FastCameraImagePreviewHelper$LastestPhotoInfo;
    invoke-direct {p0, p1, v0}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->queryLatestPhotoInCameraShot(Landroid/content/Context;Lcom/htc/album/helper/FastCameraImagePreviewHelper$LastestPhotoInfo;)V

    .line 130
    iget-object v1, v0, Lcom/htc/album/helper/FastCameraImagePreviewHelper$LastestPhotoInfo;->filePath:Ljava/lang/String;

    .line 132
    .local v1, queryPath:Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eq v2, v4, :cond_1

    :cond_3
    move v2, v3

    .line 136
    goto :goto_0
.end method

.method private parseBurstShotSetID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "imageFilePath"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 224
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-object v2

    .line 225
    :cond_1
    const-string v4, "BURST"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 227
    const-string v4, "(.*IMAG\\w+_BURST)\\w+.*"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 228
    .local v3, p:Ljava/util/regex/Pattern;
    invoke-virtual {v3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 230
    .local v1, m:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-ne v5, v4, :cond_2

    .line 231
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .local v2, output:Ljava/lang/String;
    goto :goto_0

    .line 234
    .end local v2           #output:Ljava/lang/String;
    :cond_2
    const-string v4, "/"

    invoke-virtual {p2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 235
    .local v0, changeIndex:I
    const/4 v4, 0x0

    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #output:Ljava/lang/String;
    goto :goto_0
.end method

.method private queryLatestPhotoInCameraShot(Landroid/content/Context;Lcom/htc/album/helper/FastCameraImagePreviewHelper$LastestPhotoInfo;)V
    .locals 12
    .parameter "context"
    .parameter "pi"

    .prologue
    .line 74
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    const/4 v10, 0x0

    .line 77
    .local v10, queryPath:Ljava/lang/String;
    const/4 v9, 0x0

    .line 78
    .local v9, orientation:I
    const/4 v8, 0x0

    .line 80
    .local v8, favorite:I
    const/4 v6, 0x0

    .line 82
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    const-string v0, "com.htc.HTCAlbum.CAMERA_SHOTS"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-static {v0, v1, v2, v5}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->getQueryWhere(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, where:Ljava/lang/String;
    const-string v0, "com.htc.HTCAlbum.CAMERA_SHOTS"

    const-string v1, "com.htc.HTCAlbum.CAMERA_SHOTS"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->getQueryArgs(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, args:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v11, "_id"

    aput-object v11, v2, v5

    const/4 v5, 0x1

    const-string v11, "_data"

    aput-object v11, v2, v5

    const/4 v5, 0x2

    const-string v11, "orientation"

    aput-object v11, v2, v5

    const/4 v5, 0x3

    const-string v11, "favorite"

    aput-object v11, v2, v5

    const-string v5, "datetaken DESC, _data DESC LIMIT 1"

    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 94
    if-eqz v6, :cond_7

    .line 95
    const/4 v0, 0x1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-ne v0, v1, :cond_4

    .line 96
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 97
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 98
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 115
    :cond_2
    :goto_1
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 116
    :cond_3
    const/4 v6, 0x0

    .line 119
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #args:[Ljava/lang/String;
    :goto_2
    iput-object v10, p2, Lcom/htc/album/helper/FastCameraImagePreviewHelper$LastestPhotoInfo;->filePath:Ljava/lang/String;

    .line 120
    iput v9, p2, Lcom/htc/album/helper/FastCameraImagePreviewHelper$LastestPhotoInfo;->orientation:I

    .line 121
    and-int/lit8 v0, v8, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p2, Lcom/htc/album/helper/FastCameraImagePreviewHelper$LastestPhotoInfo;->isBurstShot:Z

    goto :goto_0

    .line 100
    .restart local v3       #where:Ljava/lang/String;
    .restart local v4       #args:[Ljava/lang/String;
    :cond_4
    const/4 v0, 0x1

    :try_start_1
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-ne v0, v1, :cond_2

    .line 101
    const-string v0, "FastCameraImagePreviewHelper"

    const-string v1, "[isLatestPhotoInCameraShot] moveToFirst=false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 108
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #args:[Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 109
    .local v7, e:Ljava/lang/Exception;
    const/4 v0, 0x1

    :try_start_2
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-ne v0, v1, :cond_5

    const-string v0, "FastCameraImagePreviewHelper"

    const-string v1, "[isLatestPhotoInCameraShot] Can\'t query from db"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    :cond_5
    const/4 v10, 0x0

    .line 111
    const/4 v9, 0x0

    .line 112
    const/4 v8, 0x0

    .line 115
    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 116
    :cond_6
    const/4 v6, 0x0

    .line 117
    goto :goto_2

    .line 104
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v4       #args:[Ljava/lang/String;
    :cond_7
    const/4 v0, 0x1

    :try_start_3
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-ne v0, v1, :cond_2

    .line 105
    const-string v0, "FastCameraImagePreviewHelper"

    const-string v1, "[isLatestPhotoInCameraShot] cursor=null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 115
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #args:[Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_8

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 116
    :cond_8
    const/4 v6, 0x0

    throw v0

    .line 121
    :cond_9
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private declared-synchronized updateLastestInformation(Landroid/content/Context;Ljava/lang/String;IZZ)V
    .locals 7
    .parameter "context"
    .parameter "imageFilePath"
    .parameter "rotateDegree"
    .parameter "isBurstShot"
    .parameter "needCheckCameraShotLatest"

    .prologue
    const/4 v4, 0x1

    .line 164
    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 190
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 166
    :cond_1
    if-ne v4, p5, :cond_2

    .line 167
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->isLatestPhotoInCameraShot(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 168
    .local v1, isLatest:Z
    if-eqz v1, :cond_0

    .line 177
    .end local v1           #isLatest:Z
    :cond_2
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 178
    .local v3, sr:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 180
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "FastCameraImagePreviewHelper_key_lastest_file_path"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, oldPath:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 182
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 185
    :cond_3
    const-string v5, "FastCameraImagePreviewHelper_key_lastest_file_path"

    invoke-interface {v0, v5, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 186
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 187
    const-string v5, "FastCameraImagePreviewHelper_key_burst_shot_expand"

    if-nez p4, :cond_4

    :goto_1
    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 189
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 164
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #oldPath:Ljava/lang/String;
    .end local v3           #sr:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 187
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v2       #oldPath:Ljava/lang/String;
    .restart local v3       #sr:Landroid/content/SharedPreferences;
    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getCoverImageFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "continuousShotImagePath"

    .prologue
    const/4 v4, 0x1

    .line 60
    const-string v3, "(.*IMAG\\w+_BURST)\\w+.*"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 61
    .local v2, p:Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 62
    .local v1, m:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-ne v4, v3, :cond_0

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "002_COVER.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 70
    :goto_0
    return-object p1

    .line 66
    :cond_0
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 67
    .local v0, changeIndex:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/IMAG0002_COVER.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public getLatestGridPhotoPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 207
    if-nez p1, :cond_0

    .line 210
    :goto_0
    return-object v1

    .line 209
    :cond_0
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 210
    .local v0, sr:Landroid/content/SharedPreferences;
    const-string v2, "FastCameraImagePreviewHelper_key_lastest_file_path"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getRotationInformation(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .parameter "context"
    .parameter "imageFilePath"

    .prologue
    const/4 v1, 0x0

    .line 193
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 196
    :cond_0
    :goto_0
    return v1

    .line 195
    :cond_1
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 196
    .local v0, sr:Landroid/content/SharedPreferences;
    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method public isBurstShotExpand(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 200
    if-nez p1, :cond_0

    .line 203
    :goto_0
    return v1

    .line 202
    :cond_0
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 203
    .local v0, sr:Landroid/content/SharedPreferences;
    const-string v2, "FastCameraImagePreviewHelper_key_burst_shot_expand"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public isSameCollection(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "inputPath"

    .prologue
    const/4 v2, 0x0

    .line 214
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 220
    :cond_0
    :goto_0
    return v2

    .line 216
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->getLatestGridPhotoPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, coverPath:Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->parseBurstShotSetID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, setID:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 220
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_0
.end method

.method public updateLastestInformation(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 145
    new-instance v6, Lcom/htc/album/helper/FastCameraImagePreviewHelper$LastestPhotoInfo;

    invoke-direct {v6}, Lcom/htc/album/helper/FastCameraImagePreviewHelper$LastestPhotoInfo;-><init>()V

    .line 146
    .local v6, lastestInfo:Lcom/htc/album/helper/FastCameraImagePreviewHelper$LastestPhotoInfo;
    invoke-direct {p0, p1, v6}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->queryLatestPhotoInCameraShot(Landroid/content/Context;Lcom/htc/album/helper/FastCameraImagePreviewHelper$LastestPhotoInfo;)V

    .line 148
    iget-object v2, v6, Lcom/htc/album/helper/FastCameraImagePreviewHelper$LastestPhotoInfo;->filePath:Ljava/lang/String;

    iget v3, v6, Lcom/htc/album/helper/FastCameraImagePreviewHelper$LastestPhotoInfo;->orientation:I

    iget-boolean v4, v6, Lcom/htc/album/helper/FastCameraImagePreviewHelper$LastestPhotoInfo;->isBurstShot:Z

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->updateLastestInformation(Landroid/content/Context;Ljava/lang/String;IZZ)V

    .line 149
    return-void
.end method

.method public updateLastestInformation(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 6
    .parameter "context"
    .parameter "imageFilePath"
    .parameter "rotateDegree"
    .parameter "isBurstShot"

    .prologue
    .line 158
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->updateLastestInformation(Landroid/content/Context;Ljava/lang/String;IZZ)V

    .line 159
    return-void
.end method
