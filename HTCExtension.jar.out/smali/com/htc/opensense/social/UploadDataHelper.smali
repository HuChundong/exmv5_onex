.class public Lcom/htc/opensense/social/UploadDataHelper;
.super Ljava/lang/Object;
.source "UploadDataHelper.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DELAY_MILLIS:I = 0x1388

.field private static INSERT_LIMIT:I

.field private static LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "ReceiverHelper"

    sput-object v0, Lcom/htc/opensense/social/UploadDataHelper;->LOG_TAG:Ljava/lang/String;

    .line 38
    const/16 v0, 0xa

    sput v0, Lcom/htc/opensense/social/UploadDataHelper;->INSERT_LIMIT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized batchUpload(Landroid/content/Context;[Landroid/content/ContentValues;Landroid/content/ContentValues;)I
    .locals 18
    .parameter "context"
    .parameter "uploadValues"
    .parameter "batchValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 177
    const-class v16, Lcom/htc/opensense/social/UploadDataHelper;

    monitor-enter v16

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 178
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v7, -0x1

    .line 179
    .local v7, batch_id:I
    sget-object v3, Lcom/htc/opensense/social/UploadDataHelper;->LOG_TAG:Ljava/lang/String;

    const-string v4, "batch upload"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    move-object/from16 v0, p1

    array-length v3, v0

    if-ge v10, v3, :cond_1

    .line 181
    aget-object v3, p1, v10

    const-string v4, "mode"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 182
    const/4 v3, -0x1

    .line 238
    :goto_1
    monitor-exit v16

    return v3

    .line 180
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 185
    :cond_1
    :try_start_1
    sget-object v3, Lcom/htc/opensense/social/UploadDataHelper;->LOG_TAG:Ljava/lang/String;

    const-string v4, "batch upload start insert"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    sget-object v3, Lcom/htc/opensense/social/Uploads;->BACTH_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 192
    .local v2, batchUri:Landroid/net/Uri;
    if-nez v2, :cond_2

    .line 193
    new-instance v3, Landroid/database/SQLException;

    const-string v4, "Could not insert update upload"

    invoke-direct {v3, v4}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v2           #batchUri:Landroid/net/Uri;
    .end local v7           #batch_id:I
    .end local v10           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v16

    throw v3

    .line 197
    .restart local v1       #cr:Landroid/content/ContentResolver;
    .restart local v2       #batchUri:Landroid/net/Uri;
    .restart local v7       #batch_id:I
    .restart local v10       #i:I
    :cond_2
    const/4 v3, 0x1

    :try_start_2
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 200
    .local v8, cursor:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 201
    const-string v3, "_id"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 202
    sget-object v3, Lcom/htc/opensense/social/UploadDataHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1batch id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 208
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v12, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object/from16 v0, p1

    array-length v11, v0

    .line 210
    .local v11, length:I
    const/4 v10, 0x0

    :goto_2
    if-ge v10, v11, :cond_6

    .line 211
    aget-object v14, p1, v10

    .line 212
    .local v14, value:Landroid/content/ContentValues;
    const-string v3, "batch_id"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 213
    const-string v3, "status"

    const/16 v4, 0xbe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 214
    invoke-static {v14}, Lcom/htc/opensense/social/UploadDataHelper;->getInsertItemOperation(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    sget v3, Lcom/htc/opensense/social/UploadDataHelper;->INSERT_LIMIT:I

    rem-int v3, v10, v3

    sget v4, Lcom/htc/opensense/social/UploadDataHelper;->INSERT_LIMIT:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_4

    add-int/lit8 v3, v11, -0x1

    if-ne v10, v3, :cond_5

    .line 217
    :cond_4
    :try_start_3
    sget-object v3, Lcom/htc/opensense/social/UploadDataHelper;->LOG_TAG:Ljava/lang/String;

    const-string v4, "apply batch"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string v3, "uploads"

    invoke-virtual {v1, v3, v12}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 219
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_3 .. :try_end_3} :catch_1

    .line 210
    :cond_5
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 220
    :catch_0
    move-exception v9

    .line 221
    .local v9, e:Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 222
    .end local v9           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v9

    .line 223
    .local v9, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v9}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_3

    .line 228
    .end local v9           #e:Landroid/content/OperationApplicationException;
    .end local v14           #value:Landroid/content/ContentValues;
    :cond_6
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 229
    .local v13, uploadService:Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.htc.providers.uploads"

    const-string v5, "com.htc.providers.uploads.UploadService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 232
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 233
    sget-object v3, Lcom/htc/opensense/social/Uploads;->UPLOADS_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 234
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 235
    .local v15, values:Landroid/content/ContentValues;
    const-string v3, "status"

    const/16 v4, 0xbd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 236
    sget-object v3, Lcom/htc/opensense/social/Uploads;->UPLOADS_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "batch_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v5, v6

    invoke-virtual {v1, v3, v15, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v3, v7

    .line 238
    goto/16 :goto_1
.end method

.method public static fillBatchValue(Ljava/util/HashMap;ILjava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 7
    .parameter
    .parameter "createMode"
    .parameter "service"
    .parameter "title"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .prologue
    .local p0, selectAlbum:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 78
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 79
    .local v3, value:Landroid/content/ContentValues;
    const-string v4, "album_id"

    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 81
    const-string v4, "aid"

    const-string v5, "-1"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v4, "create_album_mode"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 83
    const-string v4, "move_to_album"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    :goto_0
    const-string v4, "service_provider"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v4, "service_title"

    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-object v3

    .line 85
    :cond_0
    const-string v4, "album_id"

    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 86
    .local v0, aid:Ljava/lang/String;
    const-string v4, "album_name"

    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 87
    .local v1, albumName:Ljava/lang/String;
    const-string v4, "description"

    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 88
    .local v2, description:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 89
    const-string v4, "album_name"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_1
    if-eqz v2, :cond_2

    .line 91
    const-string v4, "description"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_2
    const-string v4, "aid"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v4, "create_album_mode"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 94
    const-string v4, "description"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v4, "visible"

    invoke-virtual {p0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 96
    const-string v5, "privacy"

    const-string v4, "visible"

    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 99
    :cond_3
    const-string v4, "privacy"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public static fillValues(Lcom/htc/socialnetwork/PhotoMetaData;I)Landroid/content/ContentValues;
    .locals 5
    .parameter "photo"
    .parameter "isPublic"

    .prologue
    const/4 v4, 0x1

    .line 53
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/htc/socialnetwork/PhotoMetaData;->path:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, uFile:Ljava/io/File;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 56
    .local v1, value:Landroid/content/ContentValues;
    const-string v2, "mode"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 57
    const-string v2, "method"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 58
    const-string v2, "hint"

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v2, "_data"

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v2, "file_uri"

    iget-object v3, p0, Lcom/htc/socialnetwork/PhotoMetaData;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v2, "mimetype"

    iget-object v3, p0, Lcom/htc/socialnetwork/PhotoMetaData;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v2, "visibility"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 64
    const-string v2, "total_bytes"

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 65
    const-string v2, "title"

    iget-object v3, p0, Lcom/htc/socialnetwork/PhotoMetaData;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v2, "description"

    iget-object v3, p0, Lcom/htc/socialnetwork/PhotoMetaData;->description:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v2, "privacy"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 68
    return-object v1
.end method

.method public static getInsertItemOperation(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    .locals 1
    .parameter "values"

    .prologue
    .line 247
    sget-object v0, Lcom/htc/opensense/social/Uploads;->UPLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getPhotoMetaDataByUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/htc/socialnetwork/PhotoMetaData;
    .locals 12
    .parameter "context"
    .parameter "image"
    .parameter "mimeType"

    .prologue
    const/4 v3, 0x0

    .line 121
    sget-object v0, Lcom/htc/opensense/social/UploadDataHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "image "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 125
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 126
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 129
    .local v10, filePath:Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v11, uFile:Ljava/io/File;
    new-instance v8, Lcom/htc/socialnetwork/PhotoMetaData;

    invoke-direct {v8}, Lcom/htc/socialnetwork/PhotoMetaData;-><init>()V

    .line 131
    .local v8, data:Lcom/htc/socialnetwork/PhotoMetaData;
    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/htc/socialnetwork/PhotoMetaData;->path:Ljava/lang/String;

    .line 132
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/htc/socialnetwork/PhotoMetaData;->title:Ljava/lang/String;

    .line 133
    iput-object p2, v8, Lcom/htc/socialnetwork/PhotoMetaData;->mimeType:Ljava/lang/String;

    .line 134
    invoke-virtual {v11}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/htc/socialnetwork/PhotoMetaData;->uri:Ljava/lang/String;

    .line 151
    .end local v7           #c:Landroid/database/Cursor;
    .end local v8           #data:Lcom/htc/socialnetwork/PhotoMetaData;
    .end local v10           #filePath:Ljava/lang/String;
    .end local v11           #uFile:Ljava/io/File;
    :cond_0
    :goto_0
    return-object v8

    .line 138
    .restart local v7       #c:Landroid/database/Cursor;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v7           #c:Landroid/database/Cursor;
    :cond_2
    move-object v8, v3

    .line 151
    goto :goto_0

    .line 141
    :cond_3
    new-instance v9, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    .local v9, file:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    sget-object v0, Lcom/htc/opensense/social/UploadDataHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "meta file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v8, Lcom/htc/socialnetwork/PhotoMetaData;

    invoke-direct {v8}, Lcom/htc/socialnetwork/PhotoMetaData;-><init>()V

    .line 145
    .restart local v8       #data:Lcom/htc/socialnetwork/PhotoMetaData;
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/htc/socialnetwork/PhotoMetaData;->path:Ljava/lang/String;

    .line 146
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/htc/socialnetwork/PhotoMetaData;->title:Ljava/lang/String;

    .line 147
    iput-object p2, v8, Lcom/htc/socialnetwork/PhotoMetaData;->mimeType:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getPhotoMetaDataFromBundle(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/socialnetwork/PhotoMetaData;
    .locals 3
    .parameter "context"
    .parameter "bundle"

    .prologue
    .line 160
    const-string v2, "mimeType"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, mimeType:Ljava/lang/String;
    const-string v2, "uri"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-static {p0, v2, v1}, Lcom/htc/opensense/social/UploadDataHelper;->getPhotoMetaDataByUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/htc/socialnetwork/PhotoMetaData;

    move-result-object v0

    .line 163
    .local v0, data:Lcom/htc/socialnetwork/PhotoMetaData;
    if-nez v0, :cond_0

    .line 164
    const/4 v0, 0x0

    .line 167
    .end local v0           #data:Lcom/htc/socialnetwork/PhotoMetaData;
    :goto_0
    return-object v0

    .line 165
    .restart local v0       #data:Lcom/htc/socialnetwork/PhotoMetaData;
    :cond_0
    const-string v2, "title"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/socialnetwork/PhotoMetaData;->title:Ljava/lang/String;

    .line 166
    const-string v2, "description"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/socialnetwork/PhotoMetaData;->description:Ljava/lang/String;

    goto :goto_0
.end method
