.class public Lcom/htc/graphics/drawable/MimeIconDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "MimeIconDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/graphics/drawable/MimeIconDrawable$Dimension;
    }
.end annotation


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/htc/graphics/drawable/MimeIconDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/graphics/drawable/MimeIconDrawable;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "res"
    .parameter "bitmap"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 80
    return-void
.end method

.method private static countNewSize(IIII)[I
    .locals 4
    .parameter "originalWidth"
    .parameter "originalHeight"
    .parameter "maximumWidth"
    .parameter "maximumHeight"

    .prologue
    .line 190
    move v1, p0

    .line 191
    .local v1, nW:I
    move v0, p1

    .line 193
    .local v0, nH:I
    if-le p0, p2, :cond_0

    if-le p1, p3, :cond_0

    .line 194
    if-le p0, p1, :cond_1

    .line 195
    move v0, p3

    .line 196
    mul-int v2, v1, p3

    div-int v1, v2, p1

    .line 202
    :cond_0
    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    return-object v2

    .line 198
    :cond_1
    move v1, p2

    .line 199
    mul-int v2, v0, p2

    div-int v0, v2, p0

    goto :goto_0
.end method

.method private static countSampleValue(IIII)I
    .locals 2
    .parameter "originalWidth"
    .parameter "originalHeight"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    .line 208
    const/4 v0, 0x1

    .line 210
    .local v0, sample:I
    :goto_0
    shr-int/lit8 v1, p0, 0x1

    if-gt v1, p2, :cond_0

    shr-int/lit8 v1, p1, 0x1

    if-le v1, p3, :cond_1

    .line 211
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 212
    shr-int/lit8 p0, p0, 0x1

    .line 213
    shr-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 215
    :cond_1
    if-lt p0, p2, :cond_2

    if-ge p1, p3, :cond_3

    .line 216
    :cond_2
    shr-int/lit8 v0, v0, 0x1

    .line 218
    :cond_3
    return v0
.end method

.method private static getDecodeOption([ILcom/htc/graphics/drawable/MimeIconDrawable$Dimension;)Landroid/graphics/BitmapFactory$Options;
    .locals 5
    .parameter "originalSize"
    .parameter "dim"

    .prologue
    const/4 v1, 0x0

    .line 162
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 163
    .local v0, option:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 164
    aget v1, p0, v1

    const/4 v2, 0x1

    aget v2, p0, v2

    iget v3, p1, Lcom/htc/graphics/drawable/MimeIconDrawable$Dimension;->width:I

    iget v4, p1, Lcom/htc/graphics/drawable/MimeIconDrawable$Dimension;->height:I

    invoke-static {v1, v2, v3, v4}, Lcom/htc/graphics/drawable/MimeIconDrawable;->countSampleValue(IIII)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 171
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;III)Lcom/htc/graphics/drawable/MimeIconDrawable;
    .locals 7
    .parameter "context"
    .parameter "uri"
    .parameter "mimeType"
    .parameter "defaultDrawableIcon"
    .parameter "videoPlayIcon"
    .parameter "heightWidth"

    .prologue
    .line 26
    const/4 v4, 0x0

    .line 27
    .local v4, width:I
    const/4 v3, 0x0

    .line 28
    .local v3, height:I
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 35
    .local v1, defaultImage:Landroid/graphics/Bitmap;
    if-lez p5, :cond_1

    .line 36
    move v4, p5

    .line 37
    move v3, p5

    .line 38
    const/4 v5, 0x1

    invoke-static {v1, v4, v3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 51
    :goto_0
    :try_start_0
    new-instance v5, Lcom/htc/graphics/drawable/MimeIconDrawable$Dimension;

    invoke-direct {v5, v4, v3}, Lcom/htc/graphics/drawable/MimeIconDrawable$Dimension;-><init>(II)V

    invoke-static {p0, p1, p2, v5}, Lcom/htc/graphics/drawable/MimeIconDrawable;->getScaledBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/htc/graphics/drawable/MimeIconDrawable$Dimension;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 60
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :goto_1
    if-eqz p4, :cond_0

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v0, p4}, Lcom/htc/graphics/util/HtcBitmapUtils;->getMaskedBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 67
    :cond_0
    new-instance v5, Lcom/htc/graphics/drawable/MimeIconDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lcom/htc/graphics/drawable/MimeIconDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v5

    .line 45
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 46
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    goto :goto_0

    .line 57
    :catch_0
    move-exception v2

    .line 58
    .local v2, e:Ljava/io/IOException;
    move-object v0, v1

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method private static getOriginalSize(Ljava/io/FileDescriptor;)[I
    .locals 6
    .parameter "fd"

    .prologue
    const/4 v5, 0x2

    .line 177
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 178
    .local v1, option:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 179
    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 180
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v4, v2, v3

    const/4 v3, 0x1

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v1           #option:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v2

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/graphics/drawable/MimeIconDrawable;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/htc/opensense/widget/SNLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    new-array v2, v5, [I

    fill-array-data v2, :array_0

    goto :goto_0

    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method private static getScaledBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/htc/graphics/drawable/MimeIconDrawable$Dimension;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "context"
    .parameter "uri"
    .parameter "mimeType"
    .parameter "dim"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    const-string v8, "video"

    invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 116
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 118
    .local v3, mmr:Landroid/media/MediaMetadataRetriever;
    invoke-virtual {v3, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 120
    const-wide/16 v8, -0x1

    invoke-virtual {v3, v8, v9}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 121
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iget v10, p3, Lcom/htc/graphics/drawable/MimeIconDrawable$Dimension;->width:I

    iget v11, p3, Lcom/htc/graphics/drawable/MimeIconDrawable$Dimension;->height:I

    invoke-static {v8, v9, v10, v11}, Lcom/htc/graphics/drawable/MimeIconDrawable;->countNewSize(IIII)[I

    move-result-object v4

    .line 127
    .local v4, newsize:[I
    const/4 v8, 0x0

    aget v8, v4, v8

    const/4 v9, 0x1

    aget v9, v4, v9

    const/4 v10, 0x1

    invoke-static {v0, v8, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 158
    .end local v3           #mmr:Landroid/media/MediaMetadataRetriever;
    .end local v4           #newsize:[I
    :goto_0
    iget v8, p3, Lcom/htc/graphics/drawable/MimeIconDrawable$Dimension;->width:I

    iget v9, p3, Lcom/htc/graphics/drawable/MimeIconDrawable$Dimension;->height:I

    invoke-static {v0, v8, v9}, Lcom/htc/graphics/util/HtcBitmapUtils;->getCroppedBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v8

    return-object v8

    .line 134
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 135
    .local v7, scheme:Ljava/lang/String;
    const-string v8, "content"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "r"

    invoke-virtual {v8, p1, v9}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 138
    .local v6, pfd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 139
    .local v1, fd:Ljava/io/FileDescriptor;
    invoke-static {v1}, Lcom/htc/graphics/drawable/MimeIconDrawable;->getOriginalSize(Ljava/io/FileDescriptor;)[I

    move-result-object v5

    .line 140
    .local v5, originalSize:[I
    const/4 v8, 0x0

    invoke-static {v5, p3}, Lcom/htc/graphics/drawable/MimeIconDrawable;->getDecodeOption([ILcom/htc/graphics/drawable/MimeIconDrawable$Dimension;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v9

    invoke-static {v1, v8, v9}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 145
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V

    goto :goto_0

    .line 146
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #fd:Ljava/io/FileDescriptor;
    .end local v5           #originalSize:[I
    .end local v6           #pfd:Landroid/os/ParcelFileDescriptor;
    :cond_1
    const-string v8, "file"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 147
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, filePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/util/media/ImageUtil;->getOriginalSize(Ljava/lang/String;)[I

    move-result-object v5

    .line 149
    .restart local v5       #originalSize:[I
    invoke-static {v5, p3}, Lcom/htc/graphics/drawable/MimeIconDrawable;->getDecodeOption([ILcom/htc/graphics/drawable/MimeIconDrawable$Dimension;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 153
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 154
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #filePath:Ljava/lang/String;
    .end local v5           #originalSize:[I
    :cond_2
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unknown uri scheme "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
.end method
