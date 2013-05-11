.class public Lcom/htc/htcdlnainterface/DLNAControlItemData;
.super Ljava/lang/Object;
.source "DLNAControlItemData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/htcdlnainterface/DLNAControlItemData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private contentAlbum:Ljava/lang/String;

.field private contentArtist:Ljava/lang/String;

.field private contentDate:Ljava/lang/String;

.field private contentTitle:Ljava/lang/String;

.field private curContentID:Ljava/lang/String;

.field private currentIndex:J

.field private downloadStoreAlbumArtPath:Ljava/lang/String;

.field private fDuration:J

.field private fileSize:J

.field private rendererID:Ljava/lang/String;

.field private thumbnailPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/htc/htcdlnainterface/DLNAControlItemData$1;

    invoke-direct {v0}, Lcom/htc/htcdlnainterface/DLNAControlItemData$1;-><init>()V

    sput-object v0, Lcom/htc/htcdlnainterface/DLNAControlItemData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    invoke-direct {p0, p1}, Lcom/htc/htcdlnainterface/DLNAControlItemData;->readFromParcel(Landroid/os/Parcel;)V

    .line 270
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    .line 275
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAControlItemData;->rendererID:Ljava/lang/String;

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAControlItemData;->contentTitle:Ljava/lang/String;

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAControlItemData;->contentArtist:Ljava/lang/String;

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAControlItemData;->contentAlbum:Ljava/lang/String;

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAControlItemData;->contentDate:Ljava/lang/String;

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAControlItemData;->thumbnailPath:Ljava/lang/String;

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/htcdlnainterface/DLNAControlItemData;->currentIndex:J

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/htcdlnainterface/DLNAControlItemData;->fDuration:J

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/htcdlnainterface/DLNAControlItemData;->fileSize:J

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAControlItemData;->downloadStoreAlbumArtPath:Ljava/lang/String;

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAControlItemData;->curContentID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v0

    .line 289
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x0

    return v0
.end method

.method public getContentAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAControlItemData;->contentAlbum:Ljava/lang/String;

    return-object v0
.end method

.method public getContentArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAControlItemData;->contentArtist:Ljava/lang/String;

    return-object v0
.end method

.method public getContentDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAControlItemData;->contentDate:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAControlItemData;->contentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getCurContentID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAControlItemData;->curContentID:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentIndex()J
    .locals 2

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/DLNAControlItemData;->currentIndex:J

    return-wide v0
.end method

.method public getDownloadStoreAlbumArtPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAControlItemData;->downloadStoreAlbumArtPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 169
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/DLNAControlItemData;->fDuration:J

    return-wide v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/DLNAControlItemData;->fileSize:J

    return-wide v0
.end method

.method public getRendererID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAControlItemData;->rendererID:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAControlItemData;->thumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public setContentAlbum(Ljava/lang/String;)V
    .locals 0
    .parameter "contentAlbum"

    .prologue
    .line 250
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAControlItemData;->contentAlbum:Ljava/lang/String;

    .line 251
    return-void
.end method

.method public setContentArtist(Ljava/lang/String;)V
    .locals 0
    .parameter "contentArtist"

    .prologue
    .line 232
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAControlItemData;->contentArtist:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public setContentDate(Ljava/lang/String;)V
    .locals 0
    .parameter "contentDate"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAControlItemData;->contentDate:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setContentTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "contentTitle"

    .prologue
    .line 214
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAControlItemData;->contentTitle:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public setCurContentID(Ljava/lang/String;)V
    .locals 0
    .parameter "curContentID"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAControlItemData;->curContentID:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setCurrentIndex(J)V
    .locals 0
    .parameter "currentIndex"

    .prologue
    .line 160
    iput-wide p1, p0, Lcom/htc/htcdlnainterface/DLNAControlItemData;->currentIndex:J

    .line 161
    return-void
.end method

.method public setDownloadStoreAlbumArtPath(Ljava/lang/String;)V
    .locals 0
    .parameter "downloadStoreAlbumArtPath"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAControlItemData;->downloadStoreAlbumArtPath:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setDuration(J)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 178
    iput-wide p1, p0, Lcom/htc/htcdlnainterface/DLNAControlItemData;->fDuration:J

    .line 179
    return-void
.end method

.method public setFileSize(J)V
    .locals 0
    .parameter "fileSize"

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/htc/htcdlnainterface/DLNAControlItemData;->fileSize:J

    .line 71
    return-void
.end method

.method public setRendererID(Ljava/lang/String;)V
    .locals 0
    .parameter "rendererID"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAControlItemData;->rendererID:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setThumbnailPath(Ljava/lang/String;)V
    .locals 0
    .parameter "thumbnailPath"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAControlItemData;->thumbnailPath:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 313
    :try_start_0
    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAControlItemData;->rendererID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 314
    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAControlItemData;->contentTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 315
    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAControlItemData;->contentArtist:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAControlItemData;->contentAlbum:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 317
    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAControlItemData;->contentDate:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 318
    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAControlItemData;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 319
    iget-wide v1, p0, Lcom/htc/htcdlnainterface/DLNAControlItemData;->currentIndex:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 320
    iget-wide v1, p0, Lcom/htc/htcdlnainterface/DLNAControlItemData;->fDuration:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 321
    iget-wide v1, p0, Lcom/htc/htcdlnainterface/DLNAControlItemData;->fileSize:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 322
    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAControlItemData;->downloadStoreAlbumArtPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAControlItemData;->curContentID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_0
    return-void

    .line 325
    :catch_0
    move-exception v0

    .line 327
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
