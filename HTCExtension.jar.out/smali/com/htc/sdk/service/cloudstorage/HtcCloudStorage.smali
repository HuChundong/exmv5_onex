.class public abstract Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;
.super Ljava/lang/Object;
.source "HtcCloudStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage$HtcSongTask;,
        Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage$IHtcSongProgress;,
        Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage$onProgressListener;,
        Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage$HtcDeltaEntry;,
        Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage$HtcDelta;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 405
    return-void
.end method


# virtual methods
.method public abstract abortCloudFileDownload(Lcom/htc/sdk/service/cloudstorage/HtcDownload;)Z
.end method

.method public abstract delta(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage$HtcDelta;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/sdk/service/cloudstorage/HtcCloudException;
        }
    .end annotation
.end method

.method public abstract downloadFile(Ljava/lang/String;Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage$onProgressListener;)Lcom/htc/sdk/service/cloudstorage/HtcDownloadInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/sdk/service/cloudstorage/HtcCloudException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract findFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/sdk/service/cloudstorage/HtcCloudException;
        }
    .end annotation
.end method

.method public abstract getAbsoluteFile(Ljava/lang/String;Z)Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/sdk/service/cloudstorage/HtcCloudException;
        }
    .end annotation
.end method

.method public abstract getAlbumSharedLink(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/sdk/service/cloudstorage/HtcCloudException;
        }
    .end annotation
.end method

.method public abstract getAuthorizationHeader()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/sdk/service/cloudstorage/HtcCloudException;
        }
    .end annotation
.end method

.method public abstract getCloudFile(Ljava/lang/String;Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage$onProgressListener;)Lcom/htc/sdk/service/cloudstorage/HtcDownload;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/sdk/service/cloudstorage/HtcCloudException;
        }
    .end annotation
.end method

.method public abstract getContactsData()[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;
.end method

.method public abstract getFile(Ljava/lang/String;Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage$onProgressListener;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/sdk/service/cloudstorage/HtcCloudException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getLocalFileInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;
.end method

.method public abstract getLocalRootPath()Ljava/lang/String;
.end method

.method public abstract getStreamingUrl(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract init(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract listAlbums(Ljava/lang/String;ZI)Lcom/htc/sdk/service/cloudstorage/HtcPage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI)",
            "Lcom/htc/sdk/service/cloudstorage/HtcPage",
            "<",
            "Lcom/htc/sdk/service/cloudstorage/HtcAlbum;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/sdk/service/cloudstorage/HtcCloudException;
        }
    .end annotation
.end method

.method public abstract listAlbums(Ljava/lang/String;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/sdk/service/cloudstorage/HtcAlbum;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/sdk/service/cloudstorage/HtcCloudException;
        }
    .end annotation
.end method

.method public abstract listFiles(Ljava/lang/String;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/sdk/service/cloudstorage/HtcCloudException;
        }
    .end annotation
.end method

.method public abstract listPhotos(Ljava/lang/String;I)Lcom/htc/sdk/service/cloudstorage/HtcPage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/htc/sdk/service/cloudstorage/HtcPage",
            "<",
            "Lcom/htc/sdk/service/cloudstorage/HtcPhoto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/sdk/service/cloudstorage/HtcCloudException;
        }
    .end annotation
.end method

.method public abstract listPhotos(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/sdk/service/cloudstorage/HtcPhoto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/sdk/service/cloudstorage/HtcCloudException;
        }
    .end annotation
.end method

.method public abstract listSongCloudPath(Ljava/lang/String;Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;ILcom/htc/sdk/service/cloudstorage/HtcCloudStorage$IHtcSongProgress;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;",
            "I",
            "Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage$IHtcSongProgress;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/sdk/service/cloudstorage/HtcCloudException;
        }
    .end annotation
.end method

.method public varargs abstract listSongs(Ljava/util/List;Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage$IHtcSongProgress;[Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;)Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage$HtcSongTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;",
            "Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage$IHtcSongProgress;",
            "[",
            "Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;",
            ")",
            "Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage$HtcSongTask;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/sdk/service/cloudstorage/HtcCloudException;
        }
    .end annotation
.end method

.method public abstract publishURI(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/sdk/service/cloudstorage/HtcCloudException;
        }
    .end annotation
.end method

.method public abstract publishURI(Ljava/lang/String;Z)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/sdk/service/cloudstorage/HtcCloudException;
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract upload(ILjava/util/List;)Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/htc/sdk/service/cloudstorage/HtcPhoto;",
            ">;)",
            "Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/sdk/service/cloudstorage/HtcCloudException;
        }
    .end annotation
.end method

.method public abstract upload(Ljava/lang/String;Ljava/lang/String;Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage$onProgressListener;)Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract upload(Ljava/lang/String;Ljava/util/List;)Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)",
            "Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;"
        }
    .end annotation
.end method

.method public abstract uploadPending()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
