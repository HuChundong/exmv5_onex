.class public Lcom/htc/album/helper/MediaProviderHelper;
.super Ljava/lang/Object;
.source "MediaProviderHelper.java"


# static fields
.field public static final EXTERNAL_FILE_CONTENT_URI:Landroid/net/Uri; = null

.field public static final EXTERNAL_IMAGE_CONTENT_URI:Landroid/net/Uri; = null

.field public static final EXTERNAL_VIDEO_CONTENT_URI:Landroid/net/Uri; = null

.field private static final LOG_TAG:Ljava/lang/String; = "MediaProviderHelper"

.field private static mImageProjection:[Ljava/lang/String;

.field private static mVideoProjection:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/album/helper/MediaProviderHelper;->EXTERNAL_IMAGE_CONTENT_URI:Landroid/net/Uri;

    .line 23
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/album/helper/MediaProviderHelper;->EXTERNAL_VIDEO_CONTENT_URI:Landroid/net/Uri;

    .line 24
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/album/helper/MediaProviderHelper;->EXTERNAL_FILE_CONTENT_URI:Landroid/net/Uri;

    .line 26
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "datetaken"

    aput-object v1, v0, v5

    const-string v1, "date_modified"

    aput-object v1, v0, v6

    const-string v1, "latitude"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "orientation"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "favorite"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/album/helper/MediaProviderHelper;->mImageProjection:[Ljava/lang/String;

    .line 39
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "datetaken"

    aput-object v1, v0, v5

    const-string v1, "date_modified"

    aput-object v1, v0, v6

    const-string v1, "latitude"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "favorite"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/album/helper/MediaProviderHelper;->mVideoProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteData(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 316
    const/4 v0, 0x0

    .line 317
    .local v0, bRes:Z
    if-nez p0, :cond_0

    .line 319
    const-string v3, "MediaProviderHelper"

    const-string v4, "[HTCAlbum][MediaProviderHelper][deleteData] context is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 329
    .end local v0           #bRes:Z
    .local v1, bRes:I
    :goto_0
    return v1

    .line 323
    .end local v1           #bRes:I
    .restart local v0       #bRes:Z
    :cond_0
    const/4 v2, -0x1

    .line 324
    .local v2, num:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/album/helper/MediaProviderHelper;->EXTERNAL_FILE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 326
    if-lez v2, :cond_1

    .line 327
    const/4 v0, 0x1

    :cond_1
    move v1, v0

    .line 329
    .restart local v1       #bRes:I
    goto :goto_0
.end method

.method public static getFileCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "context"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 299
    const/4 v6, 0x0

    .line 301
    .local v6, cursor:Landroid/database/Cursor;
    if-nez p0, :cond_0

    .line 303
    const-string v0, "MediaProviderHelper"

    const-string v1, "[HTCAlbum][MediaProviderHelper][getFileCursor] context is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    .line 309
    .end local v6           #cursor:Landroid/database/Cursor;
    .local v7, cursor:Landroid/database/Cursor;
    :goto_0
    return-object v7

    .line 307
    .end local v7           #cursor:Landroid/database/Cursor;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/album/helper/MediaProviderHelper;->EXTERNAL_FILE_CONTENT_URI:Landroid/net/Uri;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object v7, v6

    .line 309
    .end local v6           #cursor:Landroid/database/Cursor;
    .restart local v7       #cursor:Landroid/database/Cursor;
    goto :goto_0
.end method

.method public static getImageCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "context"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 255
    const/4 v6, 0x0

    .line 257
    .local v6, cursor:Landroid/database/Cursor;
    if-nez p0, :cond_0

    .line 259
    const-string v0, "MediaProviderHelper"

    const-string v1, "[HTCAlbum][MediaProviderHelper][getImageCursor] context is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    .line 268
    .end local v6           #cursor:Landroid/database/Cursor;
    .local v7, cursor:Landroid/database/Cursor;
    :goto_0
    return-object v7

    .line 263
    .end local v7           #cursor:Landroid/database/Cursor;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_0
    if-eqz p1, :cond_1

    .line 264
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/album/helper/MediaProviderHelper;->EXTERNAL_IMAGE_CONTENT_URI:Landroid/net/Uri;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :goto_1
    move-object v7, v6

    .line 268
    .end local v6           #cursor:Landroid/database/Cursor;
    .restart local v7       #cursor:Landroid/database/Cursor;
    goto :goto_0

    .line 266
    .end local v7           #cursor:Landroid/database/Cursor;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/album/helper/MediaProviderHelper;->EXTERNAL_IMAGE_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/album/helper/MediaProviderHelper;->mImageProjection:[Ljava/lang/String;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_1
.end method

.method public static getVideoCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "context"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 277
    const/4 v6, 0x0

    .line 279
    .local v6, cursor:Landroid/database/Cursor;
    if-nez p0, :cond_0

    .line 281
    const-string v0, "MediaProviderHelper"

    const-string v1, "[HTCAlbum][MediaProviderHelper][getVideoCursor] context is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    .line 290
    .end local v6           #cursor:Landroid/database/Cursor;
    .local v7, cursor:Landroid/database/Cursor;
    :goto_0
    return-object v7

    .line 285
    .end local v7           #cursor:Landroid/database/Cursor;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_0
    if-eqz p1, :cond_1

    .line 286
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/album/helper/MediaProviderHelper;->EXTERNAL_VIDEO_CONTENT_URI:Landroid/net/Uri;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :goto_1
    move-object v7, v6

    .line 290
    .end local v6           #cursor:Landroid/database/Cursor;
    .restart local v7       #cursor:Landroid/database/Cursor;
    goto :goto_0

    .line 288
    .end local v7           #cursor:Landroid/database/Cursor;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/album/helper/MediaProviderHelper;->EXTERNAL_VIDEO_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/album/helper/MediaProviderHelper;->mVideoProjection:[Ljava/lang/String;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_1
.end method

.method public static insertFile(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9
    .parameter "context"
    .parameter "filePath"
    .parameter "preparedValues"

    .prologue
    .line 121
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 123
    :cond_0
    const-string v6, "MediaProviderHelper"

    const-string v7, "[HTCAlbum][MediaProviderHelper][insertFile] illegal input parameter"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v4, 0x0

    .line 153
    :goto_0
    return-object v4

    .line 127
    :cond_1
    invoke-static {p1}, Lcom/htc/album/helper/FileOperationHelper;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, title:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/album/helper/FileOperationHelper;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, fileName:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/album/helper/FileOperationHelper;->getFileParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, directoryPath:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 131
    const-string v0, ""

    .line 133
    :cond_2
    const/4 v5, 0x0

    .line 134
    .local v5, values:Landroid/content/ContentValues;
    if-nez p2, :cond_3

    .line 135
    new-instance v5, Landroid/content/ContentValues;

    .end local v5           #values:Landroid/content/ContentValues;
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 138
    .restart local v5       #values:Landroid/content/ContentValues;
    :goto_1
    const/4 v4, 0x0

    .line 141
    .local v4, uri:Landroid/net/Uri;
    :try_start_0
    const-string v6, "title"

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v6, "_display_name"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v6, "bucket_id"

    invoke-static {v0}, Lcom/htc/album/helper/FileOperationHelper;->genBucketID(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 144
    const-string v6, "bucket_display_name"

    invoke-static {v0}, Lcom/htc/album/helper/FileOperationHelper;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v6, "_data"

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/htc/album/helper/MediaProviderHelper;->EXTERNAL_FILE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 137
    .end local v4           #uri:Landroid/net/Uri;
    :cond_3
    move-object v5, p2

    goto :goto_1

    .line 148
    .restart local v4       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 150
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "MediaProviderHelper"

    const-string v7, "[HTCAlbum][MediaProviderHelper][insertData] insert file failed."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static insertImage(Landroid/content/Context;Ljava/lang/String;JJILjava/lang/String;Landroid/location/Location;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 13
    .parameter "context"
    .parameter "filePath"
    .parameter "takenTime"
    .parameter "modifiedTime"
    .parameter "orientation"
    .parameter "mimeType"
    .parameter "gpsLocation"
    .parameter "preparedValues"

    .prologue
    .line 61
    const/4 v8, 0x0

    .line 63
    .local v8, uri:Landroid/net/Uri;
    if-nez p0, :cond_0

    .line 65
    const-string v10, "MediaProviderHelper"

    const-string v11, "[HTCAlbum][MediaProviderHelper][insertImage] context is null."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    if-nez p1, :cond_1

    .line 69
    const-string v10, "MediaProviderHelper"

    const-string v11, "[HTCAlbum][MediaProviderHelper][insertImage] file path is null."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_1
    const/4 v9, 0x0

    .line 72
    .local v9, values:Landroid/content/ContentValues;
    if-nez p9, :cond_4

    .line 73
    new-instance v9, Landroid/content/ContentValues;

    .end local v9           #values:Landroid/content/ContentValues;
    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 77
    .restart local v9       #values:Landroid/content/ContentValues;
    :goto_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v3, file:Ljava/io/File;
    invoke-static {p1}, Lcom/htc/album/helper/FileOperationHelper;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 79
    .local v7, title:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/album/helper/FileOperationHelper;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, fileName:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, directoryName:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 83
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 87
    .local v5, fileSize:J
    :goto_1
    if-nez v1, :cond_2

    .line 88
    const-string v1, ""

    .line 92
    :cond_2
    :try_start_0
    const-string v10, "title"

    invoke-virtual {v9, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v10, "_display_name"

    invoke-virtual {v9, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v10, "description"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v10, "datetaken"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 96
    const-string v10, "date_modified"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 97
    const-string v10, "orientation"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    const-string v10, "bucket_id"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    const-string v10, "bucket_display_name"

    invoke-static {v1}, Lcom/htc/album/helper/FileOperationHelper;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v10, "_data"

    invoke-virtual {v9, v10, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v10, "_size"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 102
    const-string v10, "mime_type"

    move-object/from16 v0, p7

    invoke-virtual {v9, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    if-eqz p8, :cond_3

    .line 105
    const-string v10, "latitude"

    invoke-virtual/range {p8 .. p8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 106
    const-string v10, "longitude"

    invoke-virtual/range {p8 .. p8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 109
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/htc/album/helper/MediaProviderHelper;->EXTERNAL_IMAGE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 116
    :goto_2
    return-object v8

    .line 75
    .end local v1           #directoryName:Ljava/lang/String;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #fileName:Ljava/lang/String;
    .end local v5           #fileSize:J
    .end local v7           #title:Ljava/lang/String;
    :cond_4
    move-object/from16 v9, p9

    goto/16 :goto_0

    .line 85
    .restart local v1       #directoryName:Ljava/lang/String;
    .restart local v3       #file:Ljava/io/File;
    .restart local v4       #fileName:Ljava/lang/String;
    .restart local v7       #title:Ljava/lang/String;
    :cond_5
    const-wide/16 v5, 0x0

    .restart local v5       #fileSize:J
    goto/16 :goto_1

    .line 111
    :catch_0
    move-exception v2

    .line 113
    .local v2, e:Ljava/lang/Exception;
    const-string v10, "MediaProviderHelper"

    const-string v11, "[HTCAlbum][MediaProviderHelper][insertImage] insert image failed."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static insertVideo(Landroid/content/Context;Ljava/lang/String;JJJLjava/lang/String;Landroid/location/Location;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 13
    .parameter "context"
    .parameter "filePath"
    .parameter "takenTime"
    .parameter "modifiedTime"
    .parameter "duration"
    .parameter "mimeType"
    .parameter "gpsLocation"
    .parameter "preparedValues"

    .prologue
    .line 165
    const/4 v8, 0x0

    .line 167
    .local v8, uri:Landroid/net/Uri;
    if-nez p0, :cond_0

    .line 169
    const-string v10, "MediaProviderHelper"

    const-string v11, "[HTCAlbum][MediaProviderHelper][insertImage] context is null."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    if-nez p1, :cond_1

    .line 173
    const-string v10, "MediaProviderHelper"

    const-string v11, "[HTCAlbum][MediaProviderHelper][insertImage] file path is null."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_1
    const/4 v9, 0x0

    .line 177
    .local v9, values:Landroid/content/ContentValues;
    if-nez p10, :cond_4

    .line 178
    new-instance v9, Landroid/content/ContentValues;

    .end local v9           #values:Landroid/content/ContentValues;
    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 182
    .restart local v9       #values:Landroid/content/ContentValues;
    :goto_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v3, file:Ljava/io/File;
    invoke-static {p1}, Lcom/htc/album/helper/FileOperationHelper;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 184
    .local v7, title:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/album/helper/FileOperationHelper;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 185
    .local v4, fileName:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, directoryName:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 188
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 192
    .local v5, fileSize:J
    :goto_1
    if-nez v1, :cond_2

    .line 193
    const-string v1, ""

    .line 197
    :cond_2
    :try_start_0
    const-string v10, "title"

    invoke-virtual {v9, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v10, "_display_name"

    invoke-virtual {v9, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v10, "description"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v10, "datetaken"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 201
    const-string v10, "date_modified"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 202
    const-string v10, "duration"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 203
    const-string v10, "bucket_id"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 204
    const-string v10, "bucket_display_name"

    invoke-static {v1}, Lcom/htc/album/helper/FileOperationHelper;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v10, "_data"

    invoke-virtual {v9, v10, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v10, "_size"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 207
    const-string v10, "mime_type"

    move-object/from16 v0, p8

    invoke-virtual {v9, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    if-eqz p9, :cond_3

    .line 210
    const-string v10, "latitude"

    invoke-virtual/range {p9 .. p9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 211
    const-string v10, "longitude"

    invoke-virtual/range {p9 .. p9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 214
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/htc/album/helper/MediaProviderHelper;->EXTERNAL_VIDEO_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 222
    :goto_2
    return-object v8

    .line 180
    .end local v1           #directoryName:Ljava/lang/String;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #fileName:Ljava/lang/String;
    .end local v5           #fileSize:J
    .end local v7           #title:Ljava/lang/String;
    :cond_4
    move-object/from16 v9, p10

    goto/16 :goto_0

    .line 190
    .restart local v1       #directoryName:Ljava/lang/String;
    .restart local v3       #file:Ljava/io/File;
    .restart local v4       #fileName:Ljava/lang/String;
    .restart local v7       #title:Ljava/lang/String;
    :cond_5
    const-wide/16 v5, 0x0

    .restart local v5       #fileSize:J
    goto/16 :goto_1

    .line 216
    :catch_0
    move-exception v2

    .line 218
    .local v2, e:Ljava/lang/Exception;
    const-string v10, "MediaProviderHelper"

    const-string v11, "[HTCAlbum][MediaProviderHelper][insertVideo] insert video failed."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v8, 0x0

    goto :goto_2
.end method

.method public static notifyChange(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 334
    if-nez p0, :cond_0

    .line 336
    const-string v0, "MediaProviderHelper"

    const-string v1, "[HTCAlbum][MediaProviderHelper][notifyChange] context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :goto_0
    return-void

    .line 339
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/album/helper/MediaProviderHelper;->EXTERNAL_IMAGE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 340
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/album/helper/MediaProviderHelper;->EXTERNAL_VIDEO_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public static updateData(Landroid/content/Context;Landroid/content/ContentValues;I)I
    .locals 7
    .parameter "context"
    .parameter "values"
    .parameter "id"

    .prologue
    .line 227
    const/4 v1, -0x1

    .line 229
    .local v1, result:I
    if-nez p0, :cond_0

    .line 231
    const-string v4, "MediaProviderHelper"

    const-string v5, "[HTCAlbum][MediaProviderHelper][updateData] context is null."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 246
    .end local v1           #result:I
    .local v2, result:I
    :goto_0
    return v2

    .line 235
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, where:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/htc/album/helper/MediaProviderHelper;->EXTERNAL_FILE_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p1, v3, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 246
    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_0

    .line 240
    .end local v2           #result:I
    .restart local v1       #result:I
    :catch_0
    move-exception v0

    .line 242
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "MediaProviderHelper"

    const-string v5, "[HTCAlbum][MediaProviderHelper][updateData] update database failed."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v1, -0x1

    goto :goto_1
.end method
