.class public abstract Lcom/android/camera/io/SaveMediaTask;
.super Ljava/lang/Object;
.source "SaveMediaTask.java"


# instance fields
.field protected final TAG:Ljava/lang/String;

.field public final cameraActivity:Lcom/android/camera/HTCCamera;

.field public final cameraThread:Lcom/android/camera/CameraThread;

.field public volatile captureHandle:Lcom/android/camera/CaptureHandle;

.field public volatile dcfInfo:Lcom/android/camera/io/DCFInfo;

.field public volatile fileFormat:Lcom/android/camera/io/FileFormat;

.field public volatile gpsLocation:Landroid/location/Location;

.field public volatile isLastMedia:Z

.field private final m_SavedMediaInfo:Lcom/android/camera/MediaInfo;

.field public volatile postCounter:I

.field public volatile storageSlot:Lcom/android/camera/io/StorageSlot;

.field public volatile takenDateTime:J


# direct methods
.method protected constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/io/SaveMediaTask;->isLastMedia:Z

    new-instance v0, Lcom/android/camera/MediaInfo;

    invoke-direct {v0}, Lcom/android/camera/MediaInfo;-><init>()V

    iput-object v0, p0, Lcom/android/camera/io/SaveMediaTask;->m_SavedMediaInfo:Lcom/android/camera/MediaInfo;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/camera/io/SaveMediaTask;->cameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {p1}, Lcom/android/camera/CameraThread;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/io/SaveMediaTask;->cameraActivity:Lcom/android/camera/HTCCamera;

    return-void
.end method

.method private updateFileCounter(Lcom/android/camera/HTCCamera;Ljava/lang/String;I)V
    .locals 4

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFileCounter() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract getAvailableFileName()Lcom/android/camera/io/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final getSavedMediaInfo()Lcom/android/camera/MediaInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/io/SaveMediaTask;->m_SavedMediaInfo:Lcom/android/camera/MediaInfo;

    return-object v0
.end method

.method public insertIntoMediaStore()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v5, "insertIntoMediaStore() - Start"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v4, p0, Lcom/android/camera/io/SaveMediaTask;->m_SavedMediaInfo:Lcom/android/camera/MediaInfo;

    invoke-virtual {p0, v4}, Lcom/android/camera/io/SaveMediaTask;->onInsertIntoMediaStore(Lcom/android/camera/MediaInfo;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v4, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v5, "insertIntoMediaStore() - No content URI"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/io/SaveMediaTask;->m_SavedMediaInfo:Lcom/android/camera/MediaInfo;

    invoke-virtual {v5}, Lcom/android/camera/MediaInfo;->getFullPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    iget-object v4, p0, Lcom/android/camera/io/SaveMediaTask;->m_SavedMediaInfo:Lcom/android/camera/MediaInfo;

    iput-object v0, v4, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/camera/io/SaveMediaTask;->m_SavedMediaInfo:Lcom/android/camera/MediaInfo;

    invoke-virtual {p0, v4, v5}, Lcom/android/camera/io/SaveMediaTask;->onMediaStoreDataInserted(ZLcom/android/camera/MediaInfo;)V

    iget-object v4, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v5, "insertIntoMediaStore() - End"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v2

    :cond_0
    iget-object v4, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v5, "insertIntoMediaStore() - Content URI : "

    invoke-static {v4, v5, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v4, "insertIntoMediaStore() - Exception occurred while inserting data into media store"

    invoke-static {v2, v4, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/android/camera/io/SaveMediaTask;->m_SavedMediaInfo:Lcom/android/camera/MediaInfo;

    invoke-virtual {p0, v3, v2}, Lcom/android/camera/io/SaveMediaTask;->onMediaStoreDataInserted(ZLcom/android/camera/MediaInfo;)V

    move v2, v3

    goto :goto_1
.end method

.method protected abstract onInsertIntoMediaStore(Lcom/android/camera/MediaInfo;)Landroid/net/Uri;
.end method

.method protected onMediaSaveFailed(Lcom/android/camera/io/Path;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method protected onMediaSaved(Lcom/android/camera/io/Path;)V
    .locals 0

    return-void
.end method

.method protected onMediaStoreDataInserted(ZLcom/android/camera/MediaInfo;)V
    .locals 0

    return-void
.end method

.method protected abstract onSaveMediaToFile(Lcom/android/camera/io/Path;)Z
.end method

.method public saveMedia()Z
    .locals 11

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v10, "saveMedia() - Start"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v9, p0, Lcom/android/camera/io/SaveMediaTask;->cameraActivity:Lcom/android/camera/HTCCamera;

    if-nez v9, :cond_0

    iget-object v7, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v8, "saveMedia() - No camera activity"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/android/camera/io/SaveMediaTask;->onMediaSaveFailed(Lcom/android/camera/io/Path;Ljava/lang/Throwable;)V

    :goto_0
    return v6

    :cond_0
    iget-object v9, p0, Lcom/android/camera/io/SaveMediaTask;->cameraThread:Lcom/android/camera/CameraThread;

    iget-object v9, v9, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v9}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-eq v9, v10, :cond_1

    iget-object v7, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v8, "saveMedia() - Storage not ready"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/android/camera/io/SaveMediaTask;->onMediaSaveFailed(Lcom/android/camera/io/Path;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    iget-object v7, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v8, "saveMedia() - Exception occurred while saving media"

    invoke-static {v7, v8, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v7, p0, Lcom/android/camera/io/SaveMediaTask;->m_SavedMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v7, v7, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    invoke-virtual {p0, v7, v3}, Lcom/android/camera/io/SaveMediaTask;->onMediaSaveFailed(Lcom/android/camera/io/Path;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/camera/io/SaveMediaTask;->getAvailableFileName()Lcom/android/camera/io/Path;

    move-result-object v5

    if-nez v5, :cond_2

    iget-object v7, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v8, "saveMedia() - Cannot get available file path"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/android/camera/io/SaveMediaTask;->onMediaSaveFailed(Lcom/android/camera/io/Path;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    iget-object v4, v5, Lcom/android/camera/io/Path;->fileName:Ljava/lang/String;

    iget-object v2, v5, Lcom/android/camera/io/Path;->directoryPath:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/camera/io/SaveMediaTask;->m_SavedMediaInfo:Lcom/android/camera/MediaInfo;

    iput-object v5, v9, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    iget-object v9, p0, Lcom/android/camera/io/SaveMediaTask;->m_SavedMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v10, p0, Lcom/android/camera/io/SaveMediaTask;->fileFormat:Lcom/android/camera/io/FileFormat;

    if-eqz v10, :cond_3

    iget-object v8, p0, Lcom/android/camera/io/SaveMediaTask;->fileFormat:Lcom/android/camera/io/FileFormat;

    iget-object v8, v8, Lcom/android/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    :cond_3
    iput-object v8, v9, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "saveMedia() - Directory name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", file name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v9, "saveMedia() - onSaveMediaToFile() - Start"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/camera/io/SaveMediaTask;->onSaveMediaToFile(Lcom/android/camera/io/Path;)Z

    iget-object v8, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v9, "saveMedia() - onSaveMediaToFile() - End"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v8, v5, Lcom/android/camera/io/DCFPath;

    if-eqz v8, :cond_5

    move-object v0, v5

    check-cast v0, Lcom/android/camera/io/DCFPath;

    move-object v1, v0

    iget-object v8, v1, Lcom/android/camera/io/DCFPath;->fileNumber:Lcom/android/camera/io/FileCounter;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/camera/io/SaveMediaTask;->cameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v9, p0, Lcom/android/camera/io/SaveMediaTask;->dcfInfo:Lcom/android/camera/io/DCFInfo;

    iget-object v9, v9, Lcom/android/camera/io/DCFInfo;->fileCounterPrefKey:Ljava/lang/String;

    iget-object v10, v1, Lcom/android/camera/io/DCFPath;->fileNumber:Lcom/android/camera/io/FileCounter;

    iget v10, v10, Lcom/android/camera/io/FileCounter;->mainCounter:I

    invoke-direct {p0, v8, v9, v10}, Lcom/android/camera/io/SaveMediaTask;->updateFileCounter(Lcom/android/camera/HTCCamera;Ljava/lang/String;I)V

    :cond_4
    iget-object v8, v1, Lcom/android/camera/io/DCFPath;->directoryNumber:Lcom/android/camera/io/FileCounter;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/camera/io/SaveMediaTask;->cameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v9, p0, Lcom/android/camera/io/SaveMediaTask;->dcfInfo:Lcom/android/camera/io/DCFInfo;

    iget-object v9, v9, Lcom/android/camera/io/DCFInfo;->dirCounterPrefKey:Ljava/lang/String;

    iget-object v10, v1, Lcom/android/camera/io/DCFPath;->directoryNumber:Lcom/android/camera/io/FileCounter;

    iget v10, v10, Lcom/android/camera/io/FileCounter;->mainCounter:I

    invoke-direct {p0, v8, v9, v10}, Lcom/android/camera/io/SaveMediaTask;->updateFileCounter(Lcom/android/camera/HTCCamera;Ljava/lang/String;I)V

    :cond_5
    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/android/camera/io/FileUtility;->updateCachedFileCount(Ljava/lang/String;I)V

    invoke-virtual {p0, v5}, Lcom/android/camera/io/SaveMediaTask;->onMediaSaved(Lcom/android/camera/io/Path;)V

    iget-object v8, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v9, "saveMedia() - End"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v6, v7

    goto/16 :goto_0
.end method
