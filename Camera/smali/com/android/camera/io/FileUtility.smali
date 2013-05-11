.class public Lcom/android/camera/io/FileUtility;
.super Ljava/lang/Object;
.source "FileUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/io/FileUtility$4;,
        Lcom/android/camera/io/FileUtility$FileEnumerationCallback;,
        Lcom/android/camera/io/FileUtility$InformationSource;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FileUtility"

.field private static final m_FileCountCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/camera/io/FileUtility;->m_FileCountCache:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backupDirectory(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string v8, "FileUtility"

    const-string v10, "\'parentDir\' or \'dirName\' is NULL"

    invoke-static {v8, v10}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v9

    :goto_0
    return v8

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "/"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "FileUtility"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' is not existent"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v9

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "FileUtility"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' is not a directory"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v9

    goto :goto_0

    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ".backup."

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    :try_start_0
    new-instance v8, Lcom/android/camera/io/FileUtility$1;

    invoke-direct {v8, v1, v0}, Lcom/android/camera/io/FileUtility$1;-><init>(ILjava/lang/String;)V

    invoke-static {p0, v8, v7}, Lcom/android/camera/io/FileUtility;->enumerateFiles(Ljava/lang/String;Lcom/android/camera/io/FileUtility$FileEnumerationCallback;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    aget-object v8, v7, v9

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v8, 0x7fffffff

    if-ne v2, v8, :cond_4

    const-string v8, "FileUtility"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No available backup location for \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' directory in \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' directory"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v9

    goto/16 :goto_0

    :catch_0
    move-exception v3

    const-string v8, "FileUtility"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot find available backup location for \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' directory in \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' directory"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v9

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    new-instance v4, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "/"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "FileUtility"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot backup \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' to \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v9

    goto/16 :goto_0

    :cond_5
    move v8, v10

    goto/16 :goto_0
.end method

.method public static clearCachedFileCount()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/io/FileUtility;->clearCachedFileCount(Ljava/lang/String;)V

    return-void
.end method

.method public static clearCachedFileCount(Ljava/lang/String;)V
    .locals 9

    sget-object v6, Lcom/android/camera/io/FileUtility;->m_FileCountCache:Ljava/util/Hashtable;

    monitor-enter v6

    :try_start_0
    sget-object v5, Lcom/android/camera/io/FileUtility;->m_FileCountCache:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->size()I

    move-result v5

    if-lez v5, :cond_0

    if-nez p0, :cond_1

    const-string v5, "FileUtility"

    const-string v7, "clearCachedFileCount() - Clear all cached file count"

    invoke-static {v5, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/android/camera/io/FileUtility;->m_FileCountCache:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->clear()V

    :cond_0
    monitor-exit v6

    return-void

    :cond_1
    sget-object v5, Lcom/android/camera/io/FileUtility;->m_FileCountCache:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->size()I

    move-result v5

    new-array v1, v5, [Ljava/lang/String;

    sget-object v5, Lcom/android/camera/io/FileUtility;->m_FileCountCache:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object v0, v1

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    invoke-virtual {v2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "FileUtility"

    const-string v7, "clearCachedFileCount() - Clear cached file count for \'"

    const-string v8, "\'"

    invoke-static {v5, v7, v2, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v5, Lcom/android/camera/io/FileUtility;->m_FileCountCache:Ljava/util/Hashtable;

    invoke-virtual {v5, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static createDirectories(Ljava/lang/String;)Z
    .locals 5

    const/4 v3, 0x0

    if-nez p0, :cond_1

    const-string v4, "createDirectories() - path = NULL"

    invoke-static {p0, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_2

    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/io/FileUtility;->createDirectory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized createDirectory(Ljava/lang/String;)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-class v4, Lcom/android/camera/io/FileUtility;

    monitor-enter v4

    if-nez p0, :cond_0

    :try_start_0
    const-string v3, "createDirectory() - path = NULL"

    invoke-static {p0, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v4

    return v2

    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "FileUtility"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createDirectory() - Create directory \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    goto :goto_0

    :cond_1
    const-string v3, "FileUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createDirectory() - Cannot create directory \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "FileUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createDirectory() - Cannot create directory \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2

    :cond_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    const-string v3, "FileUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createDirectory() - \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' is not a directory"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method public static declared-synchronized deleteFile(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 6

    const-class v3, Lcom/android/camera/io/FileUtility;

    monitor-enter v3

    :try_start_0
    invoke-static {p0, p1}, Lcom/android/camera/io/FileUtility;->getFilePathFromContentURI(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, p1, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/camera/io/Path;->getDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    invoke-static {v2, v4}, Lcom/android/camera/io/FileUtility;->updateCachedFileCount(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    monitor-exit v3

    return v2

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "FileUtility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteFile() - Cannot delete content \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized deleteFile(Lcom/android/camera/io/Path;)Z
    .locals 2

    const-class v1, Lcom/android/camera/io/FileUtility;

    monitor-enter v1

    if-nez p0, :cond_0

    :try_start_0
    const-string v0, "filePath"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/io/FileUtility;->deleteFile(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_0

    const-string v2, "filePath"

    invoke-static {v2}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p0}, Lcom/android/camera/io/Path;->getDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v4, v5}, Lcom/android/camera/io/FileUtility;->updateCachedFileCount(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return v2

    :cond_2
    const-string v2, "FileUtility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteFile() - Cannot delete file \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "FileUtility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteFile() - Cannot delete file \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v3

    goto :goto_0
.end method

.method public static enumerateFiles(Ljava/lang/String;Lcom/android/camera/io/FileUtility$FileEnumerationCallback;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    invoke-interface {p1, v2, p2}, Lcom/android/camera/io/FileUtility$FileEnumerationCallback;->callback(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static forceSyncDiskData()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v2, "FileUtility"

    const-string v3, "syncProcess - start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "sync"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    const-string v2, "FileUtility"

    const-string v3, "syncProcess - end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "FileUtility"

    const-string v3, "The syncProcess has been interrupted!!"

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getFileCount(Ljava/lang/String;)I
    .locals 2

    const v0, 0x7fffffff

    sget-object v1, Lcom/android/camera/io/FileUtility$InformationSource;->CacheOrFileSystem:Lcom/android/camera/io/FileUtility$InformationSource;

    invoke-static {p0, v0, v1}, Lcom/android/camera/io/FileUtility;->getFileCount(Ljava/lang/String;ILcom/android/camera/io/FileUtility$InformationSource;)I

    move-result v0

    return v0
.end method

.method public static getFileCount(Ljava/lang/String;ILcom/android/camera/io/FileUtility$InformationSource;)I
    .locals 7

    const/4 v3, 0x0

    if-nez p0, :cond_0

    const-string v3, "directory"

    invoke-static {v3}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_0
    sget-object v4, Lcom/android/camera/io/FileUtility$4;->$SwitchMap$com$android$camera$io$FileUtility$InformationSource:[I

    invoke-virtual {p2}, Lcom/android/camera/io/FileUtility$InformationSource;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :cond_1
    const/4 v4, 0x1

    :try_start_0
    new-array v1, v4, [I

    new-instance v4, Lcom/android/camera/io/FileUtility$3;

    invoke-direct {v4, p1}, Lcom/android/camera/io/FileUtility$3;-><init>(I)V

    invoke-static {p0, v4, v1}, Lcom/android/camera/io/FileUtility;->enumerateFiles(Ljava/lang/String;Lcom/android/camera/io/FileUtility$FileEnumerationCallback;Ljava/lang/Object;)Z

    sget-object v5, Lcom/android/camera/io/FileUtility;->m_FileCountCache:Ljava/util/Hashtable;

    monitor-enter v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v4, Lcom/android/camera/io/FileUtility;->m_FileCountCache:Ljava/util/Hashtable;

    const/4 v6, 0x0

    aget v6, v1, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, p0, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v4, 0x0

    :try_start_2
    aget v3, v1, v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    return v3

    :pswitch_0
    sget-object v4, Lcom/android/camera/io/FileUtility;->m_FileCountCache:Ljava/util/Hashtable;

    monitor-enter v4

    :try_start_3
    sget-object v5, Lcom/android/camera/io/FileUtility;->m_FileCountCache:Ljava/util/Hashtable;

    invoke-virtual {v5, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    :cond_2
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sget-object v4, Lcom/android/camera/io/FileUtility$InformationSource;->Cache:Lcom/android/camera/io/FileUtility$InformationSource;

    if-ne p2, v4, :cond_1

    const/4 v3, -0x1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v2

    const-string v4, "FileUtility"

    const-string v5, "getFileCount() - Exception occurred"

    invoke-static {v4, v5, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getFilePathFromContentURI(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    if-nez p0, :cond_0

    const-string v0, "context"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "contentUri"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v8

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_1
    const-string v0, "FileUtility"

    const-string v1, "Exception occurred while querying file path"

    invoke-static {v0, v1, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, v8

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public static isFileExistent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x0

    if-nez p0, :cond_0

    const-string v2, "directory"

    invoke-static {v2}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\'directory\' is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-nez p1, :cond_1

    const-string v2, "fileNamePattern"

    invoke-static {v2}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\'fileNamePattern\' is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/Boolean;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    :try_start_0
    new-instance v2, Lcom/android/camera/io/FileUtility$2;

    invoke-direct {v2, p1}, Lcom/android/camera/io/FileUtility$2;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v1}, Lcom/android/camera/io/FileUtility;->enumerateFiles(Ljava/lang/String;Lcom/android/camera/io/FileUtility$FileEnumerationCallback;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    :catch_0
    move-exception v0

    const-string v2, "FileUtility"

    const-string v3, "Exception occurred while searching files"

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static readInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 8

    const/4 v4, 0x0

    if-nez p0, :cond_0

    const-string v4, "filePath"

    invoke-static {v4}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "FileUtility"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readInteger() - File \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' is not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v2}, Lcom/android/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    :goto_0
    return-object v4

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "FileUtility"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readInteger() - \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' is a directory"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {v2}, Lcom/android/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_2
    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/4 v6, 0x1

    invoke-direct {v3, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v4

    invoke-static {v3}, Lcom/android/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    :try_start_4
    const-string v5, "FileUtility"

    const-string v6, "readInteger() - Error"

    invoke-static {v5, v6, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

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

.method public static updateCachedFileCount(Ljava/lang/String;I)V
    .locals 4

    if-nez p0, :cond_0

    const-string v1, "directory"

    invoke-static {v1}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/android/camera/io/FileUtility;->m_FileCountCache:Ljava/util/Hashtable;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/camera/io/FileUtility;->m_FileCountCache:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/camera/io/FileUtility;->m_FileCountCache:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
