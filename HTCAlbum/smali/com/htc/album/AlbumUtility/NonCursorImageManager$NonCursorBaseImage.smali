.class public Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;
.super Ljava/lang/Object;
.source "NonCursorImageManager.java"

# interfaces
.implements Lcom/htc/opensense2/album/util/ImageManager$IImage;
.implements Lcom/htc/opensense2/album/sunny/IMediaDataGallery;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/AlbumUtility/NonCursorImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NonCursorBaseImage"
.end annotation


# instance fields
.field public mDataPath:Ljava/lang/String;

.field public mDegreesRetated:I

.field public mDisplayName:Ljava/lang/String;

.field public mIsCorrupt:Z

.field public mIsDrm:Z

.field public mMimeType:Ljava/lang/String;

.field private mSelected:Z

.field public mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/htc/album/AlbumUtility/NonCursorImageManager;


# direct methods
.method public constructor <init>(Lcom/htc/album/AlbumUtility/NonCursorImageManager;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 61
    iput-object p1, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->this$0:Lcom/htc/album/AlbumUtility/NonCursorImageManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v1, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->mDataPath:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->mDisplayName:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->mMimeType:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->mUri:Landroid/net/Uri;

    .line 68
    iput-boolean v0, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->mIsDrm:Z

    .line 69
    iput-boolean v0, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->mIsCorrupt:Z

    .line 70
    iput v0, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->mDegreesRetated:I

    .line 71
    iput-boolean v0, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->mSelected:Z

    return-void
.end method


# virtual methods
.method public alreadyHasDisplayImageDimension()Z
    .locals 1

    .prologue
    .line 551
    const/4 v0, 0x0

    return v0
.end method

.method public collapse(Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;)V
    .locals 0
    .parameter "srcImageList"

    .prologue
    .line 615
    return-void
.end method

.method public commitChanges()V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method public compareTo(Lcom/htc/opensense2/album/util/ImageManager$IImage;)I
    .locals 1
    .parameter "arg0"

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    check-cast p1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->compareTo(Lcom/htc/opensense2/album/util/ImageManager$IImage;)I

    move-result v0

    return v0
.end method

.method public expand(ILcom/htc/opensense2/album/util/ImageManager$ImageListUber;)Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;
    .locals 1
    .parameter "index"
    .parameter "destImageList"

    .prologue
    .line 608
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic expand(ILcom/htc/opensense2/album/util/ImageManager$ImageListUber;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->expand(ILcom/htc/opensense2/album/util/ImageManager$ImageListUber;)Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;

    move-result-object v0

    return-object v0
.end method

.method public fileCorrupted()V
    .locals 1

    .prologue
    .line 447
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->mIsCorrupt:Z

    .line 448
    return-void
.end method

.method public fullSizeBitmap(I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "targetWidthOrHeight"

    .prologue
    .line 202
    sget-object v0, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->DEBUG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not imaplement fullSizeBitmap !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const/4 v0, 0x0

    return-object v0
.end method

.method public fullSizeBitmap_cancelable(I)Lcom/htc/opensense2/album/util/ImageManager$IGetBitmap_cancelable;
    .locals 1
    .parameter "targetWidthOrHeight"

    .prologue
    .line 210
    const/4 v0, 0x0

    return-object v0
.end method

.method public fullSizeImageData()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 215
    sget-object v0, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->DEBUG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not imaplement fullSizeImageData !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const/4 v0, 0x0

    return-object v0
.end method

.method public fullSizeImageId()J
    .locals 2

    .prologue
    .line 222
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public fullSizeImageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 250
    sget-object v0, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->DEBUG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not imaplement getBucketName !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentType()I
    .locals 1

    .prologue
    .line 578
    const/4 v0, 0x0

    return v0
.end method

.method public getDataPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->mDataPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDateAdded()J
    .locals 2

    .prologue
    .line 245
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDateModified()J
    .locals 3

    .prologue
    .line 256
    sget-object v0, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->DEBUG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not imaplement getDateModified !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDateTaken()J
    .locals 3

    .prologue
    .line 238
    sget-object v0, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->DEBUG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not imaplement getDateTaken !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 436
    iget v0, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->mDegreesRetated:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 3

    .prologue
    .line 262
    sget-object v0, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->DEBUG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not imaplement getDescription !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 511
    invoke-virtual {p0}, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->getDataPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayImageHeight()I
    .locals 1

    .prologue
    .line 566
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 490
    invoke-virtual {p0}, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->getDataPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayImageInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 523
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 517
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageResId()I
    .locals 1

    .prologue
    .line 546
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageSourceType()I
    .locals 1

    .prologue
    .line 506
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayImageWidth()I
    .locals 1

    .prologue
    .line 560
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 3

    .prologue
    .line 272
    sget-object v0, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->DEBUG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not imaplement getHeight !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public getIsPrivate()Z
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 285
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 291
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMediaDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/htc/sunnyCore/IMediaData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 572
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPicasaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRow()I
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x0

    return v0
.end method

.method public getSize()J
    .locals 3

    .prologue
    .line 359
    sget-object v0, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->DEBUG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not imaplement getSize !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSortBase()J
    .locals 2

    .prologue
    .line 431
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 296
    sget-object v0, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->DEBUG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not imaplement getTitle !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWidth()I
    .locals 3

    .prologue
    .line 319
    sget-object v0, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->DEBUG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not imaplement getWidth !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const/4 v0, 0x0

    return v0
.end method

.method public hasLatLong()Z
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method public hasSubList()Z
    .locals 1

    .prologue
    .line 540
    const/4 v0, 0x0

    return v0
.end method

.method public imageId()J
    .locals 2

    .prologue
    .line 332
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public init(Landroid/app/Activity;Landroid/net/Uri;)Z
    .locals 1
    .parameter "activity"
    .parameter "uri"

    .prologue
    const/4 v0, 0x0

    .line 151
    if-nez p2, :cond_0

    .line 187
    :cond_0
    return v0
.end method

.method public init(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Z
    .locals 10
    .parameter "image"

    .prologue
    const/4 v6, 0x0

    .line 86
    if-nez p1, :cond_0

    .line 88
    sget-object v7, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->DEBUG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "image == null !"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :goto_0
    return v6

    .line 95
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, strDataPath:Ljava/lang/String;
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, strDisplayName:Ljava/lang/String;
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, strMimeType:Ljava/lang/String;
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v5

    .line 99
    .local v5, uri:Landroid/net/Uri;
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isCorrupted()Z

    move-result v1

    .line 103
    .local v1, isCorrupt:Z
    if-nez v2, :cond_1

    .line 105
    sget-object v7, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->DEBUG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "strDataPath == null !"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    .end local v1           #isCorrupt:Z
    .end local v2           #strDataPath:Ljava/lang/String;
    .end local v3           #strDisplayName:Ljava/lang/String;
    .end local v4           #strMimeType:Ljava/lang/String;
    .end local v5           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 144
    .local v0, ex:Ljava/lang/Exception;
    goto :goto_0

    .line 109
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v1       #isCorrupt:Z
    .restart local v2       #strDataPath:Ljava/lang/String;
    .restart local v3       #strDisplayName:Ljava/lang/String;
    .restart local v4       #strMimeType:Ljava/lang/String;
    .restart local v5       #uri:Landroid/net/Uri;
    :cond_1
    if-nez v3, :cond_2

    .line 111
    sget-object v7, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->DEBUG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "strDisplayName == null !"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_2
    if-nez v4, :cond_3

    .line 117
    sget-object v7, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->DEBUG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "strMimeType == null !"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_3
    if-nez v5, :cond_4

    .line 123
    sget-object v7, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->DEBUG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "uri == null !"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 128
    :cond_4
    iput-object v2, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->mDataPath:Ljava/lang/String;

    .line 129
    iput-object v3, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->mDisplayName:Ljava/lang/String;

    .line 130
    iput-object v4, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->mMimeType:Ljava/lang/String;

    .line 131
    iput-object v5, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->mUri:Landroid/net/Uri;

    .line 132
    iput-boolean v1, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->mIsCorrupt:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method public is3D()Z
    .locals 1

    .prologue
    .line 477
    const/4 v0, 0x0

    return v0
.end method

.method public isBestBurstPhoto()Z
    .locals 1

    .prologue
    .line 620
    const/4 v0, 0x0

    return v0
.end method

.method public isBurstPhoto()Z
    .locals 1

    .prologue
    .line 596
    const/4 v0, 0x0

    return v0
.end method

.method public isCorrupted()Z
    .locals 1

    .prologue
    .line 441
    iget-boolean v0, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->mIsCorrupt:Z

    return v0
.end method

.method public isDrm()Z
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x0

    return v0
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 602
    const/4 v0, 0x0

    return v0
.end method

.method public isFakeForLoading()Z
    .locals 1

    .prologue
    .line 584
    const/4 v0, 0x0

    return v0
.end method

.method public isFavorite()Z
    .locals 1

    .prologue
    .line 349
    iget-boolean v0, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->mIsDrm:Z

    return v0
.end method

.method public isGif()Z
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method public isInked()Z
    .locals 1

    .prologue
    .line 465
    const/4 v0, 0x0

    return v0
.end method

.method public isPlayable()Z
    .locals 1

    .prologue
    .line 534
    const/4 v0, 0x0

    return v0
.end method

.method public isReadonly()Z
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x0

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->mSelected:Z

    return v0
.end method

.method public isSharable()Z
    .locals 1

    .prologue
    .line 459
    const/4 v0, 0x0

    return v0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x0

    return v0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 371
    sget-object v0, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->DEBUG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not imaplement miniThumbBitmap !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const/4 v0, 0x0

    return-object v0
.end method

.method public onRemove()V
    .locals 0

    .prologue
    .line 379
    return-void
.end method

.method public resetFileCorrupted()V
    .locals 1

    .prologue
    .line 453
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->mIsCorrupt:Z

    .line 454
    return-void
.end method

.method public rotateImageBy(I)Z
    .locals 1
    .parameter "degrees"

    .prologue
    .line 384
    const/4 v0, 0x0

    return v0
.end method

.method public setAsBestBurstPhoto()V
    .locals 0

    .prologue
    .line 627
    return-void
.end method

.method public setAsBurstPhoto(IZ)V
    .locals 0
    .parameter "favoriteFieldValue"
    .parameter "forceUpdate"

    .prologue
    .line 591
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 391
    return-void
.end method

.method public setDisplayImageDimension(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 555
    return-void
.end method

.method public setInked(I)V
    .locals 0
    .parameter "nInked"

    .prologue
    .line 472
    return-void
.end method

.method public setIsPrivate(Z)V
    .locals 0
    .parameter "isPrivate"

    .prologue
    .line 397
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 403
    return-void
.end method

.method public setPicasaId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 409
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter "bSelected"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->mSelected:Z

    .line 77
    return-void
.end method

.method public thumbBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 413
    sget-object v0, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->DEBUG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not imaplement thumbBitmap !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const/4 v0, 0x0

    return-object v0
.end method

.method public thumbUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 419
    sget-object v0, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->DEBUG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not imaplement thumbUri !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const/4 v0, 0x0

    return-object v0
.end method
