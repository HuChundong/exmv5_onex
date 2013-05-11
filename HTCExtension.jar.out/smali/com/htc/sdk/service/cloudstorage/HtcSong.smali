.class public abstract Lcom/htc/sdk/service/cloudstorage/HtcSong;
.super Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;
.source "HtcSong.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;,
        Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;,
        Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;
    }
.end annotation


# instance fields
.field protected albumArt:Ljava/lang/String;

.field protected albumName:Ljava/lang/String;

.field protected artistName:Ljava/lang/String;

.field protected mimeType:Ljava/lang/String;

.field protected sourceType:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;

.field public status:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

.field protected trackFileName:Ljava/lang/String;

.field protected trackName:Ljava/lang/String;

.field protected urlPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/htc/sdk/service/cloudstorage/HtcSong;->trackName:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/htc/sdk/service/cloudstorage/HtcSong;->trackFileName:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/htc/sdk/service/cloudstorage/HtcSong;->albumName:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/htc/sdk/service/cloudstorage/HtcSong;->artistName:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/htc/sdk/service/cloudstorage/HtcSong;->mimeType:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/htc/sdk/service/cloudstorage/HtcSong;->urlPath:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/htc/sdk/service/cloudstorage/HtcSong;->albumArt:Ljava/lang/String;

    .line 64
    sget-object v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;->UNDEF:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;

    iput-object v0, p0, Lcom/htc/sdk/service/cloudstorage/HtcSong;->sourceType:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;

    .line 65
    sget-object v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;->UNDEF:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

    iput-object v0, p0, Lcom/htc/sdk/service/cloudstorage/HtcSong;->status:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

    return-void
.end method


# virtual methods
.method public account()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlbumArt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/sdk/service/cloudstorage/HtcSong;->albumArt:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/sdk/service/cloudstorage/HtcSong;->albumName:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/sdk/service/cloudstorage/HtcSong;->artistName:Ljava/lang/String;

    return-object v0
.end method

.method public getCloudPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->cloudPath:Ljava/lang/String;

    return-object v0
.end method

.method public getCloudRev()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->id:I

    return v0
.end method

.method public getLocalLastModified()J
    .locals 2

    .prologue
    .line 192
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->localPath:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalRev()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalRev(Ljava/lang/String;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 202
    return-void
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/sdk/service/cloudstorage/HtcSong;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentId()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->parentId:I

    return v0
.end method

.method public getServiceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSongId()I
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/htc/sdk/service/cloudstorage/HtcSong;->getId()I

    move-result v0

    return v0
.end method

.method public getSongTaskId()I
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/htc/sdk/service/cloudstorage/HtcSong;->getParentId()I

    move-result v0

    return v0
.end method

.method public getSourceType()Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/htc/sdk/service/cloudstorage/HtcSong;->sourceType:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;

    return-object v0
.end method

.method public getSyncState()Z
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public getTrackFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/sdk/service/cloudstorage/HtcSong;->trackFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/sdk/service/cloudstorage/HtcSong;->trackName:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/htc/sdk/service/cloudstorage/HtcSong;->urlPath:Ljava/lang/String;

    return-object v0
.end method

.method public isDir()Z
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public abstract setAlbumArt(Ljava/lang/String;)V
.end method

.method public abstract setAlbumName(Ljava/lang/String;)V
.end method

.method public abstract setArtistName(Ljava/lang/String;)V
.end method

.method public abstract setCloudPath(Ljava/lang/String;)V
.end method

.method public setCloudRev(Ljava/lang/String;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 237
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 242
    return-void
.end method

.method public setFileType(Ljava/lang/String;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 247
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 251
    iput p1, p0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->id:I

    .line 252
    return-void
.end method

.method public setLocalLastModified(Ljava/util/Date;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 257
    return-void
.end method

.method public abstract setLocalPath(Ljava/lang/String;)V
.end method

.method public abstract setMimeType(Ljava/lang/String;)V
.end method

.method public setObjectId(Ljava/lang/String;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 262
    return-void
.end method

.method public setParentId(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 266
    iput p1, p0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->parentId:I

    .line 267
    return-void
.end method

.method public setServiceType(Ljava/lang/String;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 272
    return-void
.end method

.method public setSongId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/htc/sdk/service/cloudstorage/HtcSong;->setId(I)V

    .line 140
    return-void
.end method

.method public setSongTaskId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/htc/sdk/service/cloudstorage/HtcSong;->setParentId(I)V

    .line 148
    return-void
.end method

.method public setSourceType(Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;)V
    .locals 0
    .parameter "sourceType"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/htc/sdk/service/cloudstorage/HtcSong;->sourceType:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;

    .line 134
    return-void
.end method

.method public setSyncState(Z)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 277
    return-void
.end method

.method public abstract setTrackFileName(Ljava/lang/String;)V
.end method

.method public abstract setTrackName(Ljava/lang/String;)V
.end method

.method public abstract setUrlPath(Ljava/lang/String;)V
.end method

.method public size()I
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    return v0
.end method
