.class Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;
.super Lcom/android/camera/io/SaveImageTask;
.source "ContinuousBurstController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/ContinuousBurstController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveBurstImageTask"
.end annotation


# instance fields
.field private final directoryCounter:Lcom/android/camera/io/FileCounter;

.field private final imageCounter:Lcom/android/camera/io/FileCounter;

.field private final index:I

.field private final m_Controller:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/camera/component/ContinuousBurstController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/component/ContinuousBurstController;Lcom/android/camera/CaptureHandle;I[BZ)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-direct {p0, v0, p2, p4}, Lcom/android/camera/io/SaveImageTask;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CaptureHandle;[B)V

    iput-boolean p5, p0, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->isLastMedia:Z

    iput p3, p0, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->index:I

    invoke-static {}, Lcom/android/camera/component/ContinuousBurstController;->access$100()Lcom/android/camera/io/DCFInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->dcfInfo:Lcom/android/camera/io/DCFInfo;

    #getter for: Lcom/android/camera/component/ContinuousBurstController;->m_DirectoryCounter:Lcom/android/camera/io/FileCounter;
    invoke-static {p1}, Lcom/android/camera/component/ContinuousBurstController;->access$200(Lcom/android/camera/component/ContinuousBurstController;)Lcom/android/camera/io/FileCounter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->directoryCounter:Lcom/android/camera/io/FileCounter;

    #getter for: Lcom/android/camera/component/ContinuousBurstController;->m_ImageCounter:Lcom/android/camera/io/FileCounter;
    invoke-static {p1}, Lcom/android/camera/component/ContinuousBurstController;->access$300(Lcom/android/camera/component/ContinuousBurstController;)Lcom/android/camera/io/FileCounter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->imageCounter:Lcom/android/camera/io/FileCounter;

    #getter for: Lcom/android/camera/component/ContinuousBurstController;->m_PhotoSize:Lcom/android/camera/imaging/Size;
    invoke-static {p1}, Lcom/android/camera/component/ContinuousBurstController;->access$400(Lcom/android/camera/component/ContinuousBurstController;)Lcom/android/camera/imaging/Size;

    move-result-object v0

    if-eqz v0, :cond_0

    #getter for: Lcom/android/camera/component/ContinuousBurstController;->m_PhotoSize:Lcom/android/camera/imaging/Size;
    invoke-static {p1}, Lcom/android/camera/component/ContinuousBurstController;->access$400(Lcom/android/camera/component/ContinuousBurstController;)Lcom/android/camera/imaging/Size;

    move-result-object v0

    iget v0, v0, Lcom/android/camera/imaging/Size;->width:I

    iput v0, p0, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->imageWidth:I

    #getter for: Lcom/android/camera/component/ContinuousBurstController;->m_PhotoSize:Lcom/android/camera/imaging/Size;
    invoke-static {p1}, Lcom/android/camera/component/ContinuousBurstController;->access$400(Lcom/android/camera/component/ContinuousBurstController;)Lcom/android/camera/imaging/Size;

    move-result-object v0

    iget v0, v0, Lcom/android/camera/imaging/Size;->height:I

    iput v0, p0, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->imageHeight:I

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->m_Controller:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected getAvailableFileName()Lcom/android/camera/io/DCFPath;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->dcfInfo:Lcom/android/camera/io/DCFInfo;

    iget-object v3, p0, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->storageSlot:Lcom/android/camera/io/StorageSlot;

    iget-object v4, p0, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->directoryCounter:Lcom/android/camera/io/FileCounter;

    invoke-static {v2, v3, v4}, Lcom/android/camera/io/DCFUtility;->getDirectoryPath(Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/StorageSlot;Lcom/android/camera/io/FileCounter;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMAG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->imageCounter:Lcom/android/camera/io/FileCounter;

    iget v3, v3, Lcom/android/camera/io/FileCounter;->mainCounter:I

    add-int/lit16 v3, v3, 0x2710

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_BURST"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->index:I

    add-int/lit16 v3, v3, 0x3e9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->index:I

    if-ne v2, v5, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_COVER"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/io/FileFormat;->Jpeg:Lcom/android/camera/io/FileFormat;

    iget-object v3, v3, Lcom/android/camera/io/FileFormat;->fileNameExtension:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/camera/io/DCFPath;

    iget-object v3, p0, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->directoryCounter:Lcom/android/camera/io/FileCounter;

    iget-object v4, p0, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->imageCounter:Lcom/android/camera/io/FileCounter;

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/android/camera/io/DCFPath;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileCounter;)V

    return-object v2
.end method

.method protected bridge synthetic getAvailableFileName()Lcom/android/camera/io/Path;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->getAvailableFileName()Lcom/android/camera/io/DCFPath;

    move-result-object v0

    return-object v0
.end method

.method protected onMediaSaveFailed(Lcom/android/camera/io/Path;Ljava/lang/Throwable;)V
    .locals 6

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->m_Controller:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/ContinuousBurstController;

    if-eqz v0, :cond_0

    const/16 v2, 0x271a

    iget v3, p0, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->index:I

    move-object v1, v0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ContinuousBurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    iget-boolean v1, p0, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->isLastMedia:Z

    if-eqz v1, :cond_0

    const/16 v2, 0x2717

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->captureHandle:Lcom/android/camera/CaptureHandle;

    aput-object v1, v5, v4

    const/4 v1, 0x1

    const/4 v3, 0x0

    aput-object v3, v5, v1

    move-object v1, v0

    move v3, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ContinuousBurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected onMediaSaved(Lcom/android/camera/io/Path;)V
    .locals 7

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->m_Controller:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/ContinuousBurstController;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    #getter for: Lcom/android/camera/component/ContinuousBurstController;->m_SavedImageTasks:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/camera/component/ContinuousBurstController;->access$500(Lcom/android/camera/component/ContinuousBurstController;)Ljava/util/Set;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    #getter for: Lcom/android/camera/component/ContinuousBurstController;->m_SavedImageTasks:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/camera/component/ContinuousBurstController;->access$500(Lcom/android/camera/component/ContinuousBurstController;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x2719

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ContinuousBurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    const/16 v1, 0x2719

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/component/ContinuousBurstController;->sendAsyncMessage(IIILjava/lang/Object;)Z

    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onMediaStoreDataInserted(ZLcom/android/camera/MediaInfo;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v3, 0x0

    const/4 v10, 0x0

    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->isLastMedia:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->m_Controller:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/component/ContinuousBurstController;

    if-eqz v7, :cond_3

    #getter for: Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;
    invoke-static {v7}, Lcom/android/camera/component/ContinuousBurstController;->access$600(Lcom/android/camera/component/ContinuousBurstController;)Lcom/android/camera/component/ContinuousBurstUI;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v6, 0x0

    #getter for: Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;
    invoke-static {v7}, Lcom/android/camera/component/ContinuousBurstController;->access$600(Lcom/android/camera/component/ContinuousBurstController;)Lcom/android/camera/component/ContinuousBurstUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->isContinuousBurstAutoReview:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v1, "Query bucketID - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    #getter for: Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;
    invoke-static {v7}, Lcom/android/camera/component/ContinuousBurstController;->access$600(Lcom/android/camera/component/ContinuousBurstController;)Lcom/android/camera/component/ContinuousBurstUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p2, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    new-array v2, v11, [Ljava/lang/String;

    const-string v4, "bucket_id"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_0

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    const-string v0, "bucket_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query bucketID - end , result is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/16 v2, 0x2717

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->captureHandle:Lcom/android/camera/CaptureHandle;

    aput-object v0, v5, v10

    aput-object v6, v5, v11

    move-object v0, v7

    move-object v1, v7

    move v3, v10

    move v4, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ContinuousBurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    :cond_3
    return-void

    :catch_0
    move-exception v9

    :try_start_2
    iget-object v0, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v1, "Exception occurred while querying image file"

    invoke-static {v0, v1, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :catch_1
    move-exception v9

    :try_start_3
    iget-object v0, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v1, "Exception occurred while querying image file"

    invoke-static {v0, v1, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method protected onSaveMediaToFile(Lcom/android/camera/io/Path;)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {p0, v5}, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->getJpegRawData(Z)[B

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v4, 0x1

    invoke-static {v3}, Lcom/android/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    move-object v2, v3

    :goto_0
    return v4

    :cond_0
    :try_start_2
    iget-object v5, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v6, "onSaveMediaToFile() - Cannot get JPEG raw data from native buffer"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    invoke-static {v3}, Lcom/android/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    :try_start_3
    iget-object v5, p0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v6, "onSaveMediaToFile() - Exception occurred while saving image to file"

    invoke-static {v5, v6, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->clearJpegRawData()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v2}, Lcom/android/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    :goto_2
    invoke-static {v2}, Lcom/android/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    throw v4

    :catchall_1
    move-exception v4

    move-object v2, v3

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v3

    goto :goto_1
.end method

.method protected prepareMediaStoreValues(Lcom/android/camera/io/Path;)Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->index:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const-string v1, "favorite"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "favorite"

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method
