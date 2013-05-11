.class public Lcom/android/camera/component/ThumbnailController;
.super Lcom/android/camera/component/AsyncCameraThreadComponent;
.source "ThumbnailController.java"

# interfaces
.implements Lcom/android/camera/IThumbnailImageManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;
    }
.end annotation


# static fields
.field private static final MEDIA_TYPE_IMAGE:I = 0x1

.field private static final MEDIA_TYPE_VIDEO:I = 0x2

.field static final MSG_CLEAR_MEDIA_INFO_CACHE:I = 0x2712

.field static final MSG_CREATE_THUMB_IMAGE:I = 0x2711

.field static final NAME:Ljava/lang/String; = "Thumbnail Controller"

.field private static final STATIC_TAG:Ljava/lang/String; = "ThumbnailController"

.field private static final THUMBNAIL_IMAGE_POOL_SIZE:I = 0x5

.field private static final m_ThumbnailImagePool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final m_DisableAutoUpdateHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/SessionHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_GalleryBaseBitmap:Landroid/graphics/Bitmap;

.field private volatile m_IsDeletingMedia:Z

.field private final m_LastMediaInfo:Lcom/android/camera/MediaInfo;

.field private final m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

.field private volatile m_LatestRecordedVideoPath:Lcom/android/camera/io/Path;

.field private volatile m_LatestRecordedVideoThumb:Landroid/graphics/Bitmap;

.field private final m_OnGoingCaptures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/CaptureHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_ThumbnailImageBounds:Landroid/graphics/Rect;

.field private m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 2

    const-string v0, "Thumbnail Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_DisableAutoUpdateHandles:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/camera/MediaInfo;

    invoke-direct {v0}, Lcom/android/camera/MediaInfo;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    new-instance v0, Lcom/android/camera/MediaInfo;

    invoke-direct {v0}, Lcom/android/camera/MediaInfo;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_OnGoingCaptures:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImageBounds:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/ThumbnailController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_OnGoingCaptures:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/ThumbnailController;)Lcom/android/camera/component/ThumbnailUI;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/component/ThumbnailController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/component/ThumbnailController;Lcom/android/camera/MediaEventArgs;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/ThumbnailController;->onMediaFileSaved(Lcom/android/camera/MediaEventArgs;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/component/ThumbnailController;Lcom/android/camera/MediaEventArgs;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/ThumbnailController;->onMediaSaved(Lcom/android/camera/MediaEventArgs;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/component/ThumbnailController;Lcom/android/camera/MediaEventArgs;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/ThumbnailController;->onMediaSaveFailed(Lcom/android/camera/MediaEventArgs;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/component/ThumbnailController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/component/ThumbnailController;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LatestRecordedVideoThumb:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/camera/component/ThumbnailController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ThumbnailController;->m_LatestRecordedVideoThumb:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/android/camera/component/ThumbnailController;Lcom/android/camera/io/Path;)Lcom/android/camera/io/Path;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ThumbnailController;->m_LatestRecordedVideoPath:Lcom/android/camera/io/Path;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/camera/component/ThumbnailController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/component/ThumbnailController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/ThumbnailController;->m_IsDeletingMedia:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/camera/component/ThumbnailController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/component/ThumbnailController;->m_IsDeletingMedia:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/component/ThumbnailController;Lcom/android/camera/CaptureHandle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/ThumbnailController;->onMediaCaptureFailed(Lcom/android/camera/CaptureHandle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/component/ThumbnailController;Lcom/android/camera/CaptureHandle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/ThumbnailController;->onMediaCaptureStarted(Lcom/android/camera/CaptureHandle;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/component/ThumbnailController;)Lcom/android/camera/MediaInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/component/ThumbnailController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/component/ThumbnailController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/ThumbnailController;->clearCachedMediaInfo(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/component/ThumbnailController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/component/ThumbnailController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_DisableAutoUpdateHandles:Ljava/util/ArrayList;

    return-object v0
.end method

.method private clearCachedMediaInfo(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/camera/MediaInfo;->takenTime:J

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/camera/MediaInfo;->takenTime:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_DisableAutoUpdateHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2711

    invoke-virtual {p0, p0, v0}, Lcom/android/camera/component/ThumbnailController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private composeGalleryImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createThumbnailImage(Z)V
    .locals 34

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createThumbnailImage(sendBackToUI = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ") - start"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v5, "No ThumbnailUI compoment is linked, cannot create thumbnail image"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v14}, Lcom/android/camera/component/ThumbnailUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v5, "Cancel creating thumbnail image because UI is paused"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, -0x1

    const/16 v26, 0x0

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v3, v3, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    if-eqz v3, :cond_f

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    iget-wide v8, v3, Lcom/android/camera/MediaInfo;->takenTime:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-wide v15, v3, Lcom/android/camera/MediaInfo;->takenTime:J

    cmp-long v3, v8, v15

    if-gtz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v3, v3, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    iget-wide v8, v3, Lcom/android/camera/MediaInfo;->takenTime:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-wide v15, v3, Lcom/android/camera/MediaInfo;->takenTime:J

    cmp-long v3, v8, v15

    if-nez v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v3, v3, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v5, v5, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    invoke-virtual {v3, v5}, Lcom/android/camera/io/Path;->compareTo(Lcom/android/camera/io/Path;)I

    move-result v3

    if-lez v3, :cond_c

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    invoke-virtual {v3}, Lcom/android/camera/MediaInfo;->isImage()Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    invoke-virtual {v3}, Lcom/android/camera/MediaInfo;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v0, v3, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v3, v3, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    invoke-virtual {v3}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v0, v3, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    iget-wide v0, v3, Lcom/android/camera/MediaInfo;->takenTime:J

    move-wide/from16 v24, v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v28, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v5, "createThumbnailImage() - Use media information in media store"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "external"

    invoke-static {v3}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {}, Lcom/android/camera/io/StorageSlot;->hasUniqueStorageSlot()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-static {}, Lcom/android/camera/io/StorageSlot;->hasInternalMemorySlot()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-static {}, Lcom/android/camera/io/StorageSlot;->getFirstInternalMemorySlot()Lcom/android/camera/io/StorageSlot;

    move-result-object v29

    :goto_2
    const-string v6, "_data LIKE ?"

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    iget-object v8, v0, Lcom/android/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "DCIM"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "%"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v3

    :goto_3
    invoke-virtual {v14}, Lcom/android/camera/component/ThumbnailUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "_id"

    aput-object v9, v5, v8

    const/4 v8, 0x1

    const-string v9, "_data"

    aput-object v9, v5, v8

    const/4 v8, 0x2

    const-string v9, "datetaken"

    aput-object v9, v5, v8

    const/4 v8, 0x3

    const-string v9, "mime_type"

    aput-object v9, v5, v8

    const-string v8, "datetaken DESC, _data DESC LIMIT 0,1"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    if-eqz v20, :cond_5

    :try_start_1
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-lez v3, :cond_5

    :try_start_2
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    const-string v3, "_data"

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    const-string v3, "datetaken"

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    const-string v3, "mime_type"

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    const-string v27, ""

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x6

    if-le v3, v5, :cond_4

    const/4 v3, 0x0

    const/4 v5, 0x6

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    :cond_4
    const-string v3, "image/"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v22

    :cond_5
    :goto_4
    if-eqz v20, :cond_6

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_6
    const-wide/16 v32, -0x1

    const/16 v30, 0x0

    const/16 v31, 0x0

    if-eqz v23, :cond_15

    move-object/from16 v12, v22

    move-object/from16 v10, v23

    move-wide/from16 v32, v24

    :goto_5
    if-eqz v10, :cond_8

    :try_start_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v9, "The latest media file is \'"

    const-string v11, "\' ("

    const-string v13, ")"

    invoke-static/range {v8 .. v13}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "image/"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v3, 0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, v26

    invoke-static {v10, v0, v1, v3, v2}, Lcom/android/camera/component/ThumbnailController;->getThumbnailImageFromPool(Ljava/lang/String;JILjava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v30

    :cond_7
    :goto_6
    move-object/from16 v31, v26

    :cond_8
    :goto_7
    monitor-enter p0

    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    iput-object v12, v3, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    if-eqz v10, :cond_19

    new-instance v3, Lcom/android/camera/io/Path;

    invoke-direct {v3, v10}, Lcom/android/camera/io/Path;-><init>(Ljava/lang/String;)V

    :goto_8
    iput-object v3, v5, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    move-object/from16 v0, v31

    iput-object v0, v3, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    move-wide/from16 v0, v32

    iput-wide v0, v3, Lcom/android/camera/MediaInfo;->takenTime:J

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz p1, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/camera/component/ThumbnailController;->composeGalleryImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v30

    const/16 v15, 0x2711

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v3, 0x3

    new-array v0, v3, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/4 v3, 0x0

    aput-object v10, v18, v3

    const/4 v3, 0x1

    aput-object v30, v18, v3

    const/4 v3, 0x2

    aput-object v31, v18, v3

    move-object/from16 v13, p0

    invoke-virtual/range {v13 .. v18}, Lcom/android/camera/component/ThumbnailController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    monitor-enter p0

    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_OnGoingCaptures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/component/ThumbnailController;->m_IsDeletingMedia:Z

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    const/16 v5, 0x2712

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/android/camera/component/ThumbnailController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    :cond_9
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v5, "createThumbnailImage() - end"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const/16 v28, 0x1

    goto/16 :goto_1

    :cond_c
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    invoke-virtual {v3}, Lcom/android/camera/MediaInfo;->isImage()Z

    move-result v3

    if-nez v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    invoke-virtual {v3}, Lcom/android/camera/MediaInfo;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v0, v3, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v3, v3, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    invoke-virtual {v3}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v0, v3, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-wide v0, v3, Lcom/android/camera/MediaInfo;->takenTime:J

    move-wide/from16 v24, v0

    goto/16 :goto_1

    :cond_e
    const/16 v28, 0x1

    goto/16 :goto_1

    :cond_f
    const/16 v28, 0x1

    goto/16 :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v3

    :cond_10
    sget-object v29, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    goto/16 :goto_2

    :cond_11
    const-string v6, "_data LIKE ? OR _data LIKE ?"

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/io/StorageSlot;->getFirstInternalMemorySlot()Lcom/android/camera/io/StorageSlot;

    move-result-object v8

    iget-object v8, v8, Lcom/android/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "DCIM"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "%"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v3

    const/4 v3, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    iget-object v8, v8, Lcom/android/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "DCIM"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "%"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v3

    goto/16 :goto_3

    :cond_12
    :try_start_7
    const-string v3, "video/"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    goto/16 :goto_4

    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v5, "media type is not image or video"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_4

    :catch_0
    move-exception v21

    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v5, "Exception occurred while querying image file"

    move-object/from16 v0, v21

    invoke-static {v3, v5, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v23, 0x0

    goto/16 :goto_4

    :catch_1
    move-exception v21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v5, "Exception occurred while querying image file"

    move-object/from16 v0, v21

    invoke-static {v3, v5, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const/16 v23, 0x0

    goto/16 :goto_4

    :catchall_1
    move-exception v3

    if-eqz v20, :cond_14

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_14
    throw v3

    :cond_15
    const/4 v12, 0x0

    const/4 v10, 0x0

    const-wide/16 v32, -0x1

    goto/16 :goto_5

    :cond_16
    :try_start_9
    const-string v3, "video/"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    monitor-enter p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LatestRecordedVideoPath:Lcom/android/camera/io/Path;

    if-eqz v3, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LatestRecordedVideoPath:Lcom/android/camera/io/Path;

    invoke-virtual {v3}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const-string v3, "ThumbnailController"

    const-string v5, "Use latest recorded video thumbnail image"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ThumbnailController;->m_LatestRecordedVideoThumb:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/ThumbnailController;->m_LatestRecordedVideoThumb:Landroid/graphics/Bitmap;

    move-object/from16 v30, v0

    :goto_9
    monitor-exit p0

    goto/16 :goto_6

    :catchall_2
    move-exception v3

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    :catch_2
    move-exception v21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v5, "Exception occurred while creating thumbnail image"

    move-object/from16 v0, v21

    invoke-static {v3, v5, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v12, 0x0

    const/4 v10, 0x0

    if-eqz v30, :cond_8

    const/16 v30, 0x0

    const/16 v31, 0x0

    goto/16 :goto_7

    :cond_17
    :try_start_c
    const-string v3, "ThumbnailController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Latest recorded video is \'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/component/ThumbnailController;->m_LatestRecordedVideoPath:Lcom/android/camera/io/Path;

    invoke-virtual {v8}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\', but no thumbnail image"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v30, 0x0

    goto :goto_9

    :cond_18
    const/4 v3, 0x2

    move-wide/from16 v0, v32

    move-object/from16 v2, v26

    invoke-static {v10, v0, v1, v3, v2}, Lcom/android/camera/component/ThumbnailController;->getThumbnailImageFromPool(Ljava/lang/String;JILjava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-result-object v30

    goto :goto_9

    :cond_19
    const/4 v3, 0x0

    goto/16 :goto_8

    :catchall_3
    move-exception v3

    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v3

    :catchall_4
    move-exception v3

    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v3
.end method

.method private static declared-synchronized getThumbnailImageFromPool(Ljava/lang/String;JILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 13

    const-class v12, Lcom/android/camera/component/ThumbnailController;

    monitor-enter v12

    :try_start_0
    const-string v1, "ThumbnailController"

    const-string v2, "getThumbnailImageFromPool(\'"

    const-string v4, "\', \'"

    const-string v6, "\')"

    move-object v3, p0

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "ThumbnailController"

    const-string v2, "getThumbnailImageFromPool() - File time = "

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez p0, :cond_0

    const-string v1, "filePath"

    invoke-static {v1}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v10, 0x0

    :goto_0
    monitor-exit v12

    return-object v10

    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;

    iget-object v1, v11, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v1, v11, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;->fileTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v1, v1, p1

    if-nez v1, :cond_1

    :try_start_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v9

    :goto_1
    if-eqz v9, :cond_2

    :try_start_3
    sget-object v1, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v1, v11}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v1, v11}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    const-string v1, "ThumbnailController"

    const-string v2, "getThumbnailImageFromPool() - Use pool image directly"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v11, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;->thumbnailImage:Landroid/graphics/Bitmap;

    goto :goto_0

    :catch_0
    move-exception v7

    const-string v1, "ThumbnailController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getThumbnailImageFromPool() - Fail to check existence of file \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    goto :goto_1

    :cond_2
    const-string v1, "ThumbnailController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getThumbnailImageFromPool() - File \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not existent, return NULL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v11, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;->thumbnailImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    sget-object v1, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v1, v11}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_3
    :try_start_4
    const-string v1, "ThumbnailController"

    const-string v2, "getThumbnailImageFromPool() - Create thumbnail image - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-static {p0, v0}, Lcom/android/camera/imaging/ThumbnailUtility;->createThumbnailImage(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    const-string v1, "ThumbnailController"

    const-string v2, "getThumbnailImageFromPool() - Create thumbnail image - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    if-nez v10, :cond_4

    :try_start_5
    const-string v1, "ThumbnailController"

    const-string v2, "No thumbnail image created"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v7

    const-string v1, "ThumbnailController"

    const-string v2, "Exception occurred while creating thumbnail image"

    invoke-static {v1, v2, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_4
    :goto_2
    sget-object v1, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_5

    sget-object v1, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;

    iget-object v1, v11, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;->thumbnailImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    sget-object v1, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v12

    throw v1

    :cond_5
    :try_start_6
    new-instance v11, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;

    invoke-direct {v11, p0, p1, p2, v10}, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;-><init>(Ljava/lang/String;JLandroid/graphics/Bitmap;)V

    sget-object v1, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v1, v11}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method

.method public static final isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onMediaCaptureFailed(Lcom/android/camera/CaptureHandle;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_OnGoingCaptures:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_OnGoingCaptures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/component/ThumbnailController;->m_IsDeletingMedia:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    const/16 v1, 0x2712

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/ThumbnailController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onMediaCaptureStarted(Lcom/android/camera/CaptureHandle;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_OnGoingCaptures:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_OnGoingCaptures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    const/16 v1, 0x2713

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/ThumbnailController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onMediaFileSaved(Lcom/android/camera/MediaEventArgs;)V
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v1, p1, Lcom/android/camera/MediaEventArgs;->contentUri:Landroid/net/Uri;

    iput-object v1, v0, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v1, p1, Lcom/android/camera/MediaEventArgs;->filePath:Lcom/android/camera/io/Path;

    iput-object v1, v0, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    iget-object v1, p0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v0, p1, Lcom/android/camera/MediaEventArgs;->format:Lcom/android/camera/io/FileFormat;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/camera/MediaEventArgs;->format:Lcom/android/camera/io/FileFormat;

    iget-object v0, v0, Lcom/android/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    :goto_1
    iput-object v0, v1, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    iget-wide v1, p1, Lcom/android/camera/MediaEventArgs;->takenTime:J

    iput-wide v1, v0, Lcom/android/camera/MediaInfo;->takenTime:J

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v0, v0, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    if-nez v0, :cond_3

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_DisableAutoUpdateHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2711

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v3, v3, v1}, Lcom/android/camera/component/ThumbnailController;->sendAsyncMessage(IIILjava/lang/Object;)Z

    goto :goto_0
.end method

.method private onMediaSaveFailed(Lcom/android/camera/MediaEventArgs;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/android/camera/MediaEventArgs;->isLastMedia:Z

    if-eqz v0, :cond_1

    :cond_0
    monitor-enter p0

    if-eqz p1, :cond_3

    :try_start_0
    iget-object v0, p1, Lcom/android/camera/MediaEventArgs;->captureHandle:Lcom/android/camera/CaptureHandle;

    if-nez v0, :cond_2

    monitor-exit p0

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_OnGoingCaptures:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/camera/MediaEventArgs;->captureHandle:Lcom/android/camera/CaptureHandle;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_OnGoingCaptures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/component/ThumbnailController;->m_IsDeletingMedia:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    const/16 v1, 0x2712

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/ThumbnailController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private onMediaSaved(Lcom/android/camera/MediaEventArgs;)V
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p1, Lcom/android/camera/MediaEventArgs;->isLastMedia:Z

    if-eqz v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/android/camera/MediaEventArgs;->captureHandle:Lcom/android/camera/CaptureHandle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_OnGoingCaptures:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/camera/MediaEventArgs;->captureHandle:Lcom/android/camera/CaptureHandle;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v0, v0, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v0, v0, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    iget-object v1, p1, Lcom/android/camera/MediaEventArgs;->filePath:Lcom/android/camera/io/Path;

    invoke-virtual {v0, v1}, Lcom/android/camera/io/Path;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v1, p1, Lcom/android/camera/MediaEventArgs;->contentUri:Landroid/net/Uri;

    iput-object v1, v0, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    :cond_3
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    iget-wide v0, v0, Lcom/android/camera/MediaInfo;->takenTime:J

    iget-wide v2, p1, Lcom/android/camera/MediaEventArgs;->takenTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v0, v0, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    iget-wide v0, v0, Lcom/android/camera/MediaInfo;->takenTime:J

    iget-wide v2, p1, Lcom/android/camera/MediaEventArgs;->takenTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v0, v0, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    iget-object v1, p1, Lcom/android/camera/MediaEventArgs;->filePath:Lcom/android/camera/io/Path;

    invoke-virtual {v0, v1}, Lcom/android/camera/io/Path;->compareTo(Lcom/android/camera/io/Path;)I

    move-result v0

    if-gez v0, :cond_7

    :cond_4
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v1, p1, Lcom/android/camera/MediaEventArgs;->contentUri:Landroid/net/Uri;

    iput-object v1, v0, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v1, p1, Lcom/android/camera/MediaEventArgs;->filePath:Lcom/android/camera/io/Path;

    iput-object v1, v0, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    iget-object v1, p0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v0, p1, Lcom/android/camera/MediaEventArgs;->format:Lcom/android/camera/io/FileFormat;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/android/camera/MediaEventArgs;->format:Lcom/android/camera/io/FileFormat;

    iget-object v0, v0, Lcom/android/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    :goto_1
    iput-object v0, v1, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/android/camera/MediaInfo;

    iget-wide v1, p1, Lcom/android/camera/MediaEventArgs;->takenTime:J

    iput-wide v1, v0, Lcom/android/camera/MediaInfo;->takenTime:J

    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_DisableAutoUpdateHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0x2711

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v4, v4, v1}, Lcom/android/camera/component/ThumbnailController;->sendAsyncMessage(IIILjava/lang/Object;)Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    :try_start_3
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v0, v0, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_OnGoingCaptures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/camera/component/ThumbnailController;->m_IsDeletingMedia:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    const/16 v1, 0x2712

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/ThumbnailController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    :cond_8
    monitor-exit p0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_9
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onMediaSaved() - Auto-update is disabled"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public addCachedThumbnailImage(Ljava/lang/String;JLandroid/graphics/Bitmap;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v1, "filePath"

    invoke-static {v1}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    if-nez p4, :cond_1

    const-string v1, "thumb"

    invoke-static {v1}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "addCachedThumbnailImage(\'"

    const-string v3, "\', "

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, ")"

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v1, Lcom/android/camera/component/ThumbnailController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;

    iget-object v0, v7, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    iput-wide p2, v7, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;->fileTime:J

    iget-object v0, v7, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;->thumbnailImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v7, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;->thumbnailImage:Landroid/graphics/Bitmap;

    monitor-exit v1

    move v0, v8

    goto :goto_0

    :cond_3
    :goto_1
    sget-object v0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_4

    sget-object v0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;

    iget-object v0, v7, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;->thumbnailImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    sget-object v0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    new-instance v7, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;

    invoke-static {p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v7, p1, p2, p3, v0}, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;-><init>(Ljava/lang/String;JLandroid/graphics/Bitmap;)V

    sget-object v0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v8

    goto :goto_0
.end method

.method protected deinitializeOverride()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_GalleryBaseBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_GalleryBaseBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/camera/component/ThumbnailController;->m_GalleryBaseBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iput-object v1, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    invoke-super {p0}, Lcom/android/camera/component/AsyncCameraThreadComponent;->deinitializeOverride()V

    return-void
.end method

.method public final disableAutoUpdate()Lcom/android/camera/Handle;
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailController;->threadAccessCheck()V

    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailController;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "disableAutoUpdate() - Component is not running"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/camera/SessionHandle;

    const-string v1, "DAU"

    invoke-direct {v0, v1}, Lcom/android/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/component/ThumbnailController;->m_DisableAutoUpdateHandles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "disableAutoUpdate() - New handle : "

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "disableAutoUpdate() - Handle count : "

    iget-object v3, p0, Lcom/android/camera/component/ThumbnailController;->m_DisableAutoUpdateHandles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v1, 0x2711

    invoke-virtual {p0, v1}, Lcom/android/camera/component/ThumbnailController;->removeAsyncMessages(I)V

    goto :goto_0
.end method

.method public final enableAutoUpdate(Lcom/android/camera/Handle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailController;->threadAccessCheck()V

    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailController;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "enableAutoUpdate() - Component is not running"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "enableAutoUpdate() - Null handle"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_DisableAutoUpdateHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "enableAutoUpdate() - Invalid handle"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "enableAutoUpdate() - Handle count : "

    iget-object v2, p0, Lcom/android/camera/component/ThumbnailController;->m_DisableAutoUpdateHandles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_DisableAutoUpdateHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2711

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v3, v3, v1}, Lcom/android/camera/component/ThumbnailController;->sendAsyncMessage(IIILjava/lang/Object;)Z

    goto :goto_0
.end method

.method protected handleAsyncMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;->handleAsyncMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/camera/component/ThumbnailController;->m_IsDeletingMedia:Z

    if-nez v0, :cond_0

    const/16 v0, 0x2711

    invoke-virtual {p0, v0}, Lcom/android/camera/component/ThumbnailController;->removeAsyncMessages(I)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/component/ThumbnailController;->createThumbnailImage(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 8

    const/16 v2, 0x2711

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, v1}, Lcom/android/camera/component/ThumbnailController;->clearCachedMediaInfo(Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailController;->isWorkerThreadRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-wide/16 v6, 0x64

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/component/ThumbnailController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;J)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_DisableAutoUpdateHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v2, v3, v3, v0}, Lcom/android/camera/component/ThumbnailController;->sendAsyncMessage(IIILjava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Auto-update is disabled"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 4

    invoke-super {p0}, Lcom/android/camera/component/AsyncCameraThreadComponent;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    const-class v2, Lcom/android/camera/io/IMediaFileWriter;

    invoke-virtual {p0, v2}, Lcom/android/camera/component/ThumbnailController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/io/IMediaFileWriter;

    iget-object v2, v0, Lcom/android/camera/CameraThread;->captureCanceledEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/component/ThumbnailController$1;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ThumbnailController$1;-><init>(Lcom/android/camera/component/ThumbnailController;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v2, v0, Lcom/android/camera/CameraThread;->captureFailedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/component/ThumbnailController$2;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ThumbnailController$2;-><init>(Lcom/android/camera/component/ThumbnailController;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v2, v0, Lcom/android/camera/CameraThread;->captureStartingEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/component/ThumbnailController$3;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ThumbnailController$3;-><init>(Lcom/android/camera/component/ThumbnailController;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v2, v0, Lcom/android/camera/CameraThread;->deletingLatestMediaEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/component/ThumbnailController$4;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ThumbnailController$4;-><init>(Lcom/android/camera/component/ThumbnailController;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mediaDeletedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/component/ThumbnailController$5;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ThumbnailController$5;-><init>(Lcom/android/camera/component/ThumbnailController;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/camera/io/IMediaFileWriter;->mediaFileSavedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/component/ThumbnailController$6;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ThumbnailController$6;-><init>(Lcom/android/camera/component/ThumbnailController;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    :goto_0
    iget-object v2, v0, Lcom/android/camera/CameraThread;->mediaSavedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/component/ThumbnailController$7;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ThumbnailController$7;-><init>(Lcom/android/camera/component/ThumbnailController;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mediaSaveFailedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/component/ThumbnailController$8;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ThumbnailController$8;-><init>(Lcom/android/camera/component/ThumbnailController;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v2, v0, Lcom/android/camera/CameraThread;->videoThumbnailCreatedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/component/ThumbnailController$9;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ThumbnailController$9;-><init>(Lcom/android/camera/component/ThumbnailController;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "initializeOverride() - No IMediaFileWriter interface"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method link(Lcom/android/camera/component/ThumbnailUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    return-void
.end method

.method public final updateThumbnailImageDirectly(Lcom/android/camera/MediaInfo;Landroid/graphics/Bitmap;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailController;->threadAccessCheck()V

    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailController;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "updateThumbnailImageDirectly() - Component is not running"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "updateThumbnailImageDirectly()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    if-nez v0, :cond_3

    :cond_2
    const/4 p2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    invoke-direct {p0, p2}, Lcom/android/camera/component/ThumbnailController;->composeGalleryImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    const/16 v2, 0x2711

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v6, v5, v3

    aput-object p2, v5, v8

    const/4 v0, 0x2

    aput-object v7, v5, v0

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ThumbnailController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    move v3, v8

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/camera/MediaInfo;->getFullPath()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "updateThumbnailImageDirectly() - No UI"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method
