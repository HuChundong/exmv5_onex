.class public Lcom/htc/text/style/AttachmentPhotoSpan;
.super Landroid/text/style/ImageSpan;
.source "AttachmentPhotoSpan.java"


# static fields
.field private static final DEFAULT_HEIGHT:I = 0x64

.field private static final DEFAULT_WIDTH:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mHeight:I

.field private final mPhotoUri:Landroid/net/Uri;

.field private mThumbnail:Landroid/text/style/ImageSpan;

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/htc/text/style/AttachmentPhotoSpan;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/text/style/AttachmentPhotoSpan;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .parameter "context"
    .parameter "uri"

    .prologue
    const/16 v0, 0x64

    .line 27
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/htc/text/style/AttachmentPhotoSpan;-><init>(Landroid/content/Context;Landroid/net/Uri;II)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;II)V
    .locals 9
    .parameter "context"
    .parameter "uri"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 32
    iput-object p2, p0, Lcom/htc/text/style/AttachmentPhotoSpan;->mPhotoUri:Landroid/net/Uri;

    .line 33
    iput p3, p0, Lcom/htc/text/style/AttachmentPhotoSpan;->mWidth:I

    .line 34
    iput p4, p0, Lcom/htc/text/style/AttachmentPhotoSpan;->mHeight:I

    .line 36
    const/4 v0, 0x0

    .line 38
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/text/style/AttachmentPhotoSpan;->mPhotoUri:Landroid/net/Uri;

    const-string v7, "r"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 40
    .local v2, is:Landroid/os/ParcelFileDescriptor;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 41
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 43
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 44
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v5, :cond_1

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v5, :cond_1

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, p0, Lcom/htc/text/style/AttachmentPhotoSpan;->mWidth:I

    if-gt v5, v6, :cond_0

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v6, p0, Lcom/htc/text/style/AttachmentPhotoSpan;->mHeight:I

    if-le v5, v6, :cond_1

    .line 46
    :cond_0
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v7, p0, Lcom/htc/text/style/AttachmentPhotoSpan;->mWidth:I

    iget v8, p0, Lcom/htc/text/style/AttachmentPhotoSpan;->mHeight:I

    invoke-static {v5, v6, v7, v8}, Lcom/htc/text/style/AttachmentPhotoSpan;->countSampleValue(IIII)I

    move-result v5

    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 52
    sget-object v5, Lcom/htc/text/style/AttachmentPhotoSpan;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "w:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",h:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", s:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense/widget/SNLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_1
    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 55
    iget v5, p0, Lcom/htc/text/style/AttachmentPhotoSpan;->mWidth:I

    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 56
    iget v5, p0, Lcom/htc/text/style/AttachmentPhotoSpan;->mHeight:I

    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 57
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 58
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v2           #is:Landroid/os/ParcelFileDescriptor;
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    if-eqz v0, :cond_2

    .line 64
    iget v5, p0, Lcom/htc/text/style/AttachmentPhotoSpan;->mWidth:I

    iget v6, p0, Lcom/htc/text/style/AttachmentPhotoSpan;->mHeight:I

    const/4 v7, 0x2

    invoke-static {v0, v5, v6, v7}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 70
    .local v4, thumbnail:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_2

    .line 71
    new-instance v5, Landroid/text/style/ImageSpan;

    invoke-direct {v5, p1, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    iput-object v5, p0, Lcom/htc/text/style/AttachmentPhotoSpan;->mThumbnail:Landroid/text/style/ImageSpan;

    .line 75
    .end local v4           #thumbnail:Landroid/graphics/Bitmap;
    :cond_2
    return-void

    .line 59
    :catch_0
    move-exception v1

    .line 60
    .local v1, e:Ljava/lang/Exception;
    sget-object v5, Lcom/htc/text/style/AttachmentPhotoSpan;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Invalid photo!"

    invoke-static {v5, v6}, Lcom/htc/opensense/widget/SNLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static countSampleValue(IIII)I
    .locals 2
    .parameter "originalWidth"
    .parameter "originalHeight"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    .line 119
    const/4 v0, 0x1

    .line 121
    .local v0, sample:I
    :goto_0
    shr-int/lit8 v1, p0, 0x1

    if-gt v1, p2, :cond_0

    shr-int/lit8 v1, p1, 0x1

    if-le v1, p3, :cond_1

    .line 122
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 123
    shr-int/lit8 p0, p0, 0x1

    .line 124
    shr-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 127
    :cond_1
    return v0
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/htc/text/style/AttachmentPhotoSpan;->mThumbnail:Landroid/text/style/ImageSpan;

    if-eqz v0, :cond_0

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/text/style/AttachmentPhotoSpan;->mThumbnail:Landroid/text/style/ImageSpan;

    .line 115
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 116
    return-void
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/text/style/AttachmentPhotoSpan;->mThumbnail:Landroid/text/style/ImageSpan;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/htc/text/style/AttachmentPhotoSpan;->mThumbnail:Landroid/text/style/ImageSpan;

    invoke-virtual {v0}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getPhotoUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/text/style/AttachmentPhotoSpan;->mPhotoUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Landroid/text/style/ImageSpan;->getSource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
