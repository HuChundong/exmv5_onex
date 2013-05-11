.class public Lcom/android/camera/io/SaveVideoTask;
.super Lcom/android/camera/io/SaveMediaTask;
.source "SaveVideoTask.java"


# instance fields
.field public volatile duration:J

.field public volatile existentContentUri:Landroid/net/Uri;

.field public volatile filePath:Lcom/android/camera/io/Path;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/io/SaveMediaTask;-><init>(Lcom/android/camera/CameraThread;)V

    return-void
.end method


# virtual methods
.method protected getAvailableFileName()Lcom/android/camera/io/Path;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/io/SaveVideoTask;->filePath:Lcom/android/camera/io/Path;

    return-object v0
.end method

.method protected onInsertIntoMediaStore(Lcom/android/camera/MediaInfo;)Landroid/net/Uri;
    .locals 17

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/camera/io/SaveVideoTask;->takenDateTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    :try_start_0
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/io/SaveVideoTask;->filePath:Lcom/android/camera/io/Path;

    invoke-virtual {v1}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->lastModified()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v13

    :goto_0
    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/camera/io/SaveVideoTask;->takenDateTime:J

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/io/SaveVideoTask;->existentContentUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v2, "onInsertIntoMediaStore() - Update "

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/io/SaveVideoTask;->existentContentUri:Landroid/net/Uri;

    invoke-static {v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/io/SaveMediaTask;->cameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/io/SaveVideoTask;->existentContentUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/io/SaveVideoTask;->filePath:Lcom/android/camera/io/Path;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/io/SaveVideoTask;->fileFormat:Lcom/android/camera/io/FileFormat;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/camera/io/SaveVideoTask;->takenDateTime:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/camera/io/SaveVideoTask;->duration:J

    const-wide/16 v15, 0x3e8

    div-long/2addr v8, v15

    const-wide/16 v15, 0x3e8

    mul-long/2addr v8, v15

    invoke-static/range {v1 .. v9}, Lcom/android/camera/MediaProvider;->updateVideo(Landroid/content/Context;Landroid/net/Uri;Lcom/android/camera/io/Path;Landroid/location/Location;Lcom/android/camera/io/FileFormat;JJ)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/io/SaveVideoTask;->existentContentUri:Landroid/net/Uri;

    :goto_1
    return-object v1

    :catch_0
    move-exception v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v2, "onInsertIntoMediaStore() - Cannot get video file modified time"

    invoke-static {v1, v2, v11}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v13, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v2, "onInsertIntoMediaStore() - Fail to update media store"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/io/SaveMediaTask;->cameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/io/SaveVideoTask;->storageSlot:Lcom/android/camera/io/StorageSlot;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/io/SaveVideoTask;->filePath:Lcom/android/camera/io/Path;

    iget-object v3, v3, Lcom/android/camera/io/Path;->directoryPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/io/SaveVideoTask;->filePath:Lcom/android/camera/io/Path;

    iget-object v4, v4, Lcom/android/camera/io/Path;->fileName:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/io/SaveVideoTask;->fileFormat:Lcom/android/camera/io/FileFormat;

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/camera/io/SaveVideoTask;->takenDateTime:J

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/android/camera/io/SaveVideoTask;->duration:J

    const-wide/16 v15, 0x3e8

    div-long/2addr v9, v15

    const-wide/16 v15, 0x3e8

    mul-long/2addr v9, v15

    invoke-static/range {v1 .. v10}, Lcom/android/camera/MediaProvider;->insertVideo(Landroid/content/Context;Lcom/android/camera/io/StorageSlot;Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;Lcom/android/camera/io/FileFormat;JJ)Landroid/net/Uri;

    move-result-object v1

    goto :goto_1
.end method

.method protected onSaveMediaToFile(Lcom/android/camera/io/Path;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
