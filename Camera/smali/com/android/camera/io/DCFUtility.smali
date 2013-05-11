.class public final Lcom/android/camera/io/DCFUtility;
.super Ljava/lang/Object;
.source "DCFUtility.java"


# static fields
.field public static final DCF_DIRECTORY_START_NUMBER:I = 0x64

.field public static final DCF_FILE_START_NUMBER:I = 0x1

.field public static final DCF_MAX_DIRECTORY_NUMBER:I = 0x3e7

.field public static final DCF_MAX_FILE_COUNT:I = 0x270f

.field public static final DCF_MAX_FILE_NUMBER:I = 0x270f

.field public static final DCF_ROOT_DIRECTORY:Ljava/lang/String; = "DCIM"

.field private static final TAG:Ljava/lang/String; = "DCFUtility"

.field private static final m_DCFInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/io/DCFInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final m_EnumFilesForDirCounter:Lcom/android/camera/io/FileUtility$FileEnumerationCallback;

.field private static final m_EnumFilesForFileCounter:Lcom/android/camera/io/FileUtility$FileEnumerationCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/io/DCFUtility;->m_DCFInfos:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/camera/io/DCFUtility$1;

    invoke-direct {v0}, Lcom/android/camera/io/DCFUtility$1;-><init>()V

    sput-object v0, Lcom/android/camera/io/DCFUtility;->m_EnumFilesForDirCounter:Lcom/android/camera/io/FileUtility$FileEnumerationCallback;

    new-instance v0, Lcom/android/camera/io/DCFUtility$2;

    invoke-direct {v0}, Lcom/android/camera/io/DCFUtility$2;-><init>()V

    sput-object v0, Lcom/android/camera/io/DCFUtility;->m_EnumFilesForFileCounter:Lcom/android/camera/io/FileUtility$FileEnumerationCallback;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backupDcimDirectory(Lcom/android/camera/Settings;Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x0

    const-string v3, "DCIM"

    invoke-static {p1, v3}, Lcom/android/camera/io/FileUtility;->backupDirectory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "DCFUtility"

    const-string v4, "Cannot backup \'DCIM\' directory."

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "DCIM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/io/FileUtility;->createDirectory(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "DCFUtility"

    const-string v4, "Cannot create new \'DCIM\' directory."

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/android/camera/io/DCFUtility;->m_DCFInfos:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/android/camera/io/DCFUtility;->m_DCFInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/io/DCFInfo;

    iget-object v2, v0, Lcom/android/camera/io/DCFInfo;->fileCounterPrefKey:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/android/camera/io/DCFInfo;->fileCounterPrefKey:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/camera/Settings;->remove(Ljava/lang/String;)Z

    :cond_3
    iget-object v2, v0, Lcom/android/camera/io/DCFInfo;->dirCounterPrefKey:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/camera/io/DCFInfo;->dirCounterPrefKey:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/camera/Settings;->remove(Ljava/lang/String;)Z

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_4
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static checkFileExistence(Ljava/lang/String;Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileFormat;)Z
    .locals 2

    invoke-static {p1, p2, p3}, Lcom/android/camera/io/DCFUtility;->getFileName(Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileFormat;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static ensureDirectoryExists(Lcom/android/camera/Settings;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 5

    const/4 v1, -0x1

    const/16 v2, 0x3e7

    if-le p3, v2, :cond_1

    invoke-static {p0, p1}, Lcom/android/camera/io/DCFUtility;->backupDcimDirectory(Lcom/android/camera/Settings;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DCFUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot backup \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' directory."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    const/16 p3, 0x64

    :cond_1
    invoke-static {p1, p2}, Lcom/android/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/io/FileUtility;->createDirectory(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "DCFUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot create \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/android/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "DCFUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not a directory. Creating new directory."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, p3, 0x1

    invoke-static {p0, p1, p2, v1, p4}, Lcom/android/camera/io/DCFUtility;->ensureDirectoryExists(Lcom/android/camera/Settings;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result p3

    :cond_3
    move v1, p3

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/io/FileUtility;->createDirectory(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "DCFUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot create \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' directory."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static final findLatestDirectoryCounter(Ljava/lang/String;Lcom/android/camera/io/DCFInfo;)I
    .locals 5

    const/4 v3, 0x1

    :try_start_0
    new-array v1, v3, [I

    const/4 v3, 0x0

    const/16 v4, 0x63

    aput v4, v1, v3

    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    sget-object v3, Lcom/android/camera/io/DCFUtility;->m_EnumFilesForDirCounter:Lcom/android/camera/io/FileUtility$FileEnumerationCallback;

    invoke-static {p0, v3, v2}, Lcom/android/camera/io/FileUtility;->enumerateFiles(Ljava/lang/String;Lcom/android/camera/io/FileUtility$FileEnumerationCallback;Ljava/lang/Object;)Z

    const/4 v3, 0x0

    aget v3, v1, v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v3

    :catch_0
    move-exception v0

    const-string v3, "DCFUtility"

    const-string v4, "findLatestDirectoryCounter() - Cannot find directory counter"

    invoke-static {v3, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v3, -0x1

    goto :goto_0
.end method

.method public static findLatestMainFileCounter(Ljava/lang/String;Lcom/android/camera/io/DCFInfo;)I
    .locals 5

    const/4 v3, 0x1

    :try_start_0
    new-array v1, v3, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v1, v3

    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    sget-object v3, Lcom/android/camera/io/DCFUtility;->m_EnumFilesForFileCounter:Lcom/android/camera/io/FileUtility$FileEnumerationCallback;

    invoke-static {p0, v3, v2}, Lcom/android/camera/io/FileUtility;->enumerateFiles(Ljava/lang/String;Lcom/android/camera/io/FileUtility$FileEnumerationCallback;Ljava/lang/Object;)Z

    const/4 v3, 0x0

    aget v3, v1, v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v3

    :catch_0
    move-exception v0

    const-string v3, "DCFUtility"

    const-string v4, "findLatestMainFileCounter() - Cannot find file counter"

    invoke-static {v3, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v3, -0x1

    goto :goto_0
.end method

.method public static findNextDirAndFileCounters(Lcom/android/camera/Settings;Ljava/lang/String;Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileFormat;Lcom/android/camera/Reference;Lcom/android/camera/Reference;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/Settings;",
            "Ljava/lang/String;",
            "Lcom/android/camera/io/DCFInfo;",
            "Lcom/android/camera/io/FileFormat;",
            "Lcom/android/camera/Reference",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/camera/Reference",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    sget-object v4, Lcom/android/camera/io/FileUtility$InformationSource;->Cache:Lcom/android/camera/io/FileUtility$InformationSource;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/camera/io/DCFUtility;->findNextDirAndFileCounters(Lcom/android/camera/Settings;Ljava/lang/String;Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileFormat;Lcom/android/camera/io/FileUtility$InformationSource;Lcom/android/camera/Reference;Lcom/android/camera/Reference;)Z

    move-result v0

    return v0
.end method

.method public static findNextDirAndFileCounters(Lcom/android/camera/Settings;Ljava/lang/String;Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileFormat;Lcom/android/camera/io/FileUtility$InformationSource;Lcom/android/camera/Reference;Lcom/android/camera/Reference;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/Settings;",
            "Ljava/lang/String;",
            "Lcom/android/camera/io/DCFInfo;",
            "Lcom/android/camera/io/FileFormat;",
            "Lcom/android/camera/io/FileUtility$InformationSource;",
            "Lcom/android/camera/Reference",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/camera/Reference",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    :try_start_0
    iget-object v8, p2, Lcom/android/camera/io/DCFInfo;->dirCounterPrefKey:Ljava/lang/String;

    const/16 v9, 0x64

    iget v10, p2, Lcom/android/camera/io/DCFInfo;->maxDirectoryCounter:I

    invoke-static {p0, v8, v9, v10}, Lcom/android/camera/io/DCFUtility;->getCounterFromPreference(Lcom/android/camera/Settings;Ljava/lang/String;II)I

    move-result v1

    iget-object v8, p2, Lcom/android/camera/io/DCFInfo;->fileCounterPrefKey:Ljava/lang/String;

    const/4 v9, 0x0

    iget v10, p2, Lcom/android/camera/io/DCFInfo;->maxFileCounter:I

    invoke-static {p0, v8, v9, v10}, Lcom/android/camera/io/DCFUtility;->getCounterFromPreference(Lcom/android/camera/Settings;Ljava/lang/String;II)I

    move-result v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Lcom/android/camera/io/DCFInfo;->dirFreeChar:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/android/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/16 v8, 0x270f

    invoke-static {v2, v8, p4}, Lcom/android/camera/io/FileUtility;->getFileCount(Ljava/lang/String;ILcom/android/camera/io/FileUtility$InformationSource;)I

    move-result v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v6

    const-string v8, "DCFUtility"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "findNextDirAndFileCounters() - File count in \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", cost "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    iget v8, p2, Lcom/android/camera/io/DCFInfo;->maxFileCounter:I

    if-gt v5, v8, :cond_0

    const/16 v8, 0x270f

    if-lt v4, v8, :cond_2

    :cond_0
    iget v8, p2, Lcom/android/camera/io/DCFInfo;->maxDirectoryCounter:I

    if-lt v1, v8, :cond_1

    const-string v8, "DCFUtility"

    const-string v9, "findNextDirAndFileCounters() - No more directory and file counters"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_0
    return v8

    :cond_1
    const/4 v5, 0x1

    add-int/lit8 v1, v1, 0x1

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Lcom/android/camera/io/DCFInfo;->dirFreeChar:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/android/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v8, Lcom/android/camera/io/FileCounter;

    invoke-direct {v8, v5}, Lcom/android/camera/io/FileCounter;-><init>(I)V

    invoke-static {v2, p2, v8, p3}, Lcom/android/camera/io/DCFUtility;->checkFileExistence(Ljava/lang/String;Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileFormat;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "DCFUtility"

    const-string v9, "findNextDirAndFileCounters() - Scan for latest directory and file counters"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/android/camera/io/DCFUtility;->findLatestDirectoryCounter(Ljava/lang/String;Lcom/android/camera/io/DCFInfo;)I

    move-result v1

    if-gez v1, :cond_3

    const-string v8, "DCFUtility"

    const-string v9, "findNextDirAndFileCounters() - Cannot find latest directory counter"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    goto :goto_0

    :cond_3
    const/16 v8, 0x64

    if-ge v1, v8, :cond_4

    const/16 v1, 0x64

    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Lcom/android/camera/io/DCFInfo;->dirFreeChar:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/android/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/android/camera/io/DCFUtility;->findLatestMainFileCounter(Ljava/lang/String;Lcom/android/camera/io/DCFInfo;)I

    move-result v5

    if-gez v5, :cond_5

    const-string v8, "DCFUtility"

    const-string v9, "findNextDirAndFileCounters() - Cannot find latest file counter"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    goto :goto_0

    :cond_5
    const-string v8, "DCFUtility"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "findNextDirAndFileCounters() - Latest directory counter = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", file counter = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/16 v8, 0x270f

    invoke-static {v2, v8, p4}, Lcom/android/camera/io/FileUtility;->getFileCount(Ljava/lang/String;ILcom/android/camera/io/FileUtility$InformationSource;)I

    move-result v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v6

    const-string v8, "DCFUtility"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "findNextDirAndFileCounters() - File count in \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", cost "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    iget v8, p2, Lcom/android/camera/io/DCFInfo;->maxFileCounter:I

    if-gt v5, v8, :cond_6

    const/16 v8, 0x270f

    if-lt v4, v8, :cond_8

    :cond_6
    iget v8, p2, Lcom/android/camera/io/DCFInfo;->maxDirectoryCounter:I

    if-lt v1, v8, :cond_7

    const-string v8, "DCFUtility"

    const-string v9, "findNextDirAndFileCounters() - No more directory and file counters"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_7
    const/4 v5, 0x0

    add-int/lit8 v1, v1, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Lcom/android/camera/io/DCFInfo;->dirFreeChar:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/android/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_8
    invoke-static {p1}, Lcom/android/camera/io/FileUtility;->createDirectory(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "DCFUtility"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "findNextDirAndFileCounters() - Cannot create directory \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_9
    invoke-static {v2}, Lcom/android/camera/io/FileUtility;->createDirectory(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    const-string v8, "DCFUtility"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "findNextDirAndFileCounters() - Cannot create directory \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_a
    const-string v8, "DCFUtility"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "findNextDirAndFileCounters() - Directory counter = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", file counter = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, p5

    iput-object v8, v0, Lcom/android/camera/Reference;->target:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, p6

    iput-object v8, v0, Lcom/android/camera/Reference;->target:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v3

    const-string v8, "DCFUtility"

    const-string v9, "findNextDirAndFileCounters() - Cannot find next available counters"

    invoke-static {v8, v9, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method private static getCounterFromPreference(Lcom/android/camera/Settings;Ljava/lang/String;II)I
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return p2

    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/Settings;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lt v0, p2, :cond_0

    if-le v0, p3, :cond_2

    move p2, p3

    goto :goto_0

    :cond_2
    move p2, v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "DCFUtility"

    const-string v3, "getCounterFromPreference() - Cannot read counter from preference"

    invoke-static {v2, v3, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getDcimPath(Lcom/android/camera/io/StorageSlot;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    const-string v1, "DCIM"

    invoke-static {v0, v1}, Lcom/android/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDirectoryName(Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileCounter;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/android/camera/io/FileCounter;->mainCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/io/DCFInfo;->dirFreeChar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDirectoryPath(Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/StorageSlot;Lcom/android/camera/io/FileCounter;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/android/camera/io/DCFUtility;->getDcimPath(Lcom/android/camera/io/StorageSlot;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/camera/io/DCFUtility;->getDirectoryPath(Lcom/android/camera/io/DCFInfo;Ljava/lang/String;Lcom/android/camera/io/FileCounter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDirectoryPath(Lcom/android/camera/io/DCFInfo;Ljava/lang/String;Lcom/android/camera/io/FileCounter;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p2}, Lcom/android/camera/io/DCFUtility;->getDirectoryName(Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileCounter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileName(Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileFormat;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lcom/android/camera/io/DCFInfo;->getFileTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/camera/io/FileCounter;->mainCounter:I

    const/16 v4, 0x2710

    if-ge v3, v4, :cond_1

    iget v4, p0, Lcom/android/camera/io/DCFInfo;->maxFileCounter:I

    const/16 v5, 0x3e8

    if-ge v4, v5, :cond_0

    add-int/lit16 v3, v3, 0x3e8

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    iget v4, p0, Lcom/android/camera/io/DCFInfo;->subCounterDigits:I

    if-lez v4, :cond_3

    const/4 v0, 0x1

    iget v2, p0, Lcom/android/camera/io/DCFInfo;->subCounterDigits:I

    :goto_2
    if-lez v2, :cond_2

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_0
    add-int/lit16 v3, v3, 0x2710

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/16 v4, 0x5f

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/camera/io/FileCounter;->subCounter:I

    mul-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz p2, :cond_4

    iget-object v4, p2, Lcom/android/camera/io/FileFormat;->fileNameExtension:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getFilePath(Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/StorageSlot;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileFormat;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/android/camera/io/DCFUtility;->getDcimPath(Lcom/android/camera/io/StorageSlot;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3, p4}, Lcom/android/camera/io/DCFUtility;->getFilePath(Lcom/android/camera/io/DCFInfo;Ljava/lang/String;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFilePath(Lcom/android/camera/io/DCFInfo;Ljava/lang/String;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileFormat;)Ljava/lang/String;
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/android/camera/io/DCFUtility;->getDirectoryPath(Lcom/android/camera/io/DCFInfo;Ljava/lang/String;Lcom/android/camera/io/FileCounter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p3, p4}, Lcom/android/camera/io/DCFUtility;->getFileName(Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileFormat;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastDirectoryNumber(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, 0x3

    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0x63

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    new-instance v4, Lcom/android/camera/io/DCFUtility$3;

    invoke-direct {v4, v0, v1, p1}, Lcom/android/camera/io/DCFUtility$3;-><init>(IILjava/lang/String;)V

    invoke-static {p0, v4, v3}, Lcom/android/camera/io/FileUtility;->enumerateFiles(Ljava/lang/String;Lcom/android/camera/io/FileUtility$FileEnumerationCallback;Ljava/lang/Object;)Z

    const/4 v4, 0x0

    aget-object v4, v3, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :goto_0
    return v4

    :catch_0
    move-exception v2

    const-string v4, "DCFUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot get last directory number in \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' directory."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static isDcimDirectoryWritable(Lcom/android/camera/io/StorageSlot;)Z
    .locals 1

    if-nez p0, :cond_0

    const-string v0, "slot"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "DCIM"

    invoke-virtual {p0, v0}, Lcom/android/camera/io/StorageSlot;->isWritable(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static registerDCFInfo(Lcom/android/camera/io/DCFInfo;)V
    .locals 2

    if-nez p0, :cond_0

    const-string v0, "dcfInfo"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/android/camera/io/DCFUtility;->m_DCFInfos:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/camera/io/DCFUtility;->m_DCFInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static restoreFileCounter(Lcom/android/camera/Settings;Lcom/android/camera/io/DCFInfo;)V
    .locals 7

    const/16 v5, 0x64

    const/4 v4, 0x1

    iget-object v2, p1, Lcom/android/camera/io/DCFInfo;->fileCounterPrefKey:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "DCFUtility"

    const-string v3, "restoreFileCounter() - No file counter preference"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p1, Lcom/android/camera/io/DCFInfo;->fileCounterPrefKey:Ljava/lang/String;

    iget v3, p1, Lcom/android/camera/io/DCFInfo;->maxFileCounter:I

    invoke-static {p0, v2, v4, v3}, Lcom/android/camera/io/DCFUtility;->getCounterFromPreference(Lcom/android/camera/Settings;Ljava/lang/String;II)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v1, v4, :cond_1

    iget-object v2, p1, Lcom/android/camera/io/DCFInfo;->dirCounterPrefKey:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/android/camera/io/DCFInfo;->dirCounterPrefKey:Ljava/lang/String;

    iget v3, p1, Lcom/android/camera/io/DCFInfo;->maxDirectoryCounter:I

    invoke-static {p0, v2, v5, v3}, Lcom/android/camera/io/DCFUtility;->getCounterFromPreference(Lcom/android/camera/Settings;Ljava/lang/String;II)I

    move-result v0

    if-le v0, v5, :cond_2

    add-int/lit8 v0, v0, -0x1

    iget v1, p1, Lcom/android/camera/io/DCFInfo;->maxFileCounter:I

    const-string v2, "DCFUtility"

    const-string v3, "restoreFileCounter() - Restore directory counter to "

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, " and file counter to "

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p1, Lcom/android/camera/io/DCFInfo;->dirCounterPrefKey:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    iget-object v2, p1, Lcom/android/camera/io/DCFInfo;->fileCounterPrefKey:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v2, "DCFUtility"

    const-string v3, "restoreFileCounter() - Reach minimum file and directory counters"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const-string v2, "DCFUtility"

    const-string v3, "restoreFileCounter() - Reach minimum file counter, but no directory counter preference"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_1
.end method
