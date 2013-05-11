.class public Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
.super Ljava/lang/Object;
.source "WrapperAlbum.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;
.implements Lcom/htc/opensense2/album/sunny/IMediaDataGalleryFolder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/htc/opensense2/album/sunny/IMediaDataGalleryFolder;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mCount:I

.field private mCover:Ljava/lang/String;

.field private mCoverUrlHeader:Ljava/lang/String;

.field private mDateModified:J

.field private mDateTime:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mFolderName:Ljava/lang/String;

.field private mID:Ljava/lang/String;

.field private mIndex:I

.field private mIsCorrupt:Z

.field private mName:Ljava/lang/String;

.field private mPID:Ljava/lang/String;

.field private mSelected:Z

.field private mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

.field private mSize:J

.field private mSubList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/FolderImage;",
            ">;"
        }
    .end annotation
.end field

.field private mSzSeparatorName:Ljava/lang/String;

.field private mTime:J

.field private mszDateTime:Ljava/lang/String;

.field private mszWebLink:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->LOG_TAG:Ljava/lang/String;

    .line 184
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum$1;

    invoke-direct {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum$1;-><init>()V

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 44
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mID:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mPID:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    .line 48
    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCount:I

    .line 49
    iput-wide v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    .line 51
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszDateTime:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszWebLink:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCoverUrlHeader:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSzSeparatorName:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSubList:Ljava/util/ArrayList;

    .line 63
    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mIndex:I

    .line 64
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mFilePath:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mFolderName:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mDateTime:Ljava/lang/String;

    .line 67
    iput-wide v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSize:J

    .line 68
    iput-wide v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mDateModified:J

    .line 69
    iput-boolean v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mIsCorrupt:Z

    .line 70
    iput-boolean v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSelected:Z

    .line 86
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter "in"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 197
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 44
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mID:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mPID:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    .line 48
    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCount:I

    .line 49
    iput-wide v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    .line 51
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszDateTime:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszWebLink:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCoverUrlHeader:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSzSeparatorName:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSubList:Ljava/util/ArrayList;

    .line 63
    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mIndex:I

    .line 64
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mFilePath:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mFolderName:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mDateTime:Ljava/lang/String;

    .line 67
    iput-wide v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSize:J

    .line 68
    iput-wide v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mDateModified:J

    .line 69
    iput-boolean v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mIsCorrupt:Z

    .line 70
    iput-boolean v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSelected:Z

    .line 198
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->readFromParcel(Landroid/os/Parcel;)V

    .line 199
    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/social/AlbumOp;)V
    .locals 5
    .parameter "albumOp"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 44
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mID:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mPID:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    .line 48
    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCount:I

    .line 49
    iput-wide v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    .line 51
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszDateTime:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszWebLink:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCoverUrlHeader:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSzSeparatorName:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSubList:Ljava/util/ArrayList;

    .line 63
    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mIndex:I

    .line 64
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mFilePath:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mFolderName:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mDateTime:Ljava/lang/String;

    .line 67
    iput-wide v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSize:J

    .line 68
    iput-wide v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mDateModified:J

    .line 69
    iput-boolean v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mIsCorrupt:Z

    .line 70
    iput-boolean v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSelected:Z

    .line 89
    if-eqz p1, :cond_0

    .line 90
    invoke-virtual {p1}, Lcom/htc/opensense/social/AlbumOp;->getData()Lcom/htc/opensense/social/data/Album;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setProfile(Lcom/htc/opensense/social/data/Album;)V

    .line 91
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/social/data/Album;)V
    .locals 5
    .parameter "album"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 44
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mID:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mPID:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    .line 48
    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCount:I

    .line 49
    iput-wide v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    .line 51
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszDateTime:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszWebLink:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCoverUrlHeader:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSzSeparatorName:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSubList:Ljava/util/ArrayList;

    .line 63
    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mIndex:I

    .line 64
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mFilePath:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mFolderName:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mDateTime:Ljava/lang/String;

    .line 67
    iput-wide v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSize:J

    .line 68
    iput-wide v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mDateModified:J

    .line 69
    iput-boolean v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mIsCorrupt:Z

    .line 70
    iput-boolean v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSelected:Z

    .line 94
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setProfile(Lcom/htc/opensense/social/data/Album;)V

    .line 95
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 4
    .parameter "object"

    .prologue
    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, nResult:I
    const/4 v2, 0x0

    .line 250
    .local v2, szName:Ljava/lang/String;
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    if-nez v3, :cond_1

    :cond_0
    move v1, v0

    .line 261
    .end local v0           #nResult:I
    .end local p1
    .local v1, nResult:I
    :goto_0
    return v1

    .line 253
    .end local v1           #nResult:I
    .restart local v0       #nResult:I
    .restart local p1
    :cond_1
    instance-of v3, p1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    if-eqz v3, :cond_3

    .line 255
    check-cast p1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v1, v0

    .line 256
    .end local v0           #nResult:I
    .restart local v1       #nResult:I
    goto :goto_0

    .line 258
    .end local v1           #nResult:I
    .restart local v0       #nResult:I
    :cond_2
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    :cond_3
    move v1, v0

    .line 261
    .end local v0           #nResult:I
    .restart local v1       #nResult:I
    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"

    .prologue
    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, bResult:Z
    const/4 v2, 0x0

    .line 231
    .local v2, szName:Ljava/lang/String;
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    if-nez v3, :cond_1

    :cond_0
    move v1, v0

    .line 242
    .end local v0           #bResult:Z
    .end local p1
    .local v1, bResult:I
    :goto_0
    return v1

    .line 234
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    .restart local p1
    :cond_1
    instance-of v3, p1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    if-eqz v3, :cond_3

    .line 236
    check-cast p1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v1, v0

    .line 237
    .restart local v1       #bResult:I
    goto :goto_0

    .line 239
    .end local v1           #bResult:I
    :cond_2
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :cond_3
    move v1, v0

    .line 242
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public fileCorrupted()V
    .locals 0

    .prologue
    .line 427
    return-void
.end method

.method public getBottomText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    const-string v0, ""

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCount:I

    return v0
.end method

.method public getCoverURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverUrlHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCoverUrlHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszDateTime:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 157
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 158
    iget-wide v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    invoke-static {p1, v0, v1}, Lcom/htc/opensense2/album/util/DateTimeManager;->getDateString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszDateTime:Ljava/lang/String;

    .line 162
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszDateTime:Ljava/lang/String;

    return-object v0

    .line 160
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszDateTime:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDateModified()J
    .locals 2

    .prologue
    .line 394
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDateName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mDateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDateTaken()J
    .locals 2

    .prologue
    .line 399
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 379
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayImageHeight()I
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayImageInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageResId()I
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageSourceType()I
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageWidth()I
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/FolderImage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSubList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMediaMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mPID:Ljava/lang/String;

    return-object v0
.end method

.method public getProfile()Lcom/htc/opensense/social/data/Album;
    .locals 3

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, profile:Lcom/htc/opensense/social/data/Album;
    new-instance v0, Lcom/htc/opensense/social/data/Album;

    .end local v0           #profile:Lcom/htc/opensense/social/data/Album;
    invoke-direct {v0}, Lcom/htc/opensense/social/data/Album;-><init>()V

    .line 113
    .restart local v0       #profile:Lcom/htc/opensense/social/data/Album;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/data/Album;->setAlbumId(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/data/Album;->setName(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/data/Album;->setCoverUrl(Ljava/lang/String;)V

    .line 116
    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCount:I

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/data/Album;->setCount(I)V

    .line 117
    iget-wide v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/social/data/Album;->setCreateTime(J)V

    .line 118
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszWebLink:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/data/Album;->setWebLink(Ljava/lang/String;)V

    .line 119
    return-object v0
.end method

.method public getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    return-object v0
.end method

.method public getSeparatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSzSeparatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 389
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWebLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszWebLink:Ljava/lang/String;

    return-object v0
.end method

.method public hasSubList()Z
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public isCorrupted()Z
    .locals 1

    .prologue
    .line 432
    const/4 v0, 0x0

    return v0
.end method

.method public isDrm()Z
    .locals 1

    .prologue
    .line 438
    const/4 v0, 0x0

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSelected:Z

    return v0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mID:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCount:I

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszWebLink:Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mPID:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setCoverURL(Ljava/lang/String;)V
    .locals 0
    .parameter "szURL"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setCoverUrlHeader(Ljava/lang/String;)V
    .locals 0
    .parameter "header"

    .prologue
    .line 417
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCoverUrlHeader:Ljava/lang/String;

    .line 418
    return-void
.end method

.method public setDateTime(Ljava/lang/String;)V
    .locals 0
    .parameter "szDateTime"

    .prologue
    .line 273
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mDateTime:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public setFilePath(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 11
    .parameter "szUrl"
    .parameter "uri"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 277
    if-eqz p2, :cond_0

    .line 278
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mFilePath:Ljava/lang/String;

    .line 280
    :cond_0
    new-instance v0, Lcom/htc/album/TabPluginDevice/FolderImage;

    invoke-direct {v0, v2, v5}, Lcom/htc/album/TabPluginDevice/FolderImage;-><init>(Lcom/htc/album/modules/collection/Collection;Z)V

    .line 281
    .local v0, image:Lcom/htc/album/TabPluginDevice/FolderImage;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mFilePath:Ljava/lang/String;

    const-wide/16 v9, -0x1

    move v6, v5

    move-wide v7, v3

    invoke-virtual/range {v0 .. v10}, Lcom/htc/album/TabPluginDevice/FolderImage;->update(Ljava/lang/String;Ljava/lang/String;JIIJJ)V

    .line 282
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSubList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 265
    iput p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mIndex:I

    .line 266
    return-void
.end method

.method public setIsCorrupt(Z)V
    .locals 0
    .parameter "bIsCorrupt"

    .prologue
    .line 269
    iput-boolean p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mIsCorrupt:Z

    .line 270
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "szText"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setPID(Ljava/lang/String;)V
    .locals 0
    .parameter "pid"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mPID:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setProfile(Lcom/htc/opensense/social/data/Album;)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 98
    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Album;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mID:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Album;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Album;->getCoverUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Album;->getCount()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCount:I

    .line 104
    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Album;->getCreateTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    .line 105
    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Album;->getWebLink()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszWebLink:Ljava/lang/String;

    .line 108
    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter "bSelected"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSelected:Z

    .line 76
    return-void
.end method

.method public setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V
    .locals 0
    .parameter "separatorTag"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 171
    return-void
.end method

.method public setSeparatorName(Ljava/lang/String;)V
    .locals 0
    .parameter "szName"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSzSeparatorName:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget-wide v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 223
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszWebLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mPID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    return-void
.end method
