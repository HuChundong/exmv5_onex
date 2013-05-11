.class public Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
.super Ljava/lang/Object;
.source "DLNAMediumInfo.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;
.implements Lcom/htc/opensense2/album/sunny/IMediaDataDLNA;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;",
        ">;",
        "Landroid/os/Parcelable;",
        "Lcom/htc/opensense2/album/sunny/IMediaDataDLNA;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field public mID:Ljava/lang/String;

.field public mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

.field public mIndex:I

.field public mIndexID:J

.field public mIsCorrupt:Z

.field public mIsThumbOnly:Z

.field private mItemHeight:I

.field private mItemWidth:I

.field public mName:Ljava/lang/String;

.field private mQuality:I

.field private mSelected:Z

.field public mType:Ljava/lang/String;

.field public mUri:Ljava/lang/String;

.field public mUriThumb:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->LOG_TAG:Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo$1;

    invoke-direct {v0}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo$1;-><init>()V

    sput-object v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIndex:I

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIndexID:J

    .line 24
    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    .line 25
    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mName:Ljava/lang/String;

    .line 26
    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    .line 27
    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    .line 28
    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mType:Ljava/lang/String;

    .line 29
    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    .line 30
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIsCorrupt:Z

    .line 31
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIsThumbOnly:Z

    .line 33
    iput v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mQuality:I

    .line 34
    iput v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mItemWidth:I

    .line 35
    iput v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mItemHeight:I

    .line 36
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mSelected:Z

    .line 40
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIndex:I

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIndexID:J

    .line 24
    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    .line 25
    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mName:Ljava/lang/String;

    .line 26
    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    .line 27
    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    .line 28
    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mType:Ljava/lang/String;

    .line 29
    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    .line 30
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIsCorrupt:Z

    .line 31
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIsThumbOnly:Z

    .line 33
    iput v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mQuality:I

    .line 34
    iput v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mItemWidth:I

    .line 35
    iput v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mItemHeight:I

    .line 36
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mSelected:Z

    .line 65
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 66
    return-void
.end method


# virtual methods
.method public alreadyHasDisplayImageDimension()Z
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mItemWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mItemHeight:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public compareTo(Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)I
    .locals 2
    .parameter "mediumInfo"

    .prologue
    .line 44
    instance-of v0, p1, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mName:Ljava/lang/String;

    iget-object v1, p1, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 48
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    check-cast p1, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->compareTo(Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public getBackground()I
    .locals 1

    .prologue
    .line 318
    const v0, 0x7f020001

    return v0
.end method

.method public getCenterText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentType()I
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method public getDateModified()J
    .locals 2

    .prologue
    .line 283
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDateTaken()J
    .locals 2

    .prologue
    .line 288
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayImageHeight()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mItemHeight:I

    return v0
.end method

.method public getDisplayImageIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayImageInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 148
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    if-nez v2, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-object v1

    .line 153
    :cond_1
    const/4 v0, 0x0

    .line 154
    .local v0, afDescriptor:Landroid/content/res/AssetFileDescriptor;
    iget-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIsThumbOnly:Z

    if-eqz v2, :cond_3

    .line 156
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 158
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][DLNAMediumInfo][getDisplayImageParcelFileDescriptor]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "urithumb null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_2
    sget-object v2, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][DLNAMediumInfo][getMediaParcelFileDescriptor]: thumb: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->getCachedFile(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    if-nez v0, :cond_5

    .line 165
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][DLNAMediumInfo][getDisplayImageParcelFileDescriptor]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "afd null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 174
    :cond_3
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 176
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->getCachedFile(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    if-nez v0, :cond_4

    .line 178
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][DLNAMediumInfo][getDisplayImageParcelFileDescriptor]: full: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_4
    if-nez v0, :cond_5

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 186
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->getCachedFile(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    if-nez v0, :cond_5

    .line 188
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][DLNAMediumInfo][getDisplayImageParcelFileDescriptor]: thumb: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_5
    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public getDisplayImageResId()I
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageSourceType()I
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public getDisplayImageUri()Ljava/lang/String;
    .locals 3

    .prologue
    .line 206
    sget-object v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][DLNAMediumInfo][getDisplayImageUri]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageWidth()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mItemWidth:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mName:Ljava/lang/String;

    return-object v0
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
    .line 242
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaQuality()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mQuality:I

    return v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 278
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getThumbnailUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    return-object v0
.end method

.method public hasSubList()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public isCorrupted()Z
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIsCorrupt:Z

    return v0
.end method

.method public isDrm()Z
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public isPlayable()Z
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mSelected:Z

    return v0
.end method

.method public isVideo()Z
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mType:Ljava/lang/String;

    const-string v1, "4"

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIndex:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIndexID:J

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mName:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mType:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setDispalyImageWidth(I)V
    .locals 0
    .parameter "nWidth"

    .prologue
    .line 216
    iput p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mItemWidth:I

    .line 217
    return-void
.end method

.method public setDisplayImageDimension(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 236
    iput p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mItemWidth:I

    .line 237
    iput p2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mItemHeight:I

    .line 238
    return-void
.end method

.method public setDisplayImageHeight(I)V
    .locals 0
    .parameter "nHeight"

    .prologue
    .line 224
    iput p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mItemHeight:I

    .line 225
    return-void
.end method

.method public setIsCorrupt(Z)V
    .locals 0
    .parameter "bIsCorrupt"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIsCorrupt:Z

    .line 98
    return-void
.end method

.method public setMediaQuality(I)V
    .locals 0
    .parameter "nQuality"

    .prologue
    .line 304
    iput p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mQuality:I

    .line 305
    return-void
.end method

.method public setReferenceImageProvider(Lcom/htc/album/TabPluginDLNA/ImageProvider;)V
    .locals 0
    .parameter "imageProvider"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    .line 102
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter "bSelected"

    .prologue
    .line 324
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mSelected:Z

    .line 325
    return-void
.end method

.method public setThumbnailOnly(Z)V
    .locals 0
    .parameter "bThumbnailOnly"

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIsThumbOnly:Z

    .line 106
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 85
    iget v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIndexID:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 87
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    return-void
.end method
