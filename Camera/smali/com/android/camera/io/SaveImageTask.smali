.class public Lcom/android/camera/io/SaveImageTask;
.super Lcom/android/camera/io/SaveMediaTask;
.source "SaveImageTask.java"


# static fields
.field private static m_TotalJpegRawDataSize:J


# instance fields
.field public volatile bitmap:Landroid/graphics/Bitmap;

.field public volatile imageHeight:I

.field public volatile imageWidth:I

.field private m_ImageUtil:Lcom/android/camera/io/ImageUtil;

.field private m_JpegRawData:[B

.field private m_JpegRawDataSize:I

.field private m_NativeJpegRawData:J


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/android/camera/io/SaveMediaTask;-><init>(Lcom/android/camera/CameraThread;)V

    iput v0, p0, Lcom/android/camera/io/SaveImageTask;->imageHeight:I

    iput v0, p0, Lcom/android/camera/io/SaveImageTask;->imageWidth:I

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CaptureHandle;[B)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/io/SaveImageTask;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-virtual {p0, p3}, Lcom/android/camera/io/SaveImageTask;->setJpegRawData([B)Z

    iput-object p2, p0, Lcom/android/camera/io/SaveImageTask;->captureHandle:Lcom/android/camera/CaptureHandle;

    new-instance v0, Lcom/android/camera/io/ImageUtil;

    invoke-direct {v0, p1}, Lcom/android/camera/io/ImageUtil;-><init>(Lcom/android/camera/CameraThread;)V

    iput-object v0, p0, Lcom/android/camera/io/SaveImageTask;->m_ImageUtil:Lcom/android/camera/io/ImageUtil;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraThread;[B)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/io/SaveImageTask;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-virtual {p0, p2}, Lcom/android/camera/io/SaveImageTask;->setJpegRawData([B)Z

    new-instance v0, Lcom/android/camera/io/ImageUtil;

    invoke-direct {v0, p1}, Lcom/android/camera/io/ImageUtil;-><init>(Lcom/android/camera/CameraThread;)V

    iput-object v0, p0, Lcom/android/camera/io/SaveImageTask;->m_ImageUtil:Lcom/android/camera/io/ImageUtil;

    return-void
.end method

.method private checkSavedFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "."

    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    return-object p2
.end method

.method public static declared-synchronized getTotalJpegRawDataSize()J
    .locals 3

    const-class v0, Lcom/android/camera/io/SaveImageTask;

    monitor-enter v0

    :try_start_0
    sget-wide v1, Lcom/android/camera/io/SaveImageTask;->m_TotalJpegRawDataSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized updateTotalJpegRawDataSize(J)J
    .locals 4

    const-class v1, Lcom/android/camera/io/SaveImageTask;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lcom/android/camera/io/SaveImageTask;->m_TotalJpegRawDataSize:J

    add-long/2addr v2, p0

    sput-wide v2, Lcom/android/camera/io/SaveImageTask;->m_TotalJpegRawDataSize:J

    sget-wide v2, Lcom/android/camera/io/SaveImageTask;->m_TotalJpegRawDataSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final clearJpegRawData()V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-static {}, Lcom/android/camera/FeatureConfig;->useNativeJpegRawDataBuffer()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/io/SaveImageTask;->m_JpegRawData:[B

    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/camera/io/SaveImageTask;->m_JpegRawDataSize:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/camera/io/SaveImageTask;->m_JpegRawDataSize:I

    neg-int v0, v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/android/camera/io/SaveImageTask;->updateTotalJpegRawDataSize(J)J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/io/SaveImageTask;->m_JpegRawDataSize:I

    :cond_1
    return-void

    :cond_2
    iget-wide v0, p0, Lcom/android/camera/io/SaveImageTask;->m_NativeJpegRawData:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/camera/io/SaveImageTask;->m_NativeJpegRawData:J

    invoke-static {v0, v1}, Lcom/android/camera/io/NativeBuffer;->remove(J)V

    iput-wide v2, p0, Lcom/android/camera/io/SaveImageTask;->m_NativeJpegRawData:J

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/io/SaveImageTask;->clearJpegRawData()V

    return-void
.end method

.method protected getAvailableFileName()Lcom/android/camera/io/Path;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/android/camera/io/SaveMediaTask;->cameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v6

    if-nez v6, :cond_0

    iget-object v0, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v2, "getAvailableFileName() - No camera activity"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v9

    :cond_0
    iget-object v0, p0, Lcom/android/camera/io/SaveImageTask;->storageSlot:Lcom/android/camera/io/StorageSlot;

    invoke-static {v0}, Lcom/android/camera/io/DCFUtility;->getDcimPath(Lcom/android/camera/io/StorageSlot;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/android/camera/Reference;

    invoke-direct {v4}, Lcom/android/camera/Reference;-><init>()V

    new-instance v5, Lcom/android/camera/Reference;

    invoke-direct {v5}, Lcom/android/camera/Reference;-><init>()V

    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/io/SaveImageTask;->dcfInfo:Lcom/android/camera/io/DCFInfo;

    iget-object v3, p0, Lcom/android/camera/io/SaveImageTask;->fileFormat:Lcom/android/camera/io/FileFormat;

    invoke-static/range {v0 .. v5}, Lcom/android/camera/io/DCFUtility;->findNextDirAndFileCounters(Lcom/android/camera/Settings;Ljava/lang/String;Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileFormat;Lcom/android/camera/Reference;Lcom/android/camera/Reference;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v2, "getAvailableFileName() - Cannot get directory or file counter"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/camera/io/SaveImageTask;->dcfInfo:Lcom/android/camera/io/DCFInfo;

    new-instance v3, Lcom/android/camera/io/FileCounter;

    iget-object v0, v4, Lcom/android/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v3, v0}, Lcom/android/camera/io/FileCounter;-><init>(I)V

    invoke-static {v2, v3}, Lcom/android/camera/io/DCFUtility;->getDirectoryName(Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileCounter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v2, p0, Lcom/android/camera/io/SaveImageTask;->dcfInfo:Lcom/android/camera/io/DCFInfo;

    new-instance v3, Lcom/android/camera/io/FileCounter;

    iget-object v0, v5, Lcom/android/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v3, v0}, Lcom/android/camera/io/FileCounter;-><init>(I)V

    iget-object v0, p0, Lcom/android/camera/io/SaveImageTask;->fileFormat:Lcom/android/camera/io/FileFormat;

    invoke-static {v2, v3, v0}, Lcom/android/camera/io/DCFUtility;->getFileName(Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileFormat;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/android/camera/io/DCFPath;

    new-instance v2, Lcom/android/camera/io/FileCounter;

    iget-object v0, v4, Lcom/android/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v2, v0}, Lcom/android/camera/io/FileCounter;-><init>(I)V

    new-instance v3, Lcom/android/camera/io/FileCounter;

    iget-object v0, v5, Lcom/android/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v3, v0}, Lcom/android/camera/io/FileCounter;-><init>(I)V

    invoke-direct {v9, v7, v8, v2, v3}, Lcom/android/camera/io/DCFPath;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileCounter;)V

    iget-object v0, p0, Lcom/android/camera/io/SaveImageTask;->fileFormat:Lcom/android/camera/io/FileFormat;

    iget-object v0, v0, Lcom/android/camera/io/FileFormat;->fileNameExtension:Ljava/lang/String;

    invoke-direct {p0, v7, v8, v0}, Lcom/android/camera/io/SaveImageTask;->checkSavedFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, v9, Lcom/android/camera/io/Path;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v10, Lcom/android/camera/io/DCFPath;

    iget-object v0, v9, Lcom/android/camera/io/Path;->directoryPath:Ljava/lang/String;

    iget-object v2, v9, Lcom/android/camera/io/DCFPath;->directoryNumber:Lcom/android/camera/io/FileCounter;

    iget-object v3, v9, Lcom/android/camera/io/DCFPath;->fileNumber:Lcom/android/camera/io/FileCounter;

    invoke-direct {v10, v0, v8, v2, v3}, Lcom/android/camera/io/DCFPath;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileCounter;)V

    move-object v9, v10

    :cond_2
    iget-object v0, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FOLDER = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v9, Lcom/android/camera/io/Path;->directoryPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", NAME = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v9, Lcom/android/camera/io/Path;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final getJpegRawData(Z)[B
    .locals 7

    const-wide/16 v5, 0x0

    iget-object v1, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getJpegRawData("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") - native buffer : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/camera/io/SaveImageTask;->m_NativeJpegRawData:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/camera/FeatureConfig;->useNativeJpegRawDataBuffer()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/io/SaveImageTask;->m_JpegRawData:[B

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/io/SaveImageTask;->m_JpegRawData:[B

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    iget v1, p0, Lcom/android/camera/io/SaveImageTask;->m_JpegRawDataSize:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/android/camera/io/SaveImageTask;->m_JpegRawDataSize:I

    neg-int v1, v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/android/camera/io/SaveImageTask;->updateTotalJpegRawDataSize(J)J

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/io/SaveImageTask;->m_JpegRawDataSize:I

    :cond_1
    return-object v0

    :cond_2
    iget-wide v1, p0, Lcom/android/camera/io/SaveImageTask;->m_NativeJpegRawData:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/android/camera/io/SaveImageTask;->m_NativeJpegRawData:J

    invoke-static {v1, v2, p1}, Lcom/android/camera/io/NativeBuffer;->get(JZ)[B

    move-result-object v0

    if-eqz p1, :cond_3

    iput-wide v5, p0, Lcom/android/camera/io/SaveImageTask;->m_NativeJpegRawData:J

    :cond_3
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v2, "Cannot get JPEG raw data from native buffer"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final getJpegRawDataSize()I
    .locals 1

    iget v0, p0, Lcom/android/camera/io/SaveImageTask;->m_JpegRawDataSize:I

    return v0
.end method

.method public final hasJpegRawData()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/camera/FeatureConfig;->useNativeJpegRawDataBuffer()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/io/SaveImageTask;->m_JpegRawData:[B

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lcom/android/camera/io/SaveImageTask;->m_NativeJpegRawData:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected onInsertIntoMediaStore(Lcom/android/camera/MediaInfo;)Landroid/net/Uri;
    .locals 11

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/io/SaveMediaTask;->cameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v3, "onInsertIntoMediaStore() - No camera activity"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    iget-object v10, p1, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    if-nez v10, :cond_1

    iget-object v2, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v3, "onInsertIntoMediaStore() - No file path"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/io/SaveImageTask;->storageSlot:Lcom/android/camera/io/StorageSlot;

    iget-object v2, v10, Lcom/android/camera/io/Path;->directoryPath:Ljava/lang/String;

    iget-object v3, v10, Lcom/android/camera/io/Path;->fileName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/io/SaveImageTask;->gpsLocation:Landroid/location/Location;

    iget-wide v5, p0, Lcom/android/camera/io/SaveImageTask;->takenDateTime:J

    const/4 v7, 0x0

    invoke-virtual {p0, v10}, Lcom/android/camera/io/SaveImageTask;->prepareMediaStoreValues(Lcom/android/camera/io/Path;)Landroid/content/ContentValues;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/io/SaveImageTask;->fileFormat:Lcom/android/camera/io/FileFormat;

    invoke-static/range {v0 .. v9}, Lcom/android/camera/MediaProvider;->insertImage(Landroid/content/Context;Lcom/android/camera/io/StorageSlot;Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;JILandroid/content/ContentValues;Lcom/android/camera/io/FileFormat;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method protected onSaveMediaToFile(Lcom/android/camera/io/Path;)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0}, Lcom/android/camera/io/SaveImageTask;->hasJpegRawData()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/camera/io/SaveImageTask;->getJpegRawData(Z)[B

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/io/SaveImageTask;->m_ImageUtil:Lcom/android/camera/io/ImageUtil;

    check-cast v3, Ljava/io/OutputStream;

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/io/ImageUtil;->createOverloadImage([BLjava/io/OutputStream;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    invoke-static {v3}, Lcom/android/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    move-object v2, v3

    :goto_1
    return v4

    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v6, "Cannot get JPEG raw data from native buffer"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v3

    :goto_2
    :try_start_3
    iget-object v4, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v5, "Exception occurred while saving image to file"

    invoke-static {v4, v5, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/android/camera/io/SaveImageTask;->clearJpegRawData()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v4, 0x0

    invoke-static {v2}, Lcom/android/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    :cond_2
    :try_start_4
    iget-object v5, p0, Lcom/android/camera/io/SaveImageTask;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/camera/io/SaveImageTask;->bitmap:Landroid/graphics/Bitmap;

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v5, v6, v7, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v4

    move-object v2, v3

    :goto_3
    invoke-static {v2}, Lcom/android/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    throw v4

    :cond_3
    :try_start_5
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "No image to save"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :catchall_1
    move-exception v4

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method protected prepareMediaStoreValues(Lcom/android/camera/io/Path;)Landroid/content/ContentValues;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final setJpegRawData([B)Z
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/camera/FeatureConfig;->useNativeJpegRawDataBuffer()Z

    move-result v1

    if-nez v1, :cond_2

    iput-object p1, p0, Lcom/android/camera/io/SaveImageTask;->m_JpegRawData:[B

    if-eqz p1, :cond_0

    array-length v0, p1

    :cond_0
    iput v0, p0, Lcom/android/camera/io/SaveImageTask;->m_JpegRawDataSize:I

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/camera/io/SaveImageTask;->m_JpegRawDataSize:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/android/camera/io/SaveImageTask;->updateTotalJpegRawDataSize(J)J

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    iget-wide v1, p0, Lcom/android/camera/io/SaveImageTask;->m_NativeJpegRawData:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/io/SaveImageTask;->clearJpegRawData()V

    :cond_3
    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    invoke-static {p1}, Lcom/android/camera/io/NativeBuffer;->add([B)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/io/SaveImageTask;->m_NativeJpegRawData:J

    iget-wide v1, p0, Lcom/android/camera/io/SaveImageTask;->m_NativeJpegRawData:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v2, "Cannot save JPEG raw data to native buffer"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setJpegRawData() - native buffer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/camera/io/SaveImageTask;->m_NativeJpegRawData:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    array-length v0, p1

    iput v0, p0, Lcom/android/camera/io/SaveImageTask;->m_JpegRawDataSize:I

    goto :goto_0
.end method
