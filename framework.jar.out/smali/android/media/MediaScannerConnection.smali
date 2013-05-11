.class public Landroid/media/MediaScannerConnection;
.super Ljava/lang/Object;
.source "MediaScannerConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaScannerConnection$ClientProxy;,
        Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;,
        Landroid/media/MediaScannerConnection$OnScanCompletedListener;
    }
.end annotation


# static fields
.field private static final FILES_PRESCAN_FORMAT_COLUMN_INDEX:I = 0x2

.field private static final FILES_PRESCAN_ID_COLUMN_INDEX:I = 0x0

.field private static final FILES_PRESCAN_PATH_COLUMN_INDEX:I = 0x1

.field private static final FILES_PRESCAN_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "MediaScannerConnection"

.field private static mFinishRequestTime:J

.field private static mFinishScanNote:Ljava/lang/String;

.field private static mimeType_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static path_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mClient:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

.field private mConnected:Z

.field private mContext:Landroid/content/Context;

.field private final mListener:Landroid/media/IMediaScannerListener$Stub;

.field private mService:Landroid/media/IMediaScannerService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    const/4 v0, 0x0

    sput-object v0, Landroid/media/MediaScannerConnection;->mFinishScanNote:Ljava/lang/String;

    .line 67
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/media/MediaScannerConnection;->mFinishRequestTime:J

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/media/MediaScannerConnection;->path_list:Ljava/util/List;

    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/media/MediaScannerConnection;->mimeType_list:Ljava/util/List;

    .line 347
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "format"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MediaScannerConnection;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V
    .locals 1
    .parameter "context"
    .parameter "client"

    .prologue
    .line 123
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/media/MediaScannerConnection$1;

    invoke-direct {v0, p0}, Landroid/media/MediaScannerConnection$1;-><init>(Landroid/media/MediaScannerConnection;)V

    iput-object v0, p0, Landroid/media/MediaScannerConnection;->mListener:Landroid/media/IMediaScannerListener$Stub;

    .line 124
    iput-object p1, p0, Landroid/media/MediaScannerConnection;->mContext:Landroid/content/Context;

    .line 125
    iput-object p2, p0, Landroid/media/MediaScannerConnection;->mClient:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    .line 126
    return-void
.end method

.method static synthetic access$000(Landroid/media/MediaScannerConnection;)Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/media/MediaScannerConnection;->mClient:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    return-object v0
.end method

.method public static finishRequest(Ljava/lang/String;)V
    .locals 3
    .parameter "requestString"

    .prologue
    .line 495
    const-string v0, "MediaScannerConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request to stop scan "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    sput-object p0, Landroid/media/MediaScannerConnection;->mFinishScanNote:Ljava/lang/String;

    .line 497
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Landroid/media/MediaScannerConnection;->mFinishRequestTime:J

    .line 498
    return-void
.end method

.method protected static isNeedFinish(Ljava/lang/String;J)Z
    .locals 2
    .parameter "requestString"
    .parameter "requestTime"

    .prologue
    .line 501
    sget-object v0, Landroid/media/MediaScannerConnection;->mFinishScanNote:Ljava/lang/String;

    if-ne p0, v0, :cond_0

    sget-wide v0, Landroid/media/MediaScannerConnection;->mFinishRequestTime:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static prescan(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 21
    .parameter "context"
    .parameter "paths"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 359
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "media"

    invoke-virtual {v4, v7}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v2

    .line 360
    .local v2, MediaProvider:Landroid/content/IContentProvider;
    const-string v4, "content://media/external/file"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 366
    .local v3, filesUri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    .line 367
    .local v9, builder:Landroid/net/Uri$Builder;
    const-string v4, "deletedata"

    const-string v7, "false"

    invoke-virtual {v9, v4, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 368
    new-instance v11, Landroid/media/MediaScanner$MediaBulkDeleter;

    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v11, v2, v4}, Landroid/media/MediaScanner$MediaBulkDeleter;-><init>(Landroid/content/IContentProvider;Landroid/net/Uri;)V

    .line 370
    .local v11, deleter:Landroid/media/MediaScanner$MediaBulkDeleter;
    if-eqz v2, :cond_5

    .line 371
    const/4 v10, 0x0

    .line 372
    .local v10, c:Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 373
    .local v5, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 376
    .local v6, selectionArgs:[Ljava/lang/String;
    const-string v5, "_data LIKE ?"

    .line 378
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    move-object/from16 v0, p1

    array-length v4, v0

    if-ge v15, v4, :cond_5

    .line 379
    const/4 v10, 0x0

    .line 380
    const/4 v6, 0x0

    .line 381
    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    .end local v6           #selectionArgs:[Ljava/lang/String;
    const/4 v4, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, p1, v15

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 384
    .restart local v6       #selectionArgs:[Ljava/lang/String;
    :try_start_0
    sget-object v4, Landroid/media/MediaScannerConnection;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const-string v7, "_id"

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v10

    .line 386
    :cond_0
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 387
    const/4 v4, 0x0

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 388
    .local v19, rowId:J
    const/4 v4, 0x1

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 389
    .local v18, path:Ljava/lang/String;
    const/4 v4, 0x2

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 394
    .local v14, format:I
    if-eqz v18, :cond_0

    const-string v4, "/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 395
    const/4 v12, 0x0

    .line 397
    .local v12, exists:Z
    :try_start_1
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v7, Llibcore/io/OsConstants;->F_OK:I

    move-object/from16 v0, v18

    invoke-interface {v4, v0, v7}, Llibcore/io/Os;->access(Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Llibcore/io/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v12

    .line 401
    :goto_2
    if-nez v12, :cond_0

    :try_start_2
    invoke-static {v14}, Landroid/mtp/MtpConstants;->isAbstractObject(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 406
    invoke-static/range {v18 .. v18}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v16

    .line 407
    .local v16, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-nez v16, :cond_2

    const/4 v13, 0x0

    .line 409
    .local v13, fileType:I
    :goto_3
    invoke-static {v13}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 410
    move-wide/from16 v0, v19

    invoke-virtual {v11, v0, v1}, Landroid/media/MediaScanner$MediaBulkDeleter;->delete(J)V

    .line 411
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "/.nomedia"

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 412
    invoke-virtual {v11}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    .line 413
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v17

    .line 414
    .local v17, parent:Ljava/lang/String;
    const-string/jumbo v4, "unhide"

    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-interface {v2, v4, v0, v7}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 421
    .end local v12           #exists:Z
    .end local v13           #fileType:I
    .end local v14           #format:I
    .end local v16           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    .end local v17           #parent:Ljava/lang/String;
    .end local v18           #path:Ljava/lang/String;
    .end local v19           #rowId:J
    :catchall_0
    move-exception v4

    if-eqz v10, :cond_1

    .line 422
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 424
    :cond_1
    invoke-virtual {v11}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    .line 421
    throw v4

    .line 407
    .restart local v12       #exists:Z
    .restart local v14       #format:I
    .restart local v16       #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    .restart local v18       #path:Ljava/lang/String;
    .restart local v19       #rowId:J
    :cond_2
    :try_start_3
    move-object/from16 v0, v16

    iget v13, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 421
    .end local v12           #exists:Z
    .end local v14           #format:I
    .end local v16           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    .end local v18           #path:Ljava/lang/String;
    .end local v19           #rowId:J
    :cond_3
    if-eqz v10, :cond_4

    .line 422
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 424
    :cond_4
    invoke-virtual {v11}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    .line 378
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 429
    .end local v5           #where:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v10           #c:Landroid/database/Cursor;
    .end local v15           #i:I
    :cond_5
    return-void

    .line 398
    .restart local v5       #where:Ljava/lang/String;
    .restart local v6       #selectionArgs:[Ljava/lang/String;
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v12       #exists:Z
    .restart local v14       #format:I
    .restart local v15       #i:I
    .restart local v18       #path:Ljava/lang/String;
    .restart local v19       #rowId:J
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method private static processDirectory([Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 12
    .parameter "paths"
    .parameter "mimeTypes"
    .parameter "level"

    .prologue
    .line 297
    const/4 v5, 0x0

    .local v5, j:I
    :goto_0
    array-length v9, p0

    if-ge v5, v9, :cond_8

    .line 298
    new-instance v1, Ljava/io/File;

    aget-object v9, p0, v5

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 302
    .local v1, file:Ljava/io/File;
    if-nez v1, :cond_1

    .line 297
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 305
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 306
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, filelist:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 308
    .local v6, mimeType:Ljava/lang/String;
    aget-object v9, p0, v5

    invoke-static {v9}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v7

    .line 310
    .local v7, noMedia:Z
    if-eqz v7, :cond_2

    .line 311
    const-string/jumbo v6, "no-media"

    .line 313
    :cond_2
    if-eqz v2, :cond_0

    .line 316
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    array-length v9, v2

    if-ge v4, v9, :cond_0

    .line 317
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, p0, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v2, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 318
    .local v3, filepath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 320
    .local v0, deepfile:Ljava/io/File;
    if-gtz p2, :cond_3

    const/4 v9, -0x1

    if-ne p2, v9, :cond_4

    .line 321
    :cond_3
    const/4 v9, -0x1

    if-ne p2, v9, :cond_5

    .line 322
    move v8, p2

    .line 326
    .local v8, tempLevel:I
    :goto_3
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_6

    .line 327
    sget-object v9, Landroid/media/MediaScannerConnection;->path_list:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    sget-object v9, Landroid/media/MediaScannerConnection;->mimeType_list:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    .end local v8           #tempLevel:I
    :cond_4
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 324
    :cond_5
    add-int/lit8 v8, p2, -0x1

    .restart local v8       #tempLevel:I
    goto :goto_3

    .line 330
    :cond_6
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 331
    sget-object v9, Landroid/media/MediaScannerConnection;->path_list:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    sget-object v9, Landroid/media/MediaScannerConnection;->mimeType_list:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    invoke-static {v9, v10, v8}, Landroid/media/MediaScannerConnection;->processDirectory([Ljava/lang/String;[Ljava/lang/String;I)V

    goto :goto_4

    .line 339
    .end local v0           #deepfile:Ljava/io/File;
    .end local v2           #filelist:[Ljava/lang/String;
    .end local v3           #filepath:Ljava/lang/String;
    .end local v4           #i:I
    .end local v6           #mimeType:Ljava/lang/String;
    .end local v7           #noMedia:Z
    .end local v8           #tempLevel:I
    :cond_7
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_0

    .line 340
    const-string v9, "MediaScannerConnection"

    const-string v10, "Not Directory"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 344
    .end local v1           #file:Ljava/io/File;
    :cond_8
    return-void
.end method

.method public static scanDirectory(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    .locals 6
    .parameter "context"
    .parameter "paths"
    .parameter "mimeTypes"
    .parameter "callback"

    .prologue
    .line 435
    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Landroid/media/MediaScannerConnection;->scanDirectory(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;ILjava/lang/String;)V

    .line 436
    return-void
.end method

.method public static scanDirectory(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;ILjava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "paths"
    .parameter "mimeTypes"
    .parameter "callback"
    .parameter "level"
    .parameter "notifyString"

    .prologue
    .line 441
    const-string v3, "MediaScannerConnection"

    const-string v4, " ===== scanDirectory ====="

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    if-nez p1, :cond_0

    .line 465
    :goto_0
    return-void

    .line 445
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Landroid/media/MediaScannerConnection;->prescan(Landroid/content/Context;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :goto_1
    sget-object v3, Landroid/media/MediaScannerConnection;->path_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 451
    sget-object v3, Landroid/media/MediaScannerConnection;->mimeType_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 453
    invoke-static {p1, p2, p4}, Landroid/media/MediaScannerConnection;->processDirectory([Ljava/lang/String;[Ljava/lang/String;I)V

    .line 455
    sget-object v3, Landroid/media/MediaScannerConnection;->path_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 456
    .local v2, m_paths:[Ljava/lang/String;
    sget-object v3, Landroid/media/MediaScannerConnection;->mimeType_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v1, v3, [Ljava/lang/String;

    .line 458
    .local v1, m_mimeTypes:[Ljava/lang/String;
    sget-object v3, Landroid/media/MediaScannerConnection;->path_list:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 459
    sget-object v3, Landroid/media/MediaScannerConnection;->mimeType_list:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 461
    invoke-static {p0, v2, v1, p3, p5}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;Ljava/lang/String;)V

    .line 463
    sget-object v3, Landroid/media/MediaScannerConnection;->path_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 464
    sget-object v3, Landroid/media/MediaScannerConnection;->mimeType_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 446
    .end local v1           #m_mimeTypes:[Ljava/lang/String;
    .end local v2           #m_paths:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 447
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MediaScannerConnection"

    const-string v4, "RemoteException in MediaScannerConnection.scanDirectory()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    .locals 2
    .parameter "context"
    .parameter "paths"
    .parameter "mimeTypes"
    .parameter "callback"

    .prologue
    .line 278
    const-string v0, "MediaScannerConnection"

    const-string v1, " ===== scanFile ====="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public static scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "paths"
    .parameter "mimeTypes"
    .parameter "callback"
    .parameter "notifyString"

    .prologue
    .line 284
    new-instance v0, Landroid/media/MediaScannerConnection$ClientProxy;

    invoke-direct {v0, p1, p2, p3}, Landroid/media/MediaScannerConnection$ClientProxy;-><init>([Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 285
    .local v0, client:Landroid/media/MediaScannerConnection$ClientProxy;
    if-eqz p4, :cond_0

    .line 286
    invoke-virtual {v0, p4}, Landroid/media/MediaScannerConnection$ClientProxy;->onSetFinishString(Ljava/lang/String;)V

    .line 288
    :cond_0
    new-instance v1, Landroid/media/MediaScannerConnection;

    invoke-direct {v1, p0, v0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    .line 289
    .local v1, connection:Landroid/media/MediaScannerConnection;
    iput-object v1, v0, Landroid/media/MediaScannerConnection$ClientProxy;->mConnection:Landroid/media/MediaScannerConnection;

    .line 290
    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->connect()V

    .line 291
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 3

    .prologue
    .line 134
    monitor-enter p0

    .line 135
    :try_start_0
    iget-boolean v1, p0, Landroid/media/MediaScannerConnection;->mConnected:Z

    if-nez v1, :cond_0

    .line 136
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/media/IMediaScannerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/media/MediaScannerConnection;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 138
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/MediaScannerConnection;->mConnected:Z

    .line 140
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    monitor-exit p0

    .line 141
    return-void

    .line 140
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 147
    monitor-enter p0

    .line 148
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaScannerConnection;->mConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 153
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaScannerConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 159
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Landroid/media/MediaScannerConnection;->mConnected:Z

    .line 161
    :cond_0
    monitor-exit p0

    .line 162
    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 154
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized isConnected()Z
    .locals 1

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaScannerConnection;->mService:Landroid/media/IMediaScannerService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/media/MediaScannerConnection;->mConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "className"
    .parameter "service"

    .prologue
    .line 474
    monitor-enter p0

    .line 475
    :try_start_0
    invoke-static {p2}, Landroid/media/IMediaScannerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaScannerService;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScannerConnection;->mService:Landroid/media/IMediaScannerService;

    .line 476
    iget-object v0, p0, Landroid/media/MediaScannerConnection;->mService:Landroid/media/IMediaScannerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaScannerConnection;->mClient:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Landroid/media/MediaScannerConnection;->mClient:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    invoke-interface {v0}, Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;->onMediaScannerConnected()V

    .line 479
    :cond_0
    monitor-exit p0

    .line 480
    return-void

    .line 479
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "className"

    .prologue
    .line 489
    monitor-enter p0

    .line 490
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/media/MediaScannerConnection;->mService:Landroid/media/IMediaScannerService;

    .line 491
    monitor-exit p0

    .line 492
    return-void

    .line 491
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public scanFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "path"
    .parameter "mimeType"

    .prologue
    .line 182
    monitor-enter p0

    .line 183
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaScannerConnection;->mService:Landroid/media/IMediaScannerService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/media/MediaScannerConnection;->mConnected:Z

    if-nez v0, :cond_1

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not connected to MediaScannerService"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 191
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaScannerConnection;->mService:Landroid/media/IMediaScannerService;

    iget-object v1, p0, Landroid/media/MediaScannerConnection;->mListener:Landroid/media/IMediaScannerListener$Stub;

    invoke-interface {v0, p1, p2, v1}, Landroid/media/IMediaScannerService;->requestScanFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/IMediaScannerListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 197
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 198
    return-void

    .line 192
    :catch_0
    move-exception v0

    goto :goto_0
.end method
