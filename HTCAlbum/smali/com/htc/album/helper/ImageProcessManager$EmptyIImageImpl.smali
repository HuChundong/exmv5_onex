.class abstract Lcom/htc/album/helper/ImageProcessManager$EmptyIImageImpl;
.super Ljava/lang/Object;
.source "ImageProcessManager.java"

# interfaces
.implements Lcom/htc/opensense2/album/util/ImageManager$IImage;
.implements Lcom/htc/sunnyCore/IMediaData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/ImageProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "EmptyIImageImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/helper/ImageProcessManager;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/ImageProcessManager;)V
    .locals 0
    .parameter

    .prologue
    .line 469
    iput-object p1, p0, Lcom/htc/album/helper/ImageProcessManager$EmptyIImageImpl;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public commitChanges()V
    .locals 0

    .prologue
    .line 479
    return-void
.end method

.method public compareTo(Lcom/htc/opensense2/album/util/ImageManager$IImage;)I
    .locals 1
    .parameter "arg0"

    .prologue
    .line 473
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 469
    check-cast p1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/helper/ImageProcessManager$EmptyIImageImpl;->compareTo(Lcom/htc/opensense2/album/util/ImageManager$IImage;)I

    move-result v0

    return v0
.end method

.method public fileCorrupted()V
    .locals 0

    .prologue
    .line 694
    return-void
.end method

.method public fullSizeBitmap(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "targetWidthOrHeight"

    .prologue
    .line 483
    const/4 v0, 0x0

    return-object v0
.end method

.method public fullSizeBitmap_cancelable(I)Lcom/htc/opensense2/album/util/ImageManager$IGetBitmap_cancelable;
    .locals 1
    .parameter "targetWidthOrHeight"

    .prologue
    .line 488
    const/4 v0, 0x0

    return-object v0
.end method

.method public fullSizeImageData()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 493
    const/4 v0, 0x0

    return-object v0
.end method

.method public fullSizeImageId()J
    .locals 2

    .prologue
    .line 498
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public fullSizeImageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 503
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 523
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 1

    .prologue
    .line 508
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 673
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDateAdded()J
    .locals 2

    .prologue
    .line 518
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDateModified()J
    .locals 2

    .prologue
    .line 528
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDateTaken()J
    .locals 2

    .prologue
    .line 513
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 683
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 533
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 568
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 543
    const/4 v0, 0x0

    return v0
.end method

.method public getIsPrivate()Z
    .locals 1

    .prologue
    .line 548
    const/4 v0, 0x0

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 553
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 558
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMediaAssetFileDescriptor()Landroid/content/res/AssetFileDescriptor;
    .locals 1

    .prologue
    .line 743
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaContentType()I
    .locals 1

    .prologue
    .line 808
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaDateModified()J
    .locals 2

    .prologue
    .line 798
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMediaDateTaken()J
    .locals 2

    .prologue
    .line 803
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMediaDegreesRotated()I
    .locals 1

    .prologue
    .line 788
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 718
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 738
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 733
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaHeight()I
    .locals 1

    .prologue
    .line 763
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 723
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 748
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 713
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 813
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaSize()J
    .locals 2

    .prologue
    .line 793
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMediaSourceType()I
    .locals 1

    .prologue
    .line 728
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 753
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaWidth()I
    .locals 1

    .prologue
    .line 758
    const/4 v0, 0x0

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 538
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPicasaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 573
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRow()I
    .locals 1

    .prologue
    .line 578
    const/4 v0, 0x0

    return v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 618
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSortBase()J
    .locals 2

    .prologue
    .line 678
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 563
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 583
    const/4 v0, 0x0

    return v0
.end method

.method public hasLatLong()Z
    .locals 1

    .prologue
    .line 588
    const/4 v0, 0x0

    return v0
.end method

.method public imageId()J
    .locals 2

    .prologue
    .line 593
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isCorrupted()Z
    .locals 1

    .prologue
    .line 688
    const/4 v0, 0x0

    return v0
.end method

.method public isDrm()Z
    .locals 1

    .prologue
    .line 603
    const/4 v0, 0x0

    return v0
.end method

.method public isFavorite()Z
    .locals 1

    .prologue
    .line 608
    const/4 v0, 0x0

    return v0
.end method

.method public isGif()Z
    .locals 1

    .prologue
    .line 623
    const/4 v0, 0x0

    return v0
.end method

.method public isInked()Z
    .locals 1

    .prologue
    .line 708
    const/4 v0, 0x0

    return v0
.end method

.method public isMediaCorrupt()Z
    .locals 1

    .prologue
    .line 783
    const/4 v0, 0x0

    return v0
.end method

.method public isMediaDrm()Z
    .locals 1

    .prologue
    .line 773
    const/4 v0, 0x0

    return v0
.end method

.method public isMediaPlayable()Z
    .locals 1

    .prologue
    .line 768
    const/4 v0, 0x0

    return v0
.end method

.method public isMediaVideo()Z
    .locals 1

    .prologue
    .line 778
    const/4 v0, 0x0

    return v0
.end method

.method public isReadonly()Z
    .locals 1

    .prologue
    .line 598
    const/4 v0, 0x0

    return v0
.end method

.method public isSharable()Z
    .locals 1

    .prologue
    .line 703
    const/4 v0, 0x0

    return v0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 613
    const/4 v0, 0x0

    return v0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 628
    const/4 v0, 0x0

    return-object v0
.end method

.method public onRemove()V
    .locals 0

    .prologue
    .line 634
    return-void
.end method

.method public resetFileCorrupted()V
    .locals 0

    .prologue
    .line 699
    return-void
.end method

.method public rotateImageBy(I)Z
    .locals 1
    .parameter "degrees"

    .prologue
    .line 638
    const/4 v0, 0x0

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 644
    return-void
.end method

.method public setIsPrivate(Z)V
    .locals 0
    .parameter "isPrivate"

    .prologue
    .line 649
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 654
    return-void
.end method

.method public setPicasaId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 659
    return-void
.end method

.method public thumbBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 663
    const/4 v0, 0x0

    return-object v0
.end method

.method public thumbUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 668
    const/4 v0, 0x0

    return-object v0
.end method
