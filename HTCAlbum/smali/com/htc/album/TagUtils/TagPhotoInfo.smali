.class public Lcom/htc/album/TagUtils/TagPhotoInfo;
.super Ljava/lang/Object;
.source "TagPhotoInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/album/TagUtils/TagPhotoInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_CLEAR_TOP5:Ljava/lang/String; = "clear_top5_frined_list"

.field public static final KEY_MIME_TYPE:Ljava/lang/String; = "mimeType"

.field public static final KEY_TAGS:Ljava/lang/String; = "tags"

.field public static final KEY_TAG_ID:Ljava/lang/String; = "tag_id"

.field public static final KEY_TAG_NAME:Ljava/lang/String; = "tag_name"

.field public static final KEY_URI:Ljava/lang/String; = "uri"

.field public static final MODE_DISP_BOTTOM:I = 0x2

.field public static final MODE_DISP_MIDDLE:I = 0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mDataPath:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field private mPhotoH:I

.field private mPhotoId:I

.field private mPhotoW:I

.field private mTagsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TagUtils/TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 154
    new-instance v0, Lcom/htc/album/TagUtils/TagPhotoInfo$1;

    invoke-direct {v0}, Lcom/htc/album/TagUtils/TagPhotoInfo$1;-><init>()V

    sput-object v0, Lcom/htc/album/TagUtils/TagPhotoInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "TagPhotoInfo"

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->LOG_TAG:Ljava/lang/String;

    .line 32
    iput-object v2, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mUri:Landroid/net/Uri;

    .line 33
    iput-object v2, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mDataPath:Ljava/lang/String;

    .line 34
    iput-object v2, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mMimeType:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mTagsArray:Ljava/util/ArrayList;

    .line 36
    iput v1, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoId:I

    .line 37
    iput v1, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoW:I

    .line 38
    iput v1, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoH:I

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "uri"
    .parameter "szDataPath"
    .parameter "szMimeType"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "TagPhotoInfo"

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->LOG_TAG:Ljava/lang/String;

    .line 32
    iput-object v2, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mUri:Landroid/net/Uri;

    .line 33
    iput-object v2, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mDataPath:Ljava/lang/String;

    .line 34
    iput-object v2, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mMimeType:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mTagsArray:Ljava/util/ArrayList;

    .line 36
    iput v1, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoId:I

    .line 37
    iput v1, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoW:I

    .line 38
    iput v1, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoH:I

    .line 45
    iput-object p1, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mUri:Landroid/net/Uri;

    .line 46
    iput-object p2, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mDataPath:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mMimeType:Ljava/lang/String;

    .line 48
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 167
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "TagPhotoInfo"

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->LOG_TAG:Ljava/lang/String;

    .line 32
    iput-object v2, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mUri:Landroid/net/Uri;

    .line 33
    iput-object v2, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mDataPath:Ljava/lang/String;

    .line 34
    iput-object v2, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mMimeType:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mTagsArray:Ljava/util/ArrayList;

    .line 36
    iput v1, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoId:I

    .line 37
    iput v1, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoW:I

    .line 38
    iput v1, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoH:I

    .line 168
    invoke-virtual {p0, p1}, Lcom/htc/album/TagUtils/TagPhotoInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 169
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public getDataPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mDataPath:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoH()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoH:I

    return v0
.end method

.method public getPhotoID()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoId:I

    return v0
.end method

.method public getPhotoW()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoW:I

    return v0
.end method

.method public getTagInfo(I)Lcom/htc/album/TagUtils/TagInfo;
    .locals 6
    .parameter "nIndex"

    .prologue
    .line 69
    const/4 v2, 0x0

    .line 73
    .local v2, tagInfo:Lcom/htc/album/TagUtils/TagInfo;
    :try_start_0
    iget-object v3, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mTagsArray:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/htc/album/TagUtils/TagInfo;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-object v2

    .line 75
    :catch_0
    move-exception v1

    .line 77
    .local v1, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][TagPhotoInfo][getTagInfo]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getTags()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TagUtils/TagInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mTagsArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mUri:Landroid/net/Uri;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mDataPath:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mMimeType:Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mTagsArray:Ljava/util/ArrayList;

    const-class v1, Lcom/htc/album/TagUtils/TagInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoId:I

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoW:I

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoH:I

    .line 180
    return-void
.end method

.method public realizeIdentity(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    .line 104
    const/4 v0, 0x1

    .line 105
    .local v0, bResult:Z
    iget v6, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoId:I

    if-eqz v6, :cond_0

    move v1, v0

    .line 152
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 108
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    iget-object v6, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HTCAlbum][TagPhotoInfo][realizeIdentity]: realizing..."

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const/4 v4, 0x0

    .line 113
    .local v4, imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :try_start_0
    iget-object v6, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v6, p1, v7}, Lcom/htc/opensense2/album/util/ImageManager;->makeSingleImageListfromUri(Landroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v4

    .line 115
    if-eqz v4, :cond_1

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v6

    if-nez v6, :cond_2

    .line 117
    :cond_1
    iget-object v6, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HTCAlbum][TagPhotoInfo][realizeIdentity]: no identity..."

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/4 v0, 0x0

    .line 143
    :goto_1
    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_2
    iget-object v6, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HTCAlbum][TagPhotoInfo][realizeIdentity]: end..."

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 152
    .restart local v1       #bResult:I
    goto :goto_0

    .line 122
    .end local v1           #bResult:I
    :cond_2
    const/4 v6, 0x0

    :try_start_1
    invoke-interface {v4, v6}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v3

    .line 123
    .local v3, iimage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->imageId()J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoId:I

    .line 124
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mDataPath:Ljava/lang/String;

    .line 125
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mMimeType:Ljava/lang/String;

    .line 130
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 131
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput v6, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 132
    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 133
    iget-object v6, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mDataPath:Ljava/lang/String;

    invoke-static {v6, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 134
    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v6, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoW:I

    .line 135
    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v6, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoH:I

    .line 136
    iget-object v6, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][TagPhotoInfo][realizeIdentity]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v6, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][TagPhotoInfo][realizeIdentity]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mDataPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v6, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][TagPhotoInfo][realizeIdentity]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v6, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][TagPhotoInfo][realizeIdentity]: W: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoW:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v6, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][TagPhotoInfo][realizeIdentity]: H: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoH:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 146
    .end local v3           #iimage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v2

    .line 148
    .local v2, e:Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 149
    iget-object v6, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][TagPhotoInfo][realizeIdentity]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public setPhotoID(I)V
    .locals 0
    .parameter "nID"

    .prologue
    .line 51
    iput p1, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoId:I

    .line 52
    return-void
.end method

.method public setTags(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TagUtils/TagInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mTagsArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 61
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mTagsArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 62
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mUri:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 185
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mDataPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mTagsArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 188
    iget v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoW:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoH:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    return-void
.end method
