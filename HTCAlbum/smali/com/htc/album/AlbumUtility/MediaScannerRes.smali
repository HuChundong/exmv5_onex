.class public Lcom/htc/album/AlbumUtility/MediaScannerRes;
.super Ljava/lang/Object;
.source "MediaScannerRes.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field public mScanFinish:Z

.field public mUriImage:Landroid/net/Uri;

.field public mbConnect:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "MediaScannerRes"

    sput-object v0, Lcom/htc/album/AlbumUtility/MediaScannerRes;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/AlbumUtility/MediaScannerRes;->mUriImage:Landroid/net/Uri;

    .line 22
    iput-boolean v1, p0, Lcom/htc/album/AlbumUtility/MediaScannerRes;->mScanFinish:Z

    .line 23
    iput-boolean v1, p0, Lcom/htc/album/AlbumUtility/MediaScannerRes;->mbConnect:Z

    return-void
.end method

.method public static final MakeUri(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 7
    .parameter "activity"
    .parameter "filePath"
    .parameter "mimetype"

    .prologue
    .line 41
    const/4 v2, 0x0

    .line 45
    .local v2, uri:Landroid/net/Uri;
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 46
    .local v0, cv:Landroid/content/ContentValues;
    const-string v3, "_data"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 61
    sget-object v3, Lcom/htc/album/AlbumUtility/MediaScannerRes;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][MakeUri]-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .end local v0           #cv:Landroid/content/ContentValues;
    :goto_0
    return-object v2

    .line 55
    :catch_0
    move-exception v1

    .line 57
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v3, Lcom/htc/album/AlbumUtility/MediaScannerRes;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][MakeUri][Exception]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    sget-object v3, Lcom/htc/album/AlbumUtility/MediaScannerRes;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][MakeUri]-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    sget-object v4, Lcom/htc/album/AlbumUtility/MediaScannerRes;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][MakeUri]-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v3
.end method

.method private static MediaScannerConnection(Landroid/content/Context;Lcom/htc/album/AlbumUtility/MediaScannerRes;)Landroid/media/MediaScannerConnection;
    .locals 1
    .parameter "applicationContext"
    .parameter "ms"

    .prologue
    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final QueryUri(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 13
    .parameter "activity"
    .parameter "filePath"
    .parameter "mimetype"

    .prologue
    const/4 v11, 0x1

    const/4 v5, 0x0

    .line 69
    const/4 v10, 0x0

    .line 70
    .local v10, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 71
    .local v6, cur:Landroid/database/Cursor;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const-string v0, "_data"

    aput-object v0, v2, v11

    .line 72
    .local v2, cols:[Ljava/lang/String;
    const-string v3, "_data like ?"

    .line 73
    .local v3, where:Ljava/lang/String;
    new-array v4, v11, [Ljava/lang/String;

    aput-object p1, v4, v5

    .line 74
    .local v4, whereArgs:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 75
    .local v1, imageUri:Landroid/net/Uri;
    const-wide/16 v8, -0x1

    .line 79
    .local v8, rowId:J
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 81
    if-eqz v6, :cond_1

    .line 83
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 88
    :cond_0
    const-wide/16 v11, -0x1

    cmp-long v0, v8, v11

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 100
    :cond_1
    if-eqz v6, :cond_2

    .line 101
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 102
    const/4 v6, 0x0

    .line 105
    :cond_2
    sget-object v0, Lcom/htc/album/AlbumUtility/MediaScannerRes;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][QueryUri]-"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :goto_0
    return-object v10

    .line 94
    :catch_0
    move-exception v7

    .line 96
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v0, Lcom/htc/album/AlbumUtility/MediaScannerRes;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][Exception]"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    if-eqz v6, :cond_3

    .line 101
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 102
    const/4 v6, 0x0

    .line 105
    :cond_3
    sget-object v0, Lcom/htc/album/AlbumUtility/MediaScannerRes;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][QueryUri]-"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 101
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 102
    const/4 v6, 0x0

    .line 105
    :cond_4
    sget-object v5, Lcom/htc/album/AlbumUtility/MediaScannerRes;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][QueryUri]-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method public static final SyncScanSingleFile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .parameter "activity"
    .parameter "filePath"
    .parameter "mimetype"

    .prologue
    .line 115
    sget-object v1, Lcom/htc/album/AlbumUtility/MediaScannerRes;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SyncScanSingleFile]+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    if-nez p1, :cond_0

    .line 118
    const/4 v0, 0x0

    .line 134
    :goto_0
    return-object v0

    .line 121
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/htc/album/AlbumUtility/MediaScannerRes;->QueryUri(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 123
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 125
    sget-object v1, Lcom/htc/album/AlbumUtility/MediaScannerRes;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SyncScanSingleFile]-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 130
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/htc/album/AlbumUtility/MediaScannerRes;->MakeUri(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 132
    sget-object v1, Lcom/htc/album/AlbumUtility/MediaScannerRes;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SyncScanSingleFile]-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/AlbumUtility/MediaScannerRes;->mbConnect:Z

    .line 37
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .parameter "arg0"
    .parameter "uriImage"

    .prologue
    .line 28
    iput-object p2, p0, Lcom/htc/album/AlbumUtility/MediaScannerRes;->mUriImage:Landroid/net/Uri;

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/AlbumUtility/MediaScannerRes;->mScanFinish:Z

    .line 30
    return-void
.end method
