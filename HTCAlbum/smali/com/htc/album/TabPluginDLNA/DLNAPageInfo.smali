.class public Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
.super Ljava/lang/Object;
.source "DLNAPageInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/htc/opensense2/album/sunny/IMediaDataDLNA;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIRECTION_AT_BOT:I = 0x2

.field public static final DIRECTION_AT_TOP:I = -0x2

.field public static final DIRECTION_DOWN:I = 0x1

.field public static final DIRECTION_UNKNOWN:I = 0x0

.field public static final DIRECTION_UP:I = -0x1


# instance fields
.field private mBgIcon:I

.field private mDirection:I

.field private mIndexBot:J

.field private mIndexMid:J

.field private mIndexTop:J

.field private mIsIntermediate:Z

.field private mSelected:Z

.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo$1;

    invoke-direct {v0}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo$1;-><init>()V

    sput-object v0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v1, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mDirection:I

    .line 22
    iput-wide v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexTop:J

    .line 23
    iput-wide v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexMid:J

    .line 24
    iput-wide v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexBot:J

    .line 25
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIsIntermediate:Z

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mText:Ljava/lang/String;

    .line 27
    iput v1, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mBgIcon:I

    .line 28
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mSelected:Z

    .line 32
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 117
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v1, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mDirection:I

    .line 22
    iput-wide v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexTop:J

    .line 23
    iput-wide v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexMid:J

    .line 24
    iput-wide v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexBot:J

    .line 25
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIsIntermediate:Z

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mText:Ljava/lang/String;

    .line 27
    iput v1, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mBgIcon:I

    .line 28
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mSelected:Z

    .line 118
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 119
    return-void
.end method


# virtual methods
.method public alreadyHasDisplayImageDimension()Z
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public getBackground()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mBgIcon:I

    return v0
.end method

.method public getBottomIndex()J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexBot:J

    return-wide v0
.end method

.method public getBrowseBound()J
    .locals 4

    .prologue
    .line 94
    const-wide/16 v0, 0x0

    .line 96
    .local v0, lBound:J
    const/4 v2, 0x1

    iget v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mDirection:I

    if-ne v2, v3, :cond_1

    .line 97
    iget-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexTop:J

    .line 101
    :cond_0
    :goto_0
    return-wide v0

    .line 98
    :cond_1
    const/4 v2, -0x1

    iget v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mDirection:I

    if-ne v2, v3, :cond_0

    .line 99
    iget-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexBot:J

    goto :goto_0
.end method

.method public getBrowseStart()J
    .locals 2

    .prologue
    .line 86
    const-wide/16 v0, 0x0

    .line 88
    .local v0, lStart:J
    iget-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexMid:J

    .line 90
    return-wide v0
.end method

.method public getCenterText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()I
    .locals 1

    .prologue
    .line 174
    const/4 v0, -0x1

    return v0
.end method

.method public getCurrentBrowseTop()J
    .locals 6

    .prologue
    .line 75
    const-wide/16 v0, 0x0

    .line 77
    .local v0, lTop:J
    iget-wide v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexTop:J

    iget-wide v4, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexBot:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 78
    iget-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexTop:J

    .line 82
    :goto_0
    return-wide v0

    .line 80
    :cond_0
    iget-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexBot:J

    goto :goto_0
.end method

.method public getDateModified()J
    .locals 2

    .prologue
    .line 273
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDateTaken()J
    .locals 2

    .prologue
    .line 278
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public getDirection()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mDirection:I

    return v0
.end method

.method public getDisplayImageFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageHeight()I
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageResId()I
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageSourceType()I
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageWidth()I
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntermediate()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIsIntermediate:Z

    return v0
.end method

.method public getMediaDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/sunny/IMediaDataDLNA;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    const-string v0, ""

    return-object v0
.end method

.method public getMediaMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaQuality()I
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public getMidIndex()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexMid:J

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 268
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTopIndex()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexTop:J

    return-wide v0
.end method

.method public hasSubList()Z
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public isCorrupted()Z
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public isDrm()Z
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public isPlayable()Z
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mSelected:Z

    return v0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mDirection:I

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexTop:J

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexMid:J

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexBot:J

    .line 126
    return-void
.end method

.method public setBackground(I)V
    .locals 0
    .parameter "bgIcon"

    .prologue
    .line 157
    iput p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mBgIcon:I

    .line 158
    return-void
.end method

.method public setBottomIndex(J)V
    .locals 0
    .parameter "lIndex"

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexBot:J

    .line 68
    return-void
.end method

.method public setCenterText(Ljava/lang/String;)V
    .locals 0
    .parameter "szText"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mText:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setDirection(I)V
    .locals 0
    .parameter "nDirection"

    .prologue
    .line 43
    iput p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mDirection:I

    .line 44
    return-void
.end method

.method public setDisplayImageDimension(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 249
    return-void
.end method

.method public setIntermediate(Z)V
    .locals 0
    .parameter "bIsIntermediate"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIsIntermediate:Z

    .line 36
    return-void
.end method

.method public setMidIndex(J)V
    .locals 0
    .parameter "lIndex"

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexMid:J

    .line 60
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter "bSelected"

    .prologue
    .line 284
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mSelected:Z

    .line 285
    return-void
.end method

.method public setTopIndex(J)V
    .locals 0
    .parameter "lIndex"

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexTop:J

    .line 52
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 135
    iget v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mDirection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexTop:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 137
    iget-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexMid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 138
    iget-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->mIndexBot:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 139
    return-void
.end method
