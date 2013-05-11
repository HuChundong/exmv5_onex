.class public Lcom/android/camera/SnapboothFileManager;
.super Ljava/lang/Object;
.source "SnapboothFileManager.java"


# static fields
.field public static final DCFInfo:Lcom/android/camera/io/DCFInfo; = null

.field public static final SNAPBOOTH_DIR_SUFFIX:Ljava/lang/String; = "BOOTH"

.field public static final SNAPBOOTH_OUTER_DIR:Ljava/lang/String; = "DCIM"

.field public static final STORAGE_STATE_CHECKING:I = 0x1

.field public static final STORAGE_STATE_NOT_AVAILABLE:I = 0x3

.field public static final STORAGE_STATE_NO_SPACE:I = 0x4

.field public static final STORAGE_STATE_OK:I = 0x2

.field public static final STORAGE_STATE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SnapboothFileManager"

.field private static volatile mCurrentDirIndex:I

.field private static volatile mCurrentFileIndex:I

.field private static mLastContentUri:Landroid/net/Uri;

.field private static mLastFilePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, -0x1

    sput v0, Lcom/android/camera/SnapboothFileManager;->mCurrentDirIndex:I

    sput v0, Lcom/android/camera/SnapboothFileManager;->mCurrentFileIndex:I

    new-instance v0, Lcom/android/camera/io/DCFInfo;

    const-string v1, "BOOTH"

    const-string v2, "IMAG"

    const-string v3, "snapbooth_current_dir_index"

    const-string v4, "snapbooth_current_image_index"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/io/DCFInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/SnapboothFileManager;->DCFInfo:Lcom/android/camera/io/DCFInfo;

    sget-object v0, Lcom/android/camera/SnapboothFileManager;->DCFInfo:Lcom/android/camera/io/DCFInfo;

    invoke-static {v0}, Lcom/android/camera/io/DCFUtility;->registerDCFInfo(Lcom/android/camera/io/DCFInfo;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkStorageState(Landroid/app/Activity;)I
    .locals 11

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v5, 0x3

    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/camera/SnapboothFileManager;->initDirectoryAndFileIndex(Z)V

    new-instance v0, Ljava/io/File;

    const-string v8, "%s/%s"

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/camera/SnapboothFileManager;->getRootStorageDirectory()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v7

    const-string v10, "DCIM"

    aput-object v10, v9, v2

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v8, "SnapboothFileManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkStorageState() - Checking directory \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v8

    if-nez v8, :cond_0

    const-string v6, "SnapboothFileManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkStorageState() - Cannot create directory \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v5

    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v8, "%d%s"

    new-array v9, v6, [Ljava/lang/Object;

    sget v10, Lcom/android/camera/SnapboothFileManager;->mCurrentDirIndex:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    const-string v10, "BOOTH"

    aput-object v10, v9, v2

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v8, "SnapboothFileManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkStorageState() - Checking directory \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v7

    if-nez v7, :cond_2

    const-string v6, "SnapboothFileManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkStorageState() - Cannot create directory \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    move v2, v7

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/io/File;

    const-string v7, ".css_dummy_file"

    invoke-direct {v4, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v7

    if-nez v7, :cond_4

    const-string v6, "SnapboothFileManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkStorageState() - Cannot create temp file in directory \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_3
    move-object v0, v1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_5
    move-object v0, v1

    move v5, v6

    goto/16 :goto_0

    :catch_0
    move-exception v3

    :try_start_1
    const-string v6, "SnapboothFileManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkStorageState() - Cannot create temp file in directory \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_6
    move-object v0, v1

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_7
    throw v5
.end method

.method public static declared-synchronized clearDirectoryAndFileIndex()V
    .locals 2

    const-class v1, Lcom/android/camera/SnapboothFileManager;

    monitor-enter v1

    const/4 v0, -0x1

    :try_start_0
    sput v0, Lcom/android/camera/SnapboothFileManager;->mCurrentDirIndex:I

    const/4 v0, -0x1

    sput v0, Lcom/android/camera/SnapboothFileManager;->mCurrentFileIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized deleteCurrentImageFile(Landroid/app/Activity;)Z
    .locals 5

    const-class v1, Lcom/android/camera/SnapboothFileManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/camera/SnapboothFileManager;->mLastContentUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/camera/SnapboothFileManager;->mLastContentUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/SnapboothFileManager;->mLastContentUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/camera/SnapboothFileManager;->clearDirectoryAndFileIndex()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getCurrentDirectoryIndex(Landroid/app/Activity;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/SnapboothFileManager;->initDirectoryAndFileIndex(Z)V

    sget v0, Lcom/android/camera/SnapboothFileManager;->mCurrentDirIndex:I

    return v0
.end method

.method public static getCurrentImageFileIndex(Landroid/app/Activity;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/SnapboothFileManager;->initDirectoryAndFileIndex(Z)V

    sget v0, Lcom/android/camera/SnapboothFileManager;->mCurrentFileIndex:I

    return v0
.end method

.method public static getLastContentUri(Landroid/app/Activity;)Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/camera/SnapboothFileManager;->mLastContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public static getLastImageFilePath()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/SnapboothFileManager;->mLastFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public static getLastThumbnailImage(Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/camera/SnapboothFileManager;->initDirectoryAndFileIndex(Z)V

    sget-object v1, Lcom/android/camera/SnapboothFileManager;->DCFInfo:Lcom/android/camera/io/DCFInfo;

    invoke-static {}, Lcom/android/camera/SnapboothFileManager;->getRootStorageDirectory()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DCIM"

    invoke-static {v2, v3}, Lcom/android/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/camera/io/FileCounter;

    sget v4, Lcom/android/camera/SnapboothFileManager;->mCurrentDirIndex:I

    invoke-direct {v3, v4}, Lcom/android/camera/io/FileCounter;-><init>(I)V

    new-instance v4, Lcom/android/camera/io/FileCounter;

    sget v5, Lcom/android/camera/SnapboothFileManager;->mCurrentFileIndex:I

    invoke-direct {v4, v5}, Lcom/android/camera/io/FileCounter;-><init>(I)V

    sget-object v5, Lcom/android/camera/io/FileFormat;->Jpeg:Lcom/android/camera/io/FileFormat;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/camera/io/DCFUtility;->getFilePath(Lcom/android/camera/io/DCFInfo;Ljava/lang/String;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileFormat;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/android/camera/SnapboothFileManager;->getThumbnailImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public static declared-synchronized getNextImageFilePath(Landroid/app/Activity;Ljava/lang/String;)Lcom/android/camera/io/DCFPath;
    .locals 11

    const/4 v5, 0x0

    const-class v6, Lcom/android/camera/SnapboothFileManager;

    monitor-enter v6

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "/sdcard"

    :cond_0
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/camera/SnapboothFileManager;->initDirectoryAndFileIndex(Z)V

    invoke-static {}, Lcom/android/camera/SnapboothFileManager;->getRootStorageDirectory()Ljava/lang/String;

    move-result-object v4

    const-string v7, "DCIM"

    invoke-static {v4, v7}, Lcom/android/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/io/FileUtility;->createDirectory(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v5

    :goto_0
    monitor-exit v6

    return-object v4

    :cond_1
    const/4 v3, 0x3

    :goto_1
    :try_start_1
    sget v4, Lcom/android/camera/SnapboothFileManager;->mCurrentFileIndex:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/android/camera/SnapboothFileManager;->mCurrentFileIndex:I

    sget v4, Lcom/android/camera/SnapboothFileManager;->mCurrentFileIndex:I

    const/16 v7, 0x270f

    if-le v4, v7, :cond_2

    sget v4, Lcom/android/camera/SnapboothFileManager;->mCurrentDirIndex:I

    const/16 v7, 0x3e7

    if-ge v4, v7, :cond_3

    sget v4, Lcom/android/camera/SnapboothFileManager;->mCurrentDirIndex:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/android/camera/SnapboothFileManager;->mCurrentDirIndex:I

    const/4 v4, 0x1

    sput v4, Lcom/android/camera/SnapboothFileManager;->mCurrentFileIndex:I

    :cond_2
    :goto_2
    sget-object v4, Lcom/android/camera/SnapboothFileManager;->DCFInfo:Lcom/android/camera/io/DCFInfo;

    const-string v7, "DCIM"

    invoke-static {p1, v7}, Lcom/android/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/camera/io/FileCounter;

    sget v9, Lcom/android/camera/SnapboothFileManager;->mCurrentDirIndex:I

    invoke-direct {v8, v9}, Lcom/android/camera/io/FileCounter;-><init>(I)V

    new-instance v9, Lcom/android/camera/io/FileCounter;

    sget v10, Lcom/android/camera/SnapboothFileManager;->mCurrentFileIndex:I

    invoke-direct {v9, v10}, Lcom/android/camera/io/FileCounter;-><init>(I)V

    sget-object v10, Lcom/android/camera/io/FileFormat;->Jpeg:Lcom/android/camera/io/FileFormat;

    invoke-static {v4, v7, v8, v9, v10}, Lcom/android/camera/io/DCFUtility;->getFilePath(Lcom/android/camera/io/DCFInfo;Ljava/lang/String;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileFormat;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "DCIM"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v7, Lcom/android/camera/SnapboothFileManager;->mCurrentDirIndex:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "BOOTH"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/io/FileUtility;->createDirectory(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getNextImageFilePath() - Cannot create directory \'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    goto/16 :goto_0

    :cond_3
    move-object v0, p0

    check-cast v0, Lcom/android/camera/HTCSnapbooth;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/camera/HTCSnapbooth;->getSettings()Lcom/android/camera/Settings;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/android/camera/io/DCFUtility;->backupDcimDirectory(Lcom/android/camera/Settings;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "SnapboothFileManager"

    const-string v7, "Cannot backup \'DCIM\' directory"

    invoke-static {v4, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    goto/16 :goto_0

    :cond_4
    const/16 v4, 0x64

    sput v4, Lcom/android/camera/SnapboothFileManager;->mCurrentDirIndex:I

    const/4 v4, 0x1

    sput v4, Lcom/android/camera/SnapboothFileManager;->mCurrentFileIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v4

    monitor-exit v6

    throw v4

    :cond_5
    if-gtz v3, :cond_6

    :try_start_2
    const-string v4, "SnapboothFileManager"

    const-string v7, "Cannot find available location for image saving"

    invoke-static {v4, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    goto/16 :goto_0

    :cond_6
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/camera/SnapboothFileManager;->initDirectoryAndFileIndex(Z)V

    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    :cond_7
    new-instance v4, Lcom/android/camera/io/DCFPath;

    sget-object v5, Lcom/android/camera/SnapboothFileManager;->DCFInfo:Lcom/android/camera/io/DCFInfo;

    new-instance v7, Lcom/android/camera/io/FileCounter;

    sget v8, Lcom/android/camera/SnapboothFileManager;->mCurrentFileIndex:I

    invoke-direct {v7, v8}, Lcom/android/camera/io/FileCounter;-><init>(I)V

    sget-object v8, Lcom/android/camera/io/FileFormat;->Jpeg:Lcom/android/camera/io/FileFormat;

    invoke-static {v5, v7, v8}, Lcom/android/camera/io/DCFUtility;->getFileName(Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileFormat;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/android/camera/io/FileCounter;

    sget v8, Lcom/android/camera/SnapboothFileManager;->mCurrentDirIndex:I

    invoke-direct {v7, v8}, Lcom/android/camera/io/FileCounter;-><init>(I)V

    new-instance v8, Lcom/android/camera/io/FileCounter;

    sget v9, Lcom/android/camera/SnapboothFileManager;->mCurrentFileIndex:I

    invoke-direct {v8, v9}, Lcom/android/camera/io/FileCounter;-><init>(I)V

    invoke-direct {v4, v1, v5, v7, v8}, Lcom/android/camera/io/DCFPath;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileCounter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public static getRootStorageDirectory()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/camera/io/StorageSlot;->hasInternalMemorySlot()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/io/StorageSlot;->TABLET_STORAGE:Lcom/android/camera/io/StorageSlot;

    iget-object v0, v0, Lcom/android/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    iget-object v0, v0, Lcom/android/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getThumbnailImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v9, 0x0

    const-string v1, "SnapboothFileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getThumbnailImage("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    :try_start_0
    invoke-static {p0, v1}, Lcom/htc/wrap/android/media/HtcWrapThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    sget v2, Lcom/android/camera/SnapboothCustomize;->THUMBNAIL_IMG_DIFF:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget v5, Lcom/android/camera/SnapboothCustomize;->THUMBNAIL_IMG_DIFF:I

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v8

    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    :catch_0
    move-exception v7

    const-string v1, "SnapboothFileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot get thumbnail image from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v8, v9

    goto :goto_0
.end method

.method public static declared-synchronized initDirectoryAndFileIndex(Z)V
    .locals 6

    const/4 v5, 0x1

    const/16 v4, 0x64

    const-class v2, Lcom/android/camera/SnapboothFileManager;

    monitor-enter v2

    if-nez p0, :cond_1

    :try_start_0
    sget v1, Lcom/android/camera/SnapboothFileManager;->mCurrentDirIndex:I

    if-lt v1, v4, :cond_1

    sget v1, Lcom/android/camera/SnapboothFileManager;->mCurrentDirIndex:I

    const/16 v3, 0x3e7

    if-gt v1, v3, :cond_1

    sget v1, Lcom/android/camera/SnapboothFileManager;->mCurrentFileIndex:I

    if-lt v1, v5, :cond_1

    sget v1, Lcom/android/camera/SnapboothFileManager;->mCurrentFileIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0x270f

    if-gt v1, v3, :cond_1

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/SnapboothFileManager;->getRootStorageDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "DCIM"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/camera/SnapboothFileManager;->DCFInfo:Lcom/android/camera/io/DCFInfo;

    invoke-static {v0, v1}, Lcom/android/camera/io/DCFUtility;->findLatestDirectoryCounter(Ljava/lang/String;Lcom/android/camera/io/DCFInfo;)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothFileManager;->mCurrentDirIndex:I

    sget v1, Lcom/android/camera/SnapboothFileManager;->mCurrentDirIndex:I

    if-lt v1, v4, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/android/camera/SnapboothFileManager;->mCurrentDirIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "BOOTH"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/camera/SnapboothFileManager;->DCFInfo:Lcom/android/camera/io/DCFInfo;

    invoke-static {v1, v3}, Lcom/android/camera/io/DCFUtility;->findLatestMainFileCounter(Ljava/lang/String;Lcom/android/camera/io/DCFInfo;)I

    move-result v1

    sput v1, Lcom/android/camera/SnapboothFileManager;->mCurrentFileIndex:I

    sget v1, Lcom/android/camera/SnapboothFileManager;->mCurrentFileIndex:I

    if-ge v1, v5, :cond_0

    const/4 v1, 0x0

    sput v1, Lcom/android/camera/SnapboothFileManager;->mCurrentFileIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_2
    const/16 v1, 0x64

    :try_start_2
    sput v1, Lcom/android/camera/SnapboothFileManager;->mCurrentDirIndex:I

    const/4 v1, 0x0

    sput v1, Lcom/android/camera/SnapboothFileManager;->mCurrentFileIndex:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized storeImage(Landroid/app/Activity;Ljava/lang/Object;)Z
    .locals 33

    const-class v32, Lcom/android/camera/SnapboothFileManager;

    monitor-enter v32

    :try_start_0
    const-string v2, "SnapboothFileManager"

    const-string v3, "Store Jpeg Image..."

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v2, "SnapboothFileManager"

    const-string v3, "image = NULL in storeImage()"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    monitor-exit v32

    return v2

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/camera/SnapboothFileManager;->getRootStorageDirectory()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/camera/SnapboothFileManager;->getNextImageFilePath(Landroid/app/Activity;Ljava/lang/String;)Lcom/android/camera/io/DCFPath;

    move-result-object v25

    if-nez v25, :cond_1

    const-string v2, "SnapboothFileManager"

    const-string v3, "Cannot save image due to no available file name"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const-string v2, "SnapboothFileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "storeImage() - directory = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/camera/io/Path;->directoryPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , file name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/camera/io/Path;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/io/StorageSlot;->hasInternalMemorySlot()Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object v3, Lcom/android/camera/io/StorageSlot;->TABLET_STORAGE:Lcom/android/camera/io/StorageSlot;

    :goto_1
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/camera/io/Path;->directoryPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/camera/io/Path;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/camera/io/Path;->fileName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Lcom/android/camera/io/FileFormat;->Jpeg:Lcom/android/camera/io/FileFormat;

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v11}, Lcom/android/camera/MediaProvider;->insertImage(Landroid/content/Context;Lcom/android/camera/io/StorageSlot;Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;JILandroid/content/ContentValues;Lcom/android/camera/io/FileFormat;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/android/camera/SnapboothFileManager;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/io/DCFPath;->getFullPath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/camera/SnapboothFileManager;->mLastFilePath:Ljava/lang/String;

    const-string v2, "SnapboothFileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "storeImage() - Content URI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/SnapboothFileManager;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_9

    new-instance v26, Ljava/io/FileOutputStream;

    sget-object v2, Lcom/android/camera/SnapboothFileManager;->mLastFilePath:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    check-cast p1, Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual/range {v26 .. v26}, Ljava/io/FileOutputStream;->close()V

    const-string v2, "SnapboothFileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Save image to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/SnapboothFileManager;->mLastFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    const-string v2, "ro.product.model"

    invoke-static {v2}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v2, "ro.product.manufacturer"

    invoke-static {v2}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v31

    const/4 v2, 0x2

    invoke-virtual {v13, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    const/4 v2, 0x5

    invoke-virtual {v13, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    const/16 v2, 0xb

    invoke-virtual {v13, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    const/16 v2, 0xc

    invoke-virtual {v13, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    const/16 v2, 0xd

    invoke-virtual {v13, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    const/4 v2, 0x2

    invoke-virtual {v13, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0xa

    if-ge v2, v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    :cond_2
    const/4 v2, 0x5

    invoke-virtual {v13, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    :cond_3
    const/16 v2, 0xb

    invoke-virtual {v13, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    :cond_4
    const/16 v2, 0xc

    invoke-virtual {v13, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    :cond_5
    const/16 v2, 0xd

    invoke-virtual {v13, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v17, Landroid/media/ExifInterface;

    sget-object v2, Lcom/android/camera/SnapboothFileManager;->mLastFilePath:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    if-eqz v21, :cond_7

    const-string v2, "Make"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz v23, :cond_8

    const-string v2, "Model"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-string v2, "DateTime"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v14}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    :try_start_3
    new-instance v18, Ljava/io/File;

    sget-object v2, Lcom/android/camera/SnapboothFileManager;->mLastFilePath:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v12, v2, [B

    new-instance v20, Ljava/io/FileInputStream;

    sget-object v2, Lcom/android/camera/SnapboothFileManager;->mLastFilePath:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual/range {v20 .. v20}, Ljava/io/FileInputStream;->close()V

    move-object/from16 p1, v12

    :cond_9
    sget-object v2, Lcom/android/camera/SnapboothFileManager;->mLastContentUri:Landroid/net/Uri;

    if-nez v2, :cond_c

    const-string v2, "SnapboothFileManager"

    const-string v3, "Store image: mLastContentUri = null"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/io/DCFPath;->getFullPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/android/camera/SnapboothFileManager;->mLastContentUri:Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    const/16 v29, 0x0

    :try_start_4
    new-instance v30, Ljava/io/FileOutputStream;

    sget-object v2, Lcom/android/camera/SnapboothFileManager;->mLastFilePath:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    move-object/from16 v0, p1

    instance-of v2, v0, [B

    if-eqz v2, :cond_d

    check-cast p1, [B

    check-cast p1, [B

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_4
    if-eqz v30, :cond_a

    :try_start_6
    invoke-virtual/range {v30 .. v30}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :cond_a
    :try_start_7
    move-object/from16 v0, p0

    check-cast v0, Lcom/android/camera/HTCSnapbooth;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/camera/HTCSnapbooth;->getSettings()Lcom/android/camera/Settings;

    move-result-object v2

    const-string v3, "snapbooth_current_image_index"

    new-instance v4, Ljava/lang/Integer;

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/camera/io/DCFPath;->fileNumber:Lcom/android/camera/io/FileCounter;

    iget v5, v5, Lcom/android/camera/io/FileCounter;->mainCounter:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    check-cast p0, Lcom/android/camera/HTCSnapbooth;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/HTCSnapbooth;->getSettings()Lcom/android/camera/Settings;

    move-result-object v2

    const-string v3, "snapbooth_current_dir_index"

    new-instance v4, Ljava/lang/Integer;

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/camera/io/DCFPath;->directoryNumber:Lcom/android/camera/io/FileCounter;

    iget v5, v5, Lcom/android/camera/io/FileCounter;->mainCounter:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_b
    :try_start_8
    sget-object v3, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    goto/16 :goto_1

    :cond_c
    const-string v2, "SnapboothFileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Store image: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/SnapboothFileManager;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_3

    :catch_0
    move-exception v16

    :try_start_9
    const-string v2, "SnapboothFileManager"

    const-string v3, "Exception while compressing image."

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_d
    :try_start_a
    check-cast p1, Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v2

    move-object/from16 v29, v30

    :goto_5
    if-eqz v29, :cond_e

    :try_start_b
    invoke-virtual/range {v29 .. v29}, Ljava/io/FileOutputStream;->close()V

    :cond_e
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    :catchall_1
    move-exception v2

    monitor-exit v32

    throw v2

    :catchall_2
    move-exception v2

    goto :goto_5

    :catch_1
    move-exception v2

    goto/16 :goto_2
.end method
