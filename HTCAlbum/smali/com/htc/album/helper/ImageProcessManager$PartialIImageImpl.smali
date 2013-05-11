.class Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;
.super Lcom/htc/album/helper/ImageProcessManager$EmptyIImageImpl;
.source "ImageProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/ImageProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PartialIImageImpl"
.end annotation


# instance fields
.field public dataPath:Ljava/lang/String;

.field public degreesRetated:I

.field public displayName:Ljava/lang/String;

.field public imageUri:Landroid/net/Uri;

.field public isDrm:Z

.field public mimeType:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/album/helper/ImageProcessManager;


# direct methods
.method public constructor <init>(Lcom/htc/album/helper/ImageProcessManager;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 827
    iput-object p1, p0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    invoke-direct {p0, p1}, Lcom/htc/album/helper/ImageProcessManager$EmptyIImageImpl;-><init>(Lcom/htc/album/helper/ImageProcessManager;)V

    .line 819
    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->dataPath:Ljava/lang/String;

    .line 820
    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->displayName:Ljava/lang/String;

    .line 821
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultMimeType:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$500(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->mimeType:Ljava/lang/String;

    .line 822
    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->imageUri:Landroid/net/Uri;

    .line 823
    iput-boolean v2, p0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->isDrm:Z

    .line 824
    iput v2, p0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->degreesRetated:I

    .line 829
    return-void
.end method


# virtual methods
.method public collapse(Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;)V
    .locals 0
    .parameter "srcImageList"

    .prologue
    .line 1004
    return-void
.end method

.method public expand(ILcom/htc/opensense2/album/util/ImageManager$ImageListUber;)Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;
    .locals 1
    .parameter "index"
    .parameter "destImageList"

    .prologue
    .line 997
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic expand(ILcom/htc/opensense2/album/util/ImageManager$ImageListUber;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 817
    invoke-virtual {p0, p1, p2}, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->expand(ILcom/htc/opensense2/album/util/ImageManager$ImageListUber;)Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;

    move-result-object v0

    return-object v0
.end method

.method public fullSizeImageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->imageUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->imageUri:Landroid/net/Uri;

    .line 846
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/htc/album/helper/ImageProcessManager$EmptyIImageImpl;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getDataPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 865
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->dataPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->dataPath:Ljava/lang/String;

    .line 869
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/htc/album/helper/ImageProcessManager$EmptyIImageImpl;->getDataPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 874
    iget v0, p0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->degreesRetated:I

    return v0
.end method

.method public getDisplayImageFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 918
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageHeight()I
    .locals 1

    .prologue
    .line 948
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 908
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 928
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 923
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageResId()I
    .locals 1

    .prologue
    .line 938
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageSourceType()I
    .locals 1

    .prologue
    .line 913
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 933
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageWidth()I
    .locals 1

    .prologue
    .line 943
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->displayName:Ljava/lang/String;

    .line 837
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/htc/album/helper/ImageProcessManager$EmptyIImageImpl;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
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
    .line 953
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->dataPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->dataPath:Ljava/lang/String;

    .line 888
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/htc/album/helper/ImageProcessManager$EmptyIImageImpl;->getDataPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMediaSourceType()I
    .locals 1

    .prologue
    .line 879
    const/4 v0, 0x0

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->mimeType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->mimeType:Ljava/lang/String;

    .line 855
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/htc/album/helper/ImageProcessManager$EmptyIImageImpl;->getMimeType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasSubList()Z
    .locals 1

    .prologue
    .line 903
    const/4 v0, 0x0

    return v0
.end method

.method public is3D()Z
    .locals 1

    .prologue
    .line 898
    const/4 v0, 0x0

    return v0
.end method

.method public isBestBurstPhoto()Z
    .locals 1

    .prologue
    .line 1009
    const/4 v0, 0x0

    return v0
.end method

.method public isBurstPhoto()Z
    .locals 1

    .prologue
    .line 985
    const/4 v0, 0x0

    return v0
.end method

.method public isDrm()Z
    .locals 1

    .prologue
    .line 860
    iget-boolean v0, p0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->isDrm:Z

    return v0
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 991
    const/4 v0, 0x0

    return v0
.end method

.method public isFakeForLoading()Z
    .locals 1

    .prologue
    .line 973
    const/4 v0, 0x0

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 967
    const/4 v0, 0x0

    return v0
.end method

.method public setAsBestBurstPhoto()V
    .locals 0

    .prologue
    .line 1016
    return-void
.end method

.method public setAsBurstPhoto(IZ)V
    .locals 0
    .parameter "favoriteFieldValue"
    .parameter "forceUpdate"

    .prologue
    .line 980
    return-void
.end method

.method public setInked(I)V
    .locals 0
    .parameter "nInked"

    .prologue
    .line 894
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter "bSelected"

    .prologue
    .line 961
    return-void
.end method
