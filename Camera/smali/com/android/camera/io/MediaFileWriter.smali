.class final Lcom/android/camera/io/MediaFileWriter;
.super Lcom/android/camera/io/IMediaFileWriter;
.source "MediaFileWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/io/MediaFileWriter$SaveHandle;
    }
.end annotation


# static fields
.field private static final MEDIA_QUEUE_SIZE_MB:J = 0x20L

.field private static final MSG_EXECUTE_TASK:I = 0x2711

.field private static final MSG_MEDIA_FILE_SAVED:I = 0x2712

.field private static final MSG_MEDIA_SAVED:I = 0x2713

.field private static final MSG_MEDIA_SAVE_FAILED:I = 0x2714

.field static final NAME:Ljava/lang/String; = "Media File Writer"


# instance fields
.field private final m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/camera/io/MediaFileWriter$SaveHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaStoreUpdateSuspendHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_SaveTaskQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/camera/io/MediaFileWriter$SaveHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "Media File Writer"

    invoke-direct {p0, v0, v1, p1, v1}, Lcom/android/camera/io/IMediaFileWriter;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;Z)V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/camera/io/MediaFileWriter;->m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/io/MediaFileWriter;->m_MediaStoreUpdateSuspendHandles:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/camera/io/MediaFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/io/MediaFileWriter;Lcom/android/camera/io/StorageSlot;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/io/MediaFileWriter;->prepare(Lcom/android/camera/io/StorageSlot;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/io/MediaFileWriter;Lcom/android/camera/io/StorageSlot;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/io/MediaFileWriter;->prepareInternal(Lcom/android/camera/io/StorageSlot;)V

    return-void
.end method

.method private insertOneMediaIntoMediaStore()V
    .locals 9

    const/16 v8, 0x2714

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "insertOneMediaIntoMediaStore() - Start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/io/MediaFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/io/MediaFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "insertOneMediaIntoMediaStore() - Save media file first"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2711

    invoke-virtual {p0, v0}, Lcom/android/camera/io/MediaFileWriter;->sendAsyncMessage(I)Z

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/android/camera/io/MediaFileWriter;->m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/camera/io/MediaFileWriter;->m_MediaStoreUpdateSuspendHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "insertOneMediaIntoMediaStore() - Media store update is suspended"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/android/camera/io/MediaFileWriter;->m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/io/MediaFileWriter$SaveHandle;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v5, :cond_2

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "insertOneMediaIntoMediaStore() - No media to insert"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "insertOneMediaIntoMediaStore() - Handle : "

    invoke-static {v0, v1, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :try_start_4
    iget-object v0, v5, Lcom/android/camera/io/MediaFileWriter$SaveHandle;->saveMediaTask:Lcom/android/camera/io/SaveMediaTask;

    invoke-virtual {v0}, Lcom/android/camera/io/SaveMediaTask;->insertIntoMediaStore()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v2, 0x2713

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/io/MediaFileWriter;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "insertOneMediaIntoMediaStore() - End"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_5
    sget-object v0, Lcom/android/camera/io/MediaSaveFailedReason;->Unknown:Lcom/android/camera/io/MediaSaveFailedReason;

    iput-object v0, v5, Lcom/android/camera/io/MediaFileWriter$SaveHandle;->failedReason:Lcom/android/camera/io/MediaSaveFailedReason;

    const/16 v2, 0x2714

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/io/MediaFileWriter;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    sget-object v0, Lcom/android/camera/io/MediaSaveFailedReason;->Unknown:Lcom/android/camera/io/MediaSaveFailedReason;

    iput-object v0, v5, Lcom/android/camera/io/MediaFileWriter$SaveHandle;->failedReason:Lcom/android/camera/io/MediaSaveFailedReason;

    move-object v0, p0

    move-object v1, p0

    move v2, v8

    move v3, v7

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/io/MediaFileWriter;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_1
.end method

.method private onMediaFileSaved(Lcom/android/camera/io/MediaFileWriter$SaveHandle;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/io/IMediaFileWriter;->mediaFileSavedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/io/MediaSaveEventArgs;

    iget-object v2, p1, Lcom/android/camera/io/MediaFileWriter$SaveHandle;->saveMediaTask:Lcom/android/camera/io/SaveMediaTask;

    invoke-direct {v1, p1, v2}, Lcom/android/camera/io/MediaSaveEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/io/SaveMediaTask;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    return-void
.end method

.method private onMediaSaveFailed(Lcom/android/camera/io/MediaFileWriter$SaveHandle;)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/io/IMediaFileWriter;->mediaSaveFailedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/io/MediaSaveEventArgs;

    iget-object v2, p1, Lcom/android/camera/io/MediaFileWriter$SaveHandle;->saveMediaTask:Lcom/android/camera/io/SaveMediaTask;

    iget-object v3, p1, Lcom/android/camera/io/MediaFileWriter$SaveHandle;->failedReason:Lcom/android/camera/io/MediaSaveFailedReason;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/camera/io/MediaSaveEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/io/SaveMediaTask;Lcom/android/camera/io/MediaSaveFailedReason;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    return-void
.end method

.method private onMediaSaved(Lcom/android/camera/io/MediaFileWriter$SaveHandle;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/io/IMediaFileWriter;->mediaSavedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/io/MediaSaveEventArgs;

    iget-object v2, p1, Lcom/android/camera/io/MediaFileWriter$SaveHandle;->saveMediaTask:Lcom/android/camera/io/SaveMediaTask;

    invoke-direct {v1, p1, v2}, Lcom/android/camera/io/MediaSaveEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/io/SaveMediaTask;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    return-void
.end method

.method private prepare(Lcom/android/camera/io/StorageSlot;)V
    .locals 3

    const-class v1, Lcom/android/camera/ISharedBackgroundWorker;

    invoke-virtual {p0, v1}, Lcom/android/camera/io/MediaFileWriter;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ISharedBackgroundWorker;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/android/camera/io/MediaFileWriter$2;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/io/MediaFileWriter$2;-><init>(Lcom/android/camera/io/MediaFileWriter;Lcom/android/camera/io/StorageSlot;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ISharedBackgroundWorker;->enqueueTask(Ljava/lang/Runnable;)Lcom/android/camera/Handle;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "prepare() - Cannot do preparation in background thread"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "prepare() - No ISharedBackgroundWorker interface"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private prepareInternal(Lcom/android/camera/io/StorageSlot;)V
    .locals 10

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "prepareInternal("

    const-string v3, ") - Start"

    invoke-static {v0, v2, p1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_3

    sget-object v0, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/android/camera/io/StorageSlot;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/android/camera/io/StorageSlot;->hasInternalMemorySlot()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/io/StorageSlot;->getFirstInternalMemorySlot()Lcom/android/camera/io/StorageSlot;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "prepareInternal() - Clear cached file count"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/android/camera/io/FileUtility;->clearCachedFileCount(Ljava/lang/String;)V

    new-instance v5, Lcom/android/camera/Reference;

    invoke-direct {v5}, Lcom/android/camera/Reference;-><init>()V

    new-instance v6, Lcom/android/camera/Reference;

    invoke-direct {v6}, Lcom/android/camera/Reference;-><init>()V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/io/StorageSlot;

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "prepareInternal() - Get directory/file counters for "

    invoke-static {v0, v2, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v7}, Lcom/android/camera/io/DCFUtility;->getDcimPath(Lcom/android/camera/io/StorageSlot;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/io/MediaFileWriter;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    sget-object v2, Lcom/android/camera/io/DCFInfo;->DEFAULT:Lcom/android/camera/io/DCFInfo;

    sget-object v3, Lcom/android/camera/io/FileFormat;->Jpeg:Lcom/android/camera/io/FileFormat;

    sget-object v4, Lcom/android/camera/io/FileUtility$InformationSource;->FileSystem:Lcom/android/camera/io/FileUtility$InformationSource;

    invoke-static/range {v0 .. v6}, Lcom/android/camera/io/DCFUtility;->findNextDirAndFileCounters(Lcom/android/camera/Settings;Ljava/lang/String;Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileFormat;Lcom/android/camera/io/FileUtility$InformationSource;Lcom/android/camera/Reference;Lcom/android/camera/Reference;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "prepare() - Cannot get directory/file counters"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object v0, p1, Lcom/android/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "prepareInternal() - End"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private saveOneMedia()V
    .locals 11

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "saveOneMedia() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/io/MediaFileWriter;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v6

    iget-object v1, p0, Lcom/android/camera/io/MediaFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/io/MediaFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/io/MediaFileWriter$SaveHandle;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "saveOneMedia() - No media to save"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "saveOneMedia() - Handle : "

    invoke-static {v0, v1, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v10, 0x0

    :try_start_2
    iget-object v0, v5, Lcom/android/camera/io/MediaFileWriter$SaveHandle;->saveMediaTask:Lcom/android/camera/io/SaveMediaTask;

    invoke-virtual {v0}, Lcom/android/camera/io/SaveMediaTask;->saveMedia()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v10, :cond_1

    iget-object v0, v5, Lcom/android/camera/io/MediaFileWriter$SaveHandle;->saveMediaTask:Lcom/android/camera/io/SaveMediaTask;

    invoke-virtual {v0}, Lcom/android/camera/io/SaveMediaTask;->getSavedMediaInfo()Lcom/android/camera/MediaInfo;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v0, v9, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v0, :cond_1

    :try_start_3
    new-instance v8, Ljava/io/File;

    invoke-virtual {v9}, Lcom/android/camera/MediaInfo;->getFullPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/io/MediaFileWriter;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    invoke-virtual {v9}, Lcom/android/camera/MediaInfo;->getFullPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3, v10}, Lcom/android/camera/IThumbnailImageManager;->addCachedThumbnailImage(Ljava/lang/String;JLandroid/graphics/Bitmap;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_1
    const/16 v2, 0x2712

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p0

    :try_start_4
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/io/MediaFileWriter;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "saveOneMedia() - Media saved, scheduling for media store data insertion"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/io/MediaFileWriter;->m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v0, p0, Lcom/android/camera/io/MediaFileWriter;->m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v5}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/io/MediaFileWriter;->m_MediaStoreUpdateSuspendHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x2711

    invoke-virtual {p0, v0}, Lcom/android/camera/io/MediaFileWriter;->sendAsyncMessage(I)Z

    :goto_2
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_3
    if-eqz v10, :cond_2

    throw v10

    :cond_2
    :goto_4
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "saveOneMedia() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_6
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "saveOneMedia() - Media store update is suspended"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception v7

    :try_start_8
    sget-object v0, Lcom/android/camera/io/MediaSaveFailedReason;->Unknown:Lcom/android/camera/io/MediaSaveFailedReason;

    iput-object v0, v5, Lcom/android/camera/io/MediaFileWriter$SaveHandle;->failedReason:Lcom/android/camera/io/MediaSaveFailedReason;

    const/16 v2, 0x2714

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/io/MediaFileWriter;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v10, :cond_2

    throw v10

    goto :goto_4

    :cond_4
    :try_start_9
    sget-object v0, Lcom/android/camera/io/MediaSaveFailedReason;->Unknown:Lcom/android/camera/io/MediaSaveFailedReason;

    iput-object v0, v5, Lcom/android/camera/io/MediaFileWriter$SaveHandle;->failedReason:Lcom/android/camera/io/MediaSaveFailedReason;

    const/16 v2, 0x2714

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/io/MediaFileWriter;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_3

    :catchall_2
    move-exception v0

    if-eqz v10, :cond_5

    throw v10

    :cond_5
    throw v0

    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public cancelSavingMedia(Lcom/android/camera/Handle;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "cancelSavingMedia() - Not implemented"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method protected deinitializeOverride()V
    .locals 2

    const/16 v0, 0x2711

    invoke-virtual {p0, v0}, Lcom/android/camera/io/MediaFileWriter;->removeAsyncMessages(I)V

    iget-object v1, p0, Lcom/android/camera/io/MediaFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/io/MediaFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lcom/android/camera/io/IMediaFileWriter;->deinitializeOverride()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getMediaQueueCapacity()J
    .locals 2

    const-wide/32 v0, 0x2000000

    return-wide v0
.end method

.method public getMediaQueueSize()J
    .locals 2

    invoke-static {}, Lcom/android/camera/io/SaveImageTask;->getTotalJpegRawDataSize()J

    move-result-wide v0

    return-wide v0
.end method

.method protected handleAsyncMessage(Landroid/os/Message;)V
    .locals 3

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/io/IMediaFileWriter;->handleAsyncMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/camera/io/MediaFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/io/MediaFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/io/MediaFileWriter;->saveOneMedia()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/io/MediaFileWriter;->insertOneMediaIntoMediaStore()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/io/IMediaFileWriter;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/io/MediaFileWriter$SaveHandle;

    invoke-direct {p0, v0}, Lcom/android/camera/io/MediaFileWriter;->onMediaFileSaved(Lcom/android/camera/io/MediaFileWriter$SaveHandle;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/io/MediaFileWriter$SaveHandle;

    invoke-direct {p0, v0}, Lcom/android/camera/io/MediaFileWriter;->onMediaSaved(Lcom/android/camera/io/MediaFileWriter$SaveHandle;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/io/MediaFileWriter$SaveHandle;

    invoke-direct {p0, v0}, Lcom/android/camera/io/MediaFileWriter;->onMediaSaveFailed(Lcom/android/camera/io/MediaFileWriter$SaveHandle;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2712
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/io/IMediaFileWriter;->initializeOverride()V

    const-class v0, Lcom/android/camera/IThumbnailImageManager;

    invoke-virtual {p0, v0}, Lcom/android/camera/io/MediaFileWriter;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IThumbnailImageManager;

    iput-object v0, p0, Lcom/android/camera/io/MediaFileWriter;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    invoke-virtual {p0}, Lcom/android/camera/io/MediaFileWriter;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    new-instance v1, Lcom/android/camera/io/MediaFileWriter$1;

    invoke-direct {v1, p0}, Lcom/android/camera/io/MediaFileWriter$1;-><init>(Lcom/android/camera/io/MediaFileWriter;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/io/MediaFileWriter;->prepare(Lcom/android/camera/io/StorageSlot;)V

    return-void
.end method

.method public resumeUpdatingMediaStore(Lcom/android/camera/Handle;)V
    .locals 6

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "resumeUpdatingMediaStore() - Null handle"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/camera/io/MediaFileWriter;->m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/io/MediaFileWriter;->m_MediaStoreUpdateSuspendHandles:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/io/MediaFileWriter;->m_MediaStoreUpdateSuspendHandles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "resumeUpdatingMediaStore() - Handle count : "

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/camera/io/MediaFileWriter;->m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    :goto_1
    if-lez v1, :cond_2

    const/16 v2, 0x2711

    invoke-virtual {p0, v2}, Lcom/android/camera/io/MediaFileWriter;->sendAsyncMessage(I)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "resumeUpdatingMediaStore() - Invalid handle"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public saveMedia(Lcom/android/camera/io/SaveMediaTask;)Lcom/android/camera/Handle;
    .locals 3

    if-nez p1, :cond_1

    const-string v1, "task"

    invoke-static {v1}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/camera/io/MediaFileWriter$SaveHandle;

    invoke-direct {v0, p1}, Lcom/android/camera/io/MediaFileWriter$SaveHandle;-><init>(Lcom/android/camera/io/SaveMediaTask;)V

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "saveMedia() - Create handle : "

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/camera/io/MediaFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/io/MediaFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x2711

    invoke-virtual {p0, v1}, Lcom/android/camera/io/MediaFileWriter;->sendAsyncMessage(I)Z

    invoke-virtual {p0}, Lcom/android/camera/io/MediaFileWriter;->isDependencyThread()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/io/IMediaFileWriter;->mediaSavingEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v1}, Lcom/android/camera/event/Event;->hasHandlers()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/io/IMediaFileWriter;->mediaSavingEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/io/MediaSaveEventArgs;

    invoke-direct {v2, v0, p1}, Lcom/android/camera/io/MediaSaveEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/io/SaveMediaTask;)V

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_2
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "saveMedia() - Called from another thread"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/camera/io/MediaFileWriter$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/camera/io/MediaFileWriter$3;-><init>(Lcom/android/camera/io/MediaFileWriter;Lcom/android/camera/io/MediaFileWriter$SaveHandle;Lcom/android/camera/io/SaveMediaTask;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/io/MediaFileWriter;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public suspendUpdatingMediaStore()Lcom/android/camera/Handle;
    .locals 5

    new-instance v0, Lcom/android/camera/SessionHandle;

    const-string v1, "SuspendUpdatingDB"

    invoke-direct {v0, v1}, Lcom/android/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/io/MediaFileWriter;->m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/io/MediaFileWriter;->m_MediaStoreUpdateSuspendHandles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "suspendUpdatingMediaStore() - Handle count : "

    iget-object v4, p0, Lcom/android/camera/io/MediaFileWriter;->m_MediaStoreUpdateSuspendHandles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
