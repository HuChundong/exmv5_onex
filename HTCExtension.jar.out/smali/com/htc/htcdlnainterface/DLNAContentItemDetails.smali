.class public Lcom/htc/htcdlnainterface/DLNAContentItemDetails;
.super Ljava/lang/Object;
.source "DLNAContentItemDetails.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/htcdlnainterface/DLNAContentItemDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private contentAlbum:Ljava/lang/String;

.field private contentArtist:Ljava/lang/String;

.field private contentBitRate:J

.field private contentComposer:Ljava/lang/String;

.field private contentDate:Ljava/lang/String;

.field private contentDiscNumber:Ljava/lang/String;

.field private contentDuration:J

.field private contentFps:J

.field private contentGenre:Ljava/lang/String;

.field private contentPath:Ljava/lang/String;

.field private contentResolution:Ljava/lang/String;

.field private contentSize:J

.field private contentStatus:Ljava/lang/String;

.field private contentTitle:Ljava/lang/String;

.field private contentTrackNumber:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private downloadStoreAlbumArtPath:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private nameDMS:Ljava/lang/String;

.field private thumbnailPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 451
    new-instance v0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails$1;

    invoke-direct {v0}, Lcom/htc/htcdlnainterface/DLNAContentItemDetails$1;-><init>()V

    sput-object v0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 472
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    invoke-direct {p0, p1}, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->readFromParcel(Landroid/os/Parcel;)V

    .line 483
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    .line 488
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->thumbnailPath:Ljava/lang/String;

    .line 489
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->fileName:Ljava/lang/String;

    .line 490
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->nameDMS:Ljava/lang/String;

    .line 491
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentPath:Ljava/lang/String;

    .line 492
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentTitle:Ljava/lang/String;

    .line 493
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentArtist:Ljava/lang/String;

    .line 494
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentAlbum:Ljava/lang/String;

    .line 495
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentDate:Ljava/lang/String;

    .line 496
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentGenre:Ljava/lang/String;

    .line 497
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentComposer:Ljava/lang/String;

    .line 498
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentResolution:Ljava/lang/String;

    .line 499
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentType:Ljava/lang/String;

    .line 500
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentSize:J

    .line 501
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentDuration:J

    .line 502
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentBitRate:J

    .line 503
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentFps:J

    .line 504
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentDiscNumber:Ljava/lang/String;

    .line 505
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentTrackNumber:Ljava/lang/String;

    .line 506
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentStatus:Ljava/lang/String;

    .line 507
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->downloadStoreAlbumArtPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    :goto_0
    return-void

    .line 509
    :catch_0
    move-exception v0

    .line 511
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 522
    const/4 v0, 0x0

    return v0
.end method

.method public getContentAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentAlbum:Ljava/lang/String;

    return-object v0
.end method

.method public getContentArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentArtist:Ljava/lang/String;

    return-object v0
.end method

.method public getContentBitRate()J
    .locals 2

    .prologue
    .line 185
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentBitRate:J

    return-wide v0
.end method

.method public getContentComposer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentComposer:Ljava/lang/String;

    return-object v0
.end method

.method public getContentDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentDate:Ljava/lang/String;

    return-object v0
.end method

.method public getContentDiscNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentDiscNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getContentDuration()J
    .locals 2

    .prologue
    .line 167
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentDuration:J

    return-wide v0
.end method

.method public getContentFps()J
    .locals 2

    .prologue
    .line 149
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentFps:J

    return-wide v0
.end method

.method public getContentGenre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentGenre:Ljava/lang/String;

    return-object v0
.end method

.method public getContentPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentPath:Ljava/lang/String;

    return-object v0
.end method

.method public getContentResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getContentSize()J
    .locals 2

    .prologue
    .line 203
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentSize:J

    return-wide v0
.end method

.method public getContentStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTrackNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentTrackNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadStoreAlbumArtPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->downloadStoreAlbumArtPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getNameDMS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->nameDMS:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->thumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public setContentAlbum(Ljava/lang/String;)V
    .locals 0
    .parameter "contentAlbum"

    .prologue
    .line 323
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentAlbum:Ljava/lang/String;

    .line 324
    return-void
.end method

.method public setContentArtist(Ljava/lang/String;)V
    .locals 0
    .parameter "contentArtist"

    .prologue
    .line 341
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentArtist:Ljava/lang/String;

    .line 342
    return-void
.end method

.method public setContentBitRate(J)V
    .locals 0
    .parameter "contentBitRate"

    .prologue
    .line 194
    iput-wide p1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentBitRate:J

    .line 195
    return-void
.end method

.method public setContentComposer(Ljava/lang/String;)V
    .locals 0
    .parameter "contentComposer"

    .prologue
    .line 268
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentComposer:Ljava/lang/String;

    .line 269
    return-void
.end method

.method public setContentDate(Ljava/lang/String;)V
    .locals 0
    .parameter "contentDate"

    .prologue
    .line 305
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentDate:Ljava/lang/String;

    .line 306
    return-void
.end method

.method public setContentDiscNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "contentDiscNumber"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentDiscNumber:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setContentDuration(J)V
    .locals 0
    .parameter "contentDuration"

    .prologue
    .line 176
    iput-wide p1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentDuration:J

    .line 177
    return-void
.end method

.method public setContentFps(J)V
    .locals 0
    .parameter "contentFps"

    .prologue
    .line 158
    iput-wide p1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentFps:J

    .line 159
    return-void
.end method

.method public setContentGenre(Ljava/lang/String;)V
    .locals 0
    .parameter "contentGenre"

    .prologue
    .line 287
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentGenre:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public setContentPath(Ljava/lang/String;)V
    .locals 0
    .parameter "contentPath"

    .prologue
    .line 381
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentPath:Ljava/lang/String;

    .line 382
    return-void
.end method

.method public setContentResolution(Ljava/lang/String;)V
    .locals 0
    .parameter "contentResolution"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentResolution:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public setContentSize(J)V
    .locals 0
    .parameter "contentSize"

    .prologue
    .line 212
    iput-wide p1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentSize:J

    .line 213
    return-void
.end method

.method public setContentStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "aContentStatus"

    .prologue
    .line 422
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentStatus:Ljava/lang/String;

    .line 423
    return-void
.end method

.method public setContentTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "contentTitle"

    .prologue
    .line 359
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentTitle:Ljava/lang/String;

    .line 360
    return-void
.end method

.method public setContentTrackNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "contentTrackNumber"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentTrackNumber:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .parameter "contentType"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentType:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public setDownloadStoreAlbumArtPath(Ljava/lang/String;)V
    .locals 0
    .parameter "aDownloadStoreAlbumArtPath"

    .prologue
    .line 442
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->downloadStoreAlbumArtPath:Ljava/lang/String;

    .line 443
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"

    .prologue
    .line 402
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->fileName:Ljava/lang/String;

    .line 403
    return-void
.end method

.method public setNameDMS(Ljava/lang/String;)V
    .locals 0
    .parameter "nameDMS"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->nameDMS:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setThumbnailPath(Ljava/lang/String;)V
    .locals 0
    .parameter "thumbnailPath"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->thumbnailPath:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 533
    :try_start_0
    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 534
    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 535
    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->nameDMS:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 536
    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 537
    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 538
    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentArtist:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 539
    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentAlbum:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 540
    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentDate:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 541
    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentGenre:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 542
    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentComposer:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 543
    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentResolution:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 544
    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 545
    iget-wide v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentSize:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 546
    iget-wide v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentDuration:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 547
    iget-wide v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentBitRate:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 548
    iget-wide v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentFps:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 549
    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentDiscNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 550
    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentTrackNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 551
    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->contentStatus:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 552
    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->downloadStoreAlbumArtPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    :goto_0
    return-void

    .line 554
    :catch_0
    move-exception v0

    .line 556
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
