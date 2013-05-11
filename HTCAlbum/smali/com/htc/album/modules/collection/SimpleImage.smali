.class public Lcom/htc/album/modules/collection/SimpleImage;
.super Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;
.source "SimpleImage.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/album/modules/collection/SimpleImage;",
        ">;",
        "Ljava/io/Serializable;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static BIT_DRM:I = 0x0

.field private static BIT_ORDER:I = 0x0

.field private static BIT_VIDEO:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/album/modules/collection/SimpleImage;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected transient mContainer:Lcom/htc/album/modules/collection/Collection;

.field public mDateModified:J

.field public mDegreeRotated:I

.field public mFilePath:Ljava/lang/String;

.field public mFileSize:J

.field public mIdentifier:Ljava/lang/String;

.field public mIsDrm:Z

.field public mIsVideo:Z

.field public mMediaType:I

.field public mMimeType:Ljava/lang/String;

.field public mRowId:J

.field protected mSortDES:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/htc/album/modules/collection/SimpleImage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/modules/collection/SimpleImage;->LOG_TAG:Ljava/lang/String;

    .line 50
    const/4 v0, 0x1

    sput v0, Lcom/htc/album/modules/collection/SimpleImage;->BIT_ORDER:I

    .line 51
    const/16 v0, 0x10

    sput v0, Lcom/htc/album/modules/collection/SimpleImage;->BIT_DRM:I

    .line 52
    const/16 v0, 0x100

    sput v0, Lcom/htc/album/modules/collection/SimpleImage;->BIT_VIDEO:I

    .line 102
    new-instance v0, Lcom/htc/album/modules/collection/SimpleImage$1;

    invoke-direct {v0}, Lcom/htc/album/modules/collection/SimpleImage$1;-><init>()V

    sput-object v0, Lcom/htc/album/modules/collection/SimpleImage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter "in"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;-><init>()V

    .line 35
    iput-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mContainer:Lcom/htc/album/modules/collection/Collection;

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mSortDES:Z

    .line 37
    iput-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIdentifier:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMimeType:Ljava/lang/String;

    .line 40
    iput-wide v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    .line 41
    iput v2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMediaType:I

    .line 43
    iput-boolean v2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsDrm:Z

    .line 44
    iput-boolean v2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsVideo:Z

    .line 45
    iput-wide v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFileSize:J

    .line 48
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mRowId:J

    .line 117
    return-void
.end method

.method public constructor <init>(Lcom/htc/album/modules/collection/Collection;Z)V
    .locals 5
    .parameter "container"
    .parameter "DES"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;-><init>()V

    .line 35
    iput-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mContainer:Lcom/htc/album/modules/collection/Collection;

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mSortDES:Z

    .line 37
    iput-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIdentifier:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMimeType:Ljava/lang/String;

    .line 40
    iput-wide v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    .line 41
    iput v2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMediaType:I

    .line 43
    iput-boolean v2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsDrm:Z

    .line 44
    iput-boolean v2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsVideo:Z

    .line 45
    iput-wide v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFileSize:J

    .line 48
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mRowId:J

    .line 56
    iput-object p1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mContainer:Lcom/htc/album/modules/collection/Collection;

    .line 57
    iput-boolean p2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mSortDES:Z

    .line 58
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/htc/album/modules/collection/SimpleImage;)I
    .locals 7
    .parameter "image"

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 85
    iget-wide v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    iget-wide v5, p1, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 86
    iget-boolean v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mSortDES:Z

    if-eqz v3, :cond_0

    .line 93
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 86
    goto :goto_0

    .line 88
    :cond_1
    iget-wide v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    iget-wide v5, p1, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    .line 89
    iget-boolean v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mSortDES:Z

    if-eqz v3, :cond_2

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    .line 92
    :cond_3
    iget-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 93
    .local v0, cmp:I
    iget-boolean v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mSortDES:Z

    if-eqz v1, :cond_4

    neg-int v0, v0

    .end local v0           #cmp:I
    :cond_4
    move v1, v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    check-cast p1, Lcom/htc/album/modules/collection/SimpleImage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/modules/collection/SimpleImage;->compareTo(Lcom/htc/album/modules/collection/SimpleImage;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public getDateModified()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    return-wide v0
.end method

.method public readFrom(ZIILjava/lang/String;)V
    .locals 5
    .parameter "isVersionChange"
    .parameter "newVer"
    .parameter "oldVer"
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 235
    const/4 v1, 0x0

    .line 236
    .local v1, i:I
    invoke-virtual {p0, p4}, Lcom/htc/album/modules/collection/SimpleImage;->removeAllHeader(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 237
    .local v0, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 238
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mSortDES:Z

    .line 239
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    .line 240
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIdentifier:Ljava/lang/String;

    .line 241
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMimeType:Ljava/lang/String;

    .line 242
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    .line 243
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    .line 244
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMediaType:I

    .line 245
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsDrm:Z

    .line 246
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsVideo:Z

    .line 247
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFileSize:J

    .line 250
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mRowId:J

    move v1, v2

    .line 255
    .end local v2           #i:I
    .restart local v1       #i:I
    :cond_0
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .parameter "in"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIdentifier:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMimeType:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMediaType:I

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFileSize:J

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/album/modules/collection/SimpleImage;->mRowId:J

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 177
    .local v0, myValue:B
    sget v1, Lcom/htc/album/modules/collection/SimpleImage;->BIT_ORDER:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mSortDES:Z

    .line 178
    sget v1, Lcom/htc/album/modules/collection/SimpleImage;->BIT_DRM:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsDrm:Z

    .line 179
    sget v1, Lcom/htc/album/modules/collection/SimpleImage;->BIT_VIDEO:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_2

    :goto_2
    iput-boolean v2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsVideo:Z

    .line 180
    return-void

    :cond_0
    move v1, v3

    .line 177
    goto :goto_0

    :cond_1
    move v1, v3

    .line 178
    goto :goto_1

    :cond_2
    move v2, v3

    .line 179
    goto :goto_2
.end method

.method public toFormatedString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v0, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-boolean v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mSortDES:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    iget-wide v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    iget v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    iget v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMediaType:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    iget-boolean v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsDrm:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    iget-boolean v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsVideo:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    iget-wide v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFileSize:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    iget-wide v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mRowId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    invoke-virtual {p0, v0}, Lcom/htc/album/modules/collection/SimpleImage;->capAllHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;JIIJJ)V
    .locals 4
    .parameter "filePath"
    .parameter "mimeType"
    .parameter "dateModified"
    .parameter "degree"
    .parameter "mediaType"
    .parameter "fileSize"
    .parameter "rowId"

    .prologue
    const/16 v3, 0xe0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 64
    iput-object p1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMimeType:Ljava/lang/String;

    .line 66
    iput-wide p3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    .line 67
    iput p5, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    .line 68
    iput p6, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMediaType:I

    .line 69
    const/16 v0, 0xe

    if-eq p6, v0, :cond_0

    if-ne p6, v3, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsDrm:Z

    .line 70
    const/16 v0, 0x10

    if-eq p6, v0, :cond_1

    if-ne p6, v3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsVideo:Z

    .line 71
    iput-wide p7, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFileSize:J

    .line 72
    iput-object p1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIdentifier:Ljava/lang/String;

    .line 75
    iput-wide p9, p0, Lcom/htc/album/modules/collection/SimpleImage;->mRowId:J

    .line 76
    return-void

    :cond_3
    move v0, v1

    .line 69
    goto :goto_0
.end method

.method public updateEventId(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 13
    .parameter "context"
    .parameter "eventId"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 123
    const/4 v3, 0x0

    .line 126
    .local v3, isSuccess:Z
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 128
    :cond_0
    :try_start_0
    sget-object v8, Lcom/htc/album/modules/collection/SimpleImage;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[gallery_widget][updateEventId] NG, eventId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", context = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 149
    .end local v3           #isSuccess:Z
    .local v4, isSuccess:I
    :goto_0
    return v4

    .line 132
    .end local v4           #isSuccess:I
    .restart local v3       #isSuccess:Z
    :cond_1
    const-string v10, "external"

    invoke-static {v10}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 133
    .local v6, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 134
    .local v1, cv:Landroid/content/ContentValues;
    const-string v10, "v_folder"

    invoke-virtual {v1, v10, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v7, "_data = ?"

    .line 137
    .local v7, where:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 138
    .local v5, resolver:Landroid/content/ContentResolver;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v5, v6, v1, v7, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 139
    .local v0, affectedRows:I
    if-ne v8, v0, :cond_3

    move v3, v8

    .line 140
    :goto_1
    if-nez v3, :cond_2

    .line 142
    sget-object v8, Lcom/htc/album/modules/collection/SimpleImage;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[gallery_widget][updateEventId] NG of uri = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", where = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", eventId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", affectedRow = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #affectedRows:I
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v5           #resolver:Landroid/content/ContentResolver;
    .end local v6           #uri:Landroid/net/Uri;
    .end local v7           #where:Ljava/lang/String;
    :cond_2
    :goto_2
    move v4, v3

    .line 149
    .restart local v4       #isSuccess:I
    goto :goto_0

    .end local v4           #isSuccess:I
    .restart local v0       #affectedRows:I
    .restart local v1       #cv:Landroid/content/ContentValues;
    .restart local v5       #resolver:Landroid/content/ContentResolver;
    .restart local v6       #uri:Landroid/net/Uri;
    .restart local v7       #where:Ljava/lang/String;
    :cond_3
    move v3, v9

    .line 139
    goto :goto_1

    .line 145
    .end local v0           #affectedRows:I
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v5           #resolver:Landroid/content/ContentResolver;
    .end local v6           #uri:Landroid/net/Uri;
    .end local v7           #where:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 147
    .local v2, e:Ljava/lang/Exception;
    sget-object v8, Lcom/htc/album/modules/collection/SimpleImage;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[gallery_widget][updateEventId] update NG. e = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 189
    iget-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget-wide v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 193
    iget v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMediaType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget-wide v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFileSize:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 198
    iget-wide v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mRowId:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, myValue:B
    iget-boolean v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mSortDES:Z

    if-eqz v1, :cond_0

    .line 202
    sget v1, Lcom/htc/album/modules/collection/SimpleImage;->BIT_ORDER:I

    or-int/2addr v1, v0

    int-to-byte v0, v1

    .line 203
    :cond_0
    iget-boolean v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsDrm:Z

    if-eqz v1, :cond_1

    .line 204
    sget v1, Lcom/htc/album/modules/collection/SimpleImage;->BIT_DRM:I

    or-int/2addr v1, v0

    int-to-byte v0, v1

    .line 205
    :cond_1
    iget-boolean v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsVideo:Z

    if-eqz v1, :cond_2

    .line 206
    sget v1, Lcom/htc/album/modules/collection/SimpleImage;->BIT_VIDEO:I

    or-int/2addr v1, v0

    int-to-byte v0, v1

    .line 207
    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 208
    return-void
.end method
